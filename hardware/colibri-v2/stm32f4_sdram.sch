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
Sheet 6 23
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
L IS42S16400J U?
U 1 1 55895059
P 5000 2900
F 0 "U?" H 5450 4550 60  0000 C CNN
F 1 "IS42S16400J" H 4800 4550 60  0000 C CNN
F 2 "" H 5000 3400 60  0001 C CNN
F 3 "" H 5000 3400 60  0000 C CNN
	1    5000 2900
	1    0    0    -1  
$EndComp
Text Label 3500 1400 0    60   ~ 0
FMC_A0
Text Label 3500 1500 0    60   ~ 0
FMC_A1
Text Label 3500 1600 0    60   ~ 0
FMC_A2
Text Label 3500 1700 0    60   ~ 0
FMC_A3
Text Label 3500 1800 0    60   ~ 0
FMC_A4
Text Label 3500 1900 0    60   ~ 0
FMC_A5
Text Label 3500 2000 0    60   ~ 0
FMC_A6
Text Label 3500 2100 0    60   ~ 0
FMC_A7
Text Label 3500 2200 0    60   ~ 0
FMC_A8
Text Label 3500 2300 0    60   ~ 0
FMC_A9
Text Label 3500 2400 0    60   ~ 0
FMC_A10
Text Label 3500 2500 0    60   ~ 0
FMC_A11
Text Label 6600 1400 2    60   ~ 0
FMC_D0
Text Label 6600 1500 2    60   ~ 0
FMC_D1
Text Label 6600 1600 2    60   ~ 0
FMC_D2
Text Label 6600 1700 2    60   ~ 0
FMC_D3
Text Label 6600 1800 2    60   ~ 0
FMC_D4
Text Label 6600 1900 2    60   ~ 0
FMC_D5
Text Label 6600 2000 2    60   ~ 0
FMC_D6
Text Label 6600 2100 2    60   ~ 0
FMC_D7
Text Label 6600 2200 2    60   ~ 0
FMC_D8
Text Label 6600 2300 2    60   ~ 0
FMC_D9
Text Label 6600 2400 2    60   ~ 0
FMC_D10
Text Label 6600 2500 2    60   ~ 0
FMC_D11
Text Label 6600 2600 2    60   ~ 0
FMC_D12
Text Label 6600 2700 2    60   ~ 0
FMC_D13
Text Label 6600 2800 2    60   ~ 0
FMC_D14
Text Label 6600 2900 2    60   ~ 0
FMC_D15
Text Label 3500 2700 0    60   ~ 0
FMC_B0
Text Label 3500 2800 0    60   ~ 0
FMC_B1
Text Label 6600 3150 2    60   ~ 0
FMC_NBL1
Text Label 6600 3250 2    60   ~ 0
FMC_NBL0
Text Label 3500 3050 0    60   ~ 0
FMC_SDNE1
Text Label 3500 3150 0    60   ~ 0
FMC_SDNWE
Text Label 3500 3250 0    60   ~ 0
FMC_SDNRAS
Text Label 3500 3350 0    60   ~ 0
FMC_SDNCAS
Text Label 3500 3450 0    60   ~ 0
FMC_SDCLK
Text Label 3500 3550 0    60   ~ 0
FMC_SDCKE1
$Comp
L GND #PWR?
U 1 1 55895A0D
P 6600 4400
F 0 "#PWR?" H 6600 4150 50  0001 C CNN
F 1 "GND" H 6600 4250 50  0000 C CNN
F 2 "" H 6600 4400 60  0000 C CNN
F 3 "" H 6600 4400 60  0000 C CNN
	1    6600 4400
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 55895AE5
P 3500 4400
F 0 "#PWR?" H 3500 4250 50  0001 C CNN
F 1 "+3V3" H 3500 4540 50  0000 C CNN
F 2 "" H 3500 4400 60  0000 C CNN
F 3 "" H 3500 4400 60  0000 C CNN
	1    3500 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 1400 4200 1400
Wire Wire Line
	3500 1500 4200 1500
Wire Wire Line
	3500 1600 4200 1600
Wire Wire Line
	3500 1700 4200 1700
Wire Wire Line
	3500 1800 4200 1800
Wire Wire Line
	3500 1900 4200 1900
Wire Wire Line
	3500 2000 4200 2000
Wire Wire Line
	3500 2100 4200 2100
Wire Wire Line
	3500 2200 4200 2200
Wire Wire Line
	3500 2300 4200 2300
Wire Wire Line
	3500 2400 4200 2400
Wire Wire Line
	3500 2500 4200 2500
Wire Wire Line
	5800 1400 6600 1400
Wire Wire Line
	5800 1500 6600 1500
Wire Wire Line
	5800 1600 6600 1600
Wire Wire Line
	5800 1700 6600 1700
Wire Wire Line
	5800 1800 6600 1800
Wire Wire Line
	5800 1900 6600 1900
Wire Wire Line
	5800 2000 6600 2000
Wire Wire Line
	5800 2100 6600 2100
Wire Wire Line
	5800 2200 6600 2200
Wire Wire Line
	5800 2300 6600 2300
Wire Wire Line
	5800 2400 6600 2400
Wire Wire Line
	5800 2500 6600 2500
Wire Wire Line
	5800 2600 6600 2600
Wire Wire Line
	5800 2700 6600 2700
Wire Wire Line
	5800 2800 6600 2800
Wire Wire Line
	5800 2900 6600 2900
Wire Wire Line
	2400 3050 4200 3050
Wire Wire Line
	2400 3150 4200 3150
Wire Wire Line
	2400 3250 4200 3250
Wire Wire Line
	2400 3350 4200 3350
Wire Wire Line
	2400 3450 4200 3450
Wire Wire Line
	2400 3550 4200 3550
Wire Wire Line
	3500 2700 4200 2700
Wire Wire Line
	3500 2800 4200 2800
Wire Wire Line
	5800 3150 6600 3150
Wire Wire Line
	5800 3250 6600 3250
Wire Wire Line
	5800 4400 6000 4400
Wire Wire Line
	6000 4400 6600 4400
Wire Wire Line
	5800 3800 6000 3800
Wire Wire Line
	6000 3800 6000 3900
Wire Wire Line
	6000 3900 6000 4000
Wire Wire Line
	6000 4000 6000 4100
Wire Wire Line
	6000 4100 6000 4200
Wire Wire Line
	6000 4200 6000 4300
Wire Wire Line
	6000 4300 6000 4400
Connection ~ 6000 4400
Wire Wire Line
	5800 3900 6000 3900
Connection ~ 6000 3900
Connection ~ 6000 4000
Connection ~ 6000 4100
Connection ~ 6000 4200
Connection ~ 6000 4300
Wire Wire Line
	5800 4000 6000 4000
Wire Wire Line
	5800 4100 6000 4100
Wire Wire Line
	5800 4200 6000 4200
Wire Wire Line
	5800 4300 6000 4300
Wire Wire Line
	3500 4400 3950 4400
Wire Wire Line
	3950 4400 4200 4400
Wire Wire Line
	4200 3800 3950 3800
Wire Wire Line
	3950 3800 3950 3900
Wire Wire Line
	3950 3900 3950 4000
Wire Wire Line
	3950 4000 3950 4100
Wire Wire Line
	3950 4100 3950 4200
Wire Wire Line
	3950 4200 3950 4300
Wire Wire Line
	3950 4300 3950 4400
Connection ~ 3950 4400
Wire Wire Line
	3950 3900 4200 3900
Connection ~ 3950 3900
Connection ~ 3950 4000
Connection ~ 3950 4100
Connection ~ 3950 4200
Connection ~ 3950 4300
Wire Wire Line
	3950 4000 4200 4000
Wire Wire Line
	3950 4100 4200 4100
Wire Wire Line
	3950 4200 4200 4200
Wire Wire Line
	3950 4300 4200 4300
$Comp
L +3V3 #PWR?
U 1 1 5589603F
P 2400 5250
F 0 "#PWR?" H 2400 5100 50  0001 C CNN
F 1 "+3V3" H 2400 5390 50  0000 C CNN
F 2 "" H 2400 5250 60  0000 C CNN
F 3 "" H 2400 5250 60  0000 C CNN
	1    2400 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5589605A
P 2400 6250
F 0 "#PWR?" H 2400 6000 50  0001 C CNN
F 1 "GND" H 2400 6100 50  0000 C CNN
F 2 "" H 2400 6250 60  0000 C CNN
F 3 "" H 2400 6250 60  0000 C CNN
	1    2400 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5250 2400 5350
Wire Wire Line
	2400 5350 2400 5600
Wire Wire Line
	2400 5350 3200 5350
Wire Wire Line
	3200 5350 4000 5350
Wire Wire Line
	4000 5350 4800 5350
Wire Wire Line
	4800 5350 5600 5350
Wire Wire Line
	5600 5350 6400 5350
Wire Wire Line
	6400 5350 7200 5350
Wire Wire Line
	7200 5350 7200 5600
Connection ~ 2400 5350
Wire Wire Line
	2400 5900 2400 6200
Wire Wire Line
	2400 6200 2400 6250
Wire Wire Line
	2400 6200 3200 6200
Wire Wire Line
	3200 6200 4000 6200
Wire Wire Line
	4000 6200 4800 6200
Wire Wire Line
	4800 6200 5600 6200
Wire Wire Line
	5600 6200 6400 6200
Wire Wire Line
	6400 6200 7200 6200
Wire Wire Line
	7200 6200 7200 5900
Connection ~ 2400 6200
Wire Wire Line
	3200 5350 3200 5600
Connection ~ 3200 5350
Wire Wire Line
	4000 5350 4000 5600
Connection ~ 4000 5350
Wire Wire Line
	4800 5350 4800 5600
Connection ~ 4800 5350
Wire Wire Line
	5600 5350 5600 5600
Connection ~ 5600 5350
Wire Wire Line
	6400 5350 6400 5600
Connection ~ 6400 5350
Wire Wire Line
	3200 5900 3200 6200
Connection ~ 3200 6200
Wire Wire Line
	4000 5900 4000 6200
Connection ~ 4000 6200
Wire Wire Line
	4800 5900 4800 6200
Connection ~ 4800 6200
Wire Wire Line
	5600 5900 5600 6200
Connection ~ 5600 6200
Wire Wire Line
	6400 5900 6400 6200
Connection ~ 6400 6200
Text Notes 2950 6600 0    60   ~ 0
Place close to SDRAM
Text HLabel 2400 2750 0    60   BiDi ~ 0
FMC_B[0..1]
Wire Bus Line
	2400 2750 3250 2750
Text Label 2550 2750 0    60   ~ 0
FMC_B[0..1]
Text HLabel 2400 3050 0    60   Input ~ 0
FMC_SDNE1
Text HLabel 2400 3150 0    60   Input ~ 0
FMC_SDNWE
Text HLabel 2400 3250 0    60   Input ~ 0
FMC_SDNRAS
Text HLabel 2400 3350 0    60   Input ~ 0
FMC_SDNCAS
Text HLabel 2400 3450 0    60   Input ~ 0
FMC_SDCLK
Text HLabel 2400 3550 0    60   Input ~ 0
FMC_SDCKE1
Text HLabel 7800 3200 2    60   BiDi ~ 0
FMC_NBL[0..1]
Wire Bus Line
	7800 3200 6900 3200
Text Label 7000 3200 0    60   ~ 0
FMC_NBL[0..1]
$Comp
L C_SMT C?
U 1 1 562F3700
P 7200 5750
F 0 "C?" H 7225 5850 50  0000 L CNN
F 1 "100nF/50V/X7R" H 7225 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7230 5600 30  0001 L CNN
F 3 "" H 7225 5850 60  0000 L CNN
F 4 "0603" H 7200 5750 20  0000 C CNN "SMT"
F 5 "1414028" H 7230 5560 30  0001 L CNN "Part"
F 6 "Farnell" H 7230 5520 30  0001 L CNN "Provider"
	1    7200 5750
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F3853
P 6400 5750
F 0 "C?" H 6425 5850 50  0000 L CNN
F 1 "100nF/50V/X7R" H 6425 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6430 5600 30  0001 L CNN
F 3 "" H 6425 5850 60  0000 L CNN
F 4 "0603" H 6400 5750 20  0000 C CNN "SMT"
F 5 "1414028" H 6430 5560 30  0001 L CNN "Part"
F 6 "Farnell" H 6430 5520 30  0001 L CNN "Provider"
	1    6400 5750
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F39EF
P 5600 5750
F 0 "C?" H 5625 5850 50  0000 L CNN
F 1 "100nF/50V/X7R" H 5625 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5630 5600 30  0001 L CNN
F 3 "" H 5625 5850 60  0000 L CNN
F 4 "0603" H 5600 5750 20  0000 C CNN "SMT"
F 5 "1414028" H 5630 5560 30  0001 L CNN "Part"
F 6 "Farnell" H 5630 5520 30  0001 L CNN "Provider"
	1    5600 5750
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F3A35
P 4800 5750
F 0 "C?" H 4825 5850 50  0000 L CNN
F 1 "100nF/50V/X7R" H 4825 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4830 5600 30  0001 L CNN
F 3 "" H 4825 5850 60  0000 L CNN
F 4 "0603" H 4800 5750 20  0000 C CNN "SMT"
F 5 "1414028" H 4830 5560 30  0001 L CNN "Part"
F 6 "Farnell" H 4830 5520 30  0001 L CNN "Provider"
	1    4800 5750
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F3A9B
P 4000 5750
F 0 "C?" H 4025 5850 50  0000 L CNN
F 1 "100nF/50V/X7R" H 4025 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4030 5600 30  0001 L CNN
F 3 "" H 4025 5850 60  0000 L CNN
F 4 "0603" H 4000 5750 20  0000 C CNN "SMT"
F 5 "1414028" H 4030 5560 30  0001 L CNN "Part"
F 6 "Farnell" H 4030 5520 30  0001 L CNN "Provider"
	1    4000 5750
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F3ADF
P 3200 5750
F 0 "C?" H 3225 5850 50  0000 L CNN
F 1 "100nF/50V/X7R" H 3225 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3230 5600 30  0001 L CNN
F 3 "" H 3225 5850 60  0000 L CNN
F 4 "0603" H 3200 5750 20  0000 C CNN "SMT"
F 5 "1414028" H 3230 5560 30  0001 L CNN "Part"
F 6 "Farnell" H 3230 5520 30  0001 L CNN "Provider"
	1    3200 5750
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 562F3B2E
P 2400 5750
F 0 "C?" H 2425 5850 50  0000 L CNN
F 1 "100nF/50V/X7R" H 2425 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2430 5600 30  0001 L CNN
F 3 "" H 2425 5850 60  0000 L CNN
F 4 "0603" H 2400 5750 20  0000 C CNN "SMT"
F 5 "1414028" H 2430 5560 30  0001 L CNN "Part"
F 6 "Farnell" H 2430 5520 30  0001 L CNN "Provider"
	1    2400 5750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
