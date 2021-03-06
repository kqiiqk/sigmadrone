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

#ifndef _PCA9685_H_
#define _PCA9685_H_

#include <linux/types.h>

#define PCA9685_BITS 12
#define PCA9685_SIZE (1 << PCA9685_BITS)
#define PCA9685_MASK (PCA9685_SIZE - 1)
#define PCA9685_PULSE(__on__, __off__) ((((((__u32)(__on__)) & PCA9685_MASK)) << 16) | (((__u32)(__off__)) & PCA9685_MASK))

#define PCA9685_IOC_MAGIC	'P'
#define PCA9685_IOC_SETLED0	_IO(PCA9685_IOC_MAGIC, 0)
#define PCA9685_IOC_SETLED1	_IO(PCA9685_IOC_MAGIC, 1)
#define PCA9685_IOC_SETLED2	_IO(PCA9685_IOC_MAGIC, 2)
#define PCA9685_IOC_SETLED3	_IO(PCA9685_IOC_MAGIC, 3)
#define PCA9685_IOC_SETLED4	_IO(PCA9685_IOC_MAGIC, 4)
#define PCA9685_IOC_SETLED5	_IO(PCA9685_IOC_MAGIC, 5)
#define PCA9685_IOC_SETLED6	_IO(PCA9685_IOC_MAGIC, 6)
#define PCA9685_IOC_SETLED7	_IO(PCA9685_IOC_MAGIC, 7)
#define PCA9685_IOC_SETLED8	_IO(PCA9685_IOC_MAGIC, 8)
#define PCA9685_IOC_SETLED9	_IO(PCA9685_IOC_MAGIC, 9)
#define PCA9685_IOC_SETLED10	_IO(PCA9685_IOC_MAGIC, 10)
#define PCA9685_IOC_SETLED11	_IO(PCA9685_IOC_MAGIC, 11)
#define PCA9685_IOC_SETLED12	_IO(PCA9685_IOC_MAGIC, 12)
#define PCA9685_IOC_SETLED13	_IO(PCA9685_IOC_MAGIC, 13)
#define PCA9685_IOC_SETLED14	_IO(PCA9685_IOC_MAGIC, 14)
#define PCA9685_IOC_SETLED15	_IO(PCA9685_IOC_MAGIC, 15)

#define PCA9685_IOC_GETLED0	_IO(PCA9685_IOC_MAGIC, 16)
#define PCA9685_IOC_GETLED1	_IO(PCA9685_IOC_MAGIC, 17)
#define PCA9685_IOC_GETLED2	_IO(PCA9685_IOC_MAGIC, 18)
#define PCA9685_IOC_GETLED3	_IO(PCA9685_IOC_MAGIC, 19)
#define PCA9685_IOC_GETLED4	_IO(PCA9685_IOC_MAGIC, 20)
#define PCA9685_IOC_GETLED5	_IO(PCA9685_IOC_MAGIC, 21)
#define PCA9685_IOC_GETLED6	_IO(PCA9685_IOC_MAGIC, 22)
#define PCA9685_IOC_GETLED7	_IO(PCA9685_IOC_MAGIC, 23)
#define PCA9685_IOC_GETLED8	_IO(PCA9685_IOC_MAGIC, 24)
#define PCA9685_IOC_GETLED9	_IO(PCA9685_IOC_MAGIC, 25)
#define PCA9685_IOC_GETLED10	_IO(PCA9685_IOC_MAGIC, 26)
#define PCA9685_IOC_GETLED11	_IO(PCA9685_IOC_MAGIC, 27)
#define PCA9685_IOC_GETLED12	_IO(PCA9685_IOC_MAGIC, 28)
#define PCA9685_IOC_GETLED13	_IO(PCA9685_IOC_MAGIC, 29)
#define PCA9685_IOC_GETLED14	_IO(PCA9685_IOC_MAGIC, 30)
#define PCA9685_IOC_GETLED15	_IO(PCA9685_IOC_MAGIC, 31)

#define PCA9685_IOC_GETRATE	_IO(PCA9685_IOC_MAGIC, 32)
#define PCA9685_IOC_SETRATE	_IO(PCA9685_IOC_MAGIC, 33)
#define PCA9685_IOC_GETMOTOROE	_IO(PCA9685_IOC_MAGIC, 34)
#define PCA9685_IOC_SETMOTOROE	_IO(PCA9685_IOC_MAGIC, 35)
#define PCA9685_IOC_GETPWMOE	_IO(PCA9685_IOC_MAGIC, 36)
#define PCA9685_IOC_SETPWMOE	_IO(PCA9685_IOC_MAGIC, 37)


#endif
