/*
 * uartrpcserver.h
 *
 *  Created on: Jul 21, 2015
 *      Author: mkstoilo
 */

#ifndef UARTRPCSERVER_H_
#define UARTRPCSERVER_H_

#include "uart.h"
#include "dronestate.h"
#include "librexjsonrpc/rpcserver.h"

class UartRpcServer : public rpc_server<UartRpcServer, UART*>
{
public:
	UartRpcServer(DroneState& dronestate);
	virtual ~UartRpcServer();

	void jsonrpc_request_handler(UART* uart);

protected:
	rexjson::value rpc_spec(UART* uart, rexjson::array& params, rpc_exec_mode mode = execute);
	rexjson::value rpc_help(UART* uart, rexjson::array& params, rpc_exec_mode mode = execute);
	rexjson::value rpc_get_attitude(UART* uart, rexjson::array& params, rpc_exec_mode mode = execute);
	rexjson::value rpc_get_altitude(UART* uart, rexjson::array& params, rpc_exec_mode mode = execute);
	rexjson::value rpc_get_pressure(UART* uart, rexjson::array& params, rpc_exec_mode mode = execute);
	rexjson::value rpc_get_temperature(UART* uart, rexjson::array& params, rpc_exec_mode mode = execute);
	rexjson::value rpc_get_motors(UART* uart, rexjson::array& params, rpc_exec_mode mode = execute);
	rexjson::value rpc_get_dronestate(UART* uart, rexjson::array& params, rpc_exec_mode mode = execute);

	rexjson::value rpc_kp(UART* uart, rexjson::array& params, rpc_exec_mode mode = execute);
	rexjson::value rpc_kd(UART* uart, rexjson::array& params, rpc_exec_mode mode = execute);
	rexjson::value rpc_ki(UART* uart, rexjson::array& params, rpc_exec_mode mode = execute);
	rexjson::value rpc_set_accelerometer_correction_period(UART* uart, rexjson::array& params, rpc_exec_mode mode = execute);


protected:
	std::string cached_request_;
	DroneState& dronestate_;

};

#endif /* UARTRPCSERVER_H_ */
