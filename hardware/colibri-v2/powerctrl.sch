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
Sheet 9 25
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
L GND #PWR?
U 1 1 5596291C
P 3300 1500
F 0 "#PWR?" H 3300 1250 50  0001 C CNN
F 1 "GND" H 3300 1350 50  0000 C CNN
F 2 "" H 3300 1500 60  0000 C CNN
F 3 "" H 3300 1500 60  0000 C CNN
	1    3300 1500
	1    0    0    -1  
$EndComp
$Comp
L 726386-2 T?
U 1 1 55962944
P 2900 1250
F 0 "T?" H 2700 1350 60  0000 C CNN
F 1 "BATCHARGE-" H 2800 1100 60  0000 C CNN
F 2 "" H 2850 1740 60  0001 C CNN
F 3 "" H 2850 1740 60  0000 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
$Comp
L AP6681GMT-HF-3TR Q?
U 1 1 559629F6
P 7350 1250
F 0 "Q?" H 7210 1360 50  0000 R CNN
F 1 "AP6681GMT-HF-3TR" V 7890 1580 50  0000 R CNN
F 2 "" H 7550 1350 29  0001 C CNN
F 3 "" H 7350 1250 60  0000 C CNN
	1    7350 1250
	0    1    -1   0   
$EndComp
$Comp
L 726386-2 T?
U 1 1 55962AA2
P 2900 750
F 0 "T?" H 2700 850 60  0000 C CNN
F 1 "BATCHARGE+" H 2800 600 60  0000 C CNN
F 2 "" H 2850 1240 60  0001 C CNN
F 3 "" H 2850 1240 60  0000 C CNN
	1    2900 750 
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR?
U 1 1 55962B26
P 1650 800
F 0 "#PWR?" H 1650 650 50  0001 C CNN
F 1 "+BATT" H 1650 940 50  0000 C CNN
F 2 "" H 1650 800 60  0000 C CNN
F 3 "" H 1650 800 60  0000 C CNN
	1    1650 800 
	1    0    0    -1  
$EndComp
$Comp
L ZENER D?
U 1 1 55962BCA
P 6950 1350
F 0 "D?" H 6950 1450 50  0000 C CNN
F 1 "BZV55-C18" H 6950 1250 50  0000 C CNN
F 2 "" H 6950 1350 60  0001 C CNN
F 3 "" H 6950 1350 60  0000 C CNN
	1    6950 1350
	0    1    1    0   
$EndComp
$Comp
L Q_NMOS_GSD Q?
U 1 1 55A48E6A
P 5300 1950
F 0 "Q?" H 5600 2000 50  0000 R CNN
F 1 "BSS138PW" H 5300 2150 50  0000 R CNN
F 2 "" H 5500 2050 29  0001 C CNN
F 3 "" H 5300 1950 60  0000 C CNN
	1    5300 1950
	1    0    0    -1  
$EndComp
Text HLabel 1200 1950 0    60   Input ~ 0
VH_CTRL
$Comp
L GND #PWR?
U 1 1 55A491DA
P 4850 2400
F 0 "#PWR?" H 4850 2150 50  0001 C CNN
F 1 "GND" H 4850 2250 50  0000 C CNN
F 2 "" H 4850 2400 60  0000 C CNN
F 3 "" H 4850 2400 60  0000 C CNN
	1    4850 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55ADC831
P 5400 2400
F 0 "#PWR?" H 5400 2150 50  0001 C CNN
F 1 "GND" H 5400 2250 50  0000 C CNN
F 2 "" H 5400 2400 60  0000 C CNN
F 3 "" H 5400 2400 60  0000 C CNN
	1    5400 2400
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D?
U 1 1 55ADD5AF
P 2100 3050
F 0 "D?" H 2100 3150 50  0000 C CNN
F 1 "D_Schottky" H 2100 2950 50  0000 C CNN
F 2 "" H 2100 3050 60  0001 C CNN
F 3 "" H 2100 3050 60  0000 C CNN
	1    2100 3050
	-1   0    0    1   
$EndComp
$Comp
L +BATT #PWR?
U 1 1 55ADD6AC
P 1650 2850
F 0 "#PWR?" H 1650 2700 50  0001 C CNN
F 1 "+BATT" H 1650 2990 50  0000 C CNN
F 2 "" H 1650 2850 60  0000 C CNN
F 3 "" H 1650 2850 60  0000 C CNN
	1    1650 2850
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D?
U 1 1 55ADD839
P 4650 3400
F 0 "D?" H 4650 3500 50  0000 C CNN
F 1 "VS-15MQ040NTRPBF" H 4700 3300 50  0000 C CNN
F 2 "" H 4650 3400 60  0001 C CNN
F 3 "" H 4650 3400 60  0000 C CNN
F 4 "na" H 4650 3400 60  0001 C CNN "SMT"
F 5 "1463215" H 4650 3400 60  0001 C CNN "Part"
F 6 "Farnell" H 4650 3400 60  0001 C CNN "Provider"
	1    4650 3400
	0    1    1    0   
$EndComp
$Comp
L BARREL_JACK CON?
U 1 1 55ADD8EB
P 1000 4700
F 0 "CON?" H 1000 4950 60  0000 C CNN
F 1 "BARREL_JACK" H 1000 4500 60  0000 C CNN
F 2 "" H 1000 4700 60  0001 C CNN
F 3 "" H 1000 4700 60  0000 C CNN
	1    1000 4700
	1    0    0    -1  
$EndComp
$Comp
L FDMA530PZ Q?
U 1 1 55ADE24A
P 7650 3150
F 0 "Q?" H 7510 3260 50  0000 R CNN
F 1 "FDMA530PZ" V 8000 3150 50  0000 R CNN
F 2 "" H 7850 3250 29  0001 C CNN
F 3 "" H 7650 3150 60  0000 C CNN
	1    7650 3150
	0    1    -1   0   
$EndComp
Text HLabel 9800 3050 2    60   Output ~ 0
Vsys
$Comp
L ZENER D?
U 1 1 55AE0AEB
P 7150 3400
F 0 "D?" H 7150 3500 50  0000 C CNN
F 1 "BZV55-C18" H 7150 3300 50  0000 C CNN
F 2 "" H 7150 3400 60  0001 C CNN
F 3 "" H 7150 3400 60  0000 C CNN
F 4 "na" H 7150 3400 60  0001 C CNN "SMT"
F 5 "1097211" H 7150 3400 60  0001 C CNN "Part"
F 6 "Farnell" H 7150 3400 60  0001 C CNN "Provider"
	1    7150 3400
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 56481A45
P 6700 1350
F 0 "R?" V 6770 1350 50  0000 C CNN
F 1 "10K/5%" V 6630 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6850 1350 30  0001 C CNN
F 3 "" V 6780 1350 30  0000 C CNN
F 4 "0603" V 6700 1350 20  0000 C CNN "SMT"
F 5 "9331700" V 6900 1350 30  0001 C CNN "Part"
F 6 "Farnell" V 6950 1350 30  0001 C CNN "Provider"
	1    6700 1350
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 56483B86
P 4850 2200
F 0 "R?" V 4920 2200 50  0000 C CNN
F 1 "10K/5%" V 4780 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5000 2200 30  0001 C CNN
F 3 "" V 4930 2200 30  0000 C CNN
F 4 "0603" V 4850 2200 20  0000 C CNN "SMT"
F 5 "9331700" V 5050 2200 30  0001 C CNN "Part"
F 6 "Farnell" V 5100 2200 30  0001 C CNN "Provider"
	1    4850 2200
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 56484BCA
P 4500 1950
F 0 "R?" V 4570 1950 50  0000 C CNN
F 1 "100R/5%" V 4430 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4650 1950 30  0001 C CNN
F 3 "" V 4580 1950 30  0000 C CNN
F 4 "0603" V 4500 1950 20  0000 C CNN "SMT"
F 5 "9331689" V 4700 1950 30  0001 C CNN "Part"
F 6 "Farnell" V 4750 1950 30  0001 C CNN "Provider"
	1    4500 1950
	0    1    1    0   
$EndComp
$Comp
L ALPS-SPPJ320600 SW?
U 1 1 5648533E
P 6300 2150
F 0 "SW?" V 6300 1900 60  0000 C CNN
F 1 "ALPS-SPPJ320600" H 6350 2700 60  0000 C CNN
F 2 "" H 6300 2150 60  0000 C CNN
F 3 "" H 6300 2150 60  0000 C CNN
	1    6300 2150
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 564855EE
P 5850 1650
F 0 "R?" V 5920 1650 50  0000 C CNN
F 1 "100R/5%" V 5780 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6000 1650 30  0001 C CNN
F 3 "" V 5930 1650 30  0000 C CNN
F 4 "0603" V 5850 1650 20  0000 C CNN "SMT"
F 5 "9331689" V 6050 1650 30  0001 C CNN "Part"
F 6 "Farnell" V 6100 1650 30  0001 C CNN "Provider"
	1    5850 1650
	0    1    1    0   
$EndComp
$Comp
L RET_PNP_SMT Q?
U 1 1 564A7504
P 3150 3450
F 0 "Q?" H 3250 3450 50  0000 C CNN
F 1 "PDTA123JU" H 2800 3350 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-323" H 3150 3160 30  0001 C CNN
F 3 "" V 3230 3450 30  0000 C CNN
F 4 "SOT323" H 3150 3200 30  0001 C CNN "SMT"
F 5 "8736847" H 3150 3120 30  0001 C CNN "Part"
F 6 "Farnell" H 3150 3080 30  0001 C CNN "Provider"
	1    3150 3450
	1    0    0    1   
$EndComp
$Comp
L RET_NPN_SMT Q?
U 1 1 564A7762
P 2750 3800
F 0 "Q?" H 2900 3800 50  0000 C CNN
F 1 "PDTC123JU" H 2550 3950 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-323" H 2750 3510 30  0001 C CNN
F 3 "" V 2830 3800 30  0000 C CNN
F 4 "SOT323" H 2750 3550 30  0001 C CNN "SMT"
F 5 "8737150" H 2750 3470 30  0001 C CNN "Part"
F 6 "Farnell" H 2750 3430 30  0001 C CNN "Provider"
	1    2750 3800
	1    0    0    -1  
$EndComp
$Comp
L FDMA530PZ Q?
U 1 1 564A7D62
P 4200 3150
F 0 "Q?" H 4060 3260 50  0000 R CNN
F 1 "FDMA530PZ" V 4500 3150 50  0000 R CNN
F 2 "" H 4400 3250 29  0000 C CNN
F 3 "" H 4200 3150 60  0000 C CNN
	1    4200 3150
	0    1    -1   0   
$EndComp
$Comp
L ZENER D?
U 1 1 564ABB7D
P 3850 3350
F 0 "D?" H 3850 3450 50  0000 C CNN
F 1 "BZV55-C18" H 3850 3250 50  0000 C CNN
F 2 "" H 3850 3350 60  0001 C CNN
F 3 "" H 3850 3350 60  0000 C CNN
	1    3850 3350
	0    1    1    0   
$EndComp
$Comp
L C_SMT C?
U 1 1 564AC1AA
P 5150 3400
F 0 "C?" H 5175 3500 50  0000 L CNN
F 1 "100nF/50V/X7R" V 5000 3000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5180 3250 30  0001 L CNN
F 3 "" H 5175 3500 60  0000 L CNN
F 4 "0603" H 5150 3400 20  0000 C CNN "SMT"
F 5 "1414028" H 5180 3210 30  0001 L CNN "Part"
F 6 "Farnell" H 5180 3170 30  0001 L CNN "Provider"
	1    5150 3400
	1    0    0    -1  
$EndComp
$Comp
L CP_SMT C?
U 1 1 564ACAC9
P 5550 3400
F 0 "C?" H 5575 3500 50  0000 L CNN
F 1 "22uF/35V" V 5400 3000 50  0000 L CNN
F 2 "Capacitors_SMD:c_elec_5x5.7" H 5588 3250 30  0001 C CNN
F 3 "" H 5550 3400 60  0000 C CNN
F 4 "5mm" H 5550 3400 25  0000 C CNN "SMT"
F 5 "2466315" H 5550 3200 30  0001 C CNN "Part"
F 6 "Farnell" H 5550 3150 30  0001 C CNN "Provider"
	1    5550 3400
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 564AD065
P 4200 4000
F 0 "R?" V 4270 4000 50  0000 C CNN
F 1 "10K/5%" V 4130 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4350 4000 30  0001 C CNN
F 3 "" V 4280 4000 30  0000 C CNN
F 4 "0603" V 4200 4000 20  0000 C CNN "SMT"
F 5 "9331700" V 4400 4000 30  0001 C CNN "Part"
F 6 "Farnell" V 4450 4000 30  0001 C CNN "Provider"
	1    4200 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 564AD1EF
P 4200 4250
F 0 "#PWR?" H 4200 4000 50  0001 C CNN
F 1 "GND" H 4200 4100 50  0000 C CNN
F 2 "" H 4200 4250 60  0000 C CNN
F 3 "" H 4200 4250 60  0000 C CNN
	1    4200 4250
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 564AE7A8
P 3500 3350
F 0 "R?" V 3570 3350 50  0000 C CNN
F 1 "100K/5%" V 3430 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3650 3350 30  0001 C CNN
F 3 "" V 3580 3350 30  0000 C CNN
F 4 "0603" V 3500 3350 20  0000 C CNN "SMT"
F 5 "9233628" V 3700 3350 30  0001 C CNN "Part"
F 6 "Farnell" V 3750 3350 30  0001 C CNN "Provider"
	1    3500 3350
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 56500F5E
P 6800 3400
F 0 "R?" V 6870 3400 50  0000 C CNN
F 1 "100K/5%" V 6730 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6950 3400 30  0001 C CNN
F 3 "" V 6880 3400 30  0000 C CNN
F 4 "0603" V 6800 3400 20  0000 C CNN "SMT"
F 5 "9233628" V 7000 3400 30  0001 C CNN "Part"
F 6 "Farnell" V 7050 3400 30  0001 C CNN "Provider"
	1    6800 3400
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q?
U 1 1 56504D90
P 5700 5000
F 0 "Q?" H 6000 5050 50  0000 R CNN
F 1 "BSS138PW" H 5700 5200 50  0000 R CNN
F 2 "" H 5900 5100 29  0001 C CNN
F 3 "" H 5700 5000 60  0000 C CNN
	1    5700 5000
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q?
U 1 1 56504FC6
P 6350 5000
F 0 "Q?" H 6650 5050 50  0000 R CNN
F 1 "BSS138PW" H 6350 5200 50  0000 R CNN
F 2 "" H 6550 5100 29  0001 C CNN
F 3 "" H 6350 5000 60  0000 C CNN
	1    6350 5000
	-1   0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 565050C0
P 6250 3400
F 0 "R?" V 6320 3400 50  0000 C CNN
F 1 "10K/5%" V 6180 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6400 3400 30  0001 C CNN
F 3 "" V 6330 3400 30  0000 C CNN
F 4 "0603" V 6250 3400 20  0000 C CNN "SMT"
F 5 "9331700" V 6450 3400 30  0001 C CNN "Part"
F 6 "Farnell" V 6500 3400 30  0001 C CNN "Provider"
	1    6250 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 565060C5
P 5800 5650
F 0 "#PWR?" H 5800 5400 50  0001 C CNN
F 1 "GND" H 5800 5500 50  0000 C CNN
F 2 "" H 5800 5650 60  0000 C CNN
F 3 "" H 5800 5650 60  0000 C CNN
	1    5800 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 565061BE
P 6250 5650
F 0 "#PWR?" H 6250 5400 50  0001 C CNN
F 1 "GND" H 6250 5500 50  0000 C CNN
F 2 "" H 6250 5650 60  0000 C CNN
F 3 "" H 6250 5650 60  0000 C CNN
	1    6250 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 565065E3
P 6650 5650
F 0 "#PWR?" H 6650 5400 50  0001 C CNN
F 1 "GND" H 6650 5500 50  0000 C CNN
F 2 "" H 6650 5650 60  0000 C CNN
F 3 "" H 6650 5650 60  0000 C CNN
	1    6650 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56507987
P 5400 5650
F 0 "#PWR?" H 5400 5400 50  0001 C CNN
F 1 "GND" H 5400 5500 50  0000 C CNN
F 2 "" H 5400 5650 60  0000 C CNN
F 3 "" H 5400 5650 60  0000 C CNN
	1    5400 5650
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_TACKTILE SW?
U 1 1 565087C9
P 7750 5150
F 0 "SW?" H 7900 5260 50  0000 C CNN
F 1 "B3F-1020" H 7750 4950 50  0000 C CNN
F 2 "" H 7750 5150 60  0000 C CNN
F 3 "" H 7750 5150 60  0000 C CNN
F 4 "1960939" H 7750 5150 60  0001 C CNN "Part"
F 5 "Farnell" H 7750 5150 60  0001 C CNN "Provider"
	1    7750 5150
	0    1    1    0   
$EndComp
$Comp
L D D?
U 1 1 56509131
P 7200 4600
F 0 "D?" H 7200 4700 50  0000 C CNN
F 1 "BAS316" H 7200 4500 50  0000 C CNN
F 2 "" H 7200 4600 60  0000 C CNN
F 3 "" H 7200 4600 60  0000 C CNN
F 4 "8734275" H 7200 4600 60  0001 C CNN "Part"
F 5 "Farnell" H 7200 4600 60  0001 C CNN "Provider"
	1    7200 4600
	-1   0    0    1   
$EndComp
$Comp
L D D?
U 1 1 56509280
P 8200 4600
F 0 "D?" H 8200 4700 50  0000 C CNN
F 1 "BAS316" H 8200 4500 50  0000 C CNN
F 2 "" H 8200 4600 60  0000 C CNN
F 3 "" H 8200 4600 60  0000 C CNN
F 4 "8734275" H 8200 4600 60  0001 C CNN "Part"
F 5 "Farnell" H 8200 4600 60  0001 C CNN "Provider"
	1    8200 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5650962F
P 7650 5650
F 0 "#PWR?" H 7650 5400 50  0001 C CNN
F 1 "GND" H 7650 5500 50  0000 C CNN
F 2 "" H 7650 5650 60  0000 C CNN
F 3 "" H 7650 5650 60  0000 C CNN
	1    7650 5650
	1    0    0    -1  
$EndComp
Text HLabel 9800 4600 2    60   Output ~ 0
PWR_BTN_READ
$Comp
L R_SMT R?
U 1 1 5650C61A
P 5400 5300
F 0 "R?" V 5470 5300 50  0000 C CNN
F 1 "10K/5%" V 5330 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5550 5300 30  0001 C CNN
F 3 "" V 5480 5300 30  0000 C CNN
F 4 "0603" V 5400 5300 20  0000 C CNN "SMT"
F 5 "9331700" V 5600 5300 30  0001 C CNN "Part"
F 6 "Farnell" V 5650 5300 30  0001 C CNN "Provider"
	1    5400 5300
	1    0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 5650D285
P 2100 6250
F 0 "D?" H 2100 6350 50  0000 C CNN
F 1 "BAS316" H 2100 6150 50  0000 C CNN
F 2 "" H 2100 6250 60  0000 C CNN
F 3 "" H 2100 6250 60  0000 C CNN
F 4 "8734275" H 2100 6250 60  0001 C CNN "Part"
F 5 "Farnell" H 2100 6250 60  0001 C CNN "Provider"
	1    2100 6250
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5650D441
P 8800 4050
F 0 "#PWR?" H 8800 3900 50  0001 C CNN
F 1 "+3V3" H 8800 4190 50  0000 C CNN
F 2 "" H 8800 4050 60  0000 C CNN
F 3 "" H 8800 4050 60  0000 C CNN
	1    8800 4050
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 5650D58A
P 8800 4250
F 0 "R?" V 8870 4250 50  0000 C CNN
F 1 "10K/5%" V 8730 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8950 4250 30  0001 C CNN
F 3 "" V 8880 4250 30  0000 C CNN
F 4 "0603" V 8800 4250 20  0000 C CNN "SMT"
F 5 "9331700" V 9000 4250 30  0001 C CNN "Part"
F 6 "Farnell" V 9050 4250 30  0001 C CNN "Provider"
	1    8800 4250
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C?
U 1 1 5650DAC7
P 8200 3400
F 0 "C?" H 8225 3500 50  0000 L CNN
F 1 "100nF/50V/X7R" V 8050 3000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8230 3250 30  0001 L CNN
F 3 "" H 8225 3500 60  0000 L CNN
F 4 "0603" H 8200 3400 20  0000 C CNN "SMT"
F 5 "1414028" H 8230 3210 30  0001 L CNN "Part"
F 6 "Farnell" H 8230 3170 30  0001 L CNN "Provider"
	1    8200 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5650DE62
P 8200 3700
F 0 "#PWR?" H 8200 3450 50  0001 C CNN
F 1 "GND" H 8200 3550 50  0000 C CNN
F 2 "" H 8200 3700 60  0000 C CNN
F 3 "" H 8200 3700 60  0000 C CNN
	1    8200 3700
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q?
U 1 1 5650ECE7
P 3450 6250
F 0 "Q?" H 3750 6300 50  0000 R CNN
F 1 "BSS138PW" H 3450 6450 50  0000 R CNN
F 2 "" H 3650 6350 29  0001 C CNN
F 3 "" H 3450 6250 60  0000 C CNN
	1    3450 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5650ECED
P 3550 7300
F 0 "#PWR?" H 3550 7050 50  0001 C CNN
F 1 "GND" H 3550 7150 50  0000 C CNN
F 2 "" H 3550 7300 60  0000 C CNN
F 3 "" H 3550 7300 60  0000 C CNN
	1    3550 7300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5650ECF4
P 3150 7300
F 0 "#PWR?" H 3150 7050 50  0001 C CNN
F 1 "GND" H 3150 7150 50  0000 C CNN
F 2 "" H 3150 7300 60  0000 C CNN
F 3 "" H 3150 7300 60  0000 C CNN
	1    3150 7300
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 5650ED00
P 3150 6600
F 0 "R?" V 3220 6600 50  0000 C CNN
F 1 "10K/5%" V 3080 6600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3300 6600 30  0001 C CNN
F 3 "" V 3230 6600 30  0000 C CNN
F 4 "0603" V 3150 6600 20  0000 C CNN "SMT"
F 5 "9331700" V 3350 6600 30  0001 C CNN "Part"
F 6 "Farnell" V 3400 6600 30  0001 C CNN "Provider"
	1    3150 6600
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 5650EDCB
P 2850 6250
F 0 "R?" V 2920 6250 50  0000 C CNN
F 1 "10K/5%" V 2780 6250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3000 6250 30  0001 C CNN
F 3 "" V 2930 6250 30  0000 C CNN
F 4 "0603" V 2850 6250 20  0000 C CNN "SMT"
F 5 "9331700" V 3050 6250 30  0001 C CNN "Part"
F 6 "Farnell" V 3100 6250 30  0001 C CNN "Provider"
	1    2850 6250
	0    1    1    0   
$EndComp
$Comp
L R_SMT R?
U 1 1 5650F0AC
P 3550 5700
F 0 "R?" V 3620 5700 50  0000 C CNN
F 1 "10K/5%" V 3480 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3700 5700 30  0001 C CNN
F 3 "" V 3630 5700 30  0000 C CNN
F 4 "0603" V 3550 5700 20  0000 C CNN "SMT"
F 5 "9331700" V 3750 5700 30  0001 C CNN "Part"
F 6 "Farnell" V 3800 5700 30  0001 C CNN "Provider"
	1    3550 5700
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5650F275
P 3550 5450
F 0 "#PWR?" H 3550 5300 50  0001 C CNN
F 1 "+3V3" H 3550 5590 50  0000 C CNN
F 2 "" H 3550 5450 60  0000 C CNN
F 3 "" H 3550 5450 60  0000 C CNN
	1    3550 5450
	1    0    0    -1  
$EndComp
Text HLabel 3850 6000 2    60   Output ~ 0
ADAPTER_AV#
Text HLabel 6850 5000 2    60   Input ~ 0
PWR_ON
$Comp
L R_SMT R?
U 1 1 565108D8
P 5050 5000
F 0 "R?" V 5120 5000 50  0000 C CNN
F 1 "100R/5%" V 4980 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 5200 5000 30  0001 C CNN
F 3 "" V 5130 5000 30  0000 C CNN
F 4 "0603" V 5050 5000 20  0000 C CNN "SMT"
F 5 "9331689" V 5250 5000 30  0001 C CNN "Part"
F 6 "Farnell" V 5300 5000 30  0001 C CNN "Provider"
	1    5050 5000
	0    1    1    0   
$EndComp
Text HLabel 4750 5000 0    60   Input ~ 0
JTAG_PWR_ON
$Comp
L GND #PWR?
U 1 1 56510E0B
P 2800 4250
F 0 "#PWR?" H 2800 4000 50  0001 C CNN
F 1 "GND" H 2800 4100 50  0000 C CNN
F 2 "" H 2800 4250 60  0000 C CNN
F 3 "" H 2800 4250 60  0000 C CNN
	1    2800 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5651137E
P 5150 3850
F 0 "#PWR?" H 5150 3600 50  0001 C CNN
F 1 "GND" H 5150 3700 50  0000 C CNN
F 2 "" H 5150 3850 60  0000 C CNN
F 3 "" H 5150 3850 60  0000 C CNN
	1    5150 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56511422
P 5550 3850
F 0 "#PWR?" H 5550 3600 50  0001 C CNN
F 1 "GND" H 5550 3700 50  0000 C CNN
F 2 "" H 5550 3850 60  0000 C CNN
F 3 "" H 5550 3850 60  0000 C CNN
	1    5550 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5651558E
P 1650 1500
F 0 "#PWR?" H 1650 1250 50  0001 C CNN
F 1 "GND" H 1650 1350 50  0000 C CNN
F 2 "" H 1650 1500 60  0000 C CNN
F 3 "" H 1650 1500 60  0000 C CNN
	1    1650 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56515698
P 7850 1500
F 0 "#PWR?" H 7850 1250 50  0001 C CNN
F 1 "GND" H 7850 1350 50  0000 C CNN
F 2 "" H 7850 1500 60  0000 C CNN
F 3 "" H 7850 1500 60  0000 C CNN
	1    7850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1200 3300 1200
Wire Wire Line
	3300 1200 3300 1500
Wire Wire Line
	3100 1300 3300 1300
Connection ~ 3300 1300
Wire Wire Line
	7550 1050 7950 1050
Wire Wire Line
	1400 1050 7150 1050
Wire Wire Line
	3100 700  3300 700 
Wire Wire Line
	3300 700  3300 1050
Connection ~ 3300 1050
Wire Wire Line
	3100 800  3300 800 
Connection ~ 3300 800 
Wire Wire Line
	6700 1200 6700 1050
Connection ~ 6700 1050
Wire Wire Line
	6950 1150 6950 1050
Connection ~ 6950 1050
Wire Wire Line
	7100 1150 7150 1150
Wire Wire Line
	7100 950  7100 1150
Connection ~ 7100 1050
Wire Wire Line
	7100 950  7150 950 
Wire Wire Line
	7550 950  7600 950 
Wire Wire Line
	7600 850  7600 1150
Connection ~ 7600 1050
Wire Wire Line
	7550 850  7600 850 
Connection ~ 7600 950 
Wire Wire Line
	7600 1150 7550 1150
Wire Wire Line
	6700 1500 6700 1650
Wire Wire Line
	6950 1650 6950 1550
Wire Wire Line
	7350 1650 7350 1450
Connection ~ 6950 1650
Connection ~ 6700 1650
Wire Wire Line
	4850 2350 4850 2400
Wire Wire Line
	5400 2400 5400 2150
Wire Wire Line
	1650 2850 1650 3050
Wire Wire Line
	1650 3050 1950 3050
Wire Wire Line
	7900 2950 7850 2950
Wire Wire Line
	7900 2650 7900 3050
Wire Wire Line
	7850 2850 7900 2850
Connection ~ 7900 2950
Wire Wire Line
	7850 2750 7900 2750
Connection ~ 7900 2850
Wire Wire Line
	7150 3050 7150 3200
Connection ~ 7150 3050
Wire Wire Line
	4650 1950 5100 1950
Wire Wire Line
	4850 2050 4850 1950
Connection ~ 4850 1950
Wire Wire Line
	1200 1950 4350 1950
Wire Wire Line
	2950 3450 2800 3450
Wire Wire Line
	2800 3450 2800 3600
Wire Wire Line
	2250 3050 4000 3050
Wire Wire Line
	3200 3050 3200 3250
Connection ~ 3200 3050
Wire Wire Line
	4400 3050 7450 3050
Wire Wire Line
	4200 3350 4200 3850
Wire Wire Line
	4200 4250 4200 4150
Wire Wire Line
	3200 3650 3200 3750
Wire Wire Line
	3200 3750 4200 3750
Connection ~ 4200 3750
Wire Wire Line
	3500 3200 3500 3050
Connection ~ 3500 3050
Wire Wire Line
	3500 3500 3500 3750
Connection ~ 3500 3750
Wire Wire Line
	3850 3550 3850 3750
Connection ~ 3850 3750
Wire Wire Line
	3850 2950 3850 3150
Connection ~ 3850 3050
Wire Wire Line
	7850 2650 7900 2650
Connection ~ 7900 2750
Wire Wire Line
	7850 3050 9800 3050
Connection ~ 7900 3050
Wire Wire Line
	7450 2950 7350 2950
Wire Wire Line
	7350 2950 7350 3050
Connection ~ 7350 3050
Wire Wire Line
	7650 3750 7650 3350
Wire Wire Line
	6350 3750 7650 3750
Wire Wire Line
	7150 3750 7150 3600
Wire Wire Line
	6800 3550 6800 3750
Connection ~ 7150 3750
Wire Wire Line
	6800 3250 6800 3050
Connection ~ 6800 3050
Connection ~ 6800 3750
Connection ~ 6450 3050
Wire Wire Line
	6350 1800 6350 1650
Wire Wire Line
	6450 1800 6450 1050
Connection ~ 6450 1050
Wire Wire Line
	6350 1650 7350 1650
Wire Wire Line
	6450 2500 6450 3050
Wire Wire Line
	6350 2500 6350 3750
Wire Wire Line
	5400 1750 5400 1650
Wire Wire Line
	5400 1650 5700 1650
Wire Wire Line
	6000 1650 6250 1650
Wire Wire Line
	6250 1650 6250 1800
Wire Wire Line
	6250 2500 6250 3250
Wire Wire Line
	6250 3550 6250 4800
Wire Wire Line
	5800 4600 7050 4600
Wire Wire Line
	5800 4600 5800 4800
Connection ~ 6250 4600
Wire Wire Line
	5800 5200 5800 5650
Wire Wire Line
	6250 5200 6250 5650
Wire Wire Line
	6550 5000 6850 5000
Wire Wire Line
	6650 5000 6650 5150
Wire Wire Line
	6650 5450 6650 5650
Wire Wire Line
	5400 5450 5400 5650
Wire Wire Line
	5200 5000 5500 5000
Wire Wire Line
	5400 5000 5400 5150
Wire Wire Line
	7350 4600 8050 4600
Wire Wire Line
	7650 4600 7650 4850
Connection ~ 7650 4600
Wire Wire Line
	7650 5450 7650 5650
Wire Wire Line
	7750 4850 7750 4800
Wire Wire Line
	7750 4800 7650 4800
Connection ~ 7650 4800
Wire Wire Line
	7750 5450 7750 5500
Wire Wire Line
	7750 5500 7650 5500
Connection ~ 7650 5500
Wire Wire Line
	8350 4600 9800 4600
Wire Wire Line
	4650 2650 4650 3250
Connection ~ 4650 3050
Wire Wire Line
	8800 4400 8800 4600
Connection ~ 8800 4600
Wire Wire Line
	8800 4100 8800 4050
Wire Wire Line
	8200 3250 8200 3050
Connection ~ 8200 3050
Wire Wire Line
	8200 3550 8200 3700
Wire Wire Line
	3550 6450 3550 7300
Wire Wire Line
	3150 6750 3150 7300
Wire Wire Line
	3000 6250 3250 6250
Wire Wire Line
	3150 6250 3150 6450
Connection ~ 3150 6250
Wire Wire Line
	3550 5450 3550 5550
Wire Wire Line
	3550 5850 3550 6050
Wire Wire Line
	3850 6000 3550 6000
Connection ~ 3550 6000
Connection ~ 6650 5000
Wire Wire Line
	4750 5000 4900 5000
Connection ~ 5400 5000
Wire Wire Line
	2800 4000 2800 4250
Wire Wire Line
	5150 3250 5150 3050
Connection ~ 5150 3050
Wire Wire Line
	5550 3250 5550 3050
Connection ~ 5550 3050
Wire Wire Line
	5150 3550 5150 3850
Wire Wire Line
	5550 3550 5550 3850
Wire Wire Line
	1650 800  1650 1050
Connection ~ 1650 1050
Wire Wire Line
	1400 1250 1650 1250
Wire Wire Line
	1650 1250 1650 1500
Wire Wire Line
	2250 6250 2700 6250
Wire Wire Line
	2550 3800 2400 3800
Wire Wire Line
	1950 6250 1800 6250
Wire Wire Line
	2400 3800 2400 6250
Connection ~ 2400 6250
Wire Wire Line
	1300 4600 4650 4600
Wire Wire Line
	4650 4600 4650 3550
Wire Wire Line
	1800 4600 1800 6450
Connection ~ 1800 4600
$Comp
L GND #PWR?
U 1 1 5651D821
P 1400 5050
F 0 "#PWR?" H 1400 4800 50  0001 C CNN
F 1 "GND" H 1400 4900 50  0000 C CNN
F 2 "" H 1400 5050 60  0000 C CNN
F 3 "" H 1400 5050 60  0000 C CNN
	1    1400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4700 1400 4700
Wire Wire Line
	1400 4700 1400 5050
Wire Wire Line
	1300 4800 1400 4800
Connection ~ 1400 4800
Wire Wire Line
	1800 6750 1800 6800
Wire Wire Line
	1800 7200 1800 7300
$Comp
L R_SMT R?
U 1 1 56520322
P 1800 6600
F 0 "R?" H 1850 6750 50  0000 C CNN
F 1 "2k2/5%" V 1730 6600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1950 6600 30  0001 C CNN
F 3 "" V 1880 6600 30  0000 C CNN
F 4 "0603" V 1800 6600 20  0000 C CNN "SMT"
F 5 "9331913" V 2000 6600 30  0001 C CNN "Part"
F 6 "Farnell" V 2050 6600 30  0001 C CNN "Provider"
	1    1800 6600
	1    0    0    -1  
$EndComp
$Comp
L LED_SMT DL?
U 1 1 5652032C
P 1800 7000
F 0 "DL?" V 1900 6900 50  0000 C CNN
F 1 "RED" H 1750 7100 50  0000 C CNN
F 2 "LEDs:LED-0603" H 1800 6850 30  0001 C CNN
F 3 "" H 1800 7000 60  0000 C CNN
F 4 "0603" H 1685 6980 30  0000 C CNN "SMT"
F 5 "2322071" H 1800 6800 30  0001 C CNN "Part"
F 6 "Farnell" H 1800 6750 30  0001 C CNN "Provider"
	1    1800 7000
	0    -1   -1   0   
$EndComp
Connection ~ 1800 6250
$Comp
L GND #PWR?
U 1 1 56520674
P 1800 7300
F 0 "#PWR?" H 1800 7050 50  0001 C CNN
F 1 "GND" H 1800 7150 50  0000 C CNN
F 2 "" H 1800 7300 60  0000 C CNN
F 3 "" H 1800 7300 60  0000 C CNN
	1    1800 7300
	1    0    0    -1  
$EndComp
$Comp
L RET_PNP_SMT Q?
U 1 1 56522BDF
P 9650 1650
F 0 "Q?" H 9750 1650 50  0000 C CNN
F 1 "PDTA123JU" H 9300 1550 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-323" H 9650 1360 30  0001 C CNN
F 3 "" V 9730 1650 30  0000 C CNN
F 4 "SOT323" H 9650 1400 30  0001 C CNN "SMT"
F 5 "8736847" H 9650 1320 30  0001 C CNN "Part"
F 6 "Farnell" H 9650 1280 30  0001 C CNN "Provider"
	1    9650 1650
	1    0    0    1   
$EndComp
$Comp
L RET_NPN_SMT Q?
U 1 1 56522BE8
P 9250 1950
F 0 "Q?" H 9400 1950 50  0000 C CNN
F 1 "PDTC123JU" H 9050 2100 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-323" H 9250 1660 30  0001 C CNN
F 3 "" V 9330 1950 30  0000 C CNN
F 4 "SOT323" H 9250 1700 30  0001 C CNN "SMT"
F 5 "8737150" H 9250 1620 30  0001 C CNN "Part"
F 6 "Farnell" H 9250 1580 30  0001 C CNN "Provider"
	1    9250 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56522BEE
P 9700 2450
F 0 "#PWR?" H 9700 2200 50  0001 C CNN
F 1 "GND" H 9700 2300 50  0000 C CNN
F 2 "" H 9700 2450 60  0000 C CNN
F 3 "" H 9700 2450 60  0000 C CNN
	1    9700 2450
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR?
U 1 1 56523199
P 9700 1300
F 0 "#PWR?" H 9700 1150 50  0001 C CNN
F 1 "+BATT" H 9700 1440 50  0000 C CNN
F 2 "" H 9700 1300 60  0000 C CNN
F 3 "" H 9700 1300 60  0000 C CNN
	1    9700 1300
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R?
U 1 1 56523487
P 9700 2150
F 0 "R?" V 9770 2150 50  0000 C CNN
F 1 "100K/5%" V 9630 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9850 2150 30  0001 C CNN
F 3 "" V 9780 2150 30  0000 C CNN
F 4 "0603" V 9700 2150 20  0000 C CNN "SMT"
F 5 "9233628" V 9900 2150 30  0001 C CNN "Part"
F 6 "Farnell" V 9950 2150 30  0001 C CNN "Provider"
	1    9700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1300 9700 1450
Wire Wire Line
	9700 1850 9700 2000
Wire Wire Line
	9700 2300 9700 2450
Wire Wire Line
	9450 1650 9300 1650
Wire Wire Line
	9300 1650 9300 1750
$Comp
L GND #PWR?
U 1 1 56523CCD
P 9300 2450
F 0 "#PWR?" H 9300 2200 50  0001 C CNN
F 1 "GND" H 9300 2300 50  0000 C CNN
F 2 "" H 9300 2450 60  0000 C CNN
F 3 "" H 9300 2450 60  0000 C CNN
	1    9300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2150 9300 2450
Text HLabel 10350 1900 2    60   Output ~ 0
BAT_MSRMNT
Wire Wire Line
	9700 1900 10350 1900
Connection ~ 9700 1900
$Comp
L C_SMT C?
U 1 1 56523FAC
P 10100 2150
F 0 "C?" H 10125 2250 50  0000 L CNN
F 1 "100nF/50V/X7R" V 9950 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10130 2000 30  0001 L CNN
F 3 "" H 10125 2250 60  0000 L CNN
F 4 "0603" H 10100 2150 20  0000 C CNN "SMT"
F 5 "1414028" H 10130 1960 30  0001 L CNN "Part"
F 6 "Farnell" H 10130 1920 30  0001 L CNN "Provider"
	1    10100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2000 10100 1900
Connection ~ 10100 1900
$Comp
L GND #PWR?
U 1 1 56524360
P 10100 2450
F 0 "#PWR?" H 10100 2200 50  0001 C CNN
F 1 "GND" H 10100 2300 50  0000 C CNN
F 2 "" H 10100 2450 60  0000 C CNN
F 3 "" H 10100 2450 60  0000 C CNN
	1    10100 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2300 10100 2450
Wire Wire Line
	8500 1950 9050 1950
Wire Wire Line
	4000 2950 3850 2950
Wire Wire Line
	4400 2950 4650 2950
Wire Wire Line
	4400 2850 4650 2850
Connection ~ 4650 2950
Wire Wire Line
	4400 2750 4650 2750
Connection ~ 4650 2850
Wire Wire Line
	4400 2650 4650 2650
Connection ~ 4650 2750
$Comp
L R_SMT R?
U 1 1 5653DB72
P 6650 5300
F 0 "R?" V 6720 5300 50  0000 C CNN
F 1 "100K/5%" V 6580 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6800 5300 30  0001 C CNN
F 3 "" V 6730 5300 30  0000 C CNN
F 4 "0603" V 6650 5300 20  0000 C CNN "SMT"
F 5 "9233628" V 6850 5300 30  0001 C CNN "Part"
F 6 "Farnell" V 6900 5300 30  0001 C CNN "Provider"
	1    6650 5300
	1    0    0    -1  
$EndComp
Text HLabel 8500 1950 0    60   Input ~ 0
MSRMNT_ON
$Comp
L XT60 CN?
U 1 1 566008A4
P 1150 1150
F 0 "CN?" H 1150 1400 60  0000 C CNN
F 1 "XT60-M" H 1150 900 60  0000 C CNN
F 2 "Sigmadrone:xt60" H 1150 850 60  0001 C CNN
F 3 "" H 1150 1300 60  0000 C CNN
	1    1150 1150
	-1   0    0    1   
$EndComp
$Comp
L XT60 CN?
U 1 1 56600C8C
P 8200 1150
F 0 "CN?" H 8200 1400 60  0000 C CNN
F 1 "XT60-F" H 8200 900 60  0000 C CNN
F 2 "Sigmadrone:xt60" H 8200 850 60  0001 C CNN
F 3 "" H 8200 1300 60  0000 C CNN
	1    8200 1150
	1    0    0    1   
$EndComp
Wire Wire Line
	7950 1250 7850 1250
Wire Wire Line
	7850 1250 7850 1500
$EndSCHEMATC
