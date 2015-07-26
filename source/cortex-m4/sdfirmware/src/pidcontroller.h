/*
 * pidcontroller.h
 *
 * Implements Proportional Integral Derivative controller logic
 *
 *  Created on: May 27, 2013
 *      Author: svassilev
 */

#ifndef PIDCONTROLLER_H_
#define PIDCONTROLLER_H_

#include "matrix.h"

template <int M>
class PidController
{
public:

	typedef MatrixMN<float, M, 1> PidVector;

	PidController(
			float kp,
			float ki,
			float kd,
			float fCutoff = -1)
	{
		reset(kp,ki,kd,fCutoff);
	}
	void reset(
			float kp,
			float ki,
			float kd,
			float fCutoff = -1)
	{
		kp_ = kp;
		ki_ = ki;
		kd_ = kd;
		err_.clear();
		integral_err_.clear();
		last_der_err_.clear();
		last_input_.clear();
		filter_ = (fCutoff > 0.0) ? (1 / (2 * M_PI * fCutoff)) : 0;
		after_reset_ = true;
	}

	PidVector get_d(const PidVector& err, float dt)
	{
		PidVector derivative;
		float filter = dt / (filter_ + dt);
		if (!after_reset_) {
			derivative = (err - last_input_) / dt;
		} else {
			after_reset_ = false;
		}
		derivative = last_der_err_ + (derivative - last_der_err_) * filter;
		last_input_ = err;
		last_der_err_ = derivative;
		return derivative * kd_;
	}

	PidVector get_p(const PidVector& err)
	{
		return err * kp_;
	}

	PidVector get_i(
			const PidVector& err,
			float dt)
	{
		return _get_i(err,dt,0);
	}


	PidVector get_i(
			const PidVector& err,
			float dt,
			const PidVector& limit)
	{
		return _get_i(err,dt,&limit);
	}

	PidVector get_i(
			const PidVector& err,
			float dt,
			float leakRate) // 0..1
	{
		return _get_i(err,dt,leakRate,0);
	}

	PidVector get_i(
			const PidVector& err,
			float dt,
			float leakRate, // 0..1
			const PidVector& limit)
	{
		integral_err_ = integral_err_ - integral_err_*leakRate;
		return _get_i(err,dt,&limit);
	}

	PidVector get_pid(const PidVector& err, float dt)
	{
		return get_p(err) + get_d(err, dt) + get_i(err,dt);
	}

	PidVector get_pid(
			const PidVector& err,
			float dt,
			float leakRate)
	{
		return get_p(err) + get_d(err, dt) + get_i(err,dt,leakRate);
	}

	const PidVector& integral_error() const { return integral_err_; }

private:
	PidVector _get_i(
			const PidVector& err,
			float dt,
			const PidVector* limit)
	{
		integral_err_ = integral_err_ + err * dt;
		limit_vector(&integral_err_,limit);
		return integral_err_ * ki_;
	}

	static void limit_vector(PidVector* v, const PidVector* limit)
	{
		if (!!limit) {
			for (size_t i = 0; i < 3; i++) {
				v->at(i,0) = fmin(v->at(i,0),limit->at(i,0));
				v->at(i,0) = fmax(v->at(i,0),-limit->at(i,0));
			}
		}
	}

private:
	PidVector err_;
	PidVector integral_err_;   // accumulated integral error
	PidVector last_der_err_; // last derivative err
	PidVector last_input_;
	float kp_; /*proportional gain*/
	float ki_; /*integral gain*/
	float kd_; /*derivative gain*/

	//
	// Low pass derivative filter, filtering out sudden jumps in the derivative
	// err. Calculated as 1 / (2 * PI * Fc)
	//
	float filter_;

	bool after_reset_;
};



typedef PidController<3> PidController3f;
typedef PidController<4> PidController4f;

#endif /* PIDCONTROLLER_H_ */