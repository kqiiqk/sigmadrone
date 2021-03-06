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
#include <iostream>
#include "boost/bind.hpp"
#include "application.h"




application::application()
	: io_service_rpc_()
	, signals_(io_service_rpc_)
{
	// Register to handle the signals that indicate when the server should exit.
	// It is safe to register for the same signal multiple times in a program,
	// provided all registration for the specified signal is made through Asio.
	signals_.add(SIGINT);
	signals_.add(SIGTERM);
#if defined(SIGQUIT)
	signals_.add(SIGQUIT);
#endif // defined(SIGQUIT)
	signals_.async_wait(boost::bind(&application::signal_handler_terminate, this));
}

application::~application()
{

}

void application::signal_handler_terminate()
{
	rpc_server_->stop();
}

void application::init(int argc, char *argv[])
{

}

void application::headers_request_handler(http::server::connection& connection, const http::server::request& req, http::server::reply& rep)
{
	rep.headers.insert_header("Content-Type", "text/plain");

	rep.content.append(req.request_line());
	for (http::headers::const_iterator it = req.headers.begin(); it != req.headers.end(); it++) {
		rep.content.append(it->first + ": " + it->second + "\n");
	}
	rep.status = http::server::reply::ok;
}

void application::echo_request_handler(http::server::connection& connection, const http::server::request& req, http::server::reply& rep)
{
	rep.headers.insert_header("Content-Type", "text/plain");

	rep.content = req.content;
	rep.status = http::server::reply::ok;
}

static void method_request_handler(http::server::connection& connection, const http::server::request& req, http::server::reply& rep)
{
	rep.headers.insert_header("Content-Type", "text/plain");
	rep.content = req.method + "\n";
	rep.status = http::server::reply::ok;
}


void application::jsonrpc_request_handler(http::server::connection& connection, const http::server::request& req, http::server::reply& rep)
{
	rep.content = "error: {\"code\":-32601,\"message\":\"Method not not found\"}\n";
	rep.status = http::server::reply::ok;
}

int application::run()
{
	rpc_server_.reset(new http::server::http_server(io_service_rpc_, "0.0.0.0", "8080"));

	/*
	 * Register member function (request handler)
	 */
	rpc_server_->add_uri_handler("/jsonrpc", boost::bind(&application::jsonrpc_request_handler, this, _1, _2, _3));
	rpc_server_->add_uri_handler("/echo", boost::bind(&application::echo_request_handler, this, _1, _2, _3));
	rpc_server_->add_uri_handler("/headers", boost::bind(&application::headers_request_handler, this, _1, _2, _3));

	/*
	 * Register global function (request handler)
	 */
	rpc_server_->add_uri_handler("/method", method_request_handler);
	io_service_rpc_.run();
	return 0;
}

