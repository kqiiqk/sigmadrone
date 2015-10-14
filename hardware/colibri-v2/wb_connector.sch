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
Sheet 11 23
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 14050 5350 1550 900 
U 560A06D4
F0 "Wandboard FTDI Interface" 60
F1 "wb_ftdi_interface.sch" 60
F2 "WB_FTDI_RXD" O L 14050 5550 60 
F3 "WB_FTDI_TXD" I L 14050 5450 60 
F4 "WB_FTDI_CTS" O L 14050 5650 60 
F5 "WB_FTDI_RTS" I L 14050 5750 60 
F6 "WB_FTDI_RI" O L 14050 6150 60 
F7 "WB_FTDI_DSR" O L 14050 5950 60 
F8 "WB_FTDI_DTR" I L 14050 6050 60 
F9 "WB_FTDI_DCD" I L 14050 5850 60 
$EndSheet
$Comp
L AS0B821-S78B-7H CN?
U 1 1 560F080E
P 5450 5600
F 0 "CN?" H 5750 9950 60  0000 C CNN
F 1 "AS0B821-S78B-7H" H 5500 1250 60  0000 C CNN
F 2 "" H 5450 5850 60  0000 C CNN
F 3 "" H 5450 5850 60  0000 C CNN
	1    5450 5600
	1    0    0    -1  
$EndComp
$Comp
L AS0B821-S78B-7H CN?
U 2 1 560F088D
P 10300 5600
F 0 "CN?" H 10600 9950 60  0000 C CNN
F 1 "AS0B821-S78B-7H" H 10350 1250 60  0000 C CNN
F 2 "" H 10300 5850 60  0000 C CNN
F 3 "" H 10300 5850 60  0000 C CNN
	2    10300 5600
	1    0    0    -1  
$EndComp
$Sheet
S 14050 1300 1550 1000
U 5614B323
F0 "Wandboard USB OTG" 60
F1 "wnd_usb_otg.sch" 60
F2 "VBUS_FS" B L 14050 1450 60 
F3 "OTG_FS_DM" B L 14050 1550 60 
F4 "OTG_FS_DP" B L 14050 1650 60 
F5 "OTG_FS_ID" B L 14050 1750 60 
F6 "OTG_FS_OC" O L 14050 1850 60 
F7 "OTG_FS_PSO" I L 14050 1950 60 
$EndSheet
$Sheet
S 14050 2650 1550 1000
U 56152E00
F0 "Wandboard SD Card" 60
F1 "wnd_micro_sd.sch" 60
F2 "SD1_DATA2" B L 14050 3050 60 
F3 "SD1_DATA3" B L 14050 3150 60 
F4 "SD1_CLK" B L 14050 3250 60 
F5 "SD1_DATA0" B L 14050 2850 60 
F6 "SD1_DATA1" B L 14050 2950 60 
F7 "SD1_CMD" B L 14050 3350 60 
F8 "SD1_CD" O L 14050 3450 60 
F9 "SD1_WP" O L 14050 3550 60 
$EndSheet
$Sheet
S 14050 3900 1550 1200
U 561764C8
F0 "Wandboard Ethernet" 60
F1 "wnd_ethernet.sch" 60
F2 "TRD0_P" B L 14050 4000 60 
F3 "TRD0_N" B L 14050 4100 60 
F4 "TRD1_P" B L 14050 4200 60 
F5 "TRD1_N" B L 14050 4300 60 
F6 "TRD2_P" B L 14050 4400 60 
F7 "TRD2_N" B L 14050 4500 60 
F8 "TRD3_P" B L 14050 4600 60 
F9 "TRD3_N" B L 14050 4700 60 
F10 "LED1_ACT" I L 14050 4800 60 
F11 "LED1_nLINK100" I L 14050 4900 60 
F12 "LED1_nLINK1000" I L 14050 5000 60 
$EndSheet
$Sheet
S 14050 6500 1600 1300
U 56184803
F0 "Wandboard HDMI" 60
F1 "wnd_hdmi.sch" 60
F2 "HDMI_D2+" I L 14050 7000 60 
F3 "HDMI_D2-" I L 14050 7100 60 
F4 "HDMI_D1+" I L 14050 6800 60 
F5 "HDMI_D1-" I L 14050 6900 60 
F6 "HDMI_D0+" I L 14050 6600 60 
F7 "HDMI_D0-" I L 14050 6700 60 
F8 "HDMI_CLK+" I L 14050 7200 60 
F9 "HDMI_CLK-" I L 14050 7300 60 
F10 "HDMI_CEC_IN" I L 14050 7400 60 
F11 "DDC_SCL(5V)" I L 14050 7500 60 
F12 "DDC_SDA(5V)" B L 14050 7600 60 
F13 "HDMI1_HPD" I L 14050 7700 60 
$EndSheet
$Sheet
S 14050 8200 1550 1050
U 5619F1D5
F0 "Wandboard USB Host" 60
F1 "wnd_usb_host.sch" 60
F2 "USB_H1_OC" O L 14050 8350 60 
F3 "USB_HOST_DN" B L 14050 8450 60 
F4 "USB_HOST_DP" B L 14050 8550 60 
F5 "StdA_SSRX-" B L 14050 8650 60 
F6 "StdA_SSRX+" B L 14050 8750 60 
F7 "GND_DRAIN" B L 14050 8850 60 
F8 "StdA_SSTX-" B L 14050 8950 60 
F9 "StdA_SSTX+" B L 14050 9050 60 
$EndSheet
$Sheet
S 1200 1500 2300 2000
U 561C7B72
F0 "Wandboard LCD" 60
F1 "wnd_lcd.sch" 60
$EndSheet
$EndSCHEMATC
