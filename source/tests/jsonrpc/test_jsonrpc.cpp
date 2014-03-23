#include <iostream>
#include <string>
#include "cmdargs.h"
#include "jsonrpcparser.h"
#include "jsonrpcbuilder.h"

struct TestControl
{
	TestControl() {
		testsRun = testsPassed = 0;
		currentTestName = 0;
	}
	void OnTestBegin(const char* testName) {
		assert(0 == currentTestName);
		printf("--> TEST BEGIN: %s\n",testName);
		currentTestName = testName;
		++testsRun;
	}
	void OnTestFailed(
			int line,
			int err) {
		assert(currentTestName);
		printf("<-- TEST FAILED: %s, line %d, err %d \"%s\"\n",
				currentTestName,line,err,strerror(err));
		currentTestName= 0;
	}
	void OnTestPassed() {
		printf("<-- TEST PASSED: %s\n",currentTestName);
		++testsPassed;
		currentTestName = 0;
	}
	void PrintStats() {
		printf("--> Tests RUN:    %d\n", testsRun);
		printf("--> Tests PASSED: %d\n", testsPassed);
		printf("--> Tests FAILED: %d\n", testsRun-testsPassed);
	}
private:
	const char* currentTestName;
	int testsRun;
	int testsPassed;
} g_TestControl;

#define TEST_BEGIN(name) g_TestControl.OnTestBegin(name)
#define TEST_FAILED() g_TestControl.OnTestFailed(__LINE__, EINVAL)
#define TEST_FAILED_ERR(err) g_TestControl.OnTestFailed(__LINE__,err)
#define TEST_PASSED() g_TestControl.OnTestPassed()
#define TEST_STATS() g_TestControl.PrintStats()

void TestParseJsonRpcFile(const std::string& fileName)
{
	TEST_BEGIN("TestParseJsonRpcFile");
	SdJsonRpcParser parser;
	if (!parser.ParseFile(fileName.c_str())) {
		TEST_FAILED();
		return;
	}
	if (!parser.IsValidRpcSchema()) {
		TEST_FAILED();
		return;
	}
	if (parser.GetRpcCallId() == 0) {
		TEST_FAILED();
		return;
	}
	if (parser.GetRpcParams() == 0) {
		TEST_FAILED();
		return;
	}
	if (parser.GetRpcMethod().size() == 0) {
		TEST_FAILED();
		return;
	}


	SdDroneConfig config;
	if (!SdJsonParseDroneConfig(parser.GetRpcParams(),&config)) {
		TEST_FAILED();
		return;
	}

	/*
	 * Spot check on parameters
	 */
	if (!config.Accel.DeviceName.length() || 0 == config.Accel.SamplingRate ||
		!config.Gyro.DeviceName.length() || 0 == config.Gyro.SamplingRate) {
		TEST_FAILED();
		return;
	}

	TEST_PASSED();
	return;
}


void TestParseJsonRpcFromBuffer()
{
	TEST_BEGIN("TestParseJsonRpcFromBuffer");
	std::string jsonBuf;
	SdJsonRpcParser parser;
	uint32_t usedLen = 0;
	static const char* schema1 =
		"{"
		    "\"jsonrpc\": \"2.0\", \"method\": \"run\", \"params\": "
		    "{"
				"\"Flight\": "
				"{"
				 	 "\"Thrust\": 0.5,"
				 	 "\"MinThrust\":  0.3,"
				 	 "\"MaxThrust\": 0.7"
				"}"
			"}, "
			"\"id\": 0"
		"}";

	static const char* schema2 =
		"{"
		    "\"jsonrpc\": \"2.0\", \"method\": \"run\", \"params\": "
		    "{"
				"\"Flight\": "
				"{"
				 	 "\"Thrust\": 0.6,"
				 	 "\"MinThrust\":  0.4,"
				 	 "\"MaxThrust\": 0.8"
				"}"
			"}, "
			"\"id\": 0"
		"}";


	jsonBuf += schema1;

	if (!parser.ParseBuffer(jsonBuf.c_str(),jsonBuf.length(), &usedLen)) {
		TEST_FAILED();
		return;
	}

	if (usedLen != jsonBuf.length()) {
		TEST_FAILED();
		return;
	}

	double thrust=0, minThrust=0, maxThrust=0;
	SdJsonParseParseThrust(parser.GetRpcParams(), &thrust, &minThrust, &maxThrust);
	if (thrust != 0.5 || minThrust != 0.3 || maxThrust != 0.7) {
		TEST_FAILED();
		return;
	}

	/*
	 * Now add the second schema, parse, advance and then parse again
	 */
	jsonBuf += schema2;
	if (!parser.ParseBuffer(jsonBuf.c_str(),jsonBuf.length(), &usedLen)) {
		TEST_FAILED();
		return;
	}

	SdJsonParseParseThrust(parser.GetRpcParams(), &thrust, &minThrust, &maxThrust);
	if (thrust != 0.5 || minThrust != 0.3 || maxThrust != 0.7) {
		TEST_FAILED();
		return;
	}

	if (!parser.ParseBuffer(
			jsonBuf.c_str()+usedLen,
			jsonBuf.length()-usedLen,
			&usedLen)) {
		TEST_FAILED();
		return;
	}

	SdJsonParseParseThrust(parser.GetRpcParams(), &thrust, &minThrust, &maxThrust);
	if (thrust != 0.6 || minThrust != 0.4 || maxThrust != 0.8) {
		TEST_FAILED();
		return;
	}

	TEST_PASSED();
}


void TestJsonRpcBuilder()
{
	TEST_BEGIN("TestJsonRpcBuilder");

#if 0
	static const char* schema1 =
		"{"
			"\"jsonrpc\": \"2.0\", \"method\": \"run\", \"params\": "
			"{"
				"\"Flight\": "
				"{"
					 "\"Thrust\": 0.5,"
					 "\"MinThrust\":  0.3,"
					 "\"MaxThrust\": 0.7"
				"}",
				"\"SkyIsTheLimit\": true",
				"\"Grounded\": false",
			"}, "
			"\"id\": 10"
		"}";
#endif

	SdJsonRpcParser parser;
	SdJsonRpcBuilder bldr;
	SdJsonObject params;
	SdJsonObject flight;

	flight.AddMember("Thrust",SdJsonValue(0.5));
	flight.AddMember("MinThrust",SdJsonValue(0.3));
	flight.AddMember("MaxThrust",SdJsonValue(0.7));
	params.AddMember("Flight",SdJsonValue(flight));
	params.AddMember("SkyIsTheLimit",SdJsonValue(true));
	params.AddMember("Grounded",SdJsonValue(false));
	bldr.BuildRequest("run",&params,10);
	if (!bldr.GetJsonStream()) {
		TEST_FAILED();
		return;
	}
	parser.ParseBuffer(bldr.GetJsonStream(),bldr.GetJsonStreamSize(),0);
	const IJsonObject* parsedParams = parser.GetRpcParams();
	if (parsedParams->GetMember("SkyIsTheLimit")->AsBool() !=
			params.GetMember("SkyIsTheLimit")->AsBool()) {
		TEST_FAILED();
		return;
	}
	if (parsedParams->GetMember("Grounded")->AsBool() !=
			params.GetMember("Grounded")->AsBool()) {
		TEST_FAILED();
		return;
	}
	const IJsonObject* parsedFlight = parsedParams->GetMember("Flight")->AsObject();
	if (!parsedFlight) {
		TEST_FAILED();
		return;
	}
	if (parsedFlight->GetMember("MinThrust")->AsDouble() !=
		flight.GetMember("MinThrust")->AsDouble()) {
		TEST_FAILED();
		return;
	}
	if (parsedFlight->GetMember("MaxThrust")->AsDouble() !=
			flight.GetMember("MaxThrust")->AsDouble()) {
		TEST_FAILED();
		return;
	}
	if (parsedFlight->GetMember("Thrust")->AsDouble() !=
			flight.GetMember("Thrust")->AsDouble()) {
		TEST_FAILED();
		return;
	}

	TEST_PASSED();
	return;
}


CmdArgs g_args;

/*
 * Cmd args spec:
 * "argument name" "argument alias" "Help message"
 */
static CmdArgSpec g_argspec[] = {
		{"help",	"h",	"Display this help", CMD_ARG_BOOL},
		{"jsonfile","",		"Path to json file to be parsed", CMD_ARG_STRING},

};


void usage(int argc, char *argv[])
{
	std::cout << argv[0] << " <options>" << std::endl;
	std::cout << g_args.HelpMessage() << std::endl;
}

int main(int argc, char *argv[])
{
	g_args.AddSpecs(g_argspec, sizeof(g_argspec)/sizeof(*g_argspec));
	g_args.Parse(argc, argv);
	if (!g_args.GetValue("help").empty()) {
		usage(argc, argv);
		return 0;
	}

	std::string jsonFileName = g_args.GetValue("jsonfile");
	if (0 == jsonFileName.length()) {
		jsonFileName = "/home/svassilev/workspace/sigmadrone/"
				"doc/configuration/droneconfig.json";
	}
	TestParseJsonRpcFile(jsonFileName);
	TestParseJsonRpcFromBuffer();
	TestJsonRpcBuilder();

	TEST_STATS();

	return 0;
}