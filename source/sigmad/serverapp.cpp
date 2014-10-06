#include <iostream>
#include <boost/algorithm/string.hpp>
#include <boost/enable_shared_from_this.hpp>
#include <boost/thread.hpp>
#include <boost/date_time/posix_time/posix_time.hpp>
#include <boost/lexical_cast.hpp>
#include "libhttp/base64.hpp"
#include "serverapp.h"
#include "daemon.h"

server_app::server_app(const cmd_args& args)
	: logger("server_app: ")
	, logfile_(new logfile("sigmad_server.log", 1024*1024*2, logfile::none))
	, io_service_()
	, signals_(io_service_)
	, args_(args)
{
	set_log_file(logfile_);
	// Register to handle the signals that indicate when the server should exit.
	// It is safe to register for the same signal multiple times in a program,
	// provided all registration for the specified signal is made through Asio.
	signals_.add(SIGINT);
	signals_.add(SIGTERM);
#if defined(SIGQUIT)
	signals_.add(SIGQUIT);
#endif // defined(SIGQUIT)
	signals_.async_wait(boost::bind(&server_app::signal_handler_terminate, this));
}

server_app::~server_app()
{

}

void server_app::signal_handler_terminate()
{
	user_rpcserver_->stop();
	log_info_message("Received terminate signal.");
}

void server_app::stop()
{
	/*
	 * This will cause the signal_handler_terminate
	 * to be called.
	 */
	signals_.cancel();
}


void server_app::init_user_rpcserver()
{
	user_rpcserver_.reset(new user_rpcserver(
			*this,
			io_service_,
			args_.get_value("rpcconnect", "127.0.0.1"),
			args_.get_value("rpcport", "18222")));
	user_rpcserver_->set_log_file(logfile_);
	log_info_message("Starting user rpc server.");

	/*
	 * Use the global log file to log the RPC server messages.
	 */
	user_rpcserver_->set_log_file(logfile_);
}

void server_app::init_servo_controller()
{
	if (args_.get_value("servo-ctrl") == "pca9685") {
		servoctrl_.reset(new pca9685controller(4));
	} else {
		servoctrl_.reset(new servocontroller(4));
	}
	servoctrl_->motor(0) = servomotor(1.0, 1.32, 1.1, 2.2);
	servoctrl_->motor(1) = servomotor(1.0, 1.32, 1.1, 2.2);
	servoctrl_->motor(2) = servomotor(1.0, 1.32, 1.1, 2.2);
	servoctrl_->motor(3) = servomotor(1.0, 1.32, 1.1, 2.2);
	servoctrl_->setrate(300);
	servoctrl_->update();
}

int server_app::run(int argc, const char *argv[])
{
	if (args_.get_value("daemon") == "1")
		daemon_init();
	get_log_file()->log_level(args_.get_value("loglevel", "debug"));
	log_info_message("Server starting.");
	init_servo_controller();
	init_user_rpcserver();
	boost::thread rpc_thread(boost::bind(&boost::asio::io_service::run, &io_service_));
	rpc_thread.join();
	log_info_message("Server stopping.");
	return 0;
}
