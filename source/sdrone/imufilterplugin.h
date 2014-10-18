/*
 * imufilterplugin.h
 *
 *  Created on: Aug 19, 2013
 *      Author: svassilev
 */

#ifndef IMUFILTERPLUGIN_H_
#define IMUFILTERPLUGIN_H_

#include "commoninc.h"
#include "imufilter.h"
#include "attitudetracker.h"

class ImuFilterPlugin : public IPlugin{
public:
	ImuFilterPlugin();
	int AttachToChain(void*,SdPluginAttachFunc attachPlugin);

	int AddRef();
	int Release();
	int ExecuteCommand(SdCommandParams* commandArgs);
	const char* GetName();
	SdDeviceId GetDeviceId();
	const char* GetVersion();
	const char* GetDlFileName();

	/*
	 * Takes into account the IMU readings and comes with an estimate
	 * of the current attite
	 */
	int IoCallback(SdIoPacket* ioPacket);

	int IoDispatchThread() { assert(false); return EINVAL; }

private:
	virtual ~ImuFilterPlugin();
private:
	attitudetracker m_attitude;
	IPluginRuntime* m_Runtime;
	int m_RefCnt;
};

#endif /* IMUFILTERPLUGIN_H_ */
