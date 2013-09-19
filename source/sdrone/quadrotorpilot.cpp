/* * quadrotorpilot.cpp
 *
 *  Created on: May 27, 2013
 *      Author: svassilev
 */
#include "quadrotorpilot.h"
#include <dlfcn.h>

static const double s_InitialStep = 0.005;

QuadRotorPilot::QuadRotorPilot() :
		m_PidCtl(0,0,0,0),
		m_Step(s_InitialStep,s_InitialStep,s_InitialStep)
{
	m_MinRev = 0.0;
	m_MaxRev = 1.0;
	m_Counter = 0;
	m_Skip = 10;
	m_Dt = 1.0/200;
	m_ErrorAngle = 0;
	m_Runtime = 0;
	m_RefCnt = 1;
	m_DesiredRev = 0.0;
}

QuadRotorPilot::~QuadRotorPilot()
{
	assert(0 == m_RefCnt);
}

int QuadRotorPilot::AttachToChain(
	void* droneContext,
	SdPluginAttachFunc attachFunc)
{
	static const char* attachAbove[] = {SD_PLUGIN_NAVIGATOR,0};
	int err = attachFunc(
		droneContext,
		this,
		SD_ALTITUDE_GROUP_APP+SD_ALTITUDE_FIRST/2,
		attachAbove,
		0,
		&m_Runtime);
	return err;
}

int QuadRotorPilot::Start(
		CommandArgs* cmdArgs)
{
	const SdDroneConfig* config = cmdArgs->GetSdDroneConfig();
	assert(config);
	assert(m_Runtime);
	m_Config = config->Quad;
	m_PidCtl.Reset(m_Config.Kp,m_Config.Ki,m_Config.Kd,15);
	m_Dt = 1.0/config->Gyro.Rate;
	m_Counter = 0;
	m_Motors.clear();
	m_PrevErrQ = QuaternionD(1, 0, 0, 0);
	m_TorqueCorrection.clear();
	m_Omega.clear();
	m_AngAccel.clear();
	m_RotZQ = QuaternionD::fromAxisRot(
		Vector3d(0,0,1),-m_Config.ImuAngleAxisZ);
	m_GyroFilt.Reset();
	m_Step = Vector3d(s_InitialStep,s_InitialStep,s_InitialStep);

	m_Runtime->SetIoFilters(
			SD_DEVICEID_TO_FLAG(SD_DEVICEID_IMU),
			SD_IOCODE_TO_FLAG(SD_IOCODE_RECEIVE|SD_IOCODE_COMMAND));

	return 0;
}

int QuadRotorPilot::AddRef()
{
	return __sync_fetch_and_add(&m_RefCnt,1);
}

int QuadRotorPilot::Release()
{
	int refCnt = __sync_sub_and_fetch(&m_RefCnt,1);
	if (0 == refCnt) {
		delete this;
	}
	return refCnt;
}

void QuadRotorPilot::Stop(int flags)
{
	if (!!(flags&FLAG_STOP_AND_DETACH)) {
		m_Runtime->DetachPlugin();
	}
}

const char* QuadRotorPilot::GetName()
{
	return SD_PLUGIN_QUADPILOT;
}

SdDeviceId QuadRotorPilot::GetDeviceId()
{
	return SD_DEVICEID_FILTER;
}

const char* QuadRotorPilot::GetVersion()
{
	return SD_PLUGIN_VERSION;
}

extern char **g_Argv;
const char* QuadRotorPilot::GetDlFileName()
{
	return g_Argv[0];
}

int QuadRotorPilot::IoCallback(
	SdIoPacket* ioPacket)
{
	int err = 0;
	if (SD_IOCODE_RECEIVE == ioPacket->ioCode) {

		/*
		 * Check whether the IO carries all the necessary info for the pilot
		 */
		if (0 == ioPacket->attitudeQ || 0 == ioPacket->targetQ ||
			0 == ioPacket->gyroDataDps) {
			return EINVAL;
		}

		UpdateState(*ioPacket->attitudeQ,*ioPacket->targetQ,
				*ioPacket->gyroDataDps);

		/*
		 *  Set the motor values in the IO structures so it can be used by the
		 *  rest of the chain
		 */
		ioPacket->motors = &m_Motors;
		if (0 == (m_Counter++%m_Skip))
		{
			SdServoIoData servoData;
			SdIoPacket ioPacket;

			CalcThrustFromErrAxis(m_ErrorAxis,m_DesiredRev);

			//
			// Issue commands to the servos. Since the servos are controlled by
			// different device, we must issue new SdIoPacket "down" to the servo
			// device. We do not want to stop the current packet as there may
			// be another plugin on top that performs different functions, aka
			// logging, etc.
			//
			servoData.numChannels = 4;
			for (size_t i = 0; i < ARRAYSIZE(m_Config.Motor); i++) {
				servoData.channels[i] = m_Config.Motor[i];
				servoData.value[i] = m_Motors.at(i,0);
			}

			//
			// Failure to enforce a command here is pretty much a crash waiting
			// to happen. And by crash I mean drone crash, not an app or OS one.
			//
			SdIoPacket::Init(&ioPacket,SD_IOCODE_SEND,
					SD_DEVICEID_SERVO,SD_PLUGIN_SERVO_PCA9685);
			ioPacket.inData.dataType = SdIoData::TYPE_SERVO;
			ioPacket.inData.asServoData = &servoData;
			err = m_Runtime->DispatchIo(&ioPacket,SD_FLAG_DISPATCH_DOWN);
		}

	} else if (SD_IOCODE_COMMAND == ioPacket->ioCode) {
		CommandArgs* args = ioPacket->inData.asCommandArgs;
		if (ioPacket->inData.dataType != SdIoData::TYPE_COMMAND_ARGS ||
			0 == args) {
			return EINVAL;
		}
		SetMinRev(args->GetMinThrust());
		SetMaxRev(args->GetMaxThrust());
		m_DesiredRev = fmin(args->GetMaxThrust(),args->GetDesiredThrust());
		m_DesiredRev = fmax(args->GetMinThrust(),m_DesiredRev);
	} else {
		assert(false);
	}
	return err;
}

template <typename T> __inline int sign(T val)
{
	return (T(0) < val) - (val < T(0));
}

int QuadRotorPilot::UpdateState(
		const QuaternionD& attitudeQ,
		const QuaternionD& targetQ,
		const Vector3d& _currentOmega)
{
	int retVal = 0;
	Vector3d currentOmega;

	//
	// Here we assume that m1 and m3 lie on the X axis, while m2 and m4
	// lie on Y axis. Positive/CCW rotation around X axis is achieved by
	// revving up m4 and revving down m2. Positive/CCW rotation around
	// the Y axis is achieved by revving down m1 and revving up m3.
	// Positive/CCW rot around the Z axis is achieved by revving up
	// m2 and m4 and revving down m1 and m3, thus m1/m3 must rotate CCW and
	// m2/m4 rotate clockwise Overall thrust up (alongside) Z is achieved
	// by rev-ing proportionally all 4 motors.
	//

	//
	// Compensate for the angle between the sensors' OX/OY axis and
	// the motors OX/OY axis and calculate the correction quaternion, -
	// which is the error.
	//
	QuaternionD motorAxisQ =  m_RotZQ * attitudeQ;
	QuaternionD motorAxisTargetQ = m_RotZQ * targetQ;
	QuaternionD errQ = motorAxisTargetQ * QuaternionD::reciprocal(motorAxisQ);

	errQ.z = 0;
	errQ = errQ.normalize();
	currentOmega = m_RotZQ.rotate(_currentOmega);
	currentOmega = m_GyroFilt.DoFilter(currentOmega);

	double angleDeg = errQ.angle();
	if (fabs(angleDeg) > 180) {
		Vector3d axis = errQ.axis() * -1.0f;
		errQ = QuaternionD::fromAxisRot(axis,
				(angleDeg > 0) ? 360-angleDeg : -360+angleDeg);
		errQ = errQ.normalize();
		angleDeg = errQ.angle();
	}

	angleDeg = fmin(angleDeg,90);

	Vector3d errAxis = errQ.axis().normalize() * sin(DEG2RAD(angleDeg));
	Vector3d angAccel = (currentOmega-m_Omega)/m_Dt;
	Vector3d desiredOmega = CalcDesiredOmega3d(errAxis);

	m_TorqueEstimate = errAxis;

	errAxis = (desiredOmega - currentOmega) / 500;
	errAxis.at(2,0) = 0; // clear Z axis, we will take care of that later
	m_TorqueCorrection.at(2,0) = 0;

	//
	// Feed the error into the pid controller
	//
	errAxis = m_PidCtl.GetPid(errAxis,m_Dt,m_Dt/2);


	m_ErrorAngle = angleDeg;
	m_PrevErrQ = errQ;
	m_ErrorAxis = errAxis;
	m_AngAccel = angAccel;
	m_Omega = currentOmega;
	m_DesiredOmega = desiredOmega;

	return retVal;
}

void QuadRotorPilot::CalcThrustFromErrAxis(
		const Vector3d& err,
		double targetThrust)
{
	//
	// Control the motors in pairs 0-2 and 1-3.
	// We use the following equations:
	// 		torgX = l * k * (m4^2 - m2^2);
	// 		torgY = l * k * (m3^2 - m1^2);
	// 		torgZ = b * (-m1^2 + m2^2 - m3^2 + m4^2);
	// 		thrust = k * (m1^2 + m2^2 + m3^2 + m4^2);
	// Since the rotation axis is exactly the same as the desired torque,
	// we need to find w (motor rot velocity) deltas, that satisfy
	// the equations above.
	//
	double deltaX;
	double deltaY;
	double deltaZ;
	double denom;
	double m1 = m_Motors.at(0,0);
	double m2 = m_Motors.at(1,0);
	double m3 = m_Motors.at(2,0);
	double m4 = m_Motors.at(3,0);

	deltaX = err.at(0,0) + m2*m2 - m4*m4;
	denom = 2 * (m2 + m4);
	if (abs(denom) > 0.001) {
		deltaX = deltaX / denom;
	} else if (0 != denom) {
		deltaX = deltaX*sign(denom);
	}

	deltaY = err.at(1,0) + m1*m1 - m3*m3;
	denom = 2 * (m1 + m3);
	if (abs(denom) > 0.001) {
		deltaY = deltaY / denom;
	} else if (0 != denom) {
		deltaY = deltaY*sign(denom);
	}

	deltaZ = err.at(2,0) + m1*m1 - m2*m2 + m3*m3 - m4*m4;
	denom = 2 * (m1 + m2 + m3 + m4);
	if (abs(denom) > 0.001) {
		deltaZ = deltaZ / denom;
	} else if (0 != denom) {
		deltaZ = deltaZ * sign(denom);
	}

	m2 -= deltaX;
	m4 += deltaX;
	m1 -= deltaY;
	m3 += deltaY;

	m1 -= deltaZ;
	m3 -= deltaZ;
	m2 += deltaZ;
	m4 += deltaZ;

	SetAndScaleMotors(m1,m2,m3,m4);

	// solving for the thrust deltas entails finding the roots of
	// quadratic equation (I think)
	double deltaThrust = 0;
	double aCoeff = 4;
	double bCoeff = 2 * m_Motors.sum();
	for (int i = 0; i < 2; i++) {
		double cCoeff = m_Motors.lengthSq() - targetThrust;
		double det = bCoeff * bCoeff - 4 * aCoeff * cCoeff;
		if (det < 0 && fabs(det) < 0.05) {
			det = 0;
		}
		if (det >= 0) {
			double x1 = (-bCoeff + sqrt(det)) / (2 * aCoeff);
			double x2 = (-bCoeff - sqrt(det)) / (2 * aCoeff);
			// we will pick the root that will result in the smallest
			// deviation from the min/max values.
			double med = (m_MaxRev + m_MinRev)/2;
			Vector4d dev1 = m_Motors;
			Vector4d dev2 = m_Motors;
			dev1 = dev1 + x1;
			dev1 = dev1 - med;
			dev2 = dev2 + x2;
			dev2 = dev2 - med;
			if (dev1.lengthSq() < dev2.lengthSq()) {
				deltaThrust = x1;
			} else {
				deltaThrust = x2;
			}
			break;
		} else {
			if (i > 0) {
				printf("WARN: Negative determinant %lf for thrust %1.3lf\n"
						"\t%1.3lf %1.3lf %1.3lf %1.3lf\n",
						det, targetThrust,
						m_Motors.at(0,0),m_Motors.at(1,0),
						m_Motors.at(2,0),m_Motors.at(3,0));
				break;
			}
			// fixup target thrust, so the det will be 0
			targetThrust = m_Motors.lengthSq() - bCoeff * bCoeff / (4 * aCoeff);
		}
	}

	m_Motors = m_Motors + deltaThrust;
	SetAndScaleMotors(
			m_Motors.at(0,0),
			m_Motors.at(1,0),
			m_Motors.at(2,0),
			m_Motors.at(3,0));
}

void QuadRotorPilot::SetAndScaleMotors(
		double m1,
		double m2,
		double m3,
		double m4)
{
	Vector4d mv(m1,m2,m3,m4);
	double minVal = mv.minValue();
	if (minVal < m_MinRev) {
		mv = mv + (m_MinRev - minVal);
	}
	double maxVal = mv.maxValue();
	if (maxVal > m_MaxRev) {
		mv = mv - (maxVal - m_MaxRev);
	}
	minVal = mv.minValue();
	if (minVal < m_MinRev || maxVal > m_MaxRev) {
		double scale = (m_MaxRev-m_MinRev)/(maxVal-minVal);
		mv = mv - minVal;
		mv = mv * scale;
		mv = mv + m_MinRev;
	}
	m_Motors = mv;
}

const Vector4d* QuadRotorPilot::GetMotors() const
{
	return &m_Motors;
}

void QuadRotorPilot::SetMinRev(double minRev)
{
	m_MinRev = fmax(0,minRev);
}

void QuadRotorPilot::SetMaxRev(double maxRev)
{
	m_MaxRev = fmin(1,maxRev);
}

double QuadRotorPilot::CalcDesiredOmega(double _err)
{
	double err = fabs(fmin(_err*100,100));
	double omega = pow(err,2)/50;
	return (_err > 0) ? omega : -omega;
}

Vector3d QuadRotorPilot::CalcDesiredOmega3d(
	const Vector3d& err)
{
	Vector3d omega;
	omega.at(0,0) = CalcDesiredOmega(err.at(0,0));
	omega.at(1,0) = CalcDesiredOmega(err.at(1,0));
	omega.at(2,0) = CalcDesiredOmega(err.at(2,0));
	return omega;
}

double QuadRotorPilot::CalcTorqueCorrection(
		double torqueEst,
		double omega,
		double desiredOmega,
		double angAccel,
		int axis)
{
	double tc = 0;
	static const double step = 0.05;
	if (fabs(torqueEst) > fabs(m_TorqueEstimate.at(axis,0))) {
		// moving away from the target, inc the torque
		tc += 2*step;
	} else if ((omega >= 0 && omega < desiredOmega) ||
			(omega < 0 && omega > desiredOmega)) {
		// still need to accel, inc the torque
		tc += step;
		if (angAccel <= 0) {
			tc += step;
		}
	} else {
		// closing in on the target
		tc -= step;
		if (angAccel > 0) {
			tc -= step;
		}
	}
	return tc;
}

#if 0
double QuadRotorPilot::CalcTorqueCorrection(
		double torqueEst,
		double omega,
		double desiredOmega,
		double angAccel,
		int axis)
{
	double omegaErr = fabs(desiredOmega-omega);
	double prevOmegaErr = fabs(m_Omega.at(axis,0)-m_DesiredOmega.at(axis,0));
	double desiredOmegaAccel = (desiredOmega-m_DesiredOmega.at(axis,0))/m_Dt;
	double nextOmega = omega + angAccel*m_Dt;
	double nextDesiredOmega = desiredOmega + desiredOmegaAccel*m_Dt;
	double nextOmegaErr = fabs(nextDesiredOmega-nextOmega);
	double tc = 0;
	int closingTarget = 1;
	if (fabs(torqueEst) > fabs(m_TorqueEstimate.at(axis,0))) {
		closingTarget = -1;
	}
	nextOmegaErr *= nextOmegaErr;
	prevOmegaErr *= prevOmegaErr;
	tc = omegaErr*omegaErr;
	tc /= omega*omega + desiredOmega*desiredOmega + 0.1;
	tc *= fabs(omega)/500;
	tc = fmin(tc,1);
	static const double epsilon = 0.5;
	static const double step = 0.05;
	double tcStep = 0;
#if 0
	if (prevOmegaErr > omegaErr) {
		if ((desiredOmega-omega)*(nextDesiredOmega-nextOmega) < 0) {
			tc = -tc;
		} else if (omegaErr > fabs(desiredOmega-nextOmega)) {
			tc = -tc/4;
		}
	}
	//return desiredOmega>=omega ? tc : -tc;
	return tc * sign(torqueEst);
	static const double epsilon = 0.5;
	static const double step = 0.05;
	double tcStep = 0;
	if (omegaErr < 1.0 && desiredOmega < 1.0) {
		m_TorqueCorrection.at(axis,0) = 0;
	}
	else if (fabs(prevOmegaErr-omegaErr) < epsilon) {
		if (fabs(omegaErr-nextOmegaErr) < epsilon) {
			tcStep += closingTarget*step;
		} else if (omegaErr < nextOmegaErr) {
			tcStep += closingTarget*2*step;
		} else { // omegaErr > nextOmegaErr
			tcStep -= step/2;
		}
	} else if (prevOmegaErr < omegaErr) {
		if (fabs(omegaErr-nextOmegaErr) < epsilon) {
			tcStep = 0;
		} else if (omegaErr < nextOmegaErr) {
			tcStep += closingTarget*2*step;
		} else { // omegaErr > nextOmegaErr
			tcStep -= step;
		}
	} else { // prevOmegaErr > omegaErr
		if (fabs(omegaErr-nextOmegaErr) < epsilon) {
			tcStep = 0;
		} else if (omegaErr < nextOmegaErr) {
			tcStep += closingTarget*step/2;
		} else { // omegaErr > nextOmegaErr
			tcStep -= 2*step;
		}
	}
	tcStep *= sign(torqueEst+0.0001);
	tc = tc * tcStep;
	return tc;
#endif
}
#endif
