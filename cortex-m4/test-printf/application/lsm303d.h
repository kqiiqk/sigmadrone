/*
 * lsm303d.h
 *
 *  Created on: Nov 28, 2014
 *      Author: mstoilov
 */


#ifndef LSM303D_H_
#define LSM303D_H_

#include <stdint.h>
#include "spimaster.h"


//these could change accordingly with the architecture
typedef unsigned char u8_t;
typedef unsigned short int u16_t;
typedef short int i16_t;
typedef u8_t IntPinConf_t;
typedef u8_t Axis_t;
typedef u8_t IntConf_t;

/* Exported macro ------------------------------------------------------------*/
#define ValBit(VAR,Place)         (VAR & (1<<Place))
#define BIT(x) ( (x) )


typedef enum {
	ODR_POWERDOWN		=		0x00,
	ODR_3_125Hz			=		0x01,
	ODR_6_25Hz			=		0x02,
	ODR_12_5Hz			=		0x03,
	ODR_25Hz			=		0x04,
	ODR_50Hz			=		0x05,
	ODR_100Hz			=		0x06,
	ODR_200Hz			=		0x07,
	ODR_400Hz			=		0x08,
	ODR_800Hz			=		0x09,
	ODR_1600Hz			=		0x0A
} ODR_t;

typedef enum {
	ODR_3_125Hz_M		=		0x00,
	ODR_6_25Hz_M		=		0x01,
	ODR_12_5Hz_M		=		0x02,
	ODR_25Hz_M			=		0x03,
	ODR_50Hz_M			=		0x04,
	ODR_100Hz_M			=		0x05,
} ODR_M_t;

typedef enum {
  GAIN_1100_M		        =		0x01,
  GAIN_855_M                =		0x02,
  GAIN_670_M		        =		0x03,
  GAIN_450_M		        =		0x04,
  GAIN_400_M		        =		0x05,
  GAIN_330_M		        =		0x06,
  GAIN_230_M		        =		0x07
} GAIN_M_t;

typedef enum {
  CONTINUOUS_MODE       =		0x00,
  SINGLE_MODE 			=		0x01,
  POWERDOWN_MODE		=		0x02,
} Mode_M_t;

typedef enum {
  RESOLUTION_LOW        =		0x00,
  RESOLUTION_HIGH       =		0x11
} Resolution_t;

typedef enum {
  HPM_NORMAL_MODE_RES           =               0x00,
  HPM_REF_SIGNAL                =               0x01,
  HPM_NORMAL_MODE               =               0x02,
  HPM_AUTORESET_INT             =               0x03
} HPFMode_t;

typedef enum {
  HPFCF_0                       =               0x00,
  HPFCF_1                       =               0x01,
  HPFCF_2                       = 				0x02,
  HPFCF_3                       =               0x03
} HPFCutOffFreq_t;

typedef struct {
  i16_t AXIS_X;
  i16_t AXIS_Y;
  i16_t AXIS_Z;
} AccAxesRaw_t;

typedef struct {
  i16_t AXIS_X;
  i16_t AXIS_Y;
  i16_t AXIS_Z;
}MagAxesRaw_t;

typedef enum {
  FULLSCALE_2                   =               0x00,
  FULLSCALE_4                   =               0x01,
  FULLSCALE_6                   =               0x02,
  FULLSCALE_8                   =               0x03,
  FULLSCALE_16                  =               0x04
} Fullscale_t;

typedef enum {
  FULLSCALE_2_GA				=				0x00,
  FULLSCALE_4_GA				=				0x01,
  FULLSCALE_8_GA				=				0x02,
  FULLSCALE_12_GA				=				0x03,
} FullscaleMag_t;


typedef enum {
  BLE_LSB						=				0x00,
  BLE_MSB						=				0x01
} Endianess_t;

typedef enum {
  SELF_TEST_DISABLE             =               0x00,
  SELF_TEST_0                   =               0x01,
} SelfTest_t;

typedef enum {
  FIFO_BYPASS_MODE              =               0x00,
  FIFO_MODE                     =               0x01,
  FIFO_STREAM_MODE              =               0x02,
  FIFO_STREAM_TO_FIFO           =               0x03,
  FIFO_BYPASS_TO_STREAM         =               0x04,
} FifoMode_t;

typedef enum {
  TRIG_INT1                     =               0x00,
  TRIG_INT2                     =               0x01
} TrigInt_t;

typedef enum {
  SPI_4_WIRE                    =               0x00,
  SPI_3_WIRE                    =               0x01
} SPIMode_t;

typedef enum {
  X_ENABLE                      =               0x01,
  X_DISABLE                     =               0x00,
  Y_ENABLE                      =               0x02,
  Y_DISABLE                     =               0x00,
  Z_ENABLE                      =               0x04,
  Z_DISABLE                     =               0x00
} AXISenable_t;

typedef enum {
  INT1_6D_4D_DISABLE            =               0x00,
  INT1_6D_ENABLE                =               0x01,
  INT1_4D_ENABLE                =               0x02
} INT_6D_4D_t;

typedef enum {
  UP_SX                         =               0x44,
  UP_DX                         =               0x42,
  DW_SX                         =               0x41,
  DW_DX                         =               0x48,
  TOP                           =               0x60,
  BOTTOM                        =               0x50
} POSITION_6D_t;

typedef enum {
  INT_MODE_OR                   =               0x00,
  INT_MODE_6D_MOVEMENT          =               0x01,
  INT_MODE_AND                  =               0x02,
  INT_MODE_6D_POSITION          =               0x03
} Int1Mode_t;


//interrupt click response
//  b7 = sign   b6 = double-single  b5, b4, b3 = don't care
//  b2 = z      b1 = y     b0 = x
typedef enum {
DCLICK_Z_P                      =               0x44,
DCLICK_Z_N                      =               0xC4,
SCLICK_Z_P                      =               0x04,
SCLICK_Z_N                      =               0x84,
DCLICK_Y_P                      =               0x42,
DCLICK_Y_N                      =               0xC2,
SCLICK_Y_P                      =               0x02,
SCLICK_Y_N                      =               0x82,
DCLICK_X_P                      =               0x41,
DCLICK_X_N                      =               0xC1,
SCLICK_X_P                      =               0x01,
SCLICK_X_N                      =               0x81,
NO_CLICK                        =               0x00
} Click_Responce;


/* Exported constants --------------------------------------------------------*/

#define MEMS_SET                                0x01
#define MEMS_RESET                              0x00
//#define ACC_I2C_ADDRESS                         0x32
//#define MAG_I2C_ADDRESS                         0x3C

//Register Definition

/**************MAGNETOMETER REGISTER*****************/
#define TEMP_OUT_L_M            0x05
#define TEMP_OUT_H_M            0x06
#define STATUS_M                0x07
#define OUT_X_L_M               0x08
#define OUT_X_H_M               0x09
#define OUT_Y_L_M               0x0A
#define OUT_Y_H_M               0x0B
#define OUT_Z_L_M               0x0C
#define OUT_Z_H_M               0x0D
#define WHO_AM_I                0x0F
#define INT_CTRL_M              0x12
#define INT_SRC_M               0x13
#define INT_THS_L_M             0x14
#define INT_THS_H_M             0x15
#define OFFSET_X_L_M            0x16
#define OFFSET_X_H_M            0x17
#define OFFSET_Y_L_M            0x18
#define OFFSET_Y_H_M            0x19
#define OFFSET_Z_L_M            0x1A
#define OFFSET_Z_H_M            0x1B
#define REFERENCE_X             0x1C
#define REFERENCE_Y             0x1D
#define REFERENCE_Z             0x1E


/**************ACCELEROMETER REGISTER*****************/

// CONTROL REGISTER 1
#define CTRL_REG0               0x1F
#define BOOT                    BIT(7)     /* Reboot memory content. Default value: 0 */
#define FIFO_EN                 BIT(6)     /* FIFO enable. Default value: 0 */
#define FTH_EN                  BIT(5)     /* FIFO programmable threshold enable. Default value: 0 */
#define HP_CLICK                BIT(2)     /* High-pass filter enabled for click function. Default value: 0 */
#define HPIS1                   BIT(1)     /* High-pass filter enabled for interrupt generator 1. Default value: 0 */
#define HPIS2                   BIT(0)     /* High-pass filter enabled for interrupt generator 2. Default value: 0 */

// CONTROL REGISTER 1
#define CTRL_REG1               0x20
#define ODR_BIT                 BIT(4)     /* Acceleration data-rate selection. Default value: 0000 */
#define BDU                     BIT(3)     /* Block data update for acceleration and magnetic data. Default value: 0 */
#define A_ZEN                   BIT(2)     /* Acceleration Z-axis enable. Default value: 1 */
#define A_YEN                   BIT(1)     /* Acceleration Y-axis enable. Default value: 1 */
#define A_XEN                   BIT(0)     /* Acceleration X-axis enable. Default value: 1 */

//CONTROL REGISTER 2
#define CTRL_REG2               0x21
#define ABW                     BIT(6)     /* ABW[1:0] Accelerometer anti-alias filter bandwidth. Default value: 00 */
#define AFS                     BIT(3)     /* AFS[2:0] Acceleration full-scale selection. Default value: 000 */
#define AST                     BIT(1)     /* Acceleration self-test enable. Default value: 0 */
#define SIM                     BIT(0)     /* SPI serial interface mode selection. Default value: 0 */

//CONTROL REGISTER 3
#define CTRL_REG3               0x22
#define INT1_BOOT               BIT(7)     /* Boot on INT1 enable. Default value: 0 */
#define INT1_CLICK              BIT(6)     /* Click generator interrupt on INT1. Default value: 0 */
#define INT1_IG1                BIT(5)     /* Inertial interrupt generator 1 on INT1. Default value: 0 */
#define INT1_IG2                BIT(4)     /* Inertial interrupt generator 2 on INT1. Default value: 0 */
#define INT1_IGM                BIT(3)     /* Magnetic interrupt generator on INT1. Default value: 0 */
#define INT1_DRDY_A             BIT(2)     /* Accelerometer data-ready signal on INT1. Default value: 0 */
#define INT1_DRDY_M             BIT(1)     /* Magnetometer data-ready signal on INT1. Default value: 0 */
#define INT1_EMPTY              BIT(0)     /* FIFO empty indication on INT1. Default value: 0 */
#define INT1_BOOT_ENABLE        INT1_BOOT
#define INT1_BOOT_DISABLE       0x00
#define INT1_CLICK_ENABLE       INT1_CLICK
#define INT1_CLICK_DISABLE      0x00
#define INT1_IG1_ENABLE         INT1_IG1
#define INT1_IG1_DISABLE        0x00
#define INT1_IG2_ENABLE         INT1_IG2
#define INT1_IG2_DISABLE        0x00
#define INT1_IGM_ENABLE         INT1_IGM
#define INT1_IGM_DISABLE        0x00
#define INT1_DRDY_A_ENABLE      INT1_DRDY_A
#define INT1_DRDY_A_DISABLE     0x00
#define INT1_DRDY_M_ENABLE      INT1_DRDY_M
#define INT1_DRDY_M_DISABLE     0x00
#define INT1_EMPTY_ENABLE       INT1_EMPTY
#define INT1_EMPTY_DISABLE      0x00


//CONTROL REGISTER 4
#define CTRL_REG4               0x23
#define INT2_CLICK              BIT(7)     /* Click generator interrupt on INT2. Default value: 0 */
#define INT2_IG1                BIT(6)     /* Inertial interrupt generator 1 on INT2. Default value: 0 */
#define INT2_IG2                BIT(5)     /* Inertial interrupt generator 2 on INT2. Default value: 0 */
#define INT2_IGM                BIT(4)     /* Magnetic interrupt generator on INT2. Default value: 0 */
#define INT2_DRDY_A             BIT(3)     /* Accelerometer data-ready signal on INT2. Default value: 0 */
#define INT2_DRDY_M             BIT(2)     /* Magnetometer data-ready signal on INT2. Default value: 0 */
#define INT2_OVERRUN            BIT(1)     /* FIFO overrun interrupt on INT2. Default value: 0 */
#define INT2_FTH                BIT(0)     /* FIFO threshold interrupt on INT2. Default value: 0 */
#define INT2_CLICK_ENABLE       INT2_CLICK
#define INT2_CLICK_DISABLE      0x00
#define INT2_IG1_ENABLE         INT2_IG1
#define INT2_IG1_DISABLE        0x00
#define INT2_IG2_ENABLE         INT2_IG2
#define INT2_IG2_DISABLE        0x00
#define INT2_IGM_ENABLE         INT2_IGM
#define INT2_IGM_DISABLE        0x00
#define INT2_DRDY_A_ENABLE      INT2_DRDY_A
#define INT2_DRDY_A_DISABLE     0x00
#define INT2_DRDY_M_ENABLE      INT2_DRDY_M
#define INT2_DRDY_M_DISABLE     0x00
#define INT2_OVERRUN_ENABLE     INT2_OVERRUN
#define INT2_OVERRUN_DISABLE    0x00
#define INT2_FTH_ENABLE         INT2_FTH
#define INT2_FTH_DISABLE        0x00




//CONTROL REGISTER 5
#define CTRL_REG5               0x24
#define TEMP_EN                 BIT(7)     /* Temperature sensor enable. Default value: 0 */
#define M_RES                   BIT(5)     /* Magnetic resolution selection. Default value: 00 (00: low resolution, 11: high resolution) */
#define M_ODR                   BIT(2)     /* Magnetic data rate selection. Default value: 110 */
#define LIR2                    BIT(1)     /* Latch interrupt request on INT2_SRC register, with INT2_SRC register cleared by reading INT2_SRC itself. Default value: 0. */
#define LIR1                    BIT(0)     /* Latch interrupt request on INT1_SRC register, with INT1_SRC register cleared by reading INT1_SRC itself. Default value: 0. */

//CONTROL REGISTER 6
#define CTRL_REG6               0x25
#define MFS                     BIT(5)     /* MFS [1:0] Magnetic full-scale selection. Default value: 01 */

//CONTROL REGISTER 7 ACC
#define CTRL_REG7				0x26
#define AHPM                    BIT(6)     /* High-pass filter mode selection for acceleration data. Default value: 00 */
#define AFDS                    BIT(5)     /* Filtered acceleration data selection. Default value: 0 */
#define T_ONLY                  BIT(4)     /* Temperature sensor only mode. Default value: 0 */
#define MLP                     BIT(2)     /* Magnetic data low-power mode. Default value: 0 */
#define MD                      BIT(0)     /* Magnetic sensor mode selection. Default 10 */


//STATUS_REG_AXIES ACC
#define LSM303D_STATUS_REG_A            0x27
#define LSM303D_STATUS_REG_ZYXOR        0x80       /* 1	:	new data set has over written the previous one
                                              0	:	no overrun has occurred (default) */
#define LSM303D_STATUS_REG_ZOR          0x40       /* 0	:	no overrun has occurred (default)
                                              1	:	new Z-axis data has over written the previous one */
#define LSM303D_STATUS_REG_YOR          0x20       /* 0	:	no overrun has occurred (default)
                                              1	:	new Y-axis data has over written the previous one */
#define LSM303D_STATUS_REG_XOR          0x10       /* 0	:	no overrun has occurred (default)
                                              1	:	new X-axis data has over written the previous one */
#define LSM303D_STATUS_REG_ZYXDA        0x08       /* 0	:	a new set of data is not yet avvious one
                                              1	:	a new set of data is available */
#define LSM303D_STATUS_REG_ZDA          0x04       /* 0	:	a new data for the Z-Axis is not availvious one
                                              1	:	a new data for the Z-Axis is available */
#define LSM303D_STATUS_REG_YDA          0x02       /* 0	:	a new data for the Y-Axis is not available
                                              1	:	a new data for the Y-Axis is available */
#define LSM303D_STATUS_REG_XDA          0x01       /* 0	:	a new data for the X-Axis is not available */


//OUTPUT REGISTER ACC
#define OUT_X_L_A				0x28
#define OUT_X_H_A				0x29
#define OUT_Y_L_A				0x2A
#define OUT_Y_H_A				0x2B
#define OUT_Z_L_A				0x2C
#define OUT_Z_H_A				0x2D


//FIFO CONTROL REGISTER ACC
#define FIFO_CTRL_REG_A         0x2E
#define FM                      BIT(5)     /* FIFO mode selection. Default value: 000 */
#define FTH                     BIT(0)     /* FIFO threshold level. Default value: 00000 */

//FIFO SOURCE REGISTERS ACC
#define FIFO_SRC_REG_A			0x2F
#define FIFO_SRC_FTH            0x80       /* FIFO threshold status. */
#define FIFO_SRC_OVRUN          0x40       /* FIFO overrun status. */
#define FIFO_SRC_EMPTY          0x20       /* Empty status. */


#define IG_CFG1	                0x30
#define IG_SRC1	                0x31
#define IG_THS1	                0x32
#define IG_DUR1	                0x33
#define IG_CFG2	                0x34
#define IG_SRC2	                0x35
#define IG_THS2	                0x36
#define IG_DUR2                 0x37
#define CLICK_CFG	            0x38
#define CLICK_SRC	            0x39
#define CLICK_THS               0x3A
#define TIME_LIMIT              0x3B
#define TIME_LATENCY            0x3C
#define TIME_WINDOW             0x3D
#define ACT_THS                 0x3E
#define ACT_DUR                 0x3F



class LSM303D {
protected:
	SPIMaster& spi_;
	u8_t cs_;
	std::vector<GPIOPin> pins_;

public:
	AccAxesRaw_t raw;

	typedef enum {
		MEMS_ENABLE			=		0x01,
		MEMS_DISABLE		=		0x00
	} State_t;


public:
	LSM303D(SPIMaster& spi, u8_t cs, const std::vector<GPIOPin>& pins = {});
	~LSM303D();
	void update_data();
	void configure();
	void acc_regs_dump();

	//Sensor Configuration Functions
	void SetODR(ODR_t ov);
	void SetMagneticResolution(Resolution_t resolution);
	void SetAxis(Axis_t axis);
	void SetFullScale(Fullscale_t fs);
	void SetFullScaleMag(FullscaleMag_t fs);
	void SetBDU(State_t bdu);
	void SetSelfTest(SelfTest_t st);
	void SetTemperature(State_t state);

	//Filtering Functions
	void SetHPFMode(HPFMode_t hpf);
	void SetHPFCutOFF(HPFCutOffFreq_t hpf);
	void SetFilterDataSel(State_t state);

	//Interrupt Functions
	void SetInt1Pin(IntPinConf_t pinConf);
	void SetInt2Pin(IntPinConf_t pinConf);
	void Int1LatchEnable(State_t latch);
	void Int2LatchEnable(State_t latch);
	void SetIGConfiguration(IntConf_t ic);

	//FIFO Functions
	void FIFOModeEnable(State_t enable);
	void FIFOModeSet(FifoMode_t fm);
	void SetThreshold(u8_t ths);
	void GetFifoSourceReg(u8_t* val);
	bool GetFifoSourceBit(u8_t statusBIT);
	u8_t GetFifoSourceFSS();

	//Other Reading Functions
	void GetSatusReg(u8_t* val);
	bool GetSatusBit(u8_t statusBIT);
	void GetAccAxesRaw(AccAxesRaw_t* buff);
	void GetTempRaw(i16_t* val);
	void Get6DPosition(u8_t* val);

	/******** magnetometer function***********/
	void SetODR_M(ODR_M_t ov);
	void SetGainMag(GAIN_M_t Gain);
	void SetModeMag(Mode_M_t Mode);
	void GetMagAxesRaw(MagAxesRaw_t* buff);

	void ReadReg8(u8_t deviceAddr, u8_t Reg, u8_t* Data);
	void WriteReg8(u8_t deviceAddress, u8_t WriteAddr, u8_t Data);

	void ReadReg8(u8_t reg, u8_t* data);
	void WriteReg8(u8_t reg, u8_t data);
	void ReadData(u8_t reg, u8_t* data, u16_t nbytes);
	void WriteData(u8_t reg, u8_t *data, u16_t nbytes);
};


#endif /* LSM303DLHC_H_ */
