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
LIBS:special
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
LIBS:BQ24070
LIBS:LTC2954-2
LIBS:S-8241
LIBS:SC189
LIBS:TPS61032
LIBS:L3GD20
LIBS:LSM303DLHC
LIBS:PCA9306
LIBS:PCA9685
LIBS:NCP551SN18T1G
LIBS:74AVC4T774
LIBS:header
LIBS:pandaext-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
Title ""
Date "18 jun 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R?
U 1 1 514CCFBB
P 8500 5050
F 0 "R?" V 8550 5250 40  0000 C CNN
F 1 "10K" V 8507 5051 40  0000 C CNN
F 2 "~" V 8430 5050 30  0000 C CNN
F 3 "~" H 8500 5050 30  0000 C CNN
	1    8500 5050
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P?
U 1 1 514CCFC1
P 10000 2900
F 0 "P?" V 9950 2900 40  0000 C CNN
F 1 "BAT +/-" V 10050 2900 40  0000 C CNN
F 2 "" H 10000 2900 60  0000 C CNN
F 3 "" H 10000 2900 60  0000 C CNN
	1    10000 2900
	1    0    0    -1  
$EndComp
$Comp
L CP1 C?
U 1 1 514CCFC7
P 9400 3000
F 0 "C?" V 9350 2800 50  0000 L CNN
F 1 "10uF" V 9450 2800 50  0000 L CNN
F 2 "~" H 9400 3000 60  0000 C CNN
F 3 "~" H 9400 3000 60  0000 C CNN
	1    9400 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 514CCFCD
P 9400 3400
F 0 "#PWR?" H 9400 3400 30  0001 C CNN
F 1 "GND" H 9400 3330 30  0001 C CNN
F 2 "" H 9400 3400 60  0000 C CNN
F 3 "" H 9400 3400 60  0000 C CNN
	1    9400 3400
	1    0    0    -1  
$EndComp
Text Label 9400 2800 0    60   ~ 0
BAT +
$Comp
L BQ24070 U?
U 1 1 514CCFF8
P 7100 3300
F 0 "U?" H 7100 3250 50  0000 C CNN
F 1 "BQ24070" H 6850 1750 50  0000 C CNN
F 2 "~" H 6800 2650 60  0000 C CNN
F 3 "~" H 6800 2650 60  0000 C CNN
	1    7100 3300
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK DC?
U 1 1 514CD366
P 1200 2000
F 0 "DC?" H 1200 2250 60  0000 C CNN
F 1 "2.1/5.5" H 1200 1800 60  0000 C CNN
F 2 "" H 1200 2000 60  0000 C CNN
F 3 "" H 1200 2000 60  0000 C CNN
	1    1200 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 514CD372
P 1850 1600
F 0 "#PWR?" H 1850 1690 20  0001 C CNN
F 1 "+5V" H 1850 1690 30  0000 C CNN
F 2 "" H 1850 1600 60  0000 C CNN
F 3 "" H 1850 1600 60  0000 C CNN
	1    1850 1600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 514CD378
P 6050 2500
F 0 "R?" V 6100 2700 40  0000 C CNN
F 1 "100K" V 6057 2501 40  0000 C CNN
F 2 "~" V 5980 2500 30  0000 C CNN
F 3 "~" H 6050 2500 30  0000 C CNN
	1    6050 2500
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 514CD37E
P 6050 2200
F 0 "R?" V 6100 2400 40  0000 C CNN
F 1 "100K" V 6057 2201 40  0000 C CNN
F 2 "~" V 5980 2200 30  0000 C CNN
F 3 "~" H 6050 2200 30  0000 C CNN
	1    6050 2200
	0    -1   -1   0   
$EndComp
$Comp
L CP1 C?
U 1 1 514CD384
P 6000 5000
F 0 "C?" V 5950 4800 50  0000 L CNN
F 1 "0.47uF" V 6150 4900 50  0000 L CNN
F 2 "~" H 6000 5000 60  0000 C CNN
F 3 "~" H 6000 5000 60  0000 C CNN
	1    6000 5000
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 514CD38A
P 6050 2800
F 0 "R?" V 6100 3000 40  0000 C CNN
F 1 "100K" V 6057 2801 40  0000 C CNN
F 2 "~" V 5980 2800 30  0000 C CNN
F 3 "~" H 6050 2800 30  0000 C CNN
	1    6050 2800
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 514CD390
P 8200 5050
F 0 "R?" V 8250 5250 40  0000 C CNN
F 1 "30K 1%" V 8207 5051 40  0000 C CNN
F 2 "~" V 8130 5050 30  0000 C CNN
F 3 "~" H 8200 5050 30  0000 C CNN
	1    8200 5050
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 514CD396
P 5400 5050
F 0 "R?" V 5450 5250 40  0000 C CNN
F 1 "2.2K" V 5407 5051 40  0000 C CNN
F 2 "~" V 5330 5050 30  0000 C CNN
F 3 "~" H 5400 5050 30  0000 C CNN
	1    5400 5050
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 514CD39C
P 5700 5050
F 0 "R?" V 5750 5250 40  0000 C CNN
F 1 "61K" V 5707 5051 40  0000 C CNN
F 2 "~" V 5630 5050 30  0000 C CNN
F 3 "~" H 5700 5050 30  0000 C CNN
	1    5700 5050
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 514CD3A2
P 3800 3100
F 0 "R?" V 3850 2900 40  0000 C CNN
F 1 "1.5K" V 3807 3101 40  0000 C CNN
F 2 "~" V 3730 3100 30  0000 C CNN
F 3 "~" H 3800 3100 30  0000 C CNN
	1    3800 3100
	0    1    -1   0   
$EndComp
$Comp
L R R?
U 1 1 514CD3A8
P 3800 3400
F 0 "R?" V 3850 3200 40  0000 C CNN
F 1 "1.5K" V 3807 3401 40  0000 C CNN
F 2 "~" V 3730 3400 30  0000 C CNN
F 3 "~" H 3800 3400 30  0000 C CNN
	1    3800 3400
	0    1    -1   0   
$EndComp
$Comp
L R R?
U 1 1 514CD3AE
P 3800 3700
F 0 "R?" V 3850 3500 40  0000 C CNN
F 1 "1.5K" V 3807 3701 40  0000 C CNN
F 2 "~" V 3730 3700 30  0000 C CNN
F 3 "~" H 3800 3700 30  0000 C CNN
	1    3800 3700
	0    1    -1   0   
$EndComp
$Comp
L CP1 C?
U 1 1 514CD3B4
P 1850 2100
F 0 "C?" V 1800 1900 50  0000 L CNN
F 1 "10uF" V 1900 1900 50  0000 L CNN
F 2 "~" H 1850 2100 60  0000 C CNN
F 3 "~" H 1850 2100 60  0000 C CNN
	1    1850 2100
	1    0    0    -1  
$EndComp
$Comp
L CP1 C?
U 1 1 514CD3BA
P 2250 2100
F 0 "C?" V 2200 1900 50  0000 L CNN
F 1 "10uF" V 2300 1900 50  0000 L CNN
F 2 "~" H 2250 2100 60  0000 C CNN
F 3 "~" H 2250 2100 60  0000 C CNN
	1    2250 2100
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 514CD3C0
P 3350 3100
F 0 "D?" H 3100 3150 50  0000 C CNN
F 1 "GREEN" H 3050 3050 50  0000 L CNN
F 2 "~" H 3350 3100 60  0000 C CNN
F 3 "~" H 3350 3100 60  0000 C CNN
	1    3350 3100
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 514CD3C6
P 3350 3400
F 0 "D?" H 3100 3450 50  0000 C CNN
F 1 "GREEN" H 3050 3350 50  0000 L CNN
F 2 "~" H 3350 3400 60  0000 C CNN
F 3 "~" H 3350 3400 60  0000 C CNN
	1    3350 3400
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 514CD3CC
P 3350 3700
F 0 "D?" H 3100 3750 50  0000 C CNN
F 1 "RED" H 3050 3650 50  0000 L CNN
F 2 "~" H 3350 3700 60  0000 C CNN
F 3 "~" H 3350 3700 60  0000 C CNN
	1    3350 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 514CD3D2
P 1500 2700
F 0 "#PWR?" H 1500 2700 30  0001 C CNN
F 1 "GND" H 1500 2630 30  0001 C CNN
F 2 "" H 1500 2700 60  0000 C CNN
F 3 "" H 1500 2700 60  0000 C CNN
	1    1500 2700
	1    0    0    -1  
$EndComp
Text GLabel 4400 4800 3    60   Output ~ 0
BAT STAT1
Text GLabel 4600 4800 3    60   Output ~ 0
BAT STAT2
Text GLabel 4200 4800 3    60   Output ~ 0
BAT PG
Text Notes 6150 1200 0    118  ~ 24
Battery Charger
Text Notes 8400 1000 0    59   ~ 0
LED1 - external voltage source (RED)\nLED2 - fast charge (GREEN)\nLED3 - charge done (RED)\nLED2 and LED3 - precharge
Wire Wire Line
	7900 2800 9650 2800
Connection ~ 9400 2800
Wire Wire Line
	1850 2300 1850 2450
Connection ~ 1850 2450
Connection ~ 2250 2450
Connection ~ 2250 1900
Connection ~ 1850 1900
Wire Wire Line
	1850 1900 1850 1600
Wire Wire Line
	1500 2450 2250 2450
Wire Wire Line
	1500 2000 1500 2700
Connection ~ 1500 2100
Wire Wire Line
	1500 1900 6300 1900
Connection ~ 1500 2450
Connection ~ 2900 3100
Connection ~ 2900 3400
Wire Wire Line
	3150 3100 2900 3100
Wire Wire Line
	3150 3400 2900 3400
Wire Wire Line
	2900 3700 3150 3700
Wire Wire Line
	4050 3100 6300 3100
Wire Wire Line
	4050 3400 6300 3400
Wire Wire Line
	4050 3700 6300 3700
Connection ~ 4200 3100
Connection ~ 4600 3700
Connection ~ 4400 3400
Wire Wire Line
	2250 2450 2250 2300
Connection ~ 5800 2200
Connection ~ 5800 2500
Wire Wire Line
	5800 1900 5800 2800
Connection ~ 5800 1900
Wire Wire Line
	2900 1900 2900 3700
Wire Wire Line
	2900 1900 2950 1900
Connection ~ 2950 1900
Wire Wire Line
	6300 4600 6000 4600
Wire Wire Line
	6000 4600 6000 4800
Wire Wire Line
	6300 4300 5700 4300
Wire Wire Line
	5700 4300 5700 4800
Wire Wire Line
	6300 4000 5400 4000
Wire Wire Line
	5400 4000 5400 4800
Wire Wire Line
	7900 3700 8200 3700
Wire Wire Line
	8200 3700 8200 4800
Wire Wire Line
	7900 3400 8500 3400
Wire Wire Line
	8500 3400 8500 4800
Wire Wire Line
	7900 4000 7900 5300
Connection ~ 7900 4300
Wire Wire Line
	7900 5300 8500 5300
Connection ~ 7900 4600
Connection ~ 8200 5300
Wire Wire Line
	5400 5300 6000 5300
Wire Wire Line
	6000 5300 6000 5200
Connection ~ 5700 5300
Wire Wire Line
	4200 3100 4200 4800
Wire Wire Line
	4400 3400 4400 4800
Wire Wire Line
	4600 3700 4600 4800
$Comp
L GND #PWR?
U 1 1 514D4C7B
P 5700 5600
F 0 "#PWR?" H 5700 5600 30  0001 C CNN
F 1 "GND" H 5700 5530 30  0001 C CNN
F 2 "" H 5700 5600 60  0000 C CNN
F 3 "" H 5700 5600 60  0000 C CNN
	1    5700 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5300 5700 5600
$Comp
L GND #PWR?
U 1 1 514D4CC5
P 8200 5600
F 0 "#PWR?" H 8200 5600 30  0001 C CNN
F 1 "GND" H 8200 5530 30  0001 C CNN
F 2 "" H 8200 5600 60  0000 C CNN
F 3 "" H 8200 5600 60  0000 C CNN
	1    8200 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5300 8200 5600
Wire Wire Line
	7900 3100 7900 2800
Wire Wire Line
	9650 3000 9650 3200
Wire Wire Line
	9650 3200 9400 3200
Wire Wire Line
	7900 2500 7900 1900
Wire Wire Line
	7900 1900 10750 1900
$Comp
L CP1 C?
U 1 1 514D4F0C
P 9400 2100
F 0 "C?" V 9350 1900 50  0000 L CNN
F 1 "10uF" V 9450 1900 50  0000 L CNN
F 2 "~" H 9400 2100 60  0000 C CNN
F 3 "~" H 9400 2100 60  0000 C CNN
	1    9400 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 514D4F12
P 9400 2500
F 0 "#PWR?" H 9400 2500 30  0001 C CNN
F 1 "GND" H 9400 2430 30  0001 C CNN
F 2 "" H 9400 2500 60  0000 C CNN
F 3 "" H 9400 2500 60  0000 C CNN
	1    9400 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2300 9400 2500
Wire Wire Line
	9400 3200 9400 3400
Text HLabel 10750 1900 2    60   Output ~ 0
Vout
$EndSCHEMATC
