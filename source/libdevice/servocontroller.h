#ifndef SERVOCONTROLLER_H_
#define SERVOCONTROLLER_H_

#include "servomotor.h"

class servocontroller
{
public:
	servocontroller(unsigned int channels);
	virtual ~servocontroller();
	servomotor& motor(unsigned int channel);

	/**
	 * Set the rate of the generated PWM pulses
	 */
	virtual void setrate(unsigned int rate);

	/**
	 * Get the rate of the generated PWM pulses
	 */
	virtual unsigned int getrate();

	/**
	 * Get the current pulse from the hardware
	 */
	virtual unsigned int getpulse(unsigned int channel);

	/**
	 * Get the current pulse from the hardware
	 */
	virtual void setpulse(unsigned int channel, unsigned int pulse);

	/**
	 * Get the current pulse length from the hardware in mSeconds
	 */
	virtual double getpulse_ms(unsigned int channel);

	/**
	 * Update the hardware PWM controller with the motor(s) pulse
	 */
	virtual void update();

	/**
	 * Enable hardware output
	 */
	virtual void enable();

	/**
	 * Disable hardware output
	 */
	virtual void disable();

protected:
	servomotor* motors_;
	size_t channels_;
	unsigned int rate_;
};

#endif