EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:sigmadrone
LIBS:colibri-wnd-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 28
Title "Colibri WND"
Date ""
Rev "A1"
Comp "sygmadrone.org"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3500 4700 1850 800 
U 5576830B
F0 "JTAG/SWD" 60
F1 "swd_jtag.sch" 60
F2 "TRST" O R 5350 4900 60 
F3 "TDO/SWO" I R 5350 5000 60 
F4 "TCK/SWCLK" O R 5350 5100 60 
F5 "TMS/SWDIO" B R 5350 5200 60 
F6 "TDI" B R 5350 5300 60 
F7 "RESET#" O R 5350 5400 60 
F8 "JTAG_POWER_ON" O R 5350 4800 60 
$EndSheet
$Sheet
S 3500 5700 1850 1500
U 5586441E
F0 "Leds/Buttons" 60
F1 "leds_buttons.sch" 60
F2 "BUTTON_0" O R 5350 6000 60 
F3 "BUTTON_1" O R 5350 6100 60 
F4 "BUTTON_2" O R 5350 6200 60 
F5 "BUTTON_3" O R 5350 6300 60 
F6 "BUTTON_4" O R 5350 6400 60 
F7 "RESET#" O R 5350 5800 60 
F8 "LED1" I R 5350 6500 60 
F9 "LED3" I R 5350 6700 60 
F10 "LED2" I R 5350 6600 60 
F11 "LED4" I R 5350 6800 60 
F12 "BOOT0" O R 5350 5900 60 
F13 "MODULE_RESET#" O R 5350 7000 60 
$EndSheet
$Sheet
S 3500 1750 1850 1050
U 55865745
F0 "MEMS" 60
F1 "mems.sch" 60
F2 "SPI5_SCK" I R 5350 2050 60 
F3 "SPI5_MOSI" I R 5350 2150 60 
F4 "SPI5_MISO" O R 5350 2250 60 
F5 "MEMS_GYR_INT2" O R 5350 2350 60 
F6 "MEMS_GYR_INT1" O R 5350 2450 60 
F7 "MEMS_GYR_NCS" I R 5350 1950 60 
F8 "MEMS_ACC_INT2" O R 5350 2550 60 
F9 "MEMS_ACC_INT1" O R 5350 2650 60 
F10 "MEMS_ACC_NCS" I R 5350 1850 60 
F11 "V_SENS1" I L 3500 2250 60 
$EndSheet
$Sheet
S 12700 6900 1850 1100
U 55895050
F0 "STM32F4 SDRAM" 60
F1 "stm32f4_sdram.sch" 60
F2 "FMC_B[0..1]" B L 12700 7000 60 
F3 "FMC_SDNE1" I L 12700 7900 60 
F4 "FMC_SDNWE" I L 12700 7700 60 
F5 "FMC_SDNRAS" I L 12700 7500 60 
F6 "FMC_SDNCAS" I L 12700 7600 60 
F7 "FMC_SDCLK" I L 12700 7800 60 
F8 "FMC_SDCKE1" I L 12700 7400 60 
F9 "FMC_NBL[0..1]" B L 12700 7100 60 
F10 "FMC_D[0..15]" B L 12700 7200 60 
F11 "FMC_A[0..11]" B L 12700 7300 60 
$EndSheet
$Sheet
S 12700 2050 1850 600 
U 558F3436
F0 "Cortex FTDI Interface" 60
F1 "c_ftdi_interface.sch" 60
F2 "C_FTDI_RTS" I L 12700 2350 60 
F3 "C_FTDI_CTS" O L 12700 2450 60 
F4 "C_FTDI_RI" O L 12700 2550 60 
F5 "C_FTDI_TXD" O L 12700 2150 60 
F6 "C_FTDI_RXD" I L 12700 2250 60 
$EndSheet
$Sheet
S 3500 1200 1850 300 
U 558FDA75
F0 "Pressure Sensor" 60
F1 "pressure_sensor.sch" 60
F2 "PS_I2C_SDA" B R 5350 1300 60 
F3 "PS_I2C_SCL" I R 5350 1400 60 
F4 "V_SENS1" I L 3500 1300 60 
$EndSheet
$Sheet
S 3500 3600 1850 900 
U 5596276C
F0 "Power Control" 60
F1 "powerctrl.sch" 60
F2 "VH_CTRL" I R 5350 4100 60 
F3 "Vsys" O L 3500 3750 60 
F4 "PWR_BTN_READ" O R 5350 3900 60 
F5 "ADAPTER_AV#" O R 5350 4000 60 
F6 "PWR_ON" I R 5350 4300 60 
F7 "JTAG_PWR_ON" I R 5350 4400 60 
F8 "BAT_MSRMNT" O R 5350 3800 60 
F9 "MSRMNT_ON" I R 5350 4200 60 
$EndSheet
$Sheet
S 3500 750  1850 200 
U 55FF210B
F0 "Sensors Power Control" 60
F1 "sensors_pwr_ctrl.sch" 60
F2 "V_SENS_CTRL" I R 5350 850 60 
F3 "V_SENS1" O L 3500 850 60 
$EndSheet
$Sheet
S 3500 7450 1850 2500
U 5609F831
F0 "Wandboard Connector" 60
F1 "wb_connector.sch" 60
F2 "MODULE_RSTn" I R 5350 7550 60 
F3 "MODULE_ON/OFF" I R 5350 7650 60 
F4 "WB_UART_CTS" O R 5350 8650 60 
F5 "WB_UART_RTS" I R 5350 8950 60 
F6 "WB_UART_TX" O R 5350 8750 60 
F7 "WB_UART_RX" I R 5350 8850 60 
F8 "WB_SPI_MOSI" O R 5350 8150 60 
F9 "WB_SPI_MISO" I R 5350 8250 60 
F10 "WB_SPI_CLK" O R 5350 8350 60 
F11 "WB_SPI_CS" O R 5350 8450 60 
F12 "WB_GPIO1" B R 5350 9450 60 
F13 "WB_GPIO2" B R 5350 9550 60 
F14 "WB_GPIO3" B R 5350 9650 60 
F15 "WB_GPIO4" B R 5350 9750 60 
F16 "WB_GPIO5" B R 5350 9850 60 
$EndSheet
$Sheet
S 12700 3000 1850 650 
U 56138561
F0 "GPS" 60
F1 "gps.sch" 60
F2 "GPS_TXD(3V3)" O L 12700 3150 60 
F3 "GPS_RXD(3V3)" I L 12700 3250 60 
F4 "GPS_PWR_CTRL(3V3)" I L 12700 3350 60 
F5 "Vbak" I L 12700 3450 60 
F6 "GPS_TIME_PULSE" O L 12700 3550 60 
$EndSheet
$Sheet
S 12700 900  1850 800 
U 558B2A96
F0 "USB_OTG_FS" 60
F1 "usb_otg_fs.sch" 60
F2 "OTG_FS_DM" B L 12700 1150 60 
F3 "OTG_FS_DP" B L 12700 1250 60 
F4 "OTG_FS_ID" B L 12700 1350 60 
F5 "OTG_FS_OC" O L 12700 1450 60 
F6 "OTG_FS_PSO" I L 12700 1550 60 
F7 "OTG_FS_VBUS" B L 12700 1050 60 
$EndSheet
$Sheet
S 12700 3900 1850 1050
U 5618EF39
F0 "Servo Motors PWM output" 60
F1 "servo_pwm_output.sch" 60
F2 "SRV_PWM_4" I L 12700 4500 60 
F3 "SRV_PWM_5" I L 12700 4600 60 
F4 "SRV_PWM_6" I L 12700 4700 60 
F5 "SRV_PWM_7" I L 12700 4800 60 
F6 "SRV_PWM_0" I L 12700 4050 60 
F7 "SRV_PWM_1" I L 12700 4150 60 
F8 "SRV_PWM_2" I L 12700 4250 60 
F9 "SRV_PWM_3" I L 12700 4350 60 
$EndSheet
$Sheet
S 12700 5250 1850 650 
U 56196EB9
F0 "Receiver PWM input" 60
F1 "receiver_pwm_input.sch" 60
F2 "RCV_PWM_1" O L 12700 5400 60 
F3 "RCV_PWM_2" O L 12700 5500 60 
F4 "RCV_PWM_3" O L 12700 5600 60 
F5 "RCV_PWM_4" O L 12700 5700 60 
F6 "RCV_PWM_5" O L 12700 5800 60 
$EndSheet
$Sheet
S 1050 3600 1850 300 
U 561992A7
F0 "Voltage Regulators" 60
F1 "voltage_regulators.sch" 60
F2 "Vsys" I R 2900 3750 60 
$EndSheet
Text Notes 14700 2450 0    60   ~ 0
Connect To:\nUSART1
Text Notes 2400 6100 0    60   ~ 0
Connect BUTTON_0 to:\nPB2/BOOT1
$Sheet
S 12700 6150 1850 450 
U 566CBCE8
F0 "LED Controller" 60
F1 "pca9685pw_led_ctrl.sch" 60
F2 "PCA9685_OE(3V3)" I L 12700 6250 60 
F3 "PCA9865_I2C_SCL" I L 12700 6350 60 
F4 "PCA9865_I2C_SDA" B L 12700 6450 60 
$EndSheet
Wire Wire Line
	5350 7550 7000 7550
Wire Wire Line
	5350 7000 5550 7000
Wire Wire Line
	5550 7000 5550 7550
Connection ~ 5550 7550
Wire Wire Line
	3500 3750 2900 3750
$Sheet
S 7000 750  4250 9200
U 557677C0
F0 "cortex" 60
F1 "cortex.sch" 60
F2 "TDI" I L 7000 5300 60 
F3 "TMS/SWDIO" I L 7000 5200 60 
F4 "TCK/SWCLK" I L 7000 5100 60 
F5 "RESET#" I L 7000 5800 60 
F6 "TRST" I L 7000 4900 60 
F7 "TDO/SWO" I L 7000 5000 60 
F8 "BOOT0" I L 7000 5900 60 
F9 "BUTTON_0" I L 7000 6000 60 
F10 "BUTTON_1" I L 7000 6100 60 
F11 "BUTTON_2" I L 7000 6200 60 
F12 "BUTTON_3" I L 7000 6300 60 
F13 "USART1_TX" O R 11250 2250 60 
F14 "USART1_RX" I R 11250 2150 60 
F15 "IN_PWM_04" I R 11250 5700 60 
F16 "MEMS_GYR_INT1" I L 7000 2450 60 
F17 "IN_PWM_05" I R 11250 5800 60 
F18 "MEMS_GYR_INT2" I L 7000 2350 60 
F19 "IN_PWM_01" I R 11250 5400 60 
F20 "IN_PWM_02" I R 11250 5500 60 
F21 "MODULE_RSTn" I L 7000 7550 60 
F22 "MODULE_ON/OFF" O L 7000 7650 60 
F23 "SRV_PWM_0" O R 11250 4050 60 
F24 "SRV_PWM_3" O R 11250 4350 60 
F25 "OTG_FS_VBUS" B R 11250 1050 60 
F26 "OTG_FS_ID" O R 11250 1350 60 
F27 "OTG_FS_DM" B R 11250 1150 60 
F28 "OTG_FS_DP" B R 11250 1250 60 
F29 "VH_CTRL" O L 7000 4100 60 
F30 "V_SENS_CTRL" O L 7000 850 60 
F31 "GPS_TIME_PULSE" I R 11250 3550 60 
F32 "PS_I2C1_SCL" O L 7000 1400 60 
F33 "PS_I2C1_SDA" B L 7000 1300 60 
F34 "PCA9685_OE" O R 11250 6250 60 
F35 "OTG_HS_VBUS" B L 7000 7800 60 
F36 "OTG_HS_DM" B L 7000 8000 60 
F37 "OTG_HS_DP" B L 7000 7900 60 
F38 "PCA9685_SDA" B R 11250 6450 60 
F39 "PCA9685_SCL" O R 11250 6350 60 
F40 "MEMS_GYRO_CS" O L 7000 1950 60 
F41 "VBAT_MSRMNT" I L 7000 3800 60 
F42 "Adapter_AV#" I L 7000 4000 60 
F43 "C_OTG_FS_PSO" O R 11250 1550 60 
F44 "C_OTG_FS_OC" I R 11250 1450 60 
F45 "SRV_PWM_4" O R 11250 4500 60 
F46 "SRV_PWM_5" O R 11250 4600 60 
F47 "SRV_PWM_6" O R 11250 4700 60 
F48 "SRV_PWM_7" O R 11250 4800 60 
F49 "GPS_TXD" O R 11250 3250 60 
F50 "GPS_RXD" I R 11250 3150 60 
F51 "MEMS_ACC_INT2" I L 7000 2550 60 
F52 "MEMS_ACC_CS" O L 7000 1850 60 
F53 "IN_PWM_03" I R 11250 5600 60 
F54 "WB_UART_RX" I L 7000 8750 60 
F55 "WB_UART_TX" O L 7000 8850 60 
F56 "WB_UART_RTS" O L 7000 8950 60 
F57 "WB_UART_CTS" I L 7000 8650 60 
F58 "WB_SPI_CLK" I L 7000 8350 60 
F59 "WB_SPI_CS" I L 7000 8450 60 
F60 "BUTTON_4" I L 7000 6400 60 
F61 "RTC_INT" I L 7000 9100 60 
F62 "SRV_PWM_2" O R 11250 4250 60 
F63 "SRV_PWM_1" O R 11250 4150 60 
F64 "WB_SPI_MISO" O L 7000 8250 60 
F65 "WB_SPI_MOSI" I L 7000 8150 60 
F66 "LED1" O L 7000 6500 60 
F67 "LED2" O L 7000 6600 60 
F68 "LED3" O L 7000 6700 60 
F69 "LED4" O L 7000 6800 60 
F70 "WB_GPIO1" B L 7000 9450 60 
F71 "WB_GPIO2" B L 7000 9550 60 
F72 "WB_GPIO3" B L 7000 9650 60 
F73 "WB_GPIO4" B L 7000 9750 60 
F74 "WB_GPIO5" B L 7000 9850 60 
F75 "MSRMNT_ON" O L 7000 4200 60 
F76 "PWR_BTN_READ" I L 7000 3900 60 
F77 "PWR_ON" O L 7000 4300 60 
F78 "C_I2C2_SCL" O R 11250 8900 60 
F79 "C_I2C2_SDA" B R 11250 9000 60 
F80 "C_I2C3_SCL" O R 11250 9200 60 
F81 "C_I2C3_SDA" B R 11250 9300 60 
F82 "FMC_SDCKE1" O R 11250 7400 60 
F83 "FMC_SDNE1" O R 11250 7900 60 
F84 "FMC_SDNWE" O R 11250 7700 60 
F85 "FMC_NBL[0..1]" B R 11250 7100 60 
F86 "FMC_SDNRAS" O R 11250 7500 60 
F87 "FMC_BA[0..1]" B R 11250 7000 60 
F88 "FMC_SDCLK" O R 11250 7800 60 
F89 "FMC_SDNCAS" O R 11250 7600 60 
F90 "FMC_A[0..11]" O R 11250 7300 60 
F91 "FMC_D[0..15]" B R 11250 7200 60 
F92 "MEMS_SPI5_SCK" O L 7000 2050 60 
F93 "MEMS_SPI5_MISO" I L 7000 2250 60 
F94 "MEMS_SPI5_MOSI" O L 7000 2150 60 
F95 "MEMS_ACC_INT1" I L 7000 2650 60 
F96 "C_SPI2_NSS1" O R 11250 8250 60 
F97 "C_SPI2_SCK" O R 11250 8450 60 
F98 "C_SPI2_MISO" I R 11250 8550 60 
F99 "C_SPI2_MOSI" O R 11250 8650 60 
F100 "C_SPI2_NSS2" O R 11250 8350 60 
$EndSheet
$EndSCHEMATC
