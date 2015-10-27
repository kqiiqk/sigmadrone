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
Sheet 23 23
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
L TPS54332DDA U?
U 1 1 56199896
P 5350 1750
F 0 "U?" H 5600 2200 60  0000 C CNN
F 1 "TPS54332DDA" H 5350 1100 60  0000 C CNN
F 2 "" H 5350 1650 60  0001 C CNN
F 3 "" H 5350 1650 60  0000 C CNN
	1    5350 1750
	1    0    0    -1  
$EndComp
Text HLabel 1400 1450 0    60   Input ~ 0
Vsys
$Comp
L INDUCTOR L?
U 1 1 561998C4
P 7300 1450
F 0 "L?" V 7250 1450 50  0000 C CNN
F 1 "3u3/4A6" V 7400 1450 50  0000 C CNN
F 2 "" H 7300 1450 60  0001 C CNN
F 3 "" H 7300 1450 60  0000 C CNN
	1    7300 1450
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 56199922
P 9650 1200
F 0 "#PWR?" H 9650 1050 50  0001 C CNN
F 1 "+5V" H 9650 1340 50  0000 C CNN
F 2 "" H 9650 1200 60  0000 C CNN
F 3 "" H 9650 1200 60  0000 C CNN
	1    9650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1450 9650 1450
Wire Wire Line
	9650 1200 9650 1600
Wire Wire Line
	5900 1450 7000 1450
$Comp
L LED D?
U 1 1 56199948
P 9650 2500
F 0 "D?" H 9650 2600 50  0000 C CNN
F 1 "LED" H 9650 2400 50  0000 C CNN
F 2 "" H 9650 2500 60  0001 C CNN
F 3 "" H 9650 2500 60  0000 C CNN
	1    9650 2500
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 56199A28
P 9650 1750
F 0 "R?" V 9730 1750 50  0000 C CNN
F 1 "330" V 9650 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9580 1750 30  0001 C CNN
F 3 "" H 9650 1750 30  0000 C CNN
	1    9650 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56199A56
P 9650 3150
F 0 "#PWR?" H 9650 2900 50  0001 C CNN
F 1 "GND" H 9650 3000 50  0000 C CNN
F 2 "" H 9650 3150 60  0000 C CNN
F 3 "" H 9650 3150 60  0000 C CNN
	1    9650 3150
	1    0    0    -1  
$EndComp
Connection ~ 9650 1450
$Comp
L C C?
U 1 1 56199AEF
P 8850 2500
F 0 "C?" H 8875 2600 50  0000 L CNN
F 1 "10u/16V/X5R" H 8875 2400 50  0000 L CNN
F 2 "" H 8888 2350 30  0001 C CNN
F 3 "" H 8850 2500 60  0000 C CNN
	1    8850 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56199B3D
P 8850 3150
F 0 "#PWR?" H 8850 2900 50  0001 C CNN
F 1 "GND" H 8850 3000 50  0000 C CNN
F 2 "" H 8850 3150 60  0000 C CNN
F 3 "" H 8850 3150 60  0000 C CNN
	1    8850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3150 8850 2650
Wire Wire Line
	8850 2350 8850 1450
Connection ~ 8850 1450
$Comp
L D_Schottky D?
U 1 1 56199BD6
P 6750 1750
F 0 "D?" H 6750 1850 50  0000 C CNN
F 1 "B560C-13-F" H 6750 1650 50  0000 C CNN
F 2 "" H 6750 1750 60  0001 C CNN
F 3 "" H 6750 1750 60  0000 C CNN
	1    6750 1750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56199C14
P 6750 3150
F 0 "#PWR?" H 6750 2900 50  0001 C CNN
F 1 "GND" H 6750 3000 50  0000 C CNN
F 2 "" H 6750 3150 60  0000 C CNN
F 3 "" H 6750 3150 60  0000 C CNN
	1    6750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3150 6750 1900
Wire Wire Line
	6750 1600 6750 1450
Connection ~ 6750 1450
$Comp
L C C?
U 1 1 56199C55
P 6150 1850
F 0 "C?" V 6200 1700 50  0000 L CNN
F 1 "100n/50V" V 6050 1650 50  0000 L CNN
F 2 "" H 6188 1700 30  0001 C CNN
F 3 "" H 6150 1850 60  0000 C CNN
	1    6150 1850
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 56199E82
P 8100 1750
F 0 "R?" V 8180 1750 50  0000 C CNN
F 1 "10k2/1%" V 8000 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8030 1750 30  0001 C CNN
F 3 "" H 8100 1750 30  0000 C CNN
	1    8100 1750
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5619AB02
P 8100 2500
F 0 "R?" V 8180 2500 50  0000 C CNN
F 1 "1k96/1%" V 8000 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8030 2500 30  0001 C CNN
F 3 "" H 8100 2500 30  0000 C CNN
	1    8100 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5619AB65
P 8100 3150
F 0 "#PWR?" H 8100 2900 50  0001 C CNN
F 1 "GND" H 8100 3000 50  0000 C CNN
F 2 "" H 8100 3150 60  0000 C CNN
F 3 "" H 8100 3150 60  0000 C CNN
	1    8100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1900 8100 2350
Wire Wire Line
	8100 2650 8100 3150
Wire Wire Line
	9650 1900 9650 2300
Wire Wire Line
	9650 2700 9650 3150
Wire Wire Line
	8100 1600 8100 1450
Connection ~ 8100 1450
Wire Wire Line
	5900 2050 8100 2050
Connection ~ 8100 2050
$Comp
L R R?
U 1 1 5619AE28
P 6100 2500
F 0 "R?" V 6180 2500 50  0000 C CNN
F 1 "68k1/1%" V 6000 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6030 2500 30  0001 C CNN
F 3 "" H 6100 2500 30  0000 C CNN
	1    6100 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5619AE2E
P 6100 3150
F 0 "#PWR?" H 6100 2900 50  0001 C CNN
F 1 "GND" H 6100 3000 50  0000 C CNN
F 2 "" H 6100 3150 60  0000 C CNN
F 3 "" H 6100 3150 60  0000 C CNN
	1    6100 3150
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5619AE60
P 6100 2900
F 0 "C?" H 6150 3000 50  0000 L CNN
F 1 "470p/50V" H 6150 2800 50  0000 L CNN
F 2 "" H 6138 2750 30  0001 C CNN
F 3 "" H 6100 2900 60  0000 C CNN
	1    6100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2250 6100 2250
Wire Wire Line
	6100 2250 6100 2350
Wire Wire Line
	6100 2650 6100 2750
Wire Wire Line
	6100 3050 6100 3150
Wire Wire Line
	1400 1450 4800 1450
$Comp
L R R?
U 1 1 5619B08B
P 3500 1750
F 0 "R?" H 3550 1900 50  0000 C CNN
F 1 "150k" V 3500 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3430 1750 30  0001 C CNN
F 3 "" H 3500 1750 30  0000 C CNN
	1    3500 1750
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5619B234
P 3500 2500
F 0 "R?" H 3550 2650 50  0000 C CNN
F 1 "150k" V 3500 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3430 2500 30  0001 C CNN
F 3 "" H 3500 2500 30  0000 C CNN
	1    3500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1900 3500 2350
Wire Wire Line
	3500 1600 3500 1450
Connection ~ 3500 1450
$Comp
L GND #PWR?
U 1 1 5619B337
P 3500 3150
F 0 "#PWR?" H 3500 2900 50  0001 C CNN
F 1 "GND" H 3500 3000 50  0000 C CNN
F 2 "" H 3500 3150 60  0000 C CNN
F 3 "" H 3500 3150 60  0000 C CNN
	1    3500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2650 3500 3150
$Comp
L C C?
U 1 1 5619B3A2
P 4150 2500
F 0 "C?" H 4200 2600 50  0000 L CNN
F 1 "100n/50V" V 4200 2050 50  0000 L CNN
F 2 "" H 4188 2350 30  0001 C CNN
F 3 "" H 4150 2500 60  0000 C CNN
	1    4150 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5619B4A1
P 4150 3150
F 0 "#PWR?" H 4150 2900 50  0001 C CNN
F 1 "GND" H 4150 3000 50  0000 C CNN
F 2 "" H 4150 3150 60  0000 C CNN
F 3 "" H 4150 3150 60  0000 C CNN
	1    4150 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5619B4D6
P 4600 3150
F 0 "#PWR?" H 4600 2900 50  0001 C CNN
F 1 "GND" H 4600 3000 50  0000 C CNN
F 2 "" H 4600 3150 60  0000 C CNN
F 3 "" H 4600 3150 60  0000 C CNN
	1    4600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2050 4600 2050
Wire Wire Line
	4600 2050 4600 3150
Wire Wire Line
	4800 2250 4600 2250
Connection ~ 4600 2250
Wire Wire Line
	4800 1850 4150 1850
Wire Wire Line
	4150 1850 4150 2350
Wire Wire Line
	4150 2650 4150 3150
Wire Wire Line
	6300 1850 6400 1850
Wire Wire Line
	6400 1850 6400 1450
Connection ~ 6400 1450
Wire Wire Line
	5900 1850 6000 1850
Wire Wire Line
	4800 1650 3800 1650
Wire Wire Line
	3800 1650 3800 2100
Wire Wire Line
	3800 2100 3500 2100
Connection ~ 3500 2100
$Comp
L TPS54332DDA U?
U 1 1 5619C9BB
P 5350 4700
F 0 "U?" H 5600 5150 60  0000 C CNN
F 1 "TPS54332DDA" H 5350 4050 60  0000 C CNN
F 2 "" H 5350 4600 60  0001 C CNN
F 3 "" H 5350 4600 60  0000 C CNN
	1    5350 4700
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L?
U 1 1 5619C9C2
P 7300 4400
F 0 "L?" V 7250 4400 50  0000 C CNN
F 1 "3u3/4A6" V 7400 4400 50  0000 C CNN
F 2 "" H 7300 4400 60  0001 C CNN
F 3 "" H 7300 4400 60  0000 C CNN
	1    7300 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 4400 9650 4400
Wire Wire Line
	9650 4150 9650 4550
Wire Wire Line
	5900 4400 7000 4400
$Comp
L LED D?
U 1 1 5619C9D6
P 9650 5450
F 0 "D?" H 9650 5550 50  0000 C CNN
F 1 "LED" H 9650 5350 50  0000 C CNN
F 2 "" H 9650 5450 60  0001 C CNN
F 3 "" H 9650 5450 60  0000 C CNN
	1    9650 5450
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5619C9DC
P 9650 4700
F 0 "R?" V 9730 4700 50  0000 C CNN
F 1 "330" V 9650 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9580 4700 30  0001 C CNN
F 3 "" H 9650 4700 30  0000 C CNN
	1    9650 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5619C9E2
P 9650 6100
F 0 "#PWR?" H 9650 5850 50  0001 C CNN
F 1 "GND" H 9650 5950 50  0000 C CNN
F 2 "" H 9650 6100 60  0000 C CNN
F 3 "" H 9650 6100 60  0000 C CNN
	1    9650 6100
	1    0    0    -1  
$EndComp
Connection ~ 9650 4400
$Comp
L C C?
U 1 1 5619C9E9
P 8850 5450
F 0 "C?" H 8875 5550 50  0000 L CNN
F 1 "10u/16V/X5R" H 8875 5350 50  0000 L CNN
F 2 "" H 8888 5300 30  0001 C CNN
F 3 "" H 8850 5450 60  0000 C CNN
	1    8850 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5619C9EF
P 8850 6100
F 0 "#PWR?" H 8850 5850 50  0001 C CNN
F 1 "GND" H 8850 5950 50  0000 C CNN
F 2 "" H 8850 6100 60  0000 C CNN
F 3 "" H 8850 6100 60  0000 C CNN
	1    8850 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 6100 8850 5600
Wire Wire Line
	8850 5300 8850 4400
Connection ~ 8850 4400
$Comp
L D_Schottky D?
U 1 1 5619C9F8
P 6750 4700
F 0 "D?" H 6750 4800 50  0000 C CNN
F 1 "B560C-13-F" H 6750 4600 50  0000 C CNN
F 2 "" H 6750 4700 60  0001 C CNN
F 3 "" H 6750 4700 60  0000 C CNN
	1    6750 4700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5619C9FE
P 6750 6100
F 0 "#PWR?" H 6750 5850 50  0001 C CNN
F 1 "GND" H 6750 5950 50  0000 C CNN
F 2 "" H 6750 6100 60  0000 C CNN
F 3 "" H 6750 6100 60  0000 C CNN
	1    6750 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 6100 6750 4850
Wire Wire Line
	6750 4550 6750 4400
Connection ~ 6750 4400
$Comp
L C C?
U 1 1 5619CA07
P 6150 4800
F 0 "C?" V 6200 4650 50  0000 L CNN
F 1 "100n/50V" V 6050 4600 50  0000 L CNN
F 2 "" H 6188 4650 30  0001 C CNN
F 3 "" H 6150 4800 60  0000 C CNN
	1    6150 4800
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5619CA0D
P 8100 4700
F 0 "R?" V 8180 4700 50  0000 C CNN
F 1 "10k2/1%" V 8000 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8030 4700 30  0001 C CNN
F 3 "" H 8100 4700 30  0000 C CNN
	1    8100 4700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5619CA13
P 8100 5450
F 0 "R?" V 8180 5450 50  0000 C CNN
F 1 "3k24/1%" V 8000 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8030 5450 30  0001 C CNN
F 3 "" H 8100 5450 30  0000 C CNN
	1    8100 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5619CA19
P 8100 6100
F 0 "#PWR?" H 8100 5850 50  0001 C CNN
F 1 "GND" H 8100 5950 50  0000 C CNN
F 2 "" H 8100 6100 60  0000 C CNN
F 3 "" H 8100 6100 60  0000 C CNN
	1    8100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4850 8100 5300
Wire Wire Line
	8100 5600 8100 6100
Wire Wire Line
	9650 4850 9650 5250
Wire Wire Line
	9650 5650 9650 6100
Wire Wire Line
	8100 4550 8100 4400
Connection ~ 8100 4400
Wire Wire Line
	5900 5000 8100 5000
Connection ~ 8100 5000
$Comp
L R R?
U 1 1 5619CA28
P 6100 5450
F 0 "R?" V 6180 5450 50  0000 C CNN
F 1 "68k1/1%" V 6000 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6030 5450 30  0001 C CNN
F 3 "" H 6100 5450 30  0000 C CNN
	1    6100 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5619CA2E
P 6100 6100
F 0 "#PWR?" H 6100 5850 50  0001 C CNN
F 1 "GND" H 6100 5950 50  0000 C CNN
F 2 "" H 6100 6100 60  0000 C CNN
F 3 "" H 6100 6100 60  0000 C CNN
	1    6100 6100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5619CA34
P 6100 5850
F 0 "C?" H 6150 5950 50  0000 L CNN
F 1 "470p/50V" H 6150 5750 50  0000 L CNN
F 2 "" H 6138 5700 30  0001 C CNN
F 3 "" H 6100 5850 60  0000 C CNN
	1    6100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5200 6100 5200
Wire Wire Line
	6100 5200 6100 5300
Wire Wire Line
	6100 5600 6100 5700
Wire Wire Line
	6100 6000 6100 6100
Wire Wire Line
	2200 4400 4800 4400
$Comp
L R R?
U 1 1 5619CA40
P 3500 4700
F 0 "R?" H 3550 4850 50  0000 C CNN
F 1 "150k" V 3500 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3430 4700 30  0001 C CNN
F 3 "" H 3500 4700 30  0000 C CNN
	1    3500 4700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5619CA46
P 3500 5450
F 0 "R?" H 3550 5600 50  0000 C CNN
F 1 "150k" V 3500 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3430 5450 30  0001 C CNN
F 3 "" H 3500 5450 30  0000 C CNN
	1    3500 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4850 3500 5300
Wire Wire Line
	3500 4550 3500 4400
Connection ~ 3500 4400
$Comp
L GND #PWR?
U 1 1 5619CA50
P 3500 6100
F 0 "#PWR?" H 3500 5850 50  0001 C CNN
F 1 "GND" H 3500 5950 50  0000 C CNN
F 2 "" H 3500 6100 60  0000 C CNN
F 3 "" H 3500 6100 60  0000 C CNN
	1    3500 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5600 3500 6100
$Comp
L C C?
U 1 1 5619CA57
P 4150 5450
F 0 "C?" H 4200 5550 50  0000 L CNN
F 1 "100n/50V" V 4200 5000 50  0000 L CNN
F 2 "" H 4188 5300 30  0001 C CNN
F 3 "" H 4150 5450 60  0000 C CNN
	1    4150 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5619CA5D
P 4150 6100
F 0 "#PWR?" H 4150 5850 50  0001 C CNN
F 1 "GND" H 4150 5950 50  0000 C CNN
F 2 "" H 4150 6100 60  0000 C CNN
F 3 "" H 4150 6100 60  0000 C CNN
	1    4150 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5619CA63
P 4600 6100
F 0 "#PWR?" H 4600 5850 50  0001 C CNN
F 1 "GND" H 4600 5950 50  0000 C CNN
F 2 "" H 4600 6100 60  0000 C CNN
F 3 "" H 4600 6100 60  0000 C CNN
	1    4600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5000 4600 5000
Wire Wire Line
	4600 5000 4600 6100
Wire Wire Line
	4800 5200 4600 5200
Connection ~ 4600 5200
Wire Wire Line
	4800 4800 4150 4800
Wire Wire Line
	4150 4800 4150 5300
Wire Wire Line
	4150 5600 4150 6100
Wire Wire Line
	6300 4800 6400 4800
Wire Wire Line
	6400 4800 6400 4400
Connection ~ 6400 4400
Wire Wire Line
	5900 4800 6000 4800
Wire Wire Line
	4800 4600 3800 4600
Wire Wire Line
	3800 4600 3800 5050
Wire Wire Line
	3800 5050 3500 5050
Connection ~ 3500 5050
Wire Wire Line
	2200 4400 2200 1450
Connection ~ 2200 1450
$Comp
L +3V3 #PWR?
U 1 1 5619CCA5
P 9650 4150
F 0 "#PWR?" H 9650 4000 50  0001 C CNN
F 1 "+3V3" H 9650 4290 50  0000 C CNN
F 2 "" H 9650 4150 60  0000 C CNN
F 3 "" H 9650 4150 60  0000 C CNN
	1    9650 4150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 562430FB
P 10450 1200
F 0 "#PWR?" H 10450 1050 50  0001 C CNN
F 1 "+5V" H 10450 1340 50  0000 C CNN
F 2 "" H 10450 1200 60  0000 C CNN
F 3 "" H 10450 1200 60  0000 C CNN
	1    10450 1200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 56243140
P 10450 1450
F 0 "#FLG?" H 10450 1545 50  0001 C CNN
F 1 "PWR_FLAG" H 10450 1630 50  0000 C CNN
F 2 "" H 10450 1450 60  0000 C CNN
F 3 "" H 10450 1450 60  0000 C CNN
	1    10450 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	10450 1200 10450 1450
$Comp
L PWR_FLAG #FLG?
U 1 1 56243249
P 10450 4400
F 0 "#FLG?" H 10450 4495 50  0001 C CNN
F 1 "PWR_FLAG" H 10450 4580 50  0000 C CNN
F 2 "" H 10450 4400 60  0000 C CNN
F 3 "" H 10450 4400 60  0000 C CNN
	1    10450 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	10450 4150 10450 4400
$Comp
L +3V3 #PWR?
U 1 1 56243288
P 10450 4150
F 0 "#PWR?" H 10450 4000 50  0001 C CNN
F 1 "+3V3" H 10450 4290 50  0000 C CNN
F 2 "" H 10450 4150 60  0000 C CNN
F 3 "" H 10450 4150 60  0000 C CNN
	1    10450 4150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
