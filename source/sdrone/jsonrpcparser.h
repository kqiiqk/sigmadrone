/*
 * jsonrpcparser.h
 *
 *  Created on: Dec 15, 2013
 *      Author: svassilev
 */

#ifndef JSONRPCPARSER_H_
#define JSONRPCPARSER_H_

#include "commoninc.h"
#include <json-glib/json-glib.h>
#include <json-glib/json-gobject.h>


class JsonRpcParser {
public:
	JsonRpcParser();
	~JsonRpcParser();
	bool ParseBuffer(
		const char* buffer,
		uint32_t len,
		uint32_t* usedLen
		);
	bool ParseFile(const char* fileName);
	SdCommandCode GetRpcMethod();
	IParsedJsonObject* GetRpcParams();
	uint64_t GetRpcCallId();
	bool GetDroneConfig(SdDroneConfig*);
	bool GetThrust(
			double* thrust,
			double* minThrust,
			double* maxThrust);
	bool IsValidRpcSchema();
private:
	void ParseImuConfig(
			IParsedJsonObject* obj,
			SdImuDeviceConfig* imu
			);
	void Reset();

	static void ParseObject(IParsedJsonObject* jobj);
	static void ParseNode(IParsedJsonValue* jNode);
	static void ParseArray(IParsedJsonArray* jArray);

	JsonParser* m_jsonParser;
	IParsedJsonObject* m_rootObj;
};

#endif /* JSONRPCPARSER_H_ */
