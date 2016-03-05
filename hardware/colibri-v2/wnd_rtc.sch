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
Sheet 17 28
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
L PCF8563TS U13
U 1 1 565FD554
P 5500 3400
F 0 "U13" H 5600 3850 60  0000 C CNN
F 1 "PCF8563TS" H 5500 2950 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-8_3x3mm_Pitch0.65mm" H 5500 2850 60  0001 C CNN
F 3 "" H 5500 3400 60  0000 C CNN
	1    5500 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0172
U 1 1 565FD5E2
P 4850 4150
F 0 "#PWR0172" H 4850 3900 50  0001 C CNN
F 1 "GND" H 4850 4000 50  0000 C CNN
F 2 "" H 4850 4150 50  0000 C CNN
F 3 "" H 4850 4150 50  0000 C CNN
	1    4850 4150
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 565FE8B8
P 4350 3300
F 0 "Y1" H 4350 3450 50  0000 C CNN
F 1 "32.768KHZ" H 4350 3150 50  0000 C CNN
F 2 "Sigmadrone:ABS07" H 4350 3300 60  0001 C CNN
F 3 "" H 4350 3300 60  0000 C CNN
F 4 "3.2mm X 1.5mm" H 4350 3300 30  0001 C CNN "SMT"
F 5 "2101347" H 4350 3300 60  0001 C CNN "Part"
F 6 "Farnell" H 4350 3300 60  0001 C CNN "Provider"
	1    4350 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 3300 5000 3300
Wire Wire Line
	4200 3300 4050 3300
Wire Wire Line
	4050 3300 4050 3500
Wire Wire Line
	4050 3500 5000 3500
Wire Wire Line
	5000 3700 4850 3700
Wire Wire Line
	4850 3700 4850 4150
Wire Wire Line
	3300 2250 3300 3550
$Comp
L C_SMT C59
U 1 1 56601B22
P 3700 3700
F 0 "C59" H 3725 3800 50  0000 L CNN
F 1 "100nF/50V/X7R" V 3550 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3730 3550 30  0001 L CNN
F 3 "" H 3725 3800 60  0000 L CNN
F 4 "0603" H 3700 3700 20  0000 C CNN "SMT"
F 5 "1414028" H 3730 3510 30  0001 L CNN "Part"
F 6 "Farnell" H 3730 3470 30  0001 L CNN "Provider"
	1    3700 3700
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C58
U 1 1 56601B2C
P 3300 3700
F 0 "C58" H 3325 3800 50  0000 L CNN
F 1 "10uF/16V/X5R" V 3150 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3330 3550 30  0001 L CNN
F 3 "" H 3325 3800 60  0000 L CNN
F 4 "0805" H 3300 3700 20  0000 C CNN "SMT"
F 5 "1762635" H 3330 3510 30  0001 L CNN "Part"
F 6 "Farnell" H 3330 3470 30  0001 L CNN "Provider"
	1    3300 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0173
U 1 1 56601B52
P 3700 4150
F 0 "#PWR0173" H 3700 3900 50  0001 C CNN
F 1 "GND" H 3700 4000 50  0000 C CNN
F 2 "" H 3700 4150 50  0000 C CNN
F 3 "" H 3700 4150 50  0000 C CNN
	1    3700 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0174
U 1 1 56601B71
P 3300 4150
F 0 "#PWR0174" H 3300 3900 50  0001 C CNN
F 1 "GND" H 3300 4000 50  0000 C CNN
F 2 "" H 3300 4150 50  0000 C CNN
F 3 "" H 3300 4150 50  0000 C CNN
	1    3300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3850 3300 4150
Wire Wire Line
	3700 3550 3700 3100
Wire Wire Line
	3700 3850 3700 4150
Connection ~ 3700 3100
Connection ~ 3300 3100
$Comp
L Vbak #PWR0175
U 1 1 56602BA4
P 3300 2250
F 0 "#PWR0175" H 3300 2100 50  0001 C CNN
F 1 "Vbak" H 3300 2400 50  0000 C CNN
F 2 "" H 3300 2250 50  0000 C CNN
F 3 "" H 3300 2250 50  0000 C CNN
	1    3300 2250
	1    0    0    -1  
$EndComp
Text HLabel 8250 3700 2    60   BiDi ~ 0
RTC_SDA
Text HLabel 8250 3500 2    60   Input ~ 0
RTC_SCL
Text HLabel 8250 3100 2    60   Output ~ 0
RTC_INT
NoConn ~ 6000 3300
Wire Wire Line
	6000 3500 8250 3500
Wire Wire Line
	6000 3700 8250 3700
$Comp
L +3V3 #PWR0176
U 1 1 56603479
P 7250 2250
F 0 "#PWR0176" H 7250 2100 50  0001 C CNN
F 1 "+3V3" H 7250 2390 50  0000 C CNN
F 2 "" H 7250 2250 50  0000 C CNN
F 3 "" H 7250 2250 50  0000 C CNN
	1    7250 2250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0177
U 1 1 566034CA
P 7600 2250
F 0 "#PWR0177" H 7600 2100 50  0001 C CNN
F 1 "+3V3" H 7600 2390 50  0000 C CNN
F 2 "" H 7600 2250 50  0000 C CNN
F 3 "" H 7600 2250 50  0000 C CNN
	1    7600 2250
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R125
U 1 1 56606072
P 7600 2650
F 0 "R125" H 7650 2800 50  0000 C CNN
F 1 "2k2/5% [NA]" V 7500 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7750 2650 30  0001 C CNN
F 3 "" V 7680 2650 30  0000 C CNN
F 4 "0603" V 7600 2650 20  0000 C CNN "SMT"
F 5 "9331913" V 7800 2650 30  0001 C CNN "Part"
F 6 "Farnell" V 7850 2650 30  0001 C CNN "Provider"
	1    7600 2650
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R124
U 1 1 5660607C
P 7250 2650
F 0 "R124" H 7300 2800 50  0000 C CNN
F 1 "2k2/5% [NA]" V 7150 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7400 2650 30  0001 C CNN
F 3 "" V 7330 2650 30  0000 C CNN
F 4 "0603" V 7250 2650 20  0000 C CNN "SMT"
F 5 "9331913" V 7450 2650 30  0001 C CNN "Part"
F 6 "Farnell" V 7500 2650 30  0001 C CNN "Provider"
	1    7250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2250 7250 2500
Wire Wire Line
	7600 2250 7600 2500
Wire Wire Line
	7250 2800 7250 3500
Connection ~ 7250 3500
Wire Wire Line
	7600 2800 7600 3700
Connection ~ 7600 3700
$Comp
L R_SMT R126
U 1 1 56CA065D
P 7900 3100
F 0 "R126" V 7970 3100 50  0000 C CNN
F 1 "0R/5%" V 7830 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8050 3100 30  0001 C CNN
F 3 "" V 7980 3100 30  0000 C CNN
F 4 "0603" V 7900 3100 20  0000 C CNN "SMT"
F 5 "1469739" V 8100 3100 30  0001 C CNN "Part"
F 6 "Farnell" V 8150 3100 30  0001 C CNN "Provider"
	1    7900 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3100 7750 3100
Wire Wire Line
	8050 3100 8250 3100
Wire Wire Line
	3300 3100 5000 3100
$EndSCHEMATC
