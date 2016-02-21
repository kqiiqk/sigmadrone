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
Text HLabel 8150 1550 0    60   Output ~ 0
WB_BUTTON1
$Comp
L GND #PWR?
U 1 1 56AAF72F
P 8950 2100
F 0 "#PWR?" H 8950 1850 50  0001 C CNN
F 1 "GND" H 8950 1950 50  0000 C CNN
F 2 "" H 8950 2100 60  0000 C CNN
F 3 "" H 8950 2100 60  0000 C CNN
	1    8950 2100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 56AAF735
P 10150 950
F 0 "#PWR?" H 10150 800 50  0001 C CNN
F 1 "+3V3" H 10150 1090 50  0000 C CNN
F 2 "" H 10150 950 60  0000 C CNN
F 3 "" H 10150 950 60  0000 C CNN
	1    10150 950 
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 56AAF73E
P 9700 1050
F 0 "R?" V 9770 1050 50  0000 C CNN
F 1 "100R/5%" V 9630 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9850 1050 30  0001 C CNN
F 3 "" V 9780 1050 30  0000 C CNN
F 4 "0603" V 9700 1050 20  0000 C CNN "SMT"
F 5 "9331689" V 9900 1050 30  0001 C CNN "Part"
F 6 "Farnell" V 9950 1050 30  0001 C CNN "Provider"
	1    9700 1050
	0    1    1    0   
$EndComp
$Comp
L C_SMT C?
U 1 1 56AAF748
P 8950 1300
F 0 "C?" H 8975 1400 50  0000 L CNN
F 1 "100nF/50V" H 8975 1200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8980 1150 30  0001 L CNN
F 3 "" H 8975 1400 60  0000 L CNN
F 4 "0603" H 8950 1300 20  0000 C CNN "SMT"
F 5 "1414028" H 8980 1110 30  0001 L CNN "Part"
F 6 "Farnell" H 8980 1070 30  0001 L CNN "Provider"
	1    8950 1300
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_TACKTILE SW?
U 1 1 56AAF74F
P 9700 1550
F 0 "SW?" H 9850 1660 50  0000 C CNN
F 1 "WURTH 436353045816" H 9700 1350 50  0000 C CNN
F 2 "" H 9700 1550 60  0000 C CNN
F 3 "" H 9700 1550 60  0000 C CNN
	1    9700 1550
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 56AAF769
P 8500 1550
F 0 "R?" V 8570 1550 50  0000 C CNN
F 1 "100R/5%" V 8430 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8650 1550 30  0001 C CNN
F 3 "" V 8580 1550 30  0000 C CNN
F 4 "0603" V 8500 1550 20  0000 C CNN "SMT"
F 5 "9331689" V 8700 1550 30  0001 C CNN "Part"
F 6 "Farnell" V 8750 1550 30  0001 C CNN "Provider"
	1    8500 1550
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56AAF773
P 8950 1850
F 0 "R?" V 9020 1850 50  0000 C CNN
F 1 "100K/5%" V 8880 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9100 1850 30  0001 C CNN
F 3 "" V 9030 1850 30  0000 C CNN
F 4 "0603" V 8950 1850 20  0000 C CNN "SMT"
F 5 "9233628" V 9150 1850 30  0001 C CNN "Part"
F 6 "Farnell" V 9200 1850 30  0001 C CNN "Provider"
	1    8950 1850
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q?
U 1 1 56AB03B1
P 10050 3650
F 0 "Q?" H 10350 3700 50  0000 R CNN
F 1 "BSS138PW" H 10050 3850 50  0000 R CNN
F 2 "" H 10250 3750 29  0001 C CNN
F 3 "" H 10050 3650 60  0000 C CNN
	1    10050 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56AB03B8
P 10150 4100
F 0 "#PWR?" H 10150 3850 50  0001 C CNN
F 1 "GND" H 10150 3950 50  0000 C CNN
F 2 "" H 10150 4100 60  0000 C CNN
F 3 "" H 10150 4100 60  0000 C CNN
	1    10150 4100
	1    0    0    -1  
$EndComp
$Comp
L LED_SMT DL?
U 1 1 56AB2382
P 10150 3150
F 0 "DL?" H 10150 3250 50  0000 C CNN
F 1 "GREEN" H 10150 3050 50  0000 C CNN
F 2 "LEDs:LED-0603" H 10150 3000 30  0001 C CNN
F 3 "" H 10150 3150 60  0000 C CNN
F 4 "0603" H 10035 3130 30  0000 C CNN "SMT"
F 5 "2322070" H 10150 2950 30  0001 C CNN "Part"
F 6 "Farnell" H 10150 2900 30  0001 C CNN "Provider"
	1    10150 3150
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 56AB25E9
P 10150 2500
F 0 "#PWR?" H 10150 2350 50  0001 C CNN
F 1 "+3V3" H 10150 2640 50  0000 C CNN
F 2 "" H 10150 2500 60  0000 C CNN
F 3 "" H 10150 2500 60  0000 C CNN
	1    10150 2500
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 56AB3474
P 9750 3900
F 0 "R?" V 9820 3900 50  0000 C CNN
F 1 "10K/5%" V 9680 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9900 3900 30  0001 C CNN
F 3 "" V 9830 3900 30  0000 C CNN
F 4 "0603" V 9750 3900 20  0000 C CNN "SMT"
F 5 "9331700" V 9950 3900 30  0001 C CNN "Part"
F 6 "Farnell" V 10000 3900 30  0001 C CNN "Provider"
	1    9750 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56AB3582
P 9750 4100
F 0 "#PWR?" H 9750 3850 50  0001 C CNN
F 1 "GND" H 9750 3950 50  0000 C CNN
F 2 "" H 9750 4100 60  0000 C CNN
F 3 "" H 9750 4100 60  0000 C CNN
	1    9750 4100
	1    0    0    -1  
$EndComp
Text HLabel 9100 3650 0    60   Input ~ 0
WB_LED1
Text Notes 7600 3700 0    60   ~ 0
PIN 261\nEIM_DA8 GPIO3_IO08
Text Notes 6450 1600 0    60   ~ 0
PIN 259\nEIM_D26 GPIO3_IO26
$Comp
L Q_NMOS_GSD Q?
U 1 1 56ABC2C4
P 10050 5750
F 0 "Q?" H 10350 5800 50  0000 R CNN
F 1 "BSS138PW" H 10050 5950 50  0000 R CNN
F 2 "" H 10250 5850 29  0001 C CNN
F 3 "" H 10050 5750 60  0000 C CNN
	1    10050 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56ABC2CA
P 10150 6200
F 0 "#PWR?" H 10150 5950 50  0001 C CNN
F 1 "GND" H 10150 6050 50  0000 C CNN
F 2 "" H 10150 6200 60  0000 C CNN
F 3 "" H 10150 6200 60  0000 C CNN
	1    10150 6200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 56ABC2E5
P 10150 4600
F 0 "#PWR?" H 10150 4450 50  0001 C CNN
F 1 "+3V3" H 10150 4740 50  0000 C CNN
F 2 "" H 10150 4600 60  0000 C CNN
F 3 "" H 10150 4600 60  0000 C CNN
	1    10150 4600
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 56ABC2EF
P 9750 6000
F 0 "R?" V 9820 6000 50  0000 C CNN
F 1 "10K/5%" V 9680 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9900 6000 30  0001 C CNN
F 3 "" V 9830 6000 30  0000 C CNN
F 4 "0603" V 9750 6000 20  0000 C CNN "SMT"
F 5 "9331700" V 9950 6000 30  0001 C CNN "Part"
F 6 "Farnell" V 10000 6000 30  0001 C CNN "Provider"
	1    9750 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56ABC2F5
P 9750 6200
F 0 "#PWR?" H 9750 5950 50  0001 C CNN
F 1 "GND" H 9750 6050 50  0000 C CNN
F 2 "" H 9750 6200 60  0000 C CNN
F 3 "" H 9750 6200 60  0000 C CNN
	1    9750 6200
	1    0    0    -1  
$EndComp
Text HLabel 9100 5750 0    60   Input ~ 0
WB_LED2
Text Notes 7500 5800 0    60   ~ 0
PIN 255\nEIM_DA12 GPIO3_IO12
$Comp
L R_SMT R?
U 1 1 56ABCC55
P 10150 4850
F 0 "R?" H 10200 5000 50  0000 C CNN
F 1 "750R" V 10080 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10300 4850 30  0001 C CNN
F 3 "" V 10230 4850 30  0000 C CNN
F 4 "0603" V 10150 4850 20  0000 C CNN "SMT"
F 5 "9331506" V 10350 4850 30  0001 C CNN "Part"
F 6 "Farnell" V 10400 4850 30  0001 C CNN "Provider"
	1    10150 4850
	1    0    0    -1  
$EndComp
$Comp
L LED_SMT DL?
U 1 1 56ABCC5F
P 10150 5250
F 0 "DL?" V 10250 5150 50  0000 C CNN
F 1 "RED" H 10100 5350 50  0000 C CNN
F 2 "LEDs:LED-0603" H 10150 5100 30  0001 C CNN
F 3 "" H 10150 5250 60  0000 C CNN
F 4 "0603" H 10035 5230 30  0000 C CNN "SMT"
F 5 "2322071" H 10150 5050 30  0001 C CNN "Part"
F 6 "Farnell" H 10150 5000 30  0001 C CNN "Provider"
	1    10150 5250
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X08 P?
U 1 1 56AC3B2C
P 1400 6400
F 0 "P?" H 1478 6438 50  0000 L CNN
F 1 "CONN_01X08" H 1478 6346 50  0000 L CNN
F 2 "" H 1400 6400 50  0000 C CNN
F 3 "" H 1400 6400 50  0000 C CNN
	1    1400 6400
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X08 P?
U 1 1 56AC3D45
P 1400 1400
F 0 "P?" H 1478 1438 50  0000 L CNN
F 1 "CONN_01X08" H 1478 1346 50  0000 L CNN
F 2 "" H 1400 1400 50  0000 C CNN
F 3 "" H 1400 1400 50  0000 C CNN
	1    1400 1400
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 56AC3E7B
P 1400 2700
F 0 "P?" H 1478 2738 50  0000 L CNN
F 1 "CONN_01X04" H 1478 2646 50  0000 L CNN
F 2 "" H 1400 2700 50  0000 C CNN
F 3 "" H 1400 2700 50  0000 C CNN
	1    1400 2700
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 56AC3F38
P 1400 3850
F 0 "P?" H 1478 3888 50  0000 L CNN
F 1 "CONN_01X04" H 1478 3796 50  0000 L CNN
F 2 "" H 1400 3850 50  0000 C CNN
F 3 "" H 1400 3850 50  0000 C CNN
	1    1400 3850
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 56AC3FC3
P 1400 5000
F 0 "P?" H 1478 5038 50  0000 L CNN
F 1 "CONN_01X04" H 1478 4946 50  0000 L CNN
F 2 "" H 1400 5000 50  0000 C CNN
F 3 "" H 1400 5000 50  0000 C CNN
	1    1400 5000
	-1   0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 56AC75A5
P 1900 2400
F 0 "#PWR?" H 1900 2250 50  0001 C CNN
F 1 "+3V3" H 1900 2540 50  0000 C CNN
F 2 "" H 1900 2400 60  0000 C CNN
F 3 "" H 1900 2400 60  0000 C CNN
	1    1900 2400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 56AC78E4
P 2250 2400
F 0 "#PWR?" H 2250 2250 50  0001 C CNN
F 1 "+5V" H 2250 2540 50  0000 C CNN
F 2 "" H 2250 2400 60  0000 C CNN
F 3 "" H 2250 2400 60  0000 C CNN
	1    2250 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56AC7968
P 1900 3050
F 0 "#PWR?" H 1900 2800 50  0001 C CNN
F 1 "GND" H 1900 2900 50  0000 C CNN
F 2 "" H 1900 3050 60  0000 C CNN
F 3 "" H 1900 3050 60  0000 C CNN
	1    1900 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56AC7A03
P 1900 1950
F 0 "#PWR?" H 1900 1700 50  0001 C CNN
F 1 "GND" H 1900 1800 50  0000 C CNN
F 2 "" H 1900 1950 60  0000 C CNN
F 3 "" H 1900 1950 60  0000 C CNN
	1    1900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2100 8950 2000
Wire Wire Line
	8650 1550 9400 1550
Wire Wire Line
	8950 1450 8950 1700
Connection ~ 8950 1550
Wire Wire Line
	8350 1550 8150 1550
Wire Wire Line
	8950 1150 8950 1050
Wire Wire Line
	8950 1050 9550 1050
Wire Wire Line
	9850 1050 10150 1050
Wire Wire Line
	10150 950  10150 1650
Wire Wire Line
	10150 1550 10000 1550
Connection ~ 10150 1050
Wire Wire Line
	10150 1650 10000 1650
Connection ~ 10150 1550
Wire Wire Line
	9400 1650 9250 1650
Wire Wire Line
	9250 1650 9250 1550
Connection ~ 9250 1550
Wire Wire Line
	10150 4100 10150 3850
Wire Wire Line
	10150 3450 10150 3350
Wire Wire Line
	10150 2900 10150 2950
Wire Wire Line
	10150 2500 10150 2600
Wire Wire Line
	9100 3650 9850 3650
Wire Wire Line
	9750 3650 9750 3750
Wire Wire Line
	9750 4050 9750 4100
Connection ~ 9750 3650
Wire Wire Line
	10150 6200 10150 5950
Wire Wire Line
	10150 5550 10150 5450
Wire Wire Line
	10150 4600 10150 4700
Wire Wire Line
	9100 5750 9850 5750
Wire Wire Line
	9750 5750 9750 5850
Wire Wire Line
	9750 6150 9750 6200
Connection ~ 9750 5750
Wire Wire Line
	10150 5000 10150 5050
Wire Wire Line
	1600 2550 1900 2550
Wire Wire Line
	1900 2550 1900 2400
Wire Wire Line
	1600 2850 2250 2850
Wire Wire Line
	2250 2850 2250 2400
Wire Wire Line
	1600 2750 1900 2750
Wire Wire Line
	1900 2650 1900 3050
Wire Wire Line
	1600 2650 1900 2650
Connection ~ 1900 2750
Wire Wire Line
	1600 1750 1900 1750
Wire Wire Line
	1900 1650 1900 1950
Wire Wire Line
	1600 1650 1900 1650
Connection ~ 1900 1750
$Comp
L +3V3 #PWR?
U 1 1 56AC84DB
P 1900 850
F 0 "#PWR?" H 1900 700 50  0001 C CNN
F 1 "+3V3" H 1900 990 50  0000 C CNN
F 2 "" H 1900 850 60  0000 C CNN
F 3 "" H 1900 850 60  0000 C CNN
	1    1900 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1050 1900 1050
Wire Wire Line
	1900 1050 1900 850 
Wire Wire Line
	1600 3700 1900 3700
Wire Wire Line
	1900 3700 1900 3500
$Comp
L GND #PWR?
U 1 1 56AC85AB
P 1900 4200
F 0 "#PWR?" H 1900 3950 50  0001 C CNN
F 1 "GND" H 1900 4050 50  0000 C CNN
F 2 "" H 1900 4200 60  0000 C CNN
F 3 "" H 1900 4200 60  0000 C CNN
	1    1900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4000 1900 4000
Wire Wire Line
	1900 4000 1900 4200
$Comp
L +3V3 #PWR?
U 1 1 56AC877F
P 1900 4650
F 0 "#PWR?" H 1900 4500 50  0001 C CNN
F 1 "+3V3" H 1900 4790 50  0000 C CNN
F 2 "" H 1900 4650 60  0000 C CNN
F 3 "" H 1900 4650 60  0000 C CNN
	1    1900 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4850 1900 4850
Wire Wire Line
	1900 4850 1900 4650
$Comp
L GND #PWR?
U 1 1 56AC8787
P 1900 5350
F 0 "#PWR?" H 1900 5100 50  0001 C CNN
F 1 "GND" H 1900 5200 50  0000 C CNN
F 2 "" H 1900 5350 60  0000 C CNN
F 3 "" H 1900 5350 60  0000 C CNN
	1    1900 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5150 1900 5150
Wire Wire Line
	1900 5150 1900 5350
$Comp
L +3V3 #PWR?
U 1 1 56AC8821
P 1900 5850
F 0 "#PWR?" H 1900 5700 50  0001 C CNN
F 1 "+3V3" H 1900 5990 50  0000 C CNN
F 2 "" H 1900 5850 60  0000 C CNN
F 3 "" H 1900 5850 60  0000 C CNN
	1    1900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6050 1900 6050
Wire Wire Line
	1900 5850 1900 6450
$Comp
L GND #PWR?
U 1 1 56AC8829
P 1750 6950
F 0 "#PWR?" H 1750 6700 50  0001 C CNN
F 1 "GND" H 1750 6800 50  0000 C CNN
F 2 "" H 1750 6950 60  0000 C CNN
F 3 "" H 1750 6950 60  0000 C CNN
	1    1750 6950
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 56AC960A
P 2800 1150
F 0 "R?" V 2750 1350 50  0000 C CNN
F 1 "22R/5%" V 2750 900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 1150 30  0001 C CNN
F 3 "" V 2880 1150 30  0000 C CNN
F 4 "0603" V 2800 1150 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 1150 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 1150 30  0001 C CNN "Provider"
	1    2800 1150
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56AC963C
P 2800 1250
F 0 "R?" V 2750 1450 50  0000 C CNN
F 1 "22R/5%" V 2750 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 1250 30  0001 C CNN
F 3 "" V 2880 1250 30  0000 C CNN
F 4 "0603" V 2800 1250 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 1250 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 1250 30  0001 C CNN "Provider"
	1    2800 1250
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56AC9692
P 2800 1350
F 0 "R?" V 2750 1550 50  0000 C CNN
F 1 "22R/5%" V 2750 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 1350 30  0001 C CNN
F 3 "" V 2880 1350 30  0000 C CNN
F 4 "0603" V 2800 1350 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 1350 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 1350 30  0001 C CNN "Provider"
	1    2800 1350
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56AC96EB
P 2800 1450
F 0 "R?" V 2750 1650 50  0000 C CNN
F 1 "22R/5%" V 2750 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 1450 30  0001 C CNN
F 3 "" V 2880 1450 30  0000 C CNN
F 4 "0603" V 2800 1450 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 1450 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 1450 30  0001 C CNN "Provider"
	1    2800 1450
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56AC9743
P 2800 1550
F 0 "R?" V 2750 1750 50  0000 C CNN
F 1 "22R/5%" V 2750 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 1550 30  0001 C CNN
F 3 "" V 2880 1550 30  0000 C CNN
F 4 "0603" V 2800 1550 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 1550 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 1550 30  0001 C CNN "Provider"
	1    2800 1550
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56AC97E3
P 2800 3800
F 0 "R?" V 2750 4000 50  0000 C CNN
F 1 "22R/5%" V 2750 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 3800 30  0001 C CNN
F 3 "" V 2880 3800 30  0000 C CNN
F 4 "0603" V 2800 3800 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 3800 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 3800 30  0001 C CNN "Provider"
	1    2800 3800
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56AC98DF
P 2800 3900
F 0 "R?" V 2750 4100 50  0000 C CNN
F 1 "22R/5%" V 2750 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 3900 30  0001 C CNN
F 3 "" V 2880 3900 30  0000 C CNN
F 4 "0603" V 2800 3900 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 3900 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 3900 30  0001 C CNN "Provider"
	1    2800 3900
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56AC99AC
P 2800 4950
F 0 "R?" V 2750 5150 50  0000 C CNN
F 1 "22R/5%" V 2750 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 4950 30  0001 C CNN
F 3 "" V 2880 4950 30  0000 C CNN
F 4 "0603" V 2800 4950 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 4950 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 4950 30  0001 C CNN "Provider"
	1    2800 4950
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56AC99B5
P 2800 5050
F 0 "R?" V 2750 5250 50  0000 C CNN
F 1 "22R/5%" V 2750 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 5050 30  0001 C CNN
F 3 "" V 2880 5050 30  0000 C CNN
F 4 "0603" V 2800 5050 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 5050 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 5050 30  0001 C CNN "Provider"
	1    2800 5050
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56AC9F24
P 2800 6150
F 0 "R?" V 2750 6350 50  0000 C CNN
F 1 "22R/5%" V 2750 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 6150 30  0001 C CNN
F 3 "" V 2880 6150 30  0000 C CNN
F 4 "0603" V 2800 6150 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 6150 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 6150 30  0001 C CNN "Provider"
	1    2800 6150
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56AC9F2D
P 2800 6250
F 0 "R?" V 2750 6450 50  0000 C CNN
F 1 "22R/5%" V 2750 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 6250 30  0001 C CNN
F 3 "" V 2880 6250 30  0000 C CNN
F 4 "0603" V 2800 6250 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 6250 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 6250 30  0001 C CNN "Provider"
	1    2800 6250
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56AC9F48
P 2800 6550
F 0 "R?" V 2750 6750 50  0000 C CNN
F 1 "22R/5%" V 2750 6300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 6550 30  0001 C CNN
F 3 "" V 2880 6550 30  0000 C CNN
F 4 "0603" V 2800 6550 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 6550 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 6550 30  0001 C CNN "Provider"
	1    2800 6550
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56ACA011
P 2800 6650
F 0 "R?" V 2750 6850 50  0000 C CNN
F 1 "22R/5%" V 2750 6400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2950 6650 30  0001 C CNN
F 3 "" V 2880 6650 30  0000 C CNN
F 4 "0603" V 2800 6650 20  0000 C CNN "SMT"
F 5 "9331891" V 3000 6650 30  0001 C CNN "Part"
F 6 "Farnell" V 3050 6650 30  0001 C CNN "Provider"
	1    2800 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 1150 2650 1150
Wire Wire Line
	1600 1250 2650 1250
Wire Wire Line
	1600 1350 2650 1350
Wire Wire Line
	1600 1450 2650 1450
Wire Wire Line
	1600 1550 2650 1550
Wire Wire Line
	1600 3800 2650 3800
Wire Wire Line
	1600 3900 2650 3900
Wire Wire Line
	1600 4950 2650 4950
Wire Wire Line
	1600 5050 2650 5050
Wire Wire Line
	1600 6150 2650 6150
Wire Wire Line
	1600 6250 2650 6250
Wire Wire Line
	1600 6550 2650 6550
Wire Wire Line
	1600 6650 2650 6650
Text HLabel 3700 1150 2    60   Input ~ 0
CSPI2_MOSI
Text HLabel 3700 1250 2    60   Output ~ 0
CSPI2_MISO
Text HLabel 3700 1350 2    60   Input ~ 0
CSPI2_CLK
Text HLabel 3700 1450 2    60   Input ~ 0
CSPI2_CS0_DISPLAY
Text HLabel 3700 1550 2    60   Input ~ 0
CSPI2_CS1_TP
Wire Wire Line
	2950 1150 3700 1150
Wire Wire Line
	2950 1250 3700 1250
Wire Wire Line
	2950 1350 3700 1350
Wire Wire Line
	2950 1450 3700 1450
Wire Wire Line
	2950 1550 3700 1550
Text HLabel 3700 3800 2    60   BiDi ~ 0
DDC_SDA(5V)
Text HLabel 3700 3900 2    60   Input ~ 0
DDC_SCL(5V)
Text HLabel 3700 4950 2    60   BiDi ~ 0
I2C1_SDA(3V3)
Text HLabel 3700 5050 2    60   Input ~ 0
I2C1_SCL(3V3)
Wire Wire Line
	1600 6350 1750 6350
Wire Wire Line
	1750 6350 1750 6950
Connection ~ 1750 6750
Wire Wire Line
	1900 6450 1600 6450
Connection ~ 1900 6050
Wire Wire Line
	1750 6750 1600 6750
Text HLabel 3700 6150 2    60   BiDi ~ 0
I2C2_SDA(3V3)
Text HLabel 3700 6250 2    60   Input ~ 0
I2C2_SCL(3V3)
Text HLabel 3700 6550 2    60   BiDi ~ 0
DISP0_I2C3_SDA(3V3)
Text HLabel 3700 6650 2    60   Input ~ 0
DISP0_I2C3_SCL(3V3)
Wire Wire Line
	2950 6150 3700 6150
Wire Wire Line
	2950 6250 3700 6250
Wire Wire Line
	2950 6550 3700 6550
Wire Wire Line
	2950 6650 3700 6650
Wire Wire Line
	2950 3800 3700 3800
Wire Wire Line
	2950 3900 3700 3900
Wire Wire Line
	2950 4950 3700 4950
Wire Wire Line
	2950 5050 3700 5050
$Comp
L R_SMT R?
U 1 1 56AD7549
P 10150 2750
F 0 "R?" H 10200 2900 50  0000 C CNN
F 1 "360R" V 10080 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10300 2750 30  0001 C CNN
F 3 "" V 10230 2750 30  0000 C CNN
F 4 "0603" V 10150 2750 20  0000 C CNN "SMT"
F 5 "9331077" V 10350 2750 30  0001 C CNN "Part"
F 6 "Farnell" V 10400 2750 30  0001 C CNN "Provider"
	1    10150 2750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 56CC4D65
P 1900 3500
F 0 "#PWR?" H 1900 3350 50  0001 C CNN
F 1 "+5V" H 1918 3674 50  0000 C CNN
F 2 "" H 1900 3500 50  0000 C CNN
F 3 "" H 1900 3500 50  0000 C CNN
	1    1900 3500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
