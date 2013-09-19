/*
 * imubias.h
 *
 *  Created on: August 16, 2013
 *      Author: svassilev
 */

#ifndef IMUBIAS_H
#define IMUBIAS_H

#include "commoninc.h"
#include "imudevice.h"

/*
 * Reads data from all the sensor devices
 * Should be able to read from a file
 */
class ImuBias: public IPlugin
{
public:
	ImuBias();
	int AttachToChain(void*,SdPluginAttachFunc attachPlugin);

public:
	int AddRef();
	int Release();
	int Start(CommandArgs*);
	void Stop(int flags);
	const char* GetName();
	SdDeviceId GetDeviceId();
	const char* GetVersion();
	const char* GetDlFileName();
	int IoCallback(SdIoPacket* ioPacket);
	int IoDispatchThread();

private:
	~ImuBias();

private:
	Vector3d m_GyroData;
	Vector3d m_EarthG;
	Vector3d m_GyroBias;
	uint32_t m_NumBiasSamples;
	uint32_t m_CurrentBiasSamples;
	IPluginRuntime* m_Runtime;
	int m_RefCnt;
};

#endif /* IMUBIAS_H */
