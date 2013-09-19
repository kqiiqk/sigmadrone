#ifndef _AXESDATA_H_
#define _AXESDATA_H_

#include <linux/types.h>


struct __short3d {
	__s16 x;
	__s16 y;
	__s16 z;
};

struct __int3d {
	__s32 x;
	__s32 y;
	__s32 z;
};

typedef struct __short3d short3d_t;
typedef struct __int3d int3d_t;

#define AXISDATA_IOC_MAGIC		'A'
#define AXISDATA_IOC_GETRATE		_IO(AXISDATA_IOC_MAGIC, 1)
#define AXISDATA_IOC_SETRATE		_IO(AXISDATA_IOC_MAGIC, 2)
#define AXISDATA_IOC_GETSCALE		_IO(AXISDATA_IOC_MAGIC, 3)
#define AXISDATA_IOC_SETSCALE		_IO(AXISDATA_IOC_MAGIC, 4)
#define AXISDATA_IOC_RESETFIFO		_IO(AXISDATA_IOC_MAGIC, 5)
#define AXISDATA_IOC_GETENABLED		_IO(AXISDATA_IOC_MAGIC, 6)
#define AXISDATA_IOC_SETENABLED		_IO(AXISDATA_IOC_MAGIC, 7)
#define AXISDATA_IOC_SETWATERMARK	_IO(AXISDATA_IOC_MAGIC, 8)

#endif
