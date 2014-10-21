/*
 * ImuLowPassFilter.cpp
 *
 *  Created on: August 16, 2013
 *      Author: svassilev
 */

#include "commoninc.h"
#include "imulowpassfilter.h"
#include <dlfcn.h>

static double s_OneHzCutoffFiveHzPass[] =
{
		0.0136, 0.0055, 0.0065, 0.0076, 0.0087, 0.0099, 0.0110, 0.0122, 0.0133, 0.0145, 0.0155, 0.0165, 0.0174,
		0.0182, 0.0189, 0.0195, 0.0199, 0.0202, 0.0204, 0.0204, 0.0202, 0.0199, 0.0195, 0.0189, 0.0182, 0.0174,
		0.0165, 0.0155, 0.0145, 0.0133, 0.0122, 0.0110, 0.0099, 0.0087, 0.0076, 0.0065, 0.0055, 0.0136
};

ImuLowPassFilter::ImuLowPassFilter() :
		m_AccelFilt(s_OneHzCutoffFiveHzPass)
{
	m_Runtime = 0;
	m_RefCnt = 1;
}

ImuLowPassFilter::~ImuLowPassFilter()
{
	assert(0 == m_RefCnt);
}

int ImuLowPassFilter::AttachToChain(
		void* droneContext,
		SdPluginAttachFunc attachFunc)
{
	int err = attachFunc(
			droneContext,
			this,
			SD_ALTITUDE_GROUP_LOWER_FILTER,
			0,
			0,
			&m_Runtime);
	return err;
}

int ImuLowPassFilter::ExecuteCommand(
		SdCommandParams* params)
{
	switch (params->CommandCode()) {
	case SD_COMMAND_RUN:
		m_Runtime->SetIoFilters(
				SD_DEVICEID_TO_FLAG(SD_DEVICEID_IMU),
				SD_IOCODE_TO_FLAG(SD_IOCODE_RECEIVE));
		m_AccelFilt.Reset();
		m_GyroFilt.Reset();
		break;
	case SD_COMMAND_EXIT:
		m_Runtime->DetachPlugin();
		break;
	case SD_COMMAND_GET_ACCELEROMETER:
		params->SetOutParams(SdIoData(m_filteredAccel3d));
		return SD_ESTOP_DISPATCH;
	default:break;
	}
	return SD_ESUCCESS;
}

int ImuLowPassFilter::AddRef()
{
	return __sync_fetch_and_add(&m_RefCnt,1);
}

int ImuLowPassFilter::Release()
{
	int refCnt = __sync_sub_and_fetch(&m_RefCnt,1);
	if (0 == refCnt) {
		delete this;
	}
	return refCnt;
}

const char* ImuLowPassFilter::GetName()
{
	return SD_PLUGIN_IMU_LOWPASSFILTER;
}

SdDeviceId ImuLowPassFilter::GetDeviceId()
{
	return SD_DEVICEID_FILTER;
}

const char* ImuLowPassFilter::GetVersion()
{
	return SD_PLUGIN_VERSION;
}

extern char **g_Argv;
const char* ImuLowPassFilter::GetDlFileName()
{
	return g_Argv[0];
}

int ImuLowPassFilter::IoCallback(
	SdIoPacket* ioPacket)
{
	Vector3d accelData = ioPacket->AccelData();
	double arr[3] = {accelData.at(0,0),accelData.at(1,0),accelData.at(2,0)};
	m_AccelFilt.DoFilter(arr);
	accelData.at(0,0) = m_AccelFilt.GetOutput()[0];
	accelData.at(1,0) = m_AccelFilt.GetOutput()[1];
	accelData.at(2,0) = m_AccelFilt.GetOutput()[2];
	m_filteredAccel3d = accelData = accelData.normalize();
	ioPacket->SetAttribute(SDIO_ATTR_ACCEL, SdIoData(accelData));
	return SD_ESUCCESS;
}

int ImuLowPassFilter::IoDispatchThread()
{
	assert(false);
	return EINVAL;
}
