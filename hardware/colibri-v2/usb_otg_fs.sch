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
Sheet 20 23
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
L USB_OTG P?
U 1 1 5614ED84
P 9750 5150
F 0 "P?" H 10075 5025 50  0000 C CNN
F 1 "USB_OTG" H 9750 5350 50  0000 C CNN
F 2 "" V 9700 5050 60  0001 C CNN
F 3 "" V 9700 5050 60  0000 C CNN
	1    9750 5150
	0    1    1    0   
$EndComp
Text HLabel 2600 4950 0    60   BiDi ~ 0
VBUS_FS
Text HLabel 2600 5050 0    60   BiDi ~ 0
OTG_FS_DM
Text HLabel 2600 5150 0    60   BiDi ~ 0
OTG_FS_DP
Text HLabel 2600 5250 0    60   BiDi ~ 0
OTG_FS_ID
Text HLabel 2600 3000 0    60   Output ~ 0
OTG_FS_OC
Text HLabel 2600 2900 0    60   Input ~ 0
OTG_FS_PSO
$Comp
L VBUS053CZ-HAF-G-08 U?
U 1 1 5614ED91
P 5300 4050
F 0 "U?" H 5450 4350 60  0000 C CNN
F 1 "VBUS053CZ-HAF-G-08" H 5300 3750 60  0000 C CNN
F 2 "" H 5250 4750 60  0001 C CNN
F 3 "" H 5250 4750 60  0000 C CNN
	1    5300 4050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5614EDA6
P 3100 1800
F 0 "#PWR?" H 3100 1650 50  0001 C CNN
F 1 "+3V3" H 3100 1940 50  0000 C CNN
F 2 "" H 3100 1800 60  0000 C CNN
F 3 "" H 3100 1800 60  0000 C CNN
	1    3100 1800
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5614EDB3
P 3450 1800
F 0 "#PWR?" H 3450 1650 50  0001 C CNN
F 1 "+3V3" H 3450 1940 50  0000 C CNN
F 2 "" H 3450 1800 60  0000 C CNN
F 3 "" H 3450 1800 60  0000 C CNN
	1    3450 1800
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5614EDC0
P 3800 2500
F 0 "D?" H 3800 2600 50  0000 C CNN
F 1 "RED" H 3800 2400 50  0000 C CNN
F 2 "" H 3800 2500 60  0001 C CNN
F 3 "" H 3800 2500 60  0000 C CNN
	1    3800 2500
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5614EDCE
P 3800 1800
F 0 "#PWR?" H 3800 1650 50  0001 C CNN
F 1 "+3V3" H 3800 1940 50  0000 C CNN
F 2 "" H 3800 1800 60  0000 C CNN
F 3 "" H 3800 1800 60  0000 C CNN
	1    3800 1800
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5614EDE2
P 9600 1600
F 0 "#PWR?" H 9600 1450 50  0001 C CNN
F 1 "+3V3" H 9600 1740 50  0000 C CNN
F 2 "" H 9600 1600 60  0000 C CNN
F 3 "" H 9600 1600 60  0000 C CNN
	1    9600 1600
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q?
U 1 1 5614EDE8
P 9500 2800
F 0 "Q?" H 9800 2850 50  0000 R CNN
F 1 "BSS138PW" H 10150 2750 50  0000 R CNN
F 2 "" H 9700 2900 29  0001 C CNN
F 3 "" H 9500 2800 60  0000 C CNN
	1    9500 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5614EDEF
P 9600 3250
F 0 "#PWR?" H 9600 3000 50  0001 C CNN
F 1 "GND" H 9600 3100 50  0000 C CNN
F 2 "" H 9600 3250 60  0000 C CNN
F 3 "" H 9600 3250 60  0000 C CNN
	1    9600 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5614EE0A
P 7350 3400
F 0 "#PWR?" H 7350 3150 50  0001 C CNN
F 1 "GND" H 7350 3250 50  0000 C CNN
F 2 "" H 7350 3400 60  0000 C CNN
F 3 "" H 7350 3400 60  0000 C CNN
	1    7350 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5614EE10
P 6100 3400
F 0 "#PWR?" H 6100 3150 50  0001 C CNN
F 1 "GND" H 6100 3250 50  0000 C CNN
F 2 "" H 6100 3400 60  0000 C CNN
F 3 "" H 6100 3400 60  0000 C CNN
	1    6100 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5614EE16
P 6100 4550
F 0 "#PWR?" H 6100 4300 50  0001 C CNN
F 1 "GND" H 6100 4400 50  0000 C CNN
F 2 "" H 6100 4550 60  0000 C CNN
F 3 "" H 6100 4550 60  0000 C CNN
	1    6100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5050 3250 5050
Wire Wire Line
	2600 5150 3250 5150
Wire Wire Line
	3550 5050 9450 5050
Wire Wire Line
	3550 5150 9450 5150
Wire Wire Line
	2600 4950 9450 4950
Wire Wire Line
	2600 5250 9450 5250
Wire Wire Line
	2600 2900 4800 2900
Wire Wire Line
	2600 3000 4800 3000
Wire Wire Line
	3100 1800 3100 1900
Wire Wire Line
	3450 1800 3450 1900
Wire Wire Line
	3100 2200 3100 2900
Connection ~ 3100 2900
Wire Wire Line
	3450 2200 3450 3000
Connection ~ 3450 3000
Wire Wire Line
	3800 1800 3800 1900
Wire Wire Line
	3800 2200 3800 2300
Wire Wire Line
	3800 2700 3800 3000
Connection ~ 3800 3000
Wire Wire Line
	9600 1600 9600 1700
Wire Wire Line
	9600 2000 9600 2050
Wire Wire Line
	9600 2450 9600 2600
Wire Wire Line
	9600 3000 9600 3250
Wire Wire Line
	8850 2800 9300 2800
Wire Wire Line
	6750 2800 8550 2800
Wire Wire Line
	8300 2800 8300 4950
Connection ~ 8300 4950
Connection ~ 8300 2800
Wire Wire Line
	7350 3400 7350 3200
Wire Wire Line
	7350 2900 7350 2800
Connection ~ 7350 2800
Wire Wire Line
	9200 3100 9050 3100
Wire Wire Line
	9050 3100 9050 2800
Connection ~ 9050 2800
Wire Wire Line
	9500 3100 9600 3100
Connection ~ 9600 3100
Wire Wire Line
	5800 4200 6100 4200
Wire Wire Line
	6100 4200 6100 4550
Wire Wire Line
	4800 4200 4250 4200
Wire Wire Line
	4250 4200 4250 5250
Connection ~ 4250 5250
Wire Wire Line
	4800 4100 4150 4100
Wire Wire Line
	4150 4100 4150 5150
Connection ~ 4150 5150
Wire Wire Line
	4800 4000 4050 4000
Wire Wire Line
	4050 4000 4050 5050
Connection ~ 4050 5050
$Comp
L GND #PWR?
U 1 1 5614EE59
P 9350 5800
F 0 "#PWR?" H 9350 5550 50  0001 C CNN
F 1 "GND" H 9350 5650 50  0000 C CNN
F 2 "" H 9350 5800 60  0000 C CNN
F 3 "" H 9350 5800 60  0000 C CNN
	1    9350 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5350 9350 5350
Wire Wire Line
	9350 5350 9350 5800
Wire Wire Line
	9850 5550 9850 5700
Wire Wire Line
	9850 5700 9350 5700
Connection ~ 9350 5700
$Comp
L +5V #PWR?
U 1 1 5614EE65
P 4150 1800
F 0 "#PWR?" H 4150 1650 50  0001 C CNN
F 1 "+5V" H 4150 1940 50  0000 C CNN
F 2 "" H 4150 1800 60  0000 C CNN
F 3 "" H 4150 1800 60  0000 C CNN
	1    4150 1800
	1    0    0    -1  
$EndComp
$Comp
L TPS2061CDBVT U?
U 1 1 5614EE6B
P 5300 2900
F 0 "U?" H 5550 3150 60  0000 C CNN
F 1 "TPS2061CDBVT" H 5300 2650 60  0000 C CNN
F 2 "" H 5300 2700 60  0001 C CNN
F 3 "" H 5300 2700 60  0000 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1800 4150 2800
Wire Wire Line
	4150 2800 4800 2800
Wire Wire Line
	5800 3000 6100 3000
Wire Wire Line
	6100 3000 6100 3400
NoConn ~ 5800 4000
NoConn ~ 5800 4100
Wire Wire Line
	4800 3900 3950 3900
Wire Wire Line
	3950 3900 3950 4950
Connection ~ 3950 4950
Text Notes 4950 2500 0    60   ~ 0
or use TPS2041CDBVT ???
$Comp
L R_SMT R?
U 1 1 562F624B
P 3100 2050
F 0 "R?" V 3170 2050 50  0000 C CNN
F 1 "10K/5%" V 3030 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3250 2050 30  0001 C CNN
F 3 "" V 3180 2050 30  0000 C CNN
F 4 "0603" V 3100 2050 20  0000 C CNN "SMT"
F 5 "9331700" V 3300 2050 30  0001 C CNN "Part"
F 6 "Farnell" V 3350 2050 30  0001 C CNN "Provider"
	1    3100 2050
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 562F6341
P 3450 2050
F 0 "R?" V 3520 2050 50  0000 C CNN
F 1 "10K/5%" V 3380 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3600 2050 30  0001 C CNN
F 3 "" V 3530 2050 30  0000 C CNN
F 4 "0603" V 3450 2050 20  0000 C CNN "SMT"
F 5 "9331700" V 3650 2050 30  0001 C CNN "Part"
F 6 "Farnell" V 3700 2050 30  0001 C CNN "Provider"
	1    3450 2050
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 562F6536
P 3800 2050
F 0 "R?" V 3870 2050 50  0000 C CNN
F 1 "620R/5%" V 3730 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3950 2050 30  0001 C CNN
F 3 "" V 3880 2050 30  0000 C CNN
F 4 "0603" V 3800 2050 20  0000 C CNN "SMT"
F 5 "2141352" V 4000 2050 30  0001 C CNN "Part"
F 6 "Farnell" V 4050 2050 30  0001 C CNN "Provider"
	1    3800 2050
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F7433
P 7350 3050
F 0 "C?" H 7375 3150 50  0000 L CNN
F 1 "10uF/16V/X5R" V 7200 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7380 2900 30  0001 L CNN
F 3 "" H 7375 3150 60  0000 L CNN
F 4 "0805" H 7350 3050 20  0000 C CNN "SMT"
F 5 "1762635" H 7380 2860 30  0001 L CNN "Part"
F 6 "Farnell" H 7380 2820 30  0001 L CNN "Provider"
	1    7350 3050
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F83CF
P 7850 3050
F 0 "C?" H 7875 3150 50  0000 L CNN
F 1 "100nF/50V/X7R" V 7700 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7880 2900 30  0001 L CNN
F 3 "" H 7875 3150 60  0000 L CNN
F 4 "0603" H 7850 3050 20  0000 C CNN "SMT"
F 5 "1414028" H 7880 2860 30  0001 L CNN "Part"
F 6 "Farnell" H 7880 2820 30  0001 L CNN "Provider"
	1    7850 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 562F853E
P 7850 3400
F 0 "#PWR?" H 7850 3150 50  0001 C CNN
F 1 "GND" H 7850 3250 50  0000 C CNN
F 2 "" H 7850 3400 60  0000 C CNN
F 3 "" H 7850 3400 60  0000 C CNN
	1    7850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3400 7850 3200
Wire Wire Line
	7850 2900 7850 2800
Connection ~ 7850 2800
Wire Wire Line
	5800 2800 6350 2800
$Comp
L R_SMT R?
U 1 1 562F16AC
P 3400 5050
F 0 "R?" V 3350 5250 50  0000 C CNN
F 1 "22R/5%" V 3350 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3550 5050 30  0001 C CNN
F 3 "" V 3480 5050 30  0000 C CNN
F 4 "0603" V 3400 5050 20  0000 C CNN "SMT"
F 5 "9331891" V 3600 5050 30  0001 C CNN "Part"
F 6 "Farnell" V 3650 5050 30  0001 C CNN "Provider"
	1    3400 5050
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 562F179F
P 3400 5150
F 0 "R?" V 3350 5350 50  0000 C CNN
F 1 "22R/5%" V 3350 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3550 5150 30  0001 C CNN
F 3 "" V 3480 5150 30  0000 C CNN
F 4 "0603" V 3400 5150 20  0000 C CNN "SMT"
F 5 "9331891" V 3600 5150 30  0001 C CNN "Part"
F 6 "Farnell" V 3650 5150 30  0001 C CNN "Provider"
	1    3400 5150
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 562F1A7F
P 8700 2800
F 0 "R?" V 8770 2800 50  0000 C CNN
F 1 "10K/5%" V 8630 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8850 2800 30  0001 C CNN
F 3 "" V 8780 2800 30  0000 C CNN
F 4 "0603" V 8700 2800 20  0000 C CNN "SMT"
F 5 "9331700" V 8900 2800 30  0001 C CNN "Part"
F 6 "Farnell" V 8950 2800 30  0001 C CNN "Provider"
	1    8700 2800
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 562F1DC0
P 9350 3100
F 0 "R?" V 9420 3100 50  0000 C CNN
F 1 "47K/5%" V 9280 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9500 3100 30  0001 C CNN
F 3 "" V 9430 3100 30  0000 C CNN
F 4 "0603" V 9350 3100 20  0000 C CNN "SMT"
F 5 "9332162" V 9550 3100 30  0001 C CNN "Part"
F 6 "Farnell" V 9600 3100 30  0001 C CNN "Provider"
	1    9350 3100
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 562F238F
P 9600 1850
F 0 "R?" V 9670 1850 50  0000 C CNN
F 1 "620R/5%" V 9530 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9750 1850 30  0001 C CNN
F 3 "" V 9680 1850 30  0000 C CNN
F 4 "0603" V 9600 1850 20  0000 C CNN "SMT"
F 5 "2141352" V 9800 1850 30  0001 C CNN "Part"
F 6 "Farnell" V 9850 1850 30  0001 C CNN "Provider"
	1    9600 1850
	-1   0    0    1   
$EndComp
$Comp
L LED_SMT DL?
U 1 1 563227CA
P 9600 2250
F 0 "DL?" H 9600 2350 50  0000 C CNN
F 1 "GREEN" H 9600 2150 50  0000 C CNN
F 2 "LEDs:LED-0603" H 9600 2100 30  0001 C CNN
F 3 "" H 9600 2250 60  0000 C CNN
F 4 "0603" H 9485 2230 30  0000 C CNN "SMT"
F 5 "2322070" H 9600 2050 30  0001 C CNN "Part"
F 6 "Farnell" H 9600 2000 30  0001 C CNN "Provider"
	1    9600 2250
	0    -1   -1   0   
$EndComp
$Comp
L FB_SMT FB?
U 1 1 56323B2F
P 6550 2800
F 0 "FB?" H 6550 2900 50  0000 C CNN
F 1 "BEAD/0.045OHM/2A" H 6550 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6550 2700 30  0001 C CNN
F 3 "" H 6600 2800 60  0000 C CNN
F 4 "0603" H 6550 2800 25  0000 C CNN "SMT"
F 5 "1515714" H 6550 2650 30  0001 C CNN "Part"
F 6 "Farnell" H 6550 2600 30  0001 C CNN "Provider"
	1    6550 2800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
