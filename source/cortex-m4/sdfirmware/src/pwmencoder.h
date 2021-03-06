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

#ifndef PWMENCODER_H_
#define PWMENCODER_H_

#include "hwtimer.h"
#include "gpiopin.h"
#include <vector>

class PwmEncoder {
public:

	static const uint32_t MAX_CHANNEL_COUNT = 4;

	/** Constructs the PwmEncoder object
	 *  @param timer_id ID of the timer to be used [1..14]
	 *  @param pwm_period Length of the pwm period - 2 mS, 20 mS, etc
	 *  @param out_pin_names Output pins, count must be [1..4]
	 *  @param channels Channels to be used, each element must be [1..4]. If
	 *                    specified, the vector must be of same size as @out_pin_names
	 */
	PwmEncoder(HwTimer::Id timer_id, const TimeSpan& pwm_period,
			const std::vector<PinName>& out_pin_names,
			const std::vector<uint32_t>& channels = std::vector<uint32_t>());

	~PwmEncoder() { stop(); }

	/** Starts the encoder.
	 *
	 *  @param pwm_period If specified the pwm_period overloads the one provided in the constructor
	 *  @returns true - success, false - failure
	 */
	bool start(const TimeSpan& pwm_period = TimeSpan::from_seconds(0));

	/** Stops the encoder
	 *
	 */
	void stop();

	/** Sets the duty cycle for a channel.
	 *  @param channel Channel to configure [1..4]
	 *  @param duty_cycle Duty cycle value, must be less than the pwm period
	 *  @returns true - success, false - failure
	 */
	bool set_duty_cycle(uint32_t channel, const TimeSpan& duty_cycle);

	/** Sets the duty cycle for a channel.
	 *  @param channel Channel to configure [1..4]
	 *  @param duty_cycle Relative duty_cycle value [0.0..1.0]
	 *  @returns true - success, false - failure
	 */
	bool set_duty_cycle(uint32_t channel, float duty_cycle);

	/** Get the number of active channel
	 *  @return number of active channels
	 */
	uint32_t get_channel_count();

	TimeSpan get_duty_cycle(uint32_t channel);

private:
	HwTimer timer_;
	std::vector<GPIOPin> out_pins_;
	std::vector<uint32_t> channels_;
};


#endif /* PWMENCODER_H_ */
