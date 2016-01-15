/*
 *  Sigmadrone
 *  Copyright (c) 2013-2015 The Sigmadrone Developers
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 *  Martin Stoilov <martin@sigmadrone.org>
 *  Svetoslav Vassilev <svassilev@sigmadrone.org>
 */
#include "tripilot.h"

TriPilot::TriPilot()
{
	min_thrust_ = 0.0;
	max_thrust_ = 1.0;
	target_thrust_ = 0.0;

	Vector3f thrust_dir(0, 0, -1);
	propellers_.push_back(Propeller(Vector3f(-1, -1,  0), thrust_dir, Propeller::CW));
	propellers_.push_back(Propeller(Vector3f(-1,  1,  0), thrust_dir, Propeller::CCW));
	propellers_.push_back(Propeller(Vector3f( 1,  1,  0), thrust_dir, Propeller::CW));
	propellers_.push_back(Propeller(Vector3f( 1,  -1,  0), thrust_dir, Propeller::CCW));
}

TriPilot::~TriPilot()
{
}

void TriPilot::set_pid_coefficents(const DroneState& state)
{
	pid_pitchroll_.set_kp_ki_kd(state.kp_, state.ki_, state.kd_);
	pid_yaw_.set_kp_ki_kd(state.yaw_kp_, state.yaw_ki_, state.yaw_kd_);
}

Vector3f TriPilot::get_torque(const QuaternionF &in_Q, const TimeSpan& dt, float yaw_factor)
{
	Vector3f torq;
	Vector3f Zset = set_Q_.rotate(Vector3f(0.0, 0.0, 1.0));
	Vector3f Zin = in_Q.conjugate().rotate(Vector3f(0.0, 0.0, 1.0));
	QuaternionF XYtorq = QuaternionF::fromVectors(Zin, Zset);
	Vector3f error = XYtorq.axis().normalize() * XYtorq.angle() * -1.0;

	torq = pid_pitchroll_.get_pid(error, dt.seconds_float());

#if 1
	// targetQ = attitudeQ * errQ; ==> (~attitudeQ) * attitudeQ * errQ = (~attitudeQ) * targetQ;
	// ==> errQ = (~attitudeQ) * targetQ;
	QuaternionF Ztorq = (~in_Q) * set_Q_;
	QuaternionF twist, swing;
	QuaternionF::decomposeTwistSwing(Ztorq, Vector3f(0,0,1), swing, twist);
	Vector3f error_z = twist.axis().normalize() * twist.angle();
	error_z.at(0) = error_z.at(1) = 0.0;
	torq.at(2) = pid_yaw_.get_d(error_z, dt.seconds_float()).at(2);
	error.at(2) = error_z.at(2);
#endif

	return torq;
}


void TriPilot::update_state(DroneState& state)
{
	Vector3f torque_rpm;

	set_Q_ = state.target_;
	set_target_thrust(state.base_throttle_);
	set_pid_coefficents(state);

	torque_correction_ = get_torque(state.attitude_, state.dt_, state.yaw_throttle_factor_);


	//  From the motor trust measurement:
	//  0.6 --> 450g * 22.5cm
	//  0.6 --> (450/1000) * (22.5/100)
	//  0.6 --> 0.10125 kg.m
	static const float rpm_coeff = 0.6 / (101.25/1000.0) / 2.0;
	torque_rpm = torque_correction_ * rpm_coeff;

	Vector3f torque_bias(state.roll_bias_, state.pitch_bias_, state.yaw_bias_);
	torque_rpm = torque_rpm + torque_bias;
	Vector3f torque_yaw(0.0, 0.0, state.yaw_throttle_factor_ * state.yaw_ * target_thrust_);
	torque_rpm += torque_yaw;

	motors_ = Vector4f(
			target_thrust_ + torque_rpm.dot(propellers_.at(0).torque_dir()),
			target_thrust_ + torque_rpm.dot(propellers_.at(1).torque_dir()),
			target_thrust_ + torque_rpm.dot(propellers_.at(2).torque_dir()),
			target_thrust_ + torque_rpm.dot(propellers_.at(3).torque_dir()));
	set_and_scale_motors(motors_.at(0), motors_.at(1), motors_.at(2), motors_.at(3));
	state.motors_ = motors();
	state.pid_torque_ = torque_rpm;
	return;
}

void TriPilot::set_and_scale_motors(float m1, float m2, float m3, float m4)
{
	Vector4f mv(m1, m2, m3, m4);
	float min_val = mv.min();
	if (min_val < min_thrust_) {
		mv = mv + (min_thrust_ - min_val);
	}
	float max_val = mv.max();
	if (max_val > max_thrust_) {
		mv = mv - (max_val - max_thrust_);
	}
	max_val = mv.max();
	min_val = mv.min();
	if (min_val < min_thrust_ || max_val > max_thrust_) {
		float scale = (max_thrust_ - min_thrust_) / (max_val - min_val);
		mv = mv - min_val;
		mv = mv * scale;
		mv = mv + min_thrust_;
	}
	motors_ = mv;
}

const Vector4f& TriPilot::motors() const
{
	return motors_;
}

void TriPilot::set_min_thrust(float min)
{
	min_thrust_ = fmax(0.0,min);
}

void TriPilot::set_max_thrust(float max)
{
	max_thrust_ = fmin(1.0,max);
}

void TriPilot::set_target_thrust(float thr) {
	target_thrust_ = fmax(fmin(max_thrust_, thr), min_thrust_);
}
