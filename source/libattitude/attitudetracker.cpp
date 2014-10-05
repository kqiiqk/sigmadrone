#include "attitudetracker.h"

attitudetracker::attitudetracker(double blend_g, Vector3d earth_g)
	: blend_g_(blend_g)
	, earth_g_(earth_g.normalize())
	, attitude_(QuaternionD::identity)
{

}

attitudetracker::~attitudetracker()
{
}

Vector3d attitudetracker::get_earth_g() const
{
	return earth_g_;
}

void attitudetracker::set_earth_g(Vector3d earth_g)
{
	earth_g_ = earth_g.normalize();
}

double attitudetracker::get_nlerp_blend() const
{
	return blend_g_;
}

void attitudetracker::set_nlerp_blend(double blend_g)
{
	blend_g_ = blend_g;
}

void attitudetracker::track_gyroscope(Vector3d omega, double dtime)
{
	QuaternionD deltaq = QuaternionD::fromAngularVelocity(omega, dtime);
	attitude_ = attitude_ * deltaq; 			// attitude_ * deltaq * ~attitude_ * attitude_;
	attitude_ = attitude_.normalize();
}

void attitudetracker::track_accelerometer(Vector3d g)
{
	Vector3d g_estimated = attitude_.conjugated().rotate(earth_g_);
	QuaternionD q = QuaternionD::fromVectors(g_estimated, g);
	QuaternionD deltaq = QuaternionD::nlerp(QuaternionD::identity, q, blend_g_);
	attitude_ = attitude_ * deltaq.conjugated(); // attitude_ * deltaq * ~attitude_ * attitude_;
	attitude_ = attitude_.normalize();
}

QuaternionD attitudetracker::get_attitude() const
{
	return attitude_;
}