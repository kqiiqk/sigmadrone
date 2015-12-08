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
Sheet 5 24
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
L L3GD20 U?
U 1 1 55865E51
P 4800 3350
F 0 "U?" H 5200 3850 60  0000 C CNN
F 1 "L3GD20" H 4500 2850 60  0000 C CNN
F 2 "" H 4800 3500 60  0001 C CNN
F 3 "" H 4800 3500 60  0000 C CNN
	1    4800 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55865FDB
P 6900 3950
F 0 "#PWR?" H 6900 3700 50  0001 C CNN
F 1 "GND" H 6900 3800 50  0000 C CNN
F 2 "" H 6900 3950 60  0000 C CNN
F 3 "" H 6900 3950 60  0000 C CNN
	1    6900 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 558661BB
P 3950 3950
F 0 "#PWR?" H 3950 3700 50  0001 C CNN
F 1 "GND" H 3950 3800 50  0000 C CNN
F 2 "" H 3950 3950 60  0000 C CNN
F 3 "" H 3950 3950 60  0000 C CNN
	1    3950 3950
	1    0    0    -1  
$EndComp
Text HLabel 1500 3100 0    60   Input ~ 0
SPI5_SCK
Text HLabel 1500 3200 0    60   Input ~ 0
SPI5_MOSI
Text HLabel 1500 3300 0    60   Output ~ 0
SPI5_MISO
Text HLabel 1500 3500 0    60   Output ~ 0
MEMS_GYR_INT2
Text HLabel 1500 3600 0    60   Output ~ 0
MEMS_GYR_INT1
Text HLabel 1500 3400 0    60   Input ~ 0
MEMS_GYR_NCS
$Comp
L LSM303D U?
U 1 1 55867183
P 4800 5250
F 0 "U?" H 5200 5750 60  0000 C CNN
F 1 "LSM303D" H 4550 4750 60  0000 C CNN
F 2 "" H 4800 5400 60  0001 C CNN
F 3 "" H 4800 5400 60  0000 C CNN
	1    4800 5250
	1    0    0    -1  
$EndComp
Text HLabel 1500 5300 0    60   Output ~ 0
MEMS_ACC_INT2
Text HLabel 1500 5400 0    60   Output ~ 0
MEMS_ACC_INT1
$Comp
L GND #PWR?
U 1 1 5587241A
P 6900 5950
F 0 "#PWR?" H 6900 5700 50  0001 C CNN
F 1 "GND" H 6900 5800 50  0000 C CNN
F 2 "" H 6900 5950 60  0000 C CNN
F 3 "" H 6900 5950 60  0000 C CNN
	1    6900 5950
	1    0    0    -1  
$EndComp
Text HLabel 1500 5200 0    60   Input ~ 0
MEMS_ACC_NCS
Wire Wire Line
	5500 3700 7750 3700
Wire Wire Line
	7750 3700 7750 3350
Wire Wire Line
	6900 3350 6900 3950
Connection ~ 6900 3700
Wire Wire Line
	6100 3600 6100 3700
Connection ~ 6100 3700
Wire Wire Line
	5500 3200 6100 3200
Wire Wire Line
	6100 3200 6100 3300
Wire Wire Line
	5500 3300 5650 3300
Wire Wire Line
	5650 3300 5650 3700
Connection ~ 5650 3700
Wire Wire Line
	5500 3400 5650 3400
Connection ~ 5650 3400
Connection ~ 5650 3500
Connection ~ 5650 3600
Wire Wire Line
	5500 3500 5650 3500
Wire Wire Line
	5500 3600 5650 3600
Wire Wire Line
	6900 2700 6900 3050
Wire Wire Line
	5500 3000 5650 3000
Wire Wire Line
	5650 2700 5650 3100
Wire Wire Line
	5650 2700 8400 2700
Wire Wire Line
	5650 3100 5500 3100
Connection ~ 5650 3000
Wire Wire Line
	7750 2700 7750 3050
Wire Wire Line
	3950 2700 3950 3000
Wire Wire Line
	3950 3000 4100 3000
Wire Wire Line
	3950 3950 3950 3700
Wire Wire Line
	3950 3700 4100 3700
Wire Wire Line
	1500 3100 4100 3100
Wire Wire Line
	1500 3200 4100 3200
Wire Wire Line
	1500 3300 4100 3300
Wire Wire Line
	1500 3400 4100 3400
Wire Wire Line
	1500 3500 4100 3500
Wire Wire Line
	1500 3600 4100 3600
Wire Wire Line
	5500 5200 5650 5200
Wire Wire Line
	5500 5300 5650 5300
Connection ~ 5650 5300
Wire Wire Line
	5650 5400 5500 5400
Connection ~ 5650 5400
Wire Wire Line
	5650 5500 5500 5500
Connection ~ 5650 5500
Wire Wire Line
	5500 5600 7750 5600
Connection ~ 5650 5600
Wire Wire Line
	5500 5100 6100 5100
Wire Wire Line
	6100 5100 6100 5200
Wire Wire Line
	6100 5600 6100 5500
Wire Wire Line
	6100 5000 5500 5000
Wire Wire Line
	7750 5600 7750 5300
Connection ~ 6100 5600
Wire Wire Line
	6900 5300 6900 5950
Connection ~ 6900 5600
Wire Wire Line
	6100 4600 6100 5000
Wire Wire Line
	5650 5200 5650 5600
Wire Wire Line
	8400 4600 6100 4600
Wire Wire Line
	7750 4600 7750 5000
Wire Wire Line
	6900 4600 6900 5000
Connection ~ 6900 4600
Wire Wire Line
	4100 4900 3050 4900
Wire Wire Line
	3050 4900 3050 3100
Connection ~ 3050 3100
Wire Wire Line
	2950 3200 2950 5000
Wire Wire Line
	2950 5000 4100 5000
Connection ~ 2950 3200
Wire Wire Line
	2850 3300 2850 5100
Wire Wire Line
	2850 5100 4100 5100
Connection ~ 2850 3300
Wire Wire Line
	1500 5200 4100 5200
Wire Wire Line
	1500 5300 4100 5300
Wire Wire Line
	1500 5400 4100 5400
Wire Wire Line
	4100 5500 3450 5500
Wire Wire Line
	3150 5500 2850 5500
Wire Wire Line
	2850 5500 2850 5600
Wire Wire Line
	2850 5600 4100 5600
Connection ~ 6900 2700
Wire Wire Line
	8400 2300 8400 4600
Connection ~ 7750 2700
Connection ~ 7750 4600
Connection ~ 8400 2700
Text HLabel 1500 2300 0    60   Input ~ 0
V_SENS1
Wire Wire Line
	1500 2300 8400 2300
$Comp
L PWR_FLAG #FLG?
U 1 1 55FF3EA5
P 1950 2100
F 0 "#FLG?" H 1950 2195 50  0001 C CNN
F 1 "PWR_FLAG" H 1950 2280 50  0000 C CNN
F 2 "" H 1950 2100 60  0000 C CNN
F 3 "" H 1950 2100 60  0000 C CNN
	1    1950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2100 1950 2300
Connection ~ 1950 2300
$Comp
L +3V3 #PWR?
U 1 1 5622ED95
P 5800 4550
F 0 "#PWR?" H 5800 4400 50  0001 C CNN
F 1 "+3V3" H 5800 4690 50  0000 C CNN
F 2 "" H 5800 4550 60  0000 C CNN
F 3 "" H 5800 4550 60  0000 C CNN
	1    5800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4900 5800 4900
Wire Wire Line
	5800 4900 5800 4550
$Comp
L +3V3 #PWR?
U 1 1 5622EE37
P 3950 2700
F 0 "#PWR?" H 3950 2550 50  0001 C CNN
F 1 "+3V3" H 3950 2840 50  0000 C CNN
F 2 "" H 3950 2700 60  0000 C CNN
F 3 "" H 3950 2700 60  0000 C CNN
	1    3950 2700
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F03AD
P 7750 3200
F 0 "C?" H 7775 3300 50  0000 L CNN
F 1 "10uF/16V/X5R" H 7775 3100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7780 3050 30  0001 L CNN
F 3 "" H 7775 3300 60  0000 L CNN
F 4 "0805" H 7750 3200 20  0000 C CNN "SMT"
F 5 "1762635" H 7780 3010 30  0001 L CNN "Part"
F 6 "Farnell" H 7780 2970 30  0001 L CNN "Provider"
	1    7750 3200
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F047E
P 6900 3200
F 0 "C?" H 6925 3300 50  0000 L CNN
F 1 "100nF/50V/X7R" H 6925 3100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6930 3050 30  0001 L CNN
F 3 "" H 6925 3300 60  0000 L CNN
F 4 "0603" H 6900 3200 20  0000 C CNN "SMT"
F 5 "1414028" H 6930 3010 30  0001 L CNN "Part"
F 6 "Farnell" H 6930 2970 30  0001 L CNN "Provider"
	1    6900 3200
	1    0    0    -1  
$EndComp
Text Notes 6050 2600 0    60   ~ 0
C27 & C28 are different model.\nCan't they be the same?
$Comp
L C_SMT C?
U 1 1 562F074A
P 7750 5150
F 0 "C?" H 7775 5250 50  0000 L CNN
F 1 "10uF/16V/X5R" H 7775 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7780 5000 30  0001 L CNN
F 3 "" H 7775 5250 60  0000 L CNN
F 4 "0805" H 7750 5150 20  0000 C CNN "SMT"
F 5 "1762635" H 7780 4960 30  0001 L CNN "Part"
F 6 "Farnell" H 7780 4920 30  0001 L CNN "Provider"
	1    7750 5150
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F07EA
P 6900 5150
F 0 "C?" H 6925 5250 50  0000 L CNN
F 1 "100nF/50V/X7R" H 6925 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6930 5000 30  0001 L CNN
F 3 "" H 6925 5250 60  0000 L CNN
F 4 "0603" H 6900 5150 20  0000 C CNN "SMT"
F 5 "1414028" H 6930 4960 30  0001 L CNN "Part"
F 6 "Farnell" H 6930 4920 30  0001 L CNN "Provider"
	1    6900 5150
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F090F
P 6100 5350
F 0 "C?" H 6125 5450 50  0000 L CNN
F 1 "4u7/6V3/X5R" H 6125 5250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6130 5200 30  0001 L CNN
F 3 "" H 6125 5450 60  0000 L CNN
F 4 "0603" H 6100 5350 20  0000 C CNN "SMT"
F 5 "1833803" H 6130 5160 30  0001 L CNN "Part"
F 6 "Farnell" H 6130 5120 30  0001 L CNN "Provider"
	1    6100 5350
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F0A15
P 3300 5500
F 0 "C?" V 3350 5300 50  0000 L CNN
F 1 "220nF/50V/X7R" V 3350 5600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3330 5350 30  0001 L CNN
F 3 "" H 3325 5600 60  0000 L CNN
F 4 "0603" H 3300 5500 20  0000 C CNN "SMT"
F 5 "2210924" H 3330 5310 30  0001 L CNN "Part"
F 6 "Farnell" H 3330 5270 30  0001 L CNN "Provider"
	1    3300 5500
	0    -1   -1   0   
$EndComp
$Comp
L C_SMT C?
U 1 1 5636A6B6
P 6100 3450
F 0 "C?" H 6125 3550 50  0000 L CNN
F 1 "10nF/50V/X7R" H 6125 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6130 3300 30  0001 L CNN
F 3 "" H 6125 3550 60  0000 L CNN
F 4 "0603" H 6100 3450 20  0000 C CNN "SMT"
F 5 "1414609" H 6130 3260 30  0001 L CNN "Part"
F 6 "Farnell" H 6130 3220 30  0001 L CNN "Provider"
	1    6100 3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
