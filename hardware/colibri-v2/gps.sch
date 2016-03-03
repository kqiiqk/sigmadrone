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
Sheet 21 28
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
L LEA-6S U16
U 1 1 56186F54
P 5850 3950
F 0 "U16" H 6350 4900 60  0000 C CNN
F 1 "LEA-6S" H 6250 3000 60  0000 C CNN
F 2 "Sigmadrone:LEA-6" H 5700 4050 60  0001 C CNN
F 3 "" H 5700 4050 60  0000 C CNN
	1    5850 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0209
U 1 1 56187100
P 4800 5300
F 0 "#PWR0209" H 4800 5050 50  0001 C CNN
F 1 "GND" H 4800 5150 50  0000 C CNN
F 2 "" H 4800 5300 60  0000 C CNN
F 3 "" H 4800 5300 60  0000 C CNN
	1    4800 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0210
U 1 1 5618714A
P 7000 5300
F 0 "#PWR0210" H 7000 5050 50  0001 C CNN
F 1 "GND" H 7000 5150 50  0000 C CNN
F 2 "" H 7000 5300 60  0000 C CNN
F 3 "" H 7000 5300 60  0000 C CNN
	1    7000 5300
	1    0    0    -1  
$EndComp
NoConn ~ 6650 3450
NoConn ~ 6650 3550
NoConn ~ 6650 3650
NoConn ~ 6650 3750
NoConn ~ 6650 3850
NoConn ~ 6650 4050
NoConn ~ 6650 4150
NoConn ~ 6650 4250
NoConn ~ 5050 3450
NoConn ~ 5050 3550
NoConn ~ 5050 3950
NoConn ~ 5050 4050
NoConn ~ 5050 4150
Text Notes 7850 6400 0    60   ~ 0
single 50 +/- 5 Ohm\ntrack 0.37(0.33 after bite)\nno GND copper in top
Text HLabel 1550 3650 0    60   Output ~ 0
GPS_TXD(3V3)
Text HLabel 1550 3750 0    60   Input ~ 0
GPS_RXD(3V3)
$Comp
L Q_PMOS_GSD Q17
U 1 1 56187FA4
P 2650 2000
F 0 "Q17" H 2650 1850 50  0000 R CNN
F 1 "IRLML6402TRPBF" V 2900 2300 50  0000 R CNN
F 2 "Sigmadrone:SOT23_IRLML6402" H 2850 2100 29  0001 C CNN
F 3 "" H 2650 2000 60  0000 C CNN
	1    2650 2000
	1    0    0    1   
$EndComp
$Comp
L +3V3 #PWR0211
U 1 1 56188264
P 2750 1300
F 0 "#PWR0211" H 2750 1150 50  0001 C CNN
F 1 "+3V3" H 2750 1440 50  0000 C CNN
F 2 "" H 2750 1300 60  0000 C CNN
F 3 "" H 2750 1300 60  0000 C CNN
	1    2750 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0212
U 1 1 561885FB
P 3800 1300
F 0 "#PWR0212" H 3800 1050 50  0001 C CNN
F 1 "GND" H 3800 1150 50  0000 C CNN
F 2 "" H 3800 1300 60  0000 C CNN
F 3 "" H 3800 1300 60  0000 C CNN
	1    3800 1300
	-1   0    0    1   
$EndComp
Text HLabel 1550 2000 0    60   Input ~ 0
GPS_PWR_CTRL(3V3)
$Comp
L C_SMT C66
U 1 1 56337F01
P 4150 2000
F 0 "C66" H 4175 2100 50  0000 L CNN
F 1 "100nF/50V/X7R" V 4000 1600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4180 1850 30  0001 L CNN
F 3 "" H 4175 2100 60  0000 L CNN
F 4 "0603" H 4150 2000 20  0000 C CNN "SMT"
F 5 "1414028" H 4180 1810 30  0001 L CNN "Part"
F 6 "Farnell" H 4180 1770 30  0001 L CNN "Provider"
	1    4150 2000
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C65
U 1 1 56338200
P 3800 2000
F 0 "C65" H 3825 2100 50  0000 L CNN
F 1 "10uF/16V/X5R" V 3650 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3830 1850 30  0001 L CNN
F 3 "" H 3825 2100 60  0000 L CNN
F 4 "0805" H 3800 2000 20  0000 C CNN "SMT"
F 5 "1762635" H 3830 1810 30  0001 L CNN "Part"
F 6 "Farnell" H 3830 1770 30  0001 L CNN "Provider"
	1    3800 2000
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C64
U 1 1 5633845A
P 3450 2000
F 0 "C64" H 3475 2100 50  0000 L CNN
F 1 "1uF/25V/X7R" V 3300 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3480 1850 30  0001 L CNN
F 3 "" H 3475 2100 60  0000 L CNN
F 4 "0603" H 3450 2000 20  0000 C CNN "SMT"
F 5 "1735540" H 3480 1810 30  0001 L CNN "Part"
F 6 "Farnell" H 3480 1770 30  0001 L CNN "Provider"
	1    3450 2000
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R157
U 1 1 5633999B
P 2350 1700
F 0 "R157" V 2420 1700 50  0000 C CNN
F 1 "100k/5%" V 2280 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2500 1700 30  0001 C CNN
F 3 "" V 2430 1700 30  0000 C CNN
F 4 "0603" V 2350 1700 20  0000 C CNN "SMT"
F 5 "9233628" V 2550 1700 30  0001 C CNN "Part"
F 6 "Farnell" V 2600 1700 30  0001 C CNN "Provider"
	1    2350 1700
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R156
U 1 1 5633A992
P 1900 2000
F 0 "R156" V 1850 2200 50  0000 C CNN
F 1 "22R/5%" V 2000 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2050 2000 30  0001 C CNN
F 3 "" V 1980 2000 30  0000 C CNN
F 4 "0603" V 1900 2000 20  0000 C CNN "SMT"
F 5 "9331891" V 2100 2000 30  0001 C CNN "Part"
F 6 "Farnell" V 2150 2000 30  0001 C CNN "Provider"
	1    1900 2000
	0    1    1    0   
$EndComp
$Comp
L R_SMT R159
U 1 1 5633AA56
P 3700 3650
F 0 "R159" V 3650 3850 50  0000 C CNN
F 1 "22R/5%" V 3650 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3850 3650 30  0001 C CNN
F 3 "" V 3780 3650 30  0000 C CNN
F 4 "0603" V 3700 3650 20  0000 C CNN "SMT"
F 5 "9331891" V 3900 3650 30  0001 C CNN "Part"
F 6 "Farnell" V 3950 3650 30  0001 C CNN "Provider"
	1    3700 3650
	0    1    1    0   
$EndComp
$Comp
L R_SMT R160
U 1 1 5633AB3E
P 3700 3750
F 0 "R160" V 3650 3950 50  0000 C CNN
F 1 "22R/5%" V 3650 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3850 3750 30  0001 C CNN
F 3 "" V 3780 3750 30  0000 C CNN
F 4 "0603" V 3700 3750 20  0000 C CNN "SMT"
F 5 "9331891" V 3900 3750 30  0001 C CNN "Part"
F 6 "Farnell" V 3950 3750 30  0001 C CNN "Provider"
	1    3700 3750
	0    1    1    0   
$EndComp
$Comp
L C_SMT C67
U 1 1 566D1889
P 4550 2000
F 0 "C67" H 4575 2100 50  0000 L CNN
F 1 "100nF/50V/X7R" V 4400 1600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4580 1850 30  0001 L CNN
F 3 "" H 4575 2100 60  0000 L CNN
F 4 "0603" H 4550 2000 20  0000 C CNN "SMT"
F 5 "1414028" H 4580 1810 30  0001 L CNN "Part"
F 6 "Farnell" H 4580 1770 30  0001 L CNN "Provider"
	1    4550 2000
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R163
U 1 1 566D21CE
P 7450 2350
F 0 "R163" V 7400 2550 50  0000 C CNN
F 1 "0R/5%" V 7350 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 7600 2350 30  0001 C CNN
F 3 "" V 7530 2350 30  0000 C CNN
F 4 "0402" V 7450 2350 20  0000 C CNN "SMT"
F 5 "2008330" V 7650 2350 30  0001 C CNN "Part"
F 6 "Farnell" V 7700 2350 30  0001 C CNN "Provider"
	1    7450 2350
	0    1    1    0   
$EndComp
$Comp
L R_SMT R162
U 1 1 566D248B
P 7200 2600
F 0 "R162" H 7150 2450 50  0000 C CNN
F 1 "0R/5%" V 7300 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 7350 2600 30  0001 C CNN
F 3 "" V 7280 2600 30  0000 C CNN
F 4 "0402" V 7200 2600 20  0000 C CNN "SMT"
F 5 "2008330" V 7400 2600 30  0001 C CNN "Part"
F 6 "Farnell" V 7450 2600 30  0001 C CNN "Provider"
	1    7200 2600
	-1   0    0    1   
$EndComp
$Comp
L R_SMT R164
U 1 1 566D24F5
P 7700 2600
F 0 "R164" H 7650 2450 50  0000 C CNN
F 1 "0R/5%" V 7800 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 7850 2600 30  0001 C CNN
F 3 "" V 7780 2600 30  0000 C CNN
F 4 "0402" V 7700 2600 20  0000 C CNN "SMT"
F 5 "2008330" V 7900 2600 30  0001 C CNN "Part"
F 6 "Farnell" V 7950 2600 30  0001 C CNN "Provider"
	1    7700 2600
	-1   0    0    1   
$EndComp
$Comp
L R_SMT R161
U 1 1 566D29FF
P 7100 3250
F 0 "R161" V 7050 3450 50  0000 C CNN
F 1 "10R/5%" V 7050 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7250 3250 30  0001 C CNN
F 3 "" V 7180 3250 30  0000 C CNN
F 4 "0603" V 7100 3250 20  0000 C CNN "SMT"
F 5 "9331670" V 7300 3250 30  0001 C CNN "Part"
F 6 "Farnell" V 7350 3250 30  0001 C CNN "Provider"
	1    7100 3250
	0    1    1    0   
$EndComp
$Comp
L RF_CONNECTOR_5 CN7
U 1 1 566D3AD0
P 6250 1850
F 0 "CN7" H 6350 2200 60  0000 C CNN
F 1 "MOLEX_73366_0061" H 6300 1500 60  0000 C CNN
F 2 "Sigmadrone:MOLEX_73366_0061" H 6250 1850 60  0001 C CNN
F 3 "" H 6250 1850 60  0000 C CNN
F 4 "Farnell" H 6250 1850 60  0001 C CNN "Provider"
F 5 "4163394" H 6250 1850 60  0001 C CNN "Part"
	1    6250 1850
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR0213
U 1 1 566D4D97
P 5600 2200
F 0 "#PWR0213" H 5600 1950 50  0001 C CNN
F 1 "GND" H 5600 2050 50  0000 C CNN
F 2 "" H 5600 2200 60  0000 C CNN
F 3 "" H 5600 2200 60  0000 C CNN
	1    5600 2200
	-1   0    0    -1  
$EndComp
$Comp
L SM1411-5 U17
U 1 1 566D65C7
P 9750 2450
F 0 "U17" H 9950 2200 60  0000 C CNN
F 1 "SF1186K-3" H 9750 2700 60  0000 C CNN
F 2 "Sigmadrone:SF1186K-3" H 9750 2400 60  0001 C CNN
F 3 "" H 9750 2400 60  0000 C CNN
F 4 "583-1182-1-ND" H 9750 2450 60  0001 C CNN "Part"
F 5 "Digikey" H 9750 2450 60  0001 C CNN "Provider"
	1    9750 2450
	-1   0    0    -1  
$EndComp
$Comp
L BGA825L6S U18
U 1 1 566D6775
P 10050 4250
F 0 "U18" H 10300 4650 60  0000 C CNN
F 1 "BGA825L6S" H 10050 3950 60  0000 C CNN
F 2 "Sigmadrone:TSLP-6-3" H 10050 4250 60  0001 C CNN
F 3 "" H 10050 4250 60  0000 C CNN
F 4 "Digikey" H 10050 3850 60  0001 C CNN "Provider"
F 5 "BGA 825L6S E6327CT-ND" H 10100 3750 60  0001 C CNN "Part"
	1    10050 4250
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C69
U 1 1 566DF663
P 10450 2350
F 0 "C69" H 10475 2450 50  0000 L CNN
F 1 "100pF/50V/1%" V 10300 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10480 2200 30  0001 L CNN
F 3 "" H 10475 2450 60  0000 L CNN
F 4 "0402" H 10450 2350 20  0000 C CNN "SMT"
F 5 "1856071" H 10480 2160 30  0001 L CNN "Part"
F 6 "Farnell" H 10480 2120 30  0001 L CNN "Provider"
	1    10450 2350
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR L2
U 1 1 566E01E6
P 8600 4000
F 0 "L2" V 8650 3650 50  0000 C CNN
F 1 "47nH/0A2/5%" V 8550 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8600 4000 50  0001 C CNN
F 3 "" H 8600 4000 50  0000 C CNN
F 4 "Farnell" V 8600 4000 60  0001 C CNN "Provider"
F 5 "1343090" V 8600 4000 60  0001 C CNN "Part"
	1    8600 4000
	0    -1   -1   0   
$EndComp
$Comp
L C_SMT C68
U 1 1 566E043C
P 9750 3650
F 0 "C68" H 9775 3750 50  0000 L CNN
F 1 "100nF/50V/X7R" V 9600 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9780 3500 30  0001 L CNN
F 3 "" H 9775 3750 60  0000 L CNN
F 4 "0603" H 9750 3650 20  0000 C CNN "SMT"
F 5 "1414028" H 9780 3460 30  0001 L CNN "Part"
F 6 "Farnell" H 9780 3420 30  0001 L CNN "Provider"
	1    9750 3650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0214
U 1 1 566E0505
P 9350 4600
F 0 "#PWR0214" H 9350 4350 50  0001 C CNN
F 1 "GND" H 9350 4450 50  0000 C CNN
F 2 "" H 9350 4600 60  0000 C CNN
F 3 "" H 9350 4600 60  0000 C CNN
	1    9350 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0215
U 1 1 566E07F8
P 10000 3650
F 0 "#PWR0215" H 10000 3400 50  0001 C CNN
F 1 "GND" H 10000 3500 50  0000 C CNN
F 2 "" H 10000 3650 60  0000 C CNN
F 3 "" H 10000 3650 60  0000 C CNN
	1    10000 3650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0216
U 1 1 566E0B8D
P 9650 3000
F 0 "#PWR0216" H 9650 2750 50  0001 C CNN
F 1 "GND" H 9650 2850 50  0000 C CNN
F 2 "" H 9650 3000 60  0000 C CNN
F 3 "" H 9650 3000 60  0000 C CNN
	1    9650 3000
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L3
U 1 1 566E0D5C
P 8600 4200
F 0 "L3" V 8650 3850 50  0000 C CNN
F 1 "5.6nH/800mA/±0.5nH/0402" V 8550 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8600 4200 50  0001 C CNN
F 3 "" H 8600 4200 50  0000 C CNN
F 4 "Farnell" V 8600 4200 60  0001 C CNN "Provider"
F 5 "1762610" V 8600 4200 60  0001 C CNN "Part"
	1    8600 4200
	0    -1   -1   0   
$EndComp
$Comp
L ANT1818B00AT1575S A1
U 1 1 566E2C5F
P 8950 5600
F 0 "A1" H 9250 5600 60  0000 C CNN
F 1 "ANT1818B00AT1575S" H 9000 5950 60  0000 C CNN
F 2 "Sigmadrone:ANT1818B00AT1575S" H 8950 5600 60  0001 C CNN
F 3 "" H 9250 5600 60  0000 C CNN
F 4 "Farnell" H 9350 5700 60  0001 C CNN "Provider"
F 5 "2408856" H 9450 5800 60  0001 C CNN "Part"
	1    8950 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0217
U 1 1 566E2D52
P 9400 5700
F 0 "#PWR0217" H 9400 5450 50  0001 C CNN
F 1 "GND" H 9400 5550 50  0000 C CNN
F 2 "" H 9400 5700 60  0000 C CNN
F 3 "" H 9400 5700 60  0000 C CNN
	1    9400 5700
	0    -1   -1   0   
$EndComp
Text HLabel 1500 6050 0    60   Output ~ 0
GPS_TIME_PULSE
$Comp
L R_SMT R158
U 1 1 56C94ECA
P 3650 6050
F 0 "R158" V 3600 6250 50  0000 C CNN
F 1 "22R/5%" V 3600 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3800 6050 30  0001 C CNN
F 3 "" V 3730 6050 30  0000 C CNN
F 4 "0603" V 3650 6050 20  0000 C CNN "SMT"
F 5 "9331891" V 3850 6050 30  0001 C CNN "Part"
F 6 "Farnell" V 3900 6050 30  0001 C CNN "Provider"
	1    3650 6050
	0    1    1    0   
$EndComp
$Comp
L Vbak #PWR0218
U 1 1 56CB4BE0
P 4850 1300
F 0 "#PWR0218" H 4850 1150 50  0001 C CNN
F 1 "Vbak" H 4868 1474 50  0000 C CNN
F 2 "" H 4850 1300 50  0000 C CNN
F 3 "" H 4850 1300 50  0000 C CNN
	1    4850 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3650 5050 3650
Wire Wire Line
	3850 3750 5050 3750
Wire Wire Line
	5050 4350 4800 4350
Wire Wire Line
	5050 4450 4800 4450
Wire Wire Line
	4800 4550 5050 4550
Wire Wire Line
	4800 4650 5050 4650
Wire Wire Line
	4800 4750 5050 4750
Wire Wire Line
	4800 4350 4800 5300
Connection ~ 4800 4450
Connection ~ 4800 4550
Connection ~ 4800 4650
Connection ~ 4800 4750
Wire Wire Line
	6650 3950 7000 3950
Wire Wire Line
	2750 2200 2750 3150
Wire Wire Line
	2750 3150 3050 3150
Wire Wire Line
	3450 3150 5050 3150
Wire Wire Line
	2750 1300 2750 1800
Wire Wire Line
	3450 1850 3450 1650
Wire Wire Line
	3450 1650 4550 1650
Wire Wire Line
	3800 1300 3800 1850
Connection ~ 3800 1650
Wire Wire Line
	3800 2150 3800 3150
Connection ~ 3800 3150
Wire Wire Line
	3450 2150 3450 2600
Wire Wire Line
	3450 2600 2750 2600
Connection ~ 2750 2600
Wire Wire Line
	2350 1450 2350 1550
Wire Wire Line
	1550 2000 1750 2000
Wire Wire Line
	2050 2000 2450 2000
Wire Wire Line
	2350 1850 2350 2000
Connection ~ 2350 2000
Wire Wire Line
	1550 3650 3550 3650
Wire Wire Line
	1550 3750 3550 3750
Wire Wire Line
	4150 1650 4150 1850
Wire Wire Line
	4150 2150 4150 3150
Connection ~ 4150 3150
Wire Wire Line
	2350 1450 2750 1450
Connection ~ 2750 1450
Wire Wire Line
	4550 2150 4550 2600
Wire Wire Line
	4550 1650 4550 1850
Connection ~ 4150 1650
Wire Wire Line
	7600 2350 9300 2350
Wire Wire Line
	7700 2350 7700 2450
Wire Wire Line
	7300 2350 7200 2350
Wire Wire Line
	7200 2750 7200 2850
Wire Wire Line
	7200 2850 7700 2850
Wire Wire Line
	7700 2850 7700 2750
Wire Wire Line
	6650 3150 7450 3150
Wire Wire Line
	7450 3150 7450 2850
Connection ~ 7450 2850
Wire Wire Line
	7000 3950 7000 5300
Wire Wire Line
	6650 3250 6950 3250
Wire Wire Line
	7250 3250 7450 3250
Wire Wire Line
	7450 3250 7450 3350
Wire Wire Line
	7450 3350 6650 3350
Connection ~ 7200 2350
Wire Wire Line
	5600 2050 5750 2050
Wire Wire Line
	5600 1650 5600 2200
Wire Wire Line
	5750 1950 5600 1950
Connection ~ 5600 2050
Wire Wire Line
	5750 1750 5600 1750
Connection ~ 5600 1950
Wire Wire Line
	5750 1650 5600 1650
Connection ~ 5600 1750
Wire Wire Line
	7200 1850 7200 2450
Wire Wire Line
	6750 1850 7200 1850
Wire Wire Line
	9450 4400 9350 4400
Wire Wire Line
	9350 4300 9350 4600
Wire Wire Line
	8900 4000 9450 4000
Wire Wire Line
	9350 4100 9450 4100
Wire Wire Line
	9350 3650 9350 4100
Connection ~ 9350 4000
Wire Wire Line
	9450 4300 9350 4300
Connection ~ 9350 4400
Wire Wire Line
	9350 3650 9600 3650
Wire Wire Line
	9900 3650 10000 3650
Wire Wire Line
	8300 4000 7900 4000
Wire Wire Line
	7900 4000 7900 2350
Connection ~ 7700 2350
Connection ~ 7900 2350
Wire Wire Line
	10650 4400 10900 4400
Wire Wire Line
	10900 4400 10900 2350
Wire Wire Line
	10900 2350 10600 2350
Wire Wire Line
	10300 2350 10200 2350
Wire Wire Line
	9650 2850 9650 3000
Wire Wire Line
	9750 2850 9750 2950
Wire Wire Line
	9650 2950 9850 2950
Connection ~ 9650 2950
Wire Wire Line
	9850 2950 9850 2850
Connection ~ 9750 2950
Wire Wire Line
	9450 4200 8900 4200
Wire Wire Line
	8300 4200 7900 4200
Wire Wire Line
	7900 4200 7900 6100
Wire Wire Line
	7900 6100 8950 6100
Wire Wire Line
	8950 6100 8950 5900
Wire Wire Line
	9200 5700 9400 5700
Wire Wire Line
	6650 4350 6800 4350
Wire Wire Line
	6800 4350 6800 6050
Wire Wire Line
	6800 6050 3800 6050
Wire Wire Line
	1500 6050 3500 6050
Wire Wire Line
	4850 1300 4850 3250
Wire Wire Line
	4850 3250 5050 3250
Wire Wire Line
	4550 2600 4850 2600
Connection ~ 4850 2600
$Comp
L PWR_FLAG #FLG0219
U 1 1 56CBC610
P 9150 3550
F 0 "#FLG0219" H 9150 3645 50  0001 C CNN
F 1 "PWR_FLAG" H 9150 3774 50  0000 C CNN
F 2 "" H 9150 3550 50  0000 C CNN
F 3 "" H 9150 3550 50  0000 C CNN
	1    9150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3550 9150 4000
Connection ~ 9150 4000
$Comp
L PWR_FLAG #FLG0220
U 1 1 56CC3AAA
P 4550 3000
F 0 "#FLG0220" H 4550 3095 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 3224 50  0000 C CNN
F 2 "" H 4550 3000 50  0000 C CNN
F 3 "" H 4550 3000 50  0000 C CNN
	1    4550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3000 4550 3150
Connection ~ 4550 3150
$Comp
L FB_SMT FB6
U 1 1 56CE3D74
P 3250 3150
F 0 "FB6" H 3250 3250 50  0000 C CNN
F 1 "BEAD/330ohm/100MHz" H 3250 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 3250 3050 30  0001 C CNN
F 3 "" H 3300 3150 60  0000 C CNN
F 4 "0805" H 3250 3150 25  0000 C CNN "SMT"
F 5 "1515663" H 3250 3000 30  0001 C CNN "Part"
F 6 "Farnell" H 3250 2950 30  0001 C CNN "Provider"
	1    3250 3150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
