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
Sheet 19 28
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
L RET_PNP_SMT Q14
U 1 1 567A4E4B
P 4500 2050
F 0 "Q14" H 4600 2050 50  0000 C CNN
F 1 "PDTA123JU" H 4150 1950 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-323" H 4500 1760 30  0001 C CNN
F 3 "" V 4580 2050 30  0000 C CNN
F 4 "SOT323" H 4500 1800 30  0001 C CNN "SMT"
F 5 "8736847" H 4500 1720 30  0001 C CNN "Part"
F 6 "Farnell" H 4500 1680 30  0001 C CNN "Provider"
	1    4500 2050
	1    0    0    1   
$EndComp
$Comp
L R_SMT R129
U 1 1 567A53B0
P 4550 2950
F 0 "R129" V 4620 2950 50  0000 C CNN
F 1 "100K/1%" V 4480 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 4700 2950 30  0001 C CNN
F 3 "" V 4630 2950 30  0000 C CNN
F 4 "0402" V 4550 2950 20  0000 C CNN "SMT"
F 5 "1469671" V 4750 2950 30  0001 C CNN "Part"
F 6 "Farnell" V 4800 2950 30  0001 C CNN "Provider"
	1    4550 2950
	-1   0    0    1   
$EndComp
$Comp
L NTZD3155C U15
U 1 1 567A4FE9
P 5900 2600
F 0 "U15" H 6100 3150 60  0000 C CNN
F 1 "NTZD3155C" H 5900 2050 60  0000 C CNN
F 2 "" H 5900 2600 60  0001 C CNN
F 3 "" H 5900 2600 60  0000 C CNN
	1    5900 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0180
U 1 1 567A50C7
P 5200 2200
F 0 "#PWR0180" H 5200 1950 50  0001 C CNN
F 1 "GND" H 5200 2050 50  0000 C CNN
F 2 "" H 5200 2200 50  0000 C CNN
F 3 "" H 5200 2200 50  0000 C CNN
	1    5200 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2250 4550 2800
$Comp
L +3V3 #PWR0181
U 1 1 567A7B8E
P 4550 1300
F 0 "#PWR0181" H 4550 1150 50  0001 C CNN
F 1 "+3V3" H 4550 1440 50  0000 C CNN
F 2 "" H 4550 1300 50  0000 C CNN
F 3 "" H 4550 1300 50  0000 C CNN
	1    4550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1300 4550 1850
Wire Wire Line
	4550 2600 5350 2600
$Comp
L GND #PWR0182
U 1 1 567A7E88
P 4550 3300
F 0 "#PWR0182" H 4550 3050 50  0001 C CNN
F 1 "GND" H 4550 3150 50  0000 C CNN
F 2 "" H 4550 3300 50  0000 C CNN
F 3 "" H 4550 3300 50  0000 C CNN
	1    4550 3300
	1    0    0    -1  
$EndComp
Connection ~ 4550 2600
Wire Wire Line
	4550 3100 4550 3300
Wire Wire Line
	5200 2200 5350 2200
Wire Wire Line
	6450 2200 6700 2200
Wire Wire Line
	6700 2050 6700 2600
Wire Wire Line
	6700 2600 6450 2600
$Comp
L R_SMT R135
U 1 1 567A87DD
P 6700 1900
F 0 "R135" V 6770 1900 50  0000 C CNN
F 1 "47K/1%" V 6630 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 6850 1900 30  0001 C CNN
F 3 "" V 6780 1900 30  0000 C CNN
F 4 "0402" V 6700 1900 20  0000 C CNN "SMT"
F 5 "1358087" V 6900 1900 30  0001 C CNN "Part"
F 6 "Farnell" V 6950 1900 30  0001 C CNN "Provider"
	1    6700 1900
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR0183
U 1 1 567A88AC
P 6700 1300
F 0 "#PWR0183" H 6700 1150 50  0001 C CNN
F 1 "+5V" H 6700 1440 50  0000 C CNN
F 2 "" H 6700 1300 50  0000 C CNN
F 3 "" H 6700 1300 50  0000 C CNN
	1    6700 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1300 6700 1750
Connection ~ 6700 2200
$Comp
L +5V #PWR0184
U 1 1 567A8908
P 7000 1300
F 0 "#PWR0184" H 7000 1150 50  0001 C CNN
F 1 "+5V" H 7000 1440 50  0000 C CNN
F 2 "" H 7000 1300 50  0000 C CNN
F 3 "" H 7000 1300 50  0000 C CNN
	1    7000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1300 7000 3000
Wire Wire Line
	7000 3000 6450 3000
$Comp
L R_SMT R133
U 1 1 567AA0B8
P 6650 4500
F 0 "R133" V 6600 4700 50  0000 C CNN
F 1 "22R/5%" V 6600 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6800 4500 30  0001 C CNN
F 3 "" V 6730 4500 30  0000 C CNN
F 4 "0603" V 6650 4500 20  0000 C CNN "SMT"
F 5 "9331891" V 6850 4500 30  0001 C CNN "Part"
F 6 "Farnell" V 6900 4500 30  0001 C CNN "Provider"
	1    6650 4500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0185
U 1 1 567AA0CD
P 5600 5500
F 0 "#PWR0185" H 5600 5250 50  0001 C CNN
F 1 "GND" H 5600 5350 50  0000 C CNN
F 2 "" H 5600 5500 60  0000 C CNN
F 3 "" H 5600 5500 60  0000 C CNN
	1    5600 5500
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C61
U 1 1 567AA0D6
P 5600 5150
F 0 "C61" H 5625 5250 50  0000 L CNN
F 1 "47pF/100V/C0G" V 5450 4800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5630 5000 30  0001 L CNN
F 3 "" H 5625 5250 60  0000 L CNN
F 4 "0603" H 5600 5150 20  0000 C CNN "SMT"
F 5 "1813433" H 5630 4960 30  0001 L CNN "Part"
F 6 "Farnell" H 5630 4920 30  0001 L CNN "Provider"
	1    5600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5500 5600 5300
$Comp
L GND #PWR0186
U 1 1 567AA0DE
P 6000 5500
F 0 "#PWR0186" H 6000 5250 50  0001 C CNN
F 1 "GND" H 6000 5350 50  0000 C CNN
F 2 "" H 6000 5500 60  0000 C CNN
F 3 "" H 6000 5500 60  0000 C CNN
	1    6000 5500
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C62
U 1 1 567AA0E7
P 6000 5150
F 0 "C62" H 6025 5250 50  0000 L CNN
F 1 "47pF/100V/C0G" V 5850 4800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6030 5000 30  0001 L CNN
F 3 "" H 6025 5250 60  0000 L CNN
F 4 "0603" H 6000 5150 20  0000 C CNN "SMT"
F 5 "1813433" H 6030 4960 30  0001 L CNN "Part"
F 6 "Farnell" H 6030 4920 30  0001 L CNN "Provider"
	1    6000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5500 6000 5300
$Comp
L R_SMT R131
U 1 1 567AAE2B
P 6650 4000
F 0 "R131" V 6720 4000 50  0000 C CNN
F 1 "1k1/5%" V 6580 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6800 4000 30  0001 C CNN
F 3 "" V 6730 4000 30  0000 C CNN
F 4 "0603" V 6650 4000 20  0000 C CNN "SMT"
F 5 "9330445" V 6850 4000 30  0001 C CNN "Part"
F 6 "Farnell" V 6900 4000 30  0001 C CNN "Provider"
	1    6650 4000
	0    1    1    0   
$EndComp
$Comp
L LED_SMT DL10
U 1 1 567AAE35
P 7050 4000
F 0 "DL10" H 7050 4100 50  0000 C CNN
F 1 "GREEN" H 7050 3900 50  0000 C CNN
F 2 "LEDs:LED-0603" H 7050 3850 30  0001 C CNN
F 3 "" H 7050 4000 60  0000 C CNN
F 4 "0603" H 6935 3980 30  0000 C CNN "SMT"
F 5 "2322070" H 7050 3800 30  0001 C CNN "Part"
F 6 "Farnell" H 7050 3750 30  0001 C CNN "Provider"
	1    7050 4000
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR0187
U 1 1 567AAE3C
P 7300 4000
F 0 "#PWR0187" H 7300 3750 50  0001 C CNN
F 1 "GND" H 7300 3850 50  0000 C CNN
F 2 "" H 7300 4000 60  0000 C CNN
F 3 "" H 7300 4000 60  0000 C CNN
	1    7300 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 4000 6850 4000
Wire Wire Line
	7250 4000 7300 4000
Wire Wire Line
	6500 4000 5200 4000
Wire Wire Line
	5200 3000 5200 4300
Wire Wire Line
	5200 3000 5350 3000
Text HLabel 7350 4300 2    60   BiDi ~ 0
USB_INTCONN_VBUS
Text HLabel 7350 4500 2    60   BiDi ~ 0
USB_INTCONN_DM
Text HLabel 7350 4700 2    60   BiDi ~ 0
USB_INTCONN_DP
$Comp
L R_SMT R134
U 1 1 567ABE1C
P 6650 4700
F 0 "R134" V 6600 4900 50  0000 C CNN
F 1 "22R/5%" V 6600 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6800 4700 30  0001 C CNN
F 3 "" V 6730 4700 30  0000 C CNN
F 4 "0603" V 6650 4700 20  0000 C CNN "SMT"
F 5 "9331891" V 6850 4700 30  0001 C CNN "Part"
F 6 "Farnell" V 6900 4700 30  0001 C CNN "Provider"
	1    6650 4700
	0    1    1    0   
$EndComp
$Comp
L R_SMT R132
U 1 1 567ABE57
P 6650 4300
F 0 "R132" V 6600 4500 50  0000 C CNN
F 1 "22R/5%" V 6600 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6800 4300 30  0001 C CNN
F 3 "" V 6730 4300 30  0000 C CNN
F 4 "0603" V 6650 4300 20  0000 C CNN "SMT"
F 5 "9331891" V 6850 4300 30  0001 C CNN "Part"
F 6 "Farnell" V 6900 4300 30  0001 C CNN "Provider"
	1    6650 4300
	0    1    1    0   
$EndComp
$Comp
L R_SMT R130
U 1 1 567ABE95
P 4700 4300
F 0 "R130" V 4650 4500 50  0000 C CNN
F 1 "22R/5%" V 4650 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4850 4300 30  0001 C CNN
F 3 "" V 4780 4300 30  0000 C CNN
F 4 "0603" V 4700 4300 20  0000 C CNN "SMT"
F 5 "9331891" V 4900 4300 30  0001 C CNN "Part"
F 6 "Farnell" V 4950 4300 30  0001 C CNN "Provider"
	1    4700 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 4300 6800 4300
Wire Wire Line
	7350 4500 6800 4500
Wire Wire Line
	7350 4700 6800 4700
Wire Wire Line
	4850 4300 6500 4300
Text Notes 8800 4850 1    120  ~ 24
DEVICE
Text Notes 2100 4850 1    120  ~ 24
HOST
Text HLabel 3250 4300 0    60   BiDi ~ 0
USG_OTG_VBUS
Text HLabel 3250 4500 0    60   BiDi ~ 0
USB_OGT_DM
Text HLabel 3250 4700 0    60   BiDi ~ 0
USB_OTG_DP
Text HLabel 3250 4900 0    60   BiDi ~ 0
USB_OTG_ID
Wire Wire Line
	4550 4300 3250 4300
Wire Wire Line
	3250 4500 6500 4500
Wire Wire Line
	3250 4700 6500 4700
$Comp
L R_SMT R128
U 1 1 567AE976
P 3550 5150
F 0 "R128" V 3620 5150 50  0000 C CNN
F 1 "0R/5%" V 3480 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3700 5150 30  0001 C CNN
F 3 "" V 3630 5150 30  0000 C CNN
F 4 "0603" V 3550 5150 20  0000 C CNN "SMT"
F 5 "1469739" V 3750 5150 30  0001 C CNN "Part"
F 6 "Farnell" V 3800 5150 30  0001 C CNN "Provider"
	1    3550 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 4900 3550 4900
Wire Wire Line
	3550 4900 3550 5000
$Comp
L GND #PWR0188
U 1 1 567AEA7D
P 3550 5500
F 0 "#PWR0188" H 3550 5250 50  0001 C CNN
F 1 "GND" H 3550 5350 50  0000 C CNN
F 2 "" H 3550 5500 60  0000 C CNN
F 3 "" H 3550 5500 60  0000 C CNN
	1    3550 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5300 3550 5500
Wire Wire Line
	6000 5000 6000 4500
Connection ~ 6000 4500
Wire Wire Line
	5600 5000 5600 4700
Connection ~ 5600 4700
Connection ~ 5200 4300
Connection ~ 5200 4000
Text HLabel 3250 2050 0    60   Input ~ 0
USB_OTG_PWR_EN#
Wire Wire Line
	3250 2050 4300 2050
Text HLabel 3250 1850 0    60   Output ~ 0
USB_OTG_OC
$Comp
L +3V3 #PWR0189
U 1 1 567B076B
P 3450 1300
F 0 "#PWR0189" H 3450 1150 50  0001 C CNN
F 1 "+3V3" H 3450 1440 50  0000 C CNN
F 2 "" H 3450 1300 60  0000 C CNN
F 3 "" H 3450 1300 60  0000 C CNN
	1    3450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1300 3450 1400
$Comp
L R_SMT R127
U 1 1 567B0775
P 3450 1550
F 0 "R127" V 3520 1550 50  0000 C CNN
F 1 "10K/5%" V 3380 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3600 1550 30  0001 C CNN
F 3 "" V 3530 1550 30  0000 C CNN
F 4 "0603" V 3450 1550 20  0000 C CNN "SMT"
F 5 "9331700" V 3650 1550 30  0001 C CNN "Part"
F 6 "Farnell" V 3700 1550 30  0001 C CNN "Provider"
	1    3450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1700 3450 1850
Wire Wire Line
	3450 1850 3250 1850
$EndSCHEMATC
