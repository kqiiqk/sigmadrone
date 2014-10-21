#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include "matrix.h"

#define VMATH_NAMESPACE vmath
//#include "vmath.h"
using namespace std;

void printQ(float X, float Y, float Z)
{
	cout << X << ", "<< Y << ", "<< Z << ": " << Quaternion<float>::fromEulerAngles(X, Y, Z) << endl;
}

void test_quaternion_transforms()
{
	cout << "Quaternion Transforms from: http://www.euclideanspace.com/maths/algebra/realNormedAlgebra/quaternions/transforms/" << std::endl << std::endl;
	QuaternionD q = QuaternionD(0, 0, 0, 1);
	QuaternionD Pin = QuaternionD(0, 2, 3, 4);
	cout << "q:    " << q << std::endl;
	cout << "Pin:  " << Pin << std::endl;

	/*
	 * The plane is defined by its normal vector represented as Quaternion 'q'
	 */
	cout << "Parallel component of plane       :  " << (Pin + q * Pin * q) * 1.0 / 2.0 << std::endl;
	cout << "Perpendicular component of plane  :  " << (Pin - q * Pin * q) * 1.0 / 2.0 << std::endl;
	cout << "Reflection in plane               :  " << (q * Pin * q) << std::endl;


}

int main(int argc, char *argv[])
{
	Vector3f Xi(1.00,    0.00,    0.00);
	Vector3f Yi(0.00,    1.00,    0.00);
	Vector3f Zi(0.00,    0.00,    1.00);

	Vector3f X(0.97,   -0.19,   -0.16);
	Vector3f Y(0.08,    0.85,   -0.52);
	Vector3f Z(0.23,    0.49,    0.84);
	Vector3f Gc(-0.16,   -0.52,    0.84);
	Vector3f Gn(-0.02,   -0.01,    1.00);
	Vector3f Gi(-0.02,   -0.01,    1.00);
	Quaternion<float> Q(0.96, -0.26, 0.10, -0.07);

	Gn = Gn.normalize();

	cout << "X: " << X.transpose();
	cout << "Y: " << Y.transpose();
	cout << "Z: " << Z.transpose();

	cout << endl;

	cout << "X: " << Q.rotate(Xi).transpose();
	cout << "Y: " << Q.rotate(Yi).transpose();
	cout << "Z: " << Q.rotate(Zi).transpose();

	cout << endl;
	cout << "Gi:               " << Gi.transpose();
	cout << "Gn:               " << Gn.transpose();
	cout << "Gc:               " << Gc.transpose();
	cout << "(~Q).roatate(Gn): " << (~Q).rotate(Gn).transpose();
	cout << "Q.roatate(Gc):    " << Q.rotate(Gc).transpose();

	cout << "Q:                " << Q << endl;
	cout << "Q':               " << Quaternion<float>::fromVectors(Gc, Gn).normalize() << endl;

	Quaternion<float> q = Quaternion<float>::fromVectorsPartial(Gc, Gn, 0.25).normalize();
	cout << "q:                " << q*q*q*q << endl;

	q = (q*q*q*q).normalize();

	X = (~q).rotate(X);
	Y = (~q).rotate(Y);
	Z = (~q).rotate(Z);

	cout << "X: " << X.transpose();
	cout << "Y: " << Y.transpose();
	cout << "Z: " << Z.transpose();

	cout << Quaternion<float>(1,2,3,4).ln() << endl;
	cout << Quaternion<float>(1,2,3,4).exp() << endl;

	Quaternion<float> I = Quaternion<float>::fromAxisRot(Vector3f(1.00, 0.00, 0.00), 30);
	Quaternion<float> F = Quaternion<float>::fromAxisRot(Vector3f(0.00, 1.00, 0.00), 210);

	cout << "I:      " << I << endl;
	cout << "F:      " << F << endl;
	cout << "nlerp:  " << Quaternion<float>::nlerp(I, F, 1.0) << endl;



	cout << "2*Ln(F * ~I): " << (F * ~I).ln() * 2 << endl;
	cout << "W(t)        : " << Quaternion<float>::angularVelocity(I, F, 1.0).transpose() << endl;


	test_quaternion_transforms();

	return 0;
}
