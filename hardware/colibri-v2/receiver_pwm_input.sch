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
Sheet 20 22
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
L SN74LVC07APW U?
U 1 1 56197697
P 4750 1550
AR Path="/5618EF39/56197697" Ref="U?"  Part="1" 
AR Path="/56196EB9/56197697" Ref="U?"  Part="1" 
F 0 "U?" H 4800 1750 60  0000 C CNN
F 1 "SN74LVC07APW" H 4800 1250 60  0000 C CNN
F 2 "" H 4750 1550 60  0000 C CNN
F 3 "" H 4750 1550 60  0000 C CNN
	1    4750 1550
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 5619769E
P 6700 1650
F 0 "P?" H 6700 1850 50  0000 C CNN
F 1 "CONN_01X03" V 6800 1650 50  0000 C CNN
F 2 "" H 6700 1650 60  0000 C CNN
F 3 "" H 6700 1650 60  0000 C CNN
	1    6700 1650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 561976A5
P 6350 1450
F 0 "#PWR?" H 6350 1300 50  0001 C CNN
F 1 "+5V" H 6350 1590 50  0000 C CNN
F 2 "" H 6350 1450 60  0000 C CNN
F 3 "" H 6350 1450 60  0000 C CNN
	1    6350 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 561976AB
P 6350 1850
F 0 "#PWR?" H 6350 1600 50  0001 C CNN
F 1 "GND" H 6350 1700 50  0000 C CNN
F 2 "" H 6350 1850 60  0000 C CNN
F 3 "" H 6350 1850 60  0000 C CNN
	1    6350 1850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 561976B1
P 5950 1550
F 0 "R?" V 6030 1550 50  0000 C CNN
F 1 "100" V 5950 1550 50  0000 C CNN
F 2 "" V 5880 1550 30  0000 C CNN
F 3 "" H 5950 1550 30  0000 C CNN
	1    5950 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 1550 5800 1550
Wire Wire Line
	6100 1550 6500 1550
Wire Wire Line
	6350 1450 6350 1650
Wire Wire Line
	6350 1650 6500 1650
Wire Wire Line
	6350 1850 6350 1750
Wire Wire Line
	6350 1750 6500 1750
Text HLabel 3800 1550 0    60   Output ~ 0
RCV_PWM_0
Wire Wire Line
	3800 1550 4300 1550
$Comp
L SN74LVC07APW U?
U 2 1 56197788
P 4750 2550
AR Path="/5618EF39/56197788" Ref="U?"  Part="1" 
AR Path="/56196EB9/56197788" Ref="U?"  Part="2" 
F 0 "U?" H 4800 2750 60  0000 C CNN
F 1 "SN74LVC07APW" H 4800 2250 60  0000 C CNN
F 2 "" H 4750 2550 60  0000 C CNN
F 3 "" H 4750 2550 60  0000 C CNN
	2    4750 2550
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 5619778E
P 6700 2650
F 0 "P?" H 6700 2850 50  0000 C CNN
F 1 "CONN_01X03" V 6800 2650 50  0000 C CNN
F 2 "" H 6700 2650 60  0000 C CNN
F 3 "" H 6700 2650 60  0000 C CNN
	1    6700 2650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 56197794
P 6350 2450
F 0 "#PWR?" H 6350 2300 50  0001 C CNN
F 1 "+5V" H 6350 2590 50  0000 C CNN
F 2 "" H 6350 2450 60  0000 C CNN
F 3 "" H 6350 2450 60  0000 C CNN
	1    6350 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5619779A
P 6350 2850
F 0 "#PWR?" H 6350 2600 50  0001 C CNN
F 1 "GND" H 6350 2700 50  0000 C CNN
F 2 "" H 6350 2850 60  0000 C CNN
F 3 "" H 6350 2850 60  0000 C CNN
	1    6350 2850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 561977A0
P 5950 2550
F 0 "R?" V 6030 2550 50  0000 C CNN
F 1 "100" V 5950 2550 50  0000 C CNN
F 2 "" V 5880 2550 30  0000 C CNN
F 3 "" H 5950 2550 30  0000 C CNN
	1    5950 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 2550 5800 2550
Wire Wire Line
	6100 2550 6500 2550
Wire Wire Line
	6350 2450 6350 2650
Wire Wire Line
	6350 2650 6500 2650
Wire Wire Line
	6350 2850 6350 2750
Wire Wire Line
	6350 2750 6500 2750
Text HLabel 3800 2550 0    60   Output ~ 0
RCV_PWM_1
Wire Wire Line
	3800 2550 4300 2550
$Comp
L SN74LVC07APW U?
U 3 1 561979AC
P 4750 3550
AR Path="/5618EF39/561979AC" Ref="U?"  Part="1" 
AR Path="/56196EB9/561979AC" Ref="U?"  Part="3" 
F 0 "U?" H 4800 3750 60  0000 C CNN
F 1 "SN74LVC07APW" H 4800 3250 60  0000 C CNN
F 2 "" H 4750 3550 60  0000 C CNN
F 3 "" H 4750 3550 60  0000 C CNN
	3    4750 3550
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 561979B2
P 6700 3650
F 0 "P?" H 6700 3850 50  0000 C CNN
F 1 "CONN_01X03" V 6800 3650 50  0000 C CNN
F 2 "" H 6700 3650 60  0000 C CNN
F 3 "" H 6700 3650 60  0000 C CNN
	1    6700 3650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 561979B8
P 6350 3450
F 0 "#PWR?" H 6350 3300 50  0001 C CNN
F 1 "+5V" H 6350 3590 50  0000 C CNN
F 2 "" H 6350 3450 60  0000 C CNN
F 3 "" H 6350 3450 60  0000 C CNN
	1    6350 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 561979BE
P 6350 3850
F 0 "#PWR?" H 6350 3600 50  0001 C CNN
F 1 "GND" H 6350 3700 50  0000 C CNN
F 2 "" H 6350 3850 60  0000 C CNN
F 3 "" H 6350 3850 60  0000 C CNN
	1    6350 3850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 561979C4
P 5950 3550
F 0 "R?" V 6030 3550 50  0000 C CNN
F 1 "100" V 5950 3550 50  0000 C CNN
F 2 "" V 5880 3550 30  0000 C CNN
F 3 "" H 5950 3550 30  0000 C CNN
	1    5950 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 3550 5800 3550
Wire Wire Line
	6100 3550 6500 3550
Wire Wire Line
	6350 3450 6350 3650
Wire Wire Line
	6350 3650 6500 3650
Wire Wire Line
	6350 3850 6350 3750
Wire Wire Line
	6350 3750 6500 3750
Text HLabel 3800 3550 0    60   Output ~ 0
RCV_PWM_2
Wire Wire Line
	3800 3550 4300 3550
$Comp
L SN74LVC07APW U?
U 4 1 561979D2
P 4750 4550
AR Path="/5618EF39/561979D2" Ref="U?"  Part="1" 
AR Path="/56196EB9/561979D2" Ref="U?"  Part="4" 
F 0 "U?" H 4800 4750 60  0000 C CNN
F 1 "SN74LVC07APW" H 4800 4250 60  0000 C CNN
F 2 "" H 4750 4550 60  0000 C CNN
F 3 "" H 4750 4550 60  0000 C CNN
	4    4750 4550
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 561979D8
P 6700 4650
F 0 "P?" H 6700 4850 50  0000 C CNN
F 1 "CONN_01X03" V 6800 4650 50  0000 C CNN
F 2 "" H 6700 4650 60  0000 C CNN
F 3 "" H 6700 4650 60  0000 C CNN
	1    6700 4650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 561979DE
P 6350 4450
F 0 "#PWR?" H 6350 4300 50  0001 C CNN
F 1 "+5V" H 6350 4590 50  0000 C CNN
F 2 "" H 6350 4450 60  0000 C CNN
F 3 "" H 6350 4450 60  0000 C CNN
	1    6350 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 561979E4
P 6350 4850
F 0 "#PWR?" H 6350 4600 50  0001 C CNN
F 1 "GND" H 6350 4700 50  0000 C CNN
F 2 "" H 6350 4850 60  0000 C CNN
F 3 "" H 6350 4850 60  0000 C CNN
	1    6350 4850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 561979EA
P 5950 4550
F 0 "R?" V 6030 4550 50  0000 C CNN
F 1 "100" V 5950 4550 50  0000 C CNN
F 2 "" V 5880 4550 30  0000 C CNN
F 3 "" H 5950 4550 30  0000 C CNN
	1    5950 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 4550 5800 4550
Wire Wire Line
	6100 4550 6500 4550
Wire Wire Line
	6350 4450 6350 4650
Wire Wire Line
	6350 4650 6500 4650
Wire Wire Line
	6350 4850 6350 4750
Wire Wire Line
	6350 4750 6500 4750
Text HLabel 3800 4550 0    60   Output ~ 0
RCV_PWM_3
Wire Wire Line
	3800 4550 4300 4550
$Comp
L SN74LVC07APW U?
U 7 1 56198271
P 4750 6550
F 0 "U?" H 4800 6750 60  0000 C CNN
F 1 "SN74LVC07APW" H 4800 6250 60  0000 C CNN
F 2 "" H 4750 6550 60  0000 C CNN
F 3 "" H 4750 6550 60  0000 C CNN
	7    4750 6550
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56198278
P 5400 6850
F 0 "#PWR?" H 5400 6600 50  0001 C CNN
F 1 "GND" H 5400 6700 50  0000 C CNN
F 2 "" H 5400 6850 60  0000 C CNN
F 3 "" H 5400 6850 60  0000 C CNN
	1    5400 6850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5200 6650 5400 6650
Wire Wire Line
	5400 6650 5400 6850
$Comp
L +3V3 #PWR?
U 1 1 56198280
P 5400 6300
F 0 "#PWR?" H 5400 6150 50  0001 C CNN
F 1 "+3V3" H 5400 6440 50  0000 C CNN
F 2 "" H 5400 6300 60  0000 C CNN
F 3 "" H 5400 6300 60  0000 C CNN
	1    5400 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 6300 5400 6450
Wire Wire Line
	5600 6450 5200 6450
$Comp
L GND #PWR?
U 1 1 56198288
P 6150 6450
F 0 "#PWR?" H 6150 6200 50  0001 C CNN
F 1 "GND" H 6150 6300 50  0000 C CNN
F 2 "" H 6150 6450 60  0000 C CNN
F 3 "" H 6150 6450 60  0000 C CNN
	1    6150 6450
	0    -1   1    0   
$EndComp
Connection ~ 5400 6450
Wire Wire Line
	5900 6450 6150 6450
$Comp
L C C?
U 1 1 56198290
P 5750 6450
F 0 "C?" V 5700 6500 50  0000 L CNN
F 1 "100n/50V" V 5900 6250 50  0000 L CNN
F 2 "" H 5788 6300 30  0000 C CNN
F 3 "" H 5750 6450 60  0000 C CNN
	1    5750 6450
	0    -1   1    0   
$EndComp
$Comp
L SN74LVC07APW U?
U 5 1 5619865A
P 4750 5550
AR Path="/5618EF39/5619865A" Ref="U?"  Part="1" 
AR Path="/56196EB9/5619865A" Ref="U?"  Part="5" 
F 0 "U?" H 4800 5750 60  0000 C CNN
F 1 "SN74LVC07APW" H 4800 5250 60  0000 C CNN
F 2 "" H 4750 5550 60  0000 C CNN
F 3 "" H 4750 5550 60  0000 C CNN
	5    4750 5550
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 56198660
P 6700 5650
F 0 "P?" H 6700 5850 50  0000 C CNN
F 1 "CONN_01X03" V 6800 5650 50  0000 C CNN
F 2 "" H 6700 5650 60  0000 C CNN
F 3 "" H 6700 5650 60  0000 C CNN
	1    6700 5650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 56198666
P 6350 5450
F 0 "#PWR?" H 6350 5300 50  0001 C CNN
F 1 "+5V" H 6350 5590 50  0000 C CNN
F 2 "" H 6350 5450 60  0000 C CNN
F 3 "" H 6350 5450 60  0000 C CNN
	1    6350 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5619866C
P 6350 5850
F 0 "#PWR?" H 6350 5600 50  0001 C CNN
F 1 "GND" H 6350 5700 50  0000 C CNN
F 2 "" H 6350 5850 60  0000 C CNN
F 3 "" H 6350 5850 60  0000 C CNN
	1    6350 5850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 56198672
P 5950 5550
F 0 "R?" V 6030 5550 50  0000 C CNN
F 1 "100" V 5950 5550 50  0000 C CNN
F 2 "" V 5880 5550 30  0000 C CNN
F 3 "" H 5950 5550 30  0000 C CNN
	1    5950 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 5550 5800 5550
Wire Wire Line
	6100 5550 6500 5550
Wire Wire Line
	6350 5450 6350 5650
Wire Wire Line
	6350 5650 6500 5650
Wire Wire Line
	6350 5850 6350 5750
Wire Wire Line
	6350 5750 6500 5750
Text HLabel 3800 5550 0    60   Output ~ 0
RCV_PWM_4
Wire Wire Line
	3800 5550 4300 5550
$EndSCHEMATC
