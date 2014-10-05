#ifndef ATTITUDETRACKER_H_
#define ATTITUDETRACKER_H_

#include "matrix.h"

class attitudetracker
{
public:
	attitudetracker(double blend_g = 0.05, Vector3d earth_g = Vector3d(0, 0, 1));
	~attitudetracker();
	Vector3d get_earth_g() const;
	void set_earth_g(Vector3d earth_g);
	double get_nlerp_blend() const;
	void set_nlerp_blend(double blend_g);
	void track_gyroscope(Vector3d omega, double dtime);
	void track_accelerometer(Vector3d g);
	QuaternionD get_attitude() const;

protected:
	/*
	 * This is the blend parameter for the Quaternion::nlerp
	 * used to approximate between the estimated quaternion
	 * and the one measured from the accelerometer.
	 */
	double blend_g_;

	/*
	 * The earth G vector.
	 */
	Vector3d earth_g_;

	/*
	 * Current attitude.
	 */
	QuaternionD attitude_;
};

#endif