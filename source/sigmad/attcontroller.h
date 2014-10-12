/*
 * attcontroller.h
 *
 *  Created on: Oct 7, 2014
 *      Author: mstoilov
 *
 *  Attitude Controller: reads the sensors and controls the servo motors
 */

#ifndef ATTCONTROLLER_H_
#define ATTCONTROLLER_H_

#include <boost/scoped_ptr.hpp>
#include <boost/thread.hpp>
#include "matrix.h"

class server_app;

class attcontroller {
public:
	attcontroller(server_app& app);
	virtual ~attcontroller();
	void start();
	void stop();
	QuaternionD get_attitude() const;

protected:
	void worker();

protected:
	server_app& app_;
	bool exit_;
	boost::shared_ptr<boost::thread> thread_;
	QuaternionD attQ_;
};


#endif /* ATTCONTROLLER_H_ */