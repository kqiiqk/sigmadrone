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
$Descr A4 11693 8268
encoding utf-8
Sheet 9 11
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BMP180 U?
U 1 1 558FDE4B
P 5950 3650
F 0 "U?" H 6300 3950 60  0000 C CNN
F 1 "BMP180" H 5700 3350 60  0000 C CNN
F 2 "" H 5950 3650 60  0000 C CNN
F 3 "" H 5950 3650 60  0000 C CNN
	1    5950 3650
	1    0    0    -1  
$EndComp
Text HLabel 2950 3500 0    60   BiDi ~ 0
PS_I2C_SDA
Text HLabel 2950 3600 0    60   Input ~ 0
PS_I2C_SCL
$Comp
L R R?
U 1 1 558FDE8E
P 4600 3500
F 0 "R?" V 4550 3650 50  0000 C CNN
F 1 "22" V 4600 3500 50  0000 C CNN
F 2 "" V 4530 3500 30  0000 C CNN
F 3 "" H 4600 3500 30  0000 C CNN
	1    4600 3500
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 558FDECD
P 4600 3600
F 0 "R?" V 4550 3750 50  0000 C CNN
F 1 "22" V 4600 3600 50  0000 C CNN
F 2 "" V 4530 3600 30  0000 C CNN
F 3 "" H 4600 3600 30  0000 C CNN
	1    4600 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 3500 4450 3500
Wire Wire Line
	2950 3600 4450 3600
Wire Wire Line
	4750 3500 5250 3500
Wire Wire Line
	4750 3600 5250 3600
$Comp
L +3V3 #PWR?
U 1 1 558FDF78
P 3350 2800
F 0 "#PWR?" H 3350 2650 50  0001 C CNN
F 1 "+3V3" H 3350 2940 50  0000 C CNN
F 2 "" H 3350 2800 60  0000 C CNN
F 3 "" H 3350 2800 60  0000 C CNN
	1    3350 2800
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 558FDF8F
P 3650 2800
F 0 "#PWR?" H 3650 2650 50  0001 C CNN
F 1 "+3V3" H 3650 2940 50  0000 C CNN
F 2 "" H 3650 2800 60  0000 C CNN
F 3 "" H 3650 2800 60  0000 C CNN
	1    3650 2800
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 558FDFA7
P 3350 3100
F 0 "R?" H 3250 2950 50  0000 C CNN
F 1 "2k2" V 3350 3100 50  0000 C CNN
F 2 "" V 3280 3100 30  0000 C CNN
F 3 "" H 3350 3100 30  0000 C CNN
	1    3350 3100
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 558FE0AC
P 3650 3100
F 0 "R?" H 3550 2950 50  0000 C CNN
F 1 "2k2" V 3650 3100 50  0000 C CNN
F 2 "" V 3580 3100 30  0000 C CNN
F 3 "" H 3650 3100 30  0000 C CNN
	1    3650 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 2800 3350 2950
Wire Wire Line
	3350 3250 3350 3600
Connection ~ 3350 3600
Wire Wire Line
	3650 2800 3650 2950
Wire Wire Line
	3650 3250 3650 3500
Connection ~ 3650 3500
Wire Wire Line
	7100 3500 6650 3500
Wire Wire Line
	7100 3600 6650 3600
Connection ~ 7100 3500
$Comp
L GND #PWR?
U 1 1 558FE2F6
P 7100 4550
F 0 "#PWR?" H 7100 4300 50  0001 C CNN
F 1 "GND" H 7100 4400 50  0000 C CNN
F 2 "" H 7100 4550 60  0000 C CNN
F 3 "" H 7100 4550 60  0000 C CNN
	1    7100 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 558FE312
P 6800 4550
F 0 "#PWR?" H 6800 4300 50  0001 C CNN
F 1 "GND" H 6800 4400 50  0000 C CNN
F 2 "" H 6800 4550 60  0000 C CNN
F 3 "" H 6800 4550 60  0000 C CNN
	1    6800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3800 6800 3800
Wire Wire Line
	6800 3800 6800 4550
$Comp
L C C?
U 1 1 558FE33E
P 7100 4100
F 0 "C?" H 7125 4200 50  0000 L CNN
F 1 "100nF" H 7125 4000 50  0000 L CNN
F 2 "" H 7138 3950 30  0000 C CNN
F 3 "" H 7100 4100 60  0000 C CNN
	1    7100 4100
	1    0    0    -1  
$EndComp
Connection ~ 7100 3600
Wire Wire Line
	7100 4250 7100 4550
Text HLabel 2950 2200 0    60   Input ~ 0
V_SENS1
Wire Wire Line
	2950 2200 7100 2200
Wire Wire Line
	7100 2200 7100 3950
$Comp
L PWR_FLAG #FLG?
U 1 1 55FF4C0A
P 3500 1850
F 0 "#FLG?" H 3500 1945 50  0001 C CNN
F 1 "PWR_FLAG" H 3500 2030 50  0000 C CNN
F 2 "" H 3500 1850 60  0000 C CNN
F 3 "" H 3500 1850 60  0000 C CNN
	1    3500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1850 3500 2200
Connection ~ 3500 2200
$EndSCHEMATC
