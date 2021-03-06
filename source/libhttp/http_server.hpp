#ifndef HTTP_SERVER_HPP
#define HTTP_SERVER_HPP

#include <string>
#include <cstdarg>
#include <boost/asio.hpp>
#include <boost/noncopyable.hpp>
#include "request_handler.hpp"
#include "connection_manager.hpp"
#include "liblogger/logger.h"
#include "liblogger/logfile.h"

namespace http {
namespace server {

/// The top-level class of the HTTP server.
class http_server: private boost::noncopyable, public ::logger<logfile_base>
{
public:
	typedef http::server::connection connection_ctx;

	/// Construct the server to listen on the specified TCP address and port, and
	/// serve up files from the given directory.
	explicit http_server(boost::asio::io_service& io_service, const std::string& address, const std::string& port);

	/// Handle a request to stop the server.
	void stop(unsigned int milliseconds = 0);

	/// io_service_ accessor
	boost::asio::io_service& io_service();

	template<typename handler_type>
	void add_uri_handler(const std::string& uri, handler_type handler_callback)
	{
		request_handler_.add_uri_handler<handler_type>(uri, handler_callback);
	}

	size_t get_remote_connections(std::vector<std::string>& connections);

	void schedule_blocked_requests(unsigned int millisec);

protected:
	/// Initiate an asynchronous accept operation.
	void start_accept();

	void handle_blocked_requests(const boost::system::error_code& e);

	void handle_stop(const boost::system::error_code& e);

	/// Handle completion of an asynchronous accept operation.
	void handle_accept(const boost::system::error_code& e);

	std::string address_;

	std::string port_;

	/// The io_service used to perform asynchronous operations.
	boost::asio::io_service& io_service_;

	/// Acceptor used to listen for incoming connections.
	boost::asio::ip::tcp::acceptor acceptor_;

	/// Used to stop the server
	boost::asio::deadline_timer timer_;

	/// Used to process blocked requests
	boost::asio::deadline_timer blocktimer_;

	/// The connection manager which owns all live connections.
	connection_manager connection_manager_;

	/// The handler for all incoming requests.
	request_handler request_handler_;

	/// The next connection to be accepted.
	connection_ptr new_connection_;
};

} // namespace server
} // namespace http

#endif // HTTP_SERVER_HPP
