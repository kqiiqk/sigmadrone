/*
 * _CommandArgs.cpp
 *
 *  Created on: Sep 8, 2013
 *      Author: svassilev
 */

#include "commandargs.h"
#include <stdexcept>
#include "jsonrpcparser.h"

static cmd_arg_spec s_argSpec[] = {
		{"help",		"h", "Display this help", CMD_ARG_BOOL},
		{"command",		"c", "reset|exit|fly|ping|loadplugin|unloadplugin", CMD_ARG_STRING},
		{"server",		"s", "Run as server and control drone hardware", CMD_ARG_BOOL},
		{"daemon",		"d", "Run as daemon, note: server must be specified", CMD_ARG_BOOL},
		{"rot-matrix",	"",	 "Print rotational matrix", CMD_ARG_BOOL},
		{"host",        "",	 "Server IP address; client role assumed  when arg present", CMD_ARG_STRING},
		{"port",        "",	 "Server port, default port is 2222", CMD_ARG_STRING},
		{"maxdps",      "",	 "Gyro max angular speed in deg/s", CMD_ARG_STRING},
		{"rate",        "",	 "Gyro and accelerometer sampling rate", CMD_ARG_STRING},
		{"thrust",      "",	 "Set desired thrust per motor [0..1], used with --command=run", CMD_ARG_STRING},
		{"maxthrust",   "",	 "Set min thrust per motor [0..1], used with --command=run", CMD_ARG_STRING},
		{"minthrust",   "",	 "Set max thrust per motor [0..1], used with --command=run", CMD_ARG_STRING},
		{"lograte",     "",	 "How many times to log per second", CMD_ARG_STRING},
		{"logfile",     "",	 "Capture daemon output to file", CMD_ARG_STRING},
		{"infile",      "",	 "Input file for sensor readings (testing only)", CMD_ARG_STRING},
		{"outfile",     "",	 "Output file for servo commands (testing only)", CMD_ARG_STRING},
		{"imuangle",    "",	 "Yaw angle between sensor's and motor's axis", CMD_ARG_STRING},
		{"Kp",          "",	 "PID controller proportional coefficient", CMD_ARG_STRING},
		{"Ki",          "",	 "PID controller integral coefficient", CMD_ARG_STRING},
		{"Kd",          "",	 "PID controller derivative coefficient", CMD_ARG_STRING},
		{"configfile",  "",  "Configuration file name", CMD_ARG_STRING},
};


_CommandArgs::_CommandArgs()
{
	m_DroneCfg.Accel.DeviceName = "/dev/accel0";
	m_DroneCfg.Accel.SamplingRate = 200;
	m_DroneCfg.Accel.Scale = 4;
	m_DroneCfg.Accel.MaxReading = 32768;
	m_DroneCfg.Accel.Watermark = 2;
	m_DroneCfg.Gyro.DeviceName = "/dev/gyro0";
	m_DroneCfg.Gyro.SamplingRate = 200;
	m_DroneCfg.Gyro.Scale = 2000;
	m_DroneCfg.Gyro.MaxReading = 32768;
	m_DroneCfg.Gyro.NumBiasSamples = 4000;
	m_DroneCfg.Gyro.Watermark = 2;
	m_DroneCfg.Mag.DeviceName = "/dev/mag0";
	m_DroneCfg.Servo.DeviceName = "/dev/pwm0";
	m_DroneCfg.Servo.ChannelMask = 0xff;
	m_DroneCfg.Servo.Rate = 390;
	m_DroneCfg.Servo.BitCount = 0;
	m_DroneCfg.Quad.Motor[0] = 0;
	m_DroneCfg.Quad.Motor[1] = 1;
	m_DroneCfg.Quad.Motor[2] = 2;
	m_DroneCfg.Quad.Motor[3] = 3;
	m_DroneCfg.Quad.ImuAngleAxisZ = 45;
	/*
	 * PID coefficients for big props on DJI F450
	 * Kp = 1.0 <-> 1.3
	 * Ki = 1.2, with leak rate dT
	 * Kd = 0.3 <-> 0.45
	 */
	m_DroneCfg.Quad.Kp = 1.0;
	m_DroneCfg.Quad.Ki = 1.2;
	m_DroneCfg.Quad.Kd = 0.35;
	m_DroneCfg.LogLevel = SD_LOG_LEVEL_VERBOSE;
	m_DroneCfg.LogRate = 1;

	m_targetAttitude = QuaternionD(1,0,0,0);

	m_cmdArgs.AddSpecs(s_argSpec,sizeof(s_argSpec)/sizeof(s_argSpec[0]));

	m_HostAddress = "";

	m_IsClient = m_IsServer = m_IsDaemon = false;
}

_CommandArgs::~_CommandArgs() {}


void _CommandArgs::PrintUsage(int argc, char* argv[]) const
{
	printf("Sigma Drone 0.1\n\n");
	printf("Usage: %s <options>\n", argc>0 ? argv[0] : "sdroned");
	printf("%s\n",m_cmdArgs.HelpMessage().c_str());

	printf( "Additional notes:\n"
			"Server process can be started just by specifying --server; if command is \n"
			"specified in conjunction with --server then the process will carry out the\n"
			"command and will wait for further instructions. --server or --host must be\n"
			"specified. If specified, --configfile must contain a valid RPC call. If config\n"
			"file is passed on the daemon command line, then the config file will be parsed,\n"
			"together with any additional command line arguments; the command line arguments\n"
			"will take precedence over the values in the config file.\n\n");
}

bool
_CommandArgs::ParseArgs(
		int argc,
		char* argv[])
{
	SdDroneConfig* droneCfg = &m_DroneCfg;

	m_jsonArgs.Reset();

	//
	// Init with the current default values
	//
	m_Command = SD_COMMAND_NONE;
	m_HostAddress = "127.0.0.1";
	m_ServerPort = SD_DEFAULT_PORT;
	m_IsClient = m_IsServer = false;
	m_MinThrust = 0.3;
	m_MaxThrust = 0.99;
	m_Thrust = 0.5;

	m_DroneCfg.Accel.CoordinateMap = Matrix3d(
			-1, 0, 0,
			 0, 1, 0,
			 0, 0, -1);
	m_DroneCfg.Mag.CoordinateMap = m_DroneCfg.Accel.CoordinateMap;
	m_DroneCfg.Gyro.CoordinateMap = Matrix3d(
			0, -1, 0,
			-1, 0, 0,
			0, 0, 1);

	try {
		m_cmdArgs.Parse(argc, argv);
	} catch (std::out_of_range exc) {
		printf("%s\n",exc.what());
		return false;
	}

	if (m_cmdArgs.GetBoolValue("help")) {
		PrintUsage(argc, argv);
		return false;
	}

	if (m_cmdArgs.GetValue("configfile").length() > 0) {
		SdJsonRpcParser jsonParser;
		const std::string& configFile = m_cmdArgs.GetValue("configfile");
		if (!jsonParser.ParseFile(configFile.c_str())) {
			printf("Failed to parse config file %s\n",configFile.c_str());
			return false;
		}
		ParseJsonRpcArgs(jsonParser.GetRpcParams());
	}

	if (m_cmdArgs.GetValue("command").c_str() == std::string("run") ||
		m_cmdArgs.GetValue("command").c_str() == std::string("fly")) {
		m_Command = SD_COMMAND_RUN;
	} else if (m_cmdArgs.GetValue("command").c_str() == std::string("reset")) {
		m_Command = SD_COMMAND_RESET;
	} else if (m_cmdArgs.GetValue("command").c_str() == std::string("exit")) {
		m_Command = SD_COMMAND_EXIT;
	} else if (m_cmdArgs.GetValue("command").c_str() == std::string("ping")) {
		m_Command = SD_COMMAND_PING;
	}
	m_cmdArgs.GetValueAsInt("maxdps",&droneCfg->Gyro.Scale);
	m_cmdArgs.GetValueAsInt("rate",&droneCfg->Gyro.SamplingRate);
	droneCfg->Accel.SamplingRate = droneCfg->Gyro.SamplingRate;
	if (m_cmdArgs.GetValue("host").length() > 0) {
		m_HostAddress = m_cmdArgs.GetValue("host").c_str();
		m_IsClient = true;
	}
	m_IsServer = m_cmdArgs.GetBoolValue("server");
	m_cmdArgs.GetValueAsInt("port",&m_ServerPort);
	m_cmdArgs.GetValueAsDouble("thrust",&m_Thrust);
	m_cmdArgs.GetValueAsDouble("minthrust",&m_MinThrust);
	m_cmdArgs.GetValueAsDouble("maxthrust",&m_MaxThrust);
	if (m_cmdArgs.GetValue("infile").length() > 0) {
		droneCfg->Gyro.DeviceName =m_cmdArgs.GetValue("infile").c_str();
		droneCfg->Accel.DeviceName = droneCfg->Gyro.DeviceName;
		droneCfg->Mag.DeviceName = droneCfg->Gyro.DeviceName;
	}
	if (m_cmdArgs.GetValue("outfile").length() > 0) {
		droneCfg->Servo.DeviceName =m_cmdArgs.GetValue("outfile").c_str();
	}
	if (m_cmdArgs.GetValue("log").length() > 0) {
		m_LogFile = m_cmdArgs.GetValue("log").c_str();
	}
	m_cmdArgs.GetValueAsDouble("lograte", &droneCfg->LogRate);
	droneCfg->LogRotationMatrix = m_cmdArgs.GetBoolValue("rot-matrix");
	m_cmdArgs.GetValueAsInt("imuangle",&droneCfg->Quad.ImuAngleAxisZ);
	m_cmdArgs.GetValueAsDouble("Kp", &droneCfg->Quad.Kp);
	m_cmdArgs.GetValueAsDouble("Ki", &droneCfg->Quad.Ki);
	m_cmdArgs.GetValueAsDouble("Kd", &droneCfg->Quad.Kd);
	if (m_cmdArgs.GetValue("daemon") == "1") {
		m_IsDaemon = true;
	}
	return true;
}

SdCommandCode _CommandArgs::GetCommand() const {
	return m_Command;
}

double _CommandArgs::GetMinThrust() const {
	return m_MinThrust;
}

double _CommandArgs::GetMaxThrust() const {
	return m_MaxThrust;
}

double _CommandArgs::GetDesiredThrust() const {
	return m_Thrust;
}

const QuaternionD* _CommandArgs::GetTargetAttitude() const {
	return &m_targetAttitude;
}

bool _CommandArgs::IsRoleServer() const {
	return m_IsServer;
}

bool _CommandArgs::IsRoleClient() const {
	return m_IsClient;
}

const IJsonObject* _CommandArgs::GetDroneConfigAsJobj() {
	if (!m_jsonArgs.IsMemberPresent("GlobalConfig")) {
		GetCommandArgsAsJobj();
	}
	return m_jsonArgs.GetMember("GlobalConfig")->AsObject();
}

const IJsonObject* _CommandArgs::GetCommandArgsAsJobj() {
	if (m_jsonArgs.GetMemberCount() == 0) {
		SdJsonObject tmpObj;
		m_jsonArgs.Reset();
		m_jsonArgs.AddMember("Title", SdJsonValue("SigmaDrone"));
		m_jsonArgs.AddMember("Version", SdJsonValue("0.1"));
		m_jsonArgs.AddMember("DroneType",SdJsonValue("QuadRotor"));
		BuildJsonDroneConfig(&tmpObj,m_DroneCfg);
		m_jsonArgs.AddMember("GlobalConfig",SdJsonValue(tmpObj));
		BuildJsonFlightParams(&tmpObj,m_Thrust,m_MinThrust,m_MaxThrust);
		m_jsonArgs.AddMember("Flight",SdJsonValue(tmpObj));
	}
	return &m_jsonArgs;
}

bool _CommandArgs::ParseJsonImuConfig(
	const IJsonObject* obj,
	SdImuDeviceConfig* imu)
{
	if (obj) {
		obj->GetMember("DeviceName")->AsStringSafe(&imu->DeviceName);
		obj->GetMember("SamplingRate")->AsIntSafe(&imu->SamplingRate);
		obj->GetMember("Scale")->AsIntSafe(&imu->Scale);
		obj->GetMember("MaxReading")->AsIntSafe(&imu->MaxReading);
		obj->GetMember("Watermark")->AsIntSafe(&imu->Watermark);
		obj->GetMember("NumBiasSamples")->AsIntSafe(&imu->NumBiasSamples);
		const IJsonArray* arr;
		if (0 != (arr = obj->GetMember("CoordinateMap")->AsArray())) {
			if (arr->ElementCount() == 9) {
				for (uint32_t i = 0; i < 9; i++) {
					imu->CoordinateMap.at(i/3,i%3)=arr->GetElement(i)->AsInt();
				}
			}
		}
	}
	return !!obj;
}

bool _CommandArgs::ParseJsonDroneConfig(
		const IJsonObject* params,
		SdDroneConfig* droneCfg)
{
	const IJsonObject* config = 0;
	const IJsonObject* obj = 0;
	const IJsonArray* arr = 0;

	if (0 == (config = params->GetMember("GlobalConfig")->AsObject())) {
		return false;
	}

	if (config->IsMemberPresent("Gyro")) {
		ParseJsonImuConfig(config->GetMember("Gyro")->AsObject(),
				&droneCfg->Gyro);
	}
	if (config->IsMemberPresent("Accelerometer")) {
		ParseJsonImuConfig(config->GetMember("Accelerometer")->AsObject(),
				&droneCfg->Accel);
	}
	if (config->IsMemberPresent("Magnetometer")) {
		ParseJsonImuConfig(config->GetMember("Magnetometer")->AsObject(),
				&droneCfg->Mag);
	}

	if (0 != (obj = config->GetMember("Servo")->AsObject())) {
		obj->GetMember("DeviceName")->AsStringSafe(&droneCfg->Servo.DeviceName);
		obj->GetMember("SamplingRate")->AsIntSafe(&droneCfg->Servo.Rate);
		obj->GetMember("ChannelMask")->AsUintSafe(&droneCfg->Servo.ChannelMask);
		obj->GetMember("BitCount")->AsUintSafe(&droneCfg->Servo.BitCount);
	}

	if (0 != (obj = config->GetMember("QuadPilot")->AsObject())) {
		obj->GetMember("Kp")->AsDoubleSafe(&droneCfg->Quad.Kp);
		obj->GetMember("Ki")->AsDoubleSafe(&droneCfg->Quad.Ki);
		obj->GetMember("Kd")->AsDoubleSafe(&droneCfg->Quad.Kd);
		if (0 != (arr = obj->GetMember("MotorToServoMap")->AsArray()) &&
			arr->ElementCount() == 4) {
			for (size_t i = 0; i < 4; i++) {
				droneCfg->Quad.Motor[i] = (uint32_t)arr->GetElement(i)->AsInt();
			}
		}

		if (0 != (arr = obj->GetMember("ImuCoordinateAngles")->AsArray()) &&
			arr->ElementCount() == 3) {
			droneCfg->Quad.ImuAngleAxisZ = arr->GetElement(2)->AsInt();
		}
	}

	if (0 != (obj = config->GetMember("ControlChannel")->AsObject())) {
		obj->GetMember("ServerAddress")->AsStringSafe(&droneCfg->ServerAddress);
		obj->GetMember("ServerPort")->AsIntSafe(&droneCfg->ServerPort);
	}
	if (config->GetMember("LogLevel")->GetType() == SD_JSONVALUE_STRING) {
		droneCfg->LogLevel = SdStringToLogLevel(
				config->GetMember("LogLevel")->AsString().c_str());
	}

	config->GetMember("LogFileName")->AsStringSafe(&droneCfg->LogFileName);
	config->GetMember("LogRotationMatrix")->AsIntSafe(&droneCfg->LogRotationMatrix);
	config->GetMember("LogRate")->AsDoubleSafe(&droneCfg->LogRate);
	return true;
}

bool _CommandArgs::ParseJsonRpcArgs(const IJsonObject* args)
{
	bool ret = ParseJsonDroneConfig(args,&m_DroneCfg);
	ret = ret && ParseJsonThrust(args,&m_Thrust,&m_MinThrust,&m_MaxThrust);

	if (args->GetMember("TargetQuaternion")->GetType() == SD_JSONVALUE_ARRAY) {
		const IJsonArray* jarr = args->GetMember("TargetQuaternion")->AsArray();
		if (jarr->ElementCount() == 4) {
			m_targetAttitude.w = jarr->GetElement(0)->AsDouble();
			m_targetAttitude.x = jarr->GetElement(1)->AsDouble();
			m_targetAttitude.y = jarr->GetElement(2)->AsDouble();
			m_targetAttitude.z = jarr->GetElement(3)->AsDouble();
		}
	}

	return ret;
}

bool _CommandArgs::ParseJsonThrust(
		const IJsonObject* rpcParams,
		double* thrust,
		double* minThrust,
		double* maxThrust)
{
	const IJsonObject* flight = 0;
	if (0 != (flight = rpcParams->GetMember("Flight")->AsObject())) {
		if (thrust) {
			flight->GetMember("Thrust")->AsDoubleSafe(thrust);
		}
		if (maxThrust) {
			flight->GetMember("MaxThrust")->AsDoubleSafe(maxThrust);
		}
		if (minThrust) {
			flight->GetMember("MinThrust")->AsDoubleSafe(minThrust);
		}
	}
	return !!flight;
}

bool _CommandArgs::BuildJsonDroneConfig(
		SdJsonObject* jsonDroneConfig,
		const SdDroneConfig& droneCfg)
{
	bool ret = true;
	SdJsonObject tmpObj;
	SdJsonArray tmpArr;

	jsonDroneConfig->Reset();
	ret = ret && BuildJsonImuConfig(&tmpObj,droneCfg.Gyro);
	ret = ret && jsonDroneConfig->AddMember("Gyro",SdJsonValue(tmpObj));
	ret = ret && BuildJsonImuConfig(&tmpObj,droneCfg.Accel);
	ret = ret && jsonDroneConfig->AddMember("Accelerometer",SdJsonValue(tmpObj));
	ret = ret && BuildJsonImuConfig(&tmpObj,droneCfg.Mag);
	ret = ret && jsonDroneConfig->AddMember("Magnetometer",SdJsonValue(tmpObj));

	tmpObj.Reset();
	ret = ret && tmpObj.AddMember("DeviceName",SdJsonValue(droneCfg.Servo.DeviceName));
	ret = ret && tmpObj.AddMember("SamplingRage",SdJsonValue(droneCfg.Servo.Rate));
	ret = ret && tmpObj.AddMember("ChannelMask",SdJsonValue(droneCfg.Servo.ChannelMask));
	ret = ret && tmpObj.AddMember("BitCount",SdJsonValue(droneCfg.Servo.BitCount));
	ret = ret && jsonDroneConfig->AddMember("Servo",SdJsonValue(tmpObj));

	tmpObj.Reset();
	tmpArr.Reset();
	for (size_t i = 0; i < ARRAYSIZE(droneCfg.Quad.Motor); i++) {
		ret = ret && tmpArr.AddElement(SdJsonValue(droneCfg.Quad.Motor[i]));
	}
	ret = ret && tmpObj.AddMember("MotorToServoMap",SdJsonValue(tmpArr));
	ret = ret && tmpArr.AddElement(SdJsonValue((int32_t)0));
	ret = ret && tmpArr.AddElement(SdJsonValue((int32_t)0));
	ret = ret && tmpArr.AddElement(SdJsonValue(droneCfg.Quad.ImuAngleAxisZ));
	ret = ret && tmpObj.AddMember("ImuCoordinateAngles",SdJsonValue(tmpArr));
	ret = ret && tmpObj.AddMember("Kp",SdJsonValue(droneCfg.Quad.Kp));
	ret = ret && tmpObj.AddMember("Ki",SdJsonValue(droneCfg.Quad.Ki));
	ret = ret && tmpObj.AddMember("Kd",SdJsonValue(droneCfg.Quad.Kd));
	ret = ret && jsonDroneConfig->AddMember("QuadPilot",SdJsonValue(tmpObj));

	tmpObj.Reset();
	ret = ret && tmpObj.AddMember("ServerAddress",SdJsonValue(
			droneCfg.ServerAddress));
	ret = ret && tmpObj.AddMember("ServerPort",SdJsonValue(droneCfg.ServerPort));
	ret = ret && jsonDroneConfig->AddMember("ControlChannel",SdJsonValue(tmpObj));

	ret = ret && jsonDroneConfig->AddMember("LogLevel",
			SdLogLevelToString(droneCfg.LogLevel));
	ret = ret && jsonDroneConfig->AddMember("LogRotationMatrix",
			SdJsonValue((bool)droneCfg.LogRotationMatrix));
	ret = ret && jsonDroneConfig->AddMember("LogFileName",SdJsonValue(
			droneCfg.LogFileName));
	ret = ret && jsonDroneConfig->AddMember("LogRate",SdJsonValue(
			droneCfg.LogRate));

	return ret;
}

bool _CommandArgs::BuildJsonImuConfig(
		SdJsonObject* jobj,
		const SdImuDeviceConfig& imuCfg)
{
	bool ret = true;
	jobj->Reset();
	ret = ret && jobj->AddMember("DeviceName",SdJsonValue(imuCfg.DeviceName));
	ret = ret && jobj->AddMember("SamplingRage",SdJsonValue(imuCfg.SamplingRate));
	ret = ret && jobj->AddMember("Scale",SdJsonValue(imuCfg.Scale));
	ret = ret && jobj->AddMember("MaxReading",SdJsonValue(imuCfg.MaxReading));
	ret = ret && jobj->AddMember("Watermark",SdJsonValue(imuCfg.Watermark));
	ret = ret && jobj->AddMember("NumBiasSamples",SdJsonValue(imuCfg.NumBiasSamples));
	SdJsonArray jarr;
	for (size_t i = 0; i < 3; i++) {
		for (size_t j = 0; j < 3; j++) {
			ret = ret && jarr.AddElement(SdJsonValue(imuCfg.CoordinateMap.at(i,j)));
		}
	}
	ret = ret && jobj->AddMember("CoordinateMap",SdJsonValue(jarr));
	return ret;
}

bool _CommandArgs::BuildJsonFlightParams(
		SdJsonObject* jsonFlightParams,
		double thrust,
		double minThrust,
		double maxThrust)
{
	bool ret = true;
	jsonFlightParams->Reset();
	ret = ret && jsonFlightParams->AddMember("Thrust",SdJsonValue(thrust));
	ret = ret && jsonFlightParams->AddMember("MinThrust",SdJsonValue(minThrust));
	ret = ret && jsonFlightParams->AddMember("MinThrust",SdJsonValue(maxThrust));
	return ret;
}
