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
Sheet 16 28
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Entry Wire Line
	3300 800  3400 900 
Entry Wire Line
	3300 900  3400 1000
Entry Wire Line
	3300 1000 3400 1100
Entry Wire Line
	3300 1100 3400 1200
Entry Wire Line
	3300 1200 3400 1300
Entry Wire Line
	3300 1300 3400 1400
Entry Wire Line
	3300 1400 3400 1500
Entry Wire Line
	3300 1500 3400 1600
Entry Wire Line
	3300 1700 3400 1800
Entry Wire Line
	3300 1800 3400 1900
Entry Wire Line
	3300 1900 3400 2000
Entry Wire Line
	3300 2000 3400 2100
Entry Wire Line
	3300 2100 3400 2200
Entry Wire Line
	3300 2200 3400 2300
Entry Wire Line
	3300 2300 3400 2400
Entry Wire Line
	3300 2400 3400 2500
Entry Wire Line
	3300 2600 3400 2700
Entry Wire Line
	3300 2700 3400 2800
Entry Wire Line
	3300 2800 3400 2900
Entry Wire Line
	3300 2900 3400 3000
Entry Wire Line
	3300 3000 3400 3100
Entry Wire Line
	3300 3100 3400 3200
Entry Wire Line
	3300 3200 3400 3300
Entry Wire Line
	3300 3300 3400 3400
Text HLabel 1800 750  0    60   Input ~ 0
DISP0_DAT[0..23]
Text Label 3550 900  0    60   ~ 0
DISP0_DAT0
Text Label 3550 1000 0    60   ~ 0
DISP0_DAT1
Text Label 3550 1100 0    60   ~ 0
DISP0_DAT2
Text Label 3550 1200 0    60   ~ 0
DISP0_DAT3
Text Label 3550 1300 0    60   ~ 0
DISP0_DAT4
Text Label 3550 1400 0    60   ~ 0
DISP0_DAT5
Text Label 3550 1500 0    60   ~ 0
DISP0_DAT6
Text Label 3550 1600 0    60   ~ 0
DISP0_DAT7
Text Label 3550 1800 0    60   ~ 0
DISP0_DAT8
Text Label 3550 1900 0    60   ~ 0
DISP0_DAT9
Text Label 3550 2000 0    60   ~ 0
DISP0_DAT10
Text Label 3550 2100 0    60   ~ 0
DISP0_DAT11
Text Label 3550 2200 0    60   ~ 0
DISP0_DAT12
Text Label 3550 2300 0    60   ~ 0
DISP0_DAT13
Text Label 3550 2400 0    60   ~ 0
DISP0_DAT14
Text Label 3550 2500 0    60   ~ 0
DISP0_DAT15
Text Label 3550 2700 0    60   ~ 0
DISP0_DAT16
Text Label 3550 2800 0    60   ~ 0
DISP0_DAT17
Text Label 3550 2900 0    60   ~ 0
DISP0_DAT18
Text Label 3550 3000 0    60   ~ 0
DISP0_DAT19
Text Label 3550 3100 0    60   ~ 0
DISP0_DAT20
Text Label 3550 3200 0    60   ~ 0
DISP0_DAT21
Text Label 3550 3300 0    60   ~ 0
DISP0_DAT22
Text Label 3550 3400 0    60   ~ 0
DISP0_DAT23
$Comp
L Wurth-68715014522-LCD CN6
U 1 1 561CAF87
P 5100 3550
F 0 "CN6" H 5300 6350 60  0000 C CNN
F 1 "Wurth-68715014522-LCD" V 5500 1500 60  0000 C CNN
F 2 "Sigmadrone:68715014522" H 5100 3900 60  0001 C CNN
F 3 "" H 5100 3900 60  0000 C CNN
	1    5100 3550
	1    0    0    -1  
$EndComp
Text HLabel 1800 3600 0    60   Input ~ 0
DISP0_DRDY
Text HLabel 1800 3700 0    60   Input ~ 0
DISP0_HSYNC
Text HLabel 1800 3800 0    60   Input ~ 0
DISP0_VSYNC
Text HLabel 1800 4000 0    60   Input ~ 0
DISP0_CLK
$Comp
L TSC2046IPWR U12
U 1 1 561E5475
P 7850 5000
F 0 "U12" H 8100 5500 60  0000 C CNN
F 1 "TSC2046IPWR" H 7850 4500 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 7850 4350 60  0001 C CNN
F 3 "" H 7850 4350 60  0000 C CNN
	1    7850 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0154
U 1 1 561E55DA
P 7000 6100
F 0 "#PWR0154" H 7000 5850 50  0001 C CNN
F 1 "GND" H 7000 5950 50  0000 C CNN
F 2 "" H 7000 6100 60  0000 C CNN
F 3 "" H 7000 6100 60  0000 C CNN
	1    7000 6100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0155
U 1 1 561E5805
P 7000 4400
F 0 "#PWR0155" H 7000 4250 50  0001 C CNN
F 1 "+3V3" H 7000 4540 50  0000 C CNN
F 2 "" H 7000 4400 60  0000 C CNN
F 3 "" H 7000 4400 60  0000 C CNN
	1    7000 4400
	1    0    0    -1  
$EndComp
Text Label 6400 4850 0    60   ~ 0
TOUCH_X1
Text Label 6400 4950 0    60   ~ 0
TOUCH_Y1
Text Label 6400 5050 0    60   ~ 0
TOUCH_X2
Text Label 6400 5150 0    60   ~ 0
TOUCH_Y2
$Comp
L GND #PWR0156
U 1 1 561E5D84
P 9300 6100
F 0 "#PWR0156" H 9300 5850 50  0001 C CNN
F 1 "GND" H 9300 5950 50  0000 C CNN
F 2 "" H 9300 6100 60  0000 C CNN
F 3 "" H 9300 6100 60  0000 C CNN
	1    9300 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0157
U 1 1 561E5DA7
P 9800 6100
F 0 "#PWR0157" H 9800 5850 50  0001 C CNN
F 1 "GND" H 9800 5950 50  0000 C CNN
F 2 "" H 9800 6100 60  0000 C CNN
F 3 "" H 9800 6100 60  0000 C CNN
	1    9800 6100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0158
U 1 1 561E5EE9
P 9800 3650
F 0 "#PWR0158" H 9800 3500 50  0001 C CNN
F 1 "+3V3" H 9800 3790 50  0000 C CNN
F 2 "" H 9800 3650 60  0000 C CNN
F 3 "" H 9800 3650 60  0000 C CNN
	1    9800 3650
	1    0    0    -1  
$EndComp
Text HLabel 10350 4650 2    60   Input ~ 0
TP_SPI_CLK
Text HLabel 10350 4750 2    60   Input ~ 0
TP_SPI_CS
Text HLabel 10350 4850 2    60   Input ~ 0
TP_SPI_MOSI
Text HLabel 10350 4950 2    60   Output ~ 0
TP_SPI_MISO
Text HLabel 10350 5150 2    60   Output ~ 0
TP_PENIRQ
NoConn ~ 7300 5250
Text Label 3550 4300 0    60   ~ 0
TOUCH_X1
Text Label 3550 4500 0    60   ~ 0
TOUCH_Y1
Text Label 3550 4400 0    60   ~ 0
TOUCH_X2
Text Label 3550 4600 0    60   ~ 0
TOUCH_Y2
$Comp
L +3V3 #PWR0159
U 1 1 561F4483
P 3700 5600
F 0 "#PWR0159" H 3700 5450 50  0001 C CNN
F 1 "+3V3" H 3700 5740 50  0000 C CNN
F 2 "" H 3700 5600 60  0000 C CNN
F 3 "" H 3700 5600 60  0000 C CNN
	1    3700 5600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR0160
U 1 1 561F451C
P 3700 5900
F 0 "#PWR0160" H 3700 5750 50  0001 C CNN
F 1 "+5V" H 3700 6040 50  0000 C CNN
F 2 "" H 3700 5900 60  0000 C CNN
F 3 "" H 3700 5900 60  0000 C CNN
	1    3700 5900
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR0161
U 1 1 561F49E1
P 3750 6750
F 0 "#PWR0161" H 3750 6600 50  0001 C CNN
F 1 "+3V3" H 3750 6890 50  0000 C CNN
F 2 "" H 3750 6750 60  0000 C CNN
F 3 "" H 3750 6750 60  0000 C CNN
	1    3750 6750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR0162
U 1 1 561F4D74
P 4050 6750
F 0 "#PWR0162" H 4050 6500 50  0001 C CNN
F 1 "GND" H 4050 6600 50  0000 C CNN
F 2 "" H 4050 6750 60  0000 C CNN
F 3 "" H 4050 6750 60  0000 C CNN
	1    4050 6750
	1    0    0    -1  
$EndComp
Text HLabel 1800 6100 0    60   Input ~ 0
DISP0_PWREN
Text HLabel 1800 4800 0    60   Input ~ 0
DISP0_SPI_CLK
Text HLabel 1800 4900 0    60   Input ~ 0
DISP0_SPI_MOSI
Text HLabel 1800 5000 0    60   Output ~ 0
DISP0_SPI_MISO
Text HLabel 1800 5100 0    60   Input ~ 0
DISP0_SPI_CS
Text HLabel 1800 5200 0    60   Input ~ 0
DISP0_I2C_CLK
Text HLabel 1800 5300 0    60   BiDi ~ 0
DISP0_I2C_SDA
$Comp
L GND #PWR0163
U 1 1 561F5E25
P 3700 5400
F 0 "#PWR0163" H 3700 5150 50  0001 C CNN
F 1 "GND" H 3700 5250 50  0000 C CNN
F 2 "" H 3700 5400 60  0000 C CNN
F 3 "" H 3700 5400 60  0000 C CNN
	1    3700 5400
	0    1    1    0   
$EndComp
Text HLabel 1800 6000 0    60   Input ~ 0
DISP0_RESET
$Comp
L +3V3 #PWR0164
U 1 1 561F7FD1
P 6400 800
F 0 "#PWR0164" H 6400 650 50  0001 C CNN
F 1 "+3V3" H 6400 940 50  0000 C CNN
F 2 "" H 6400 800 60  0000 C CNN
F 3 "" H 6400 800 60  0000 C CNN
	1    6400 800 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0165
U 1 1 561F807C
P 6400 1850
F 0 "#PWR0165" H 6400 1600 50  0001 C CNN
F 1 "GND" H 6400 1700 50  0000 C CNN
F 2 "" H 6400 1850 60  0000 C CNN
F 3 "" H 6400 1850 60  0000 C CNN
	1    6400 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0166
U 1 1 561F88DD
P 6400 3400
F 0 "#PWR0166" H 6400 3150 50  0001 C CNN
F 1 "GND" H 6400 3250 50  0000 C CNN
F 2 "" H 6400 3400 60  0000 C CNN
F 3 "" H 6400 3400 60  0000 C CNN
	1    6400 3400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0167
U 1 1 561F8ABA
P 6400 2350
F 0 "#PWR0167" H 6400 2200 50  0001 C CNN
F 1 "+5V" H 6400 2490 50  0000 C CNN
F 2 "" H 6400 2350 60  0000 C CNN
F 3 "" H 6400 2350 60  0000 C CNN
	1    6400 2350
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0168
U 1 1 561F8EEE
P 9250 800
F 0 "#PWR0168" H 9250 650 50  0001 C CNN
F 1 "+3V3" H 9250 940 50  0000 C CNN
F 2 "" H 9250 800 60  0000 C CNN
F 3 "" H 9250 800 60  0000 C CNN
	1    9250 800 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0169
U 1 1 561F8EF4
P 9250 1850
F 0 "#PWR0169" H 9250 1600 50  0001 C CNN
F 1 "GND" H 9250 1700 50  0000 C CNN
F 2 "" H 9250 1850 60  0000 C CNN
F 3 "" H 9250 1850 60  0000 C CNN
	1    9250 1850
	1    0    0    -1  
$EndComp
Text Notes 4800 7200 0    120  ~ 24
mars board_V1.0.pdf\npage 12 (LCD PORT)
Text HLabel 1800 3500 0    60   Input ~ 0
DISP0_CNTRST
Text Notes 6800 4100 0    120  ~ 24
Research for \ncapacitive controller???
$Comp
L GND #PWR0170
U 1 1 5624CCFB
P 1800 3300
F 0 "#PWR0170" H 1800 3050 50  0001 C CNN
F 1 "GND" H 1800 3150 50  0000 C CNN
F 2 "" H 1800 3300 60  0000 C CNN
F 3 "" H 1800 3300 60  0000 C CNN
	1    1800 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 900  3400 900 
Wire Wire Line
	4550 1000 3400 1000
Wire Wire Line
	4550 1100 3400 1100
Wire Wire Line
	4550 1200 3400 1200
Wire Wire Line
	4550 1300 3400 1300
Wire Wire Line
	4550 1400 3400 1400
Wire Wire Line
	4550 1500 3400 1500
Wire Wire Line
	4550 1600 3400 1600
Wire Wire Line
	4550 1800 3400 1800
Wire Wire Line
	4550 1900 3400 1900
Wire Wire Line
	4550 2000 3400 2000
Wire Wire Line
	4550 2100 3400 2100
Wire Wire Line
	4550 2200 3400 2200
Wire Wire Line
	4550 2300 3400 2300
Wire Wire Line
	4550 2400 3400 2400
Wire Wire Line
	4550 2500 3400 2500
Wire Wire Line
	4550 2700 3400 2700
Wire Wire Line
	4550 2800 3400 2800
Wire Wire Line
	4550 2900 3400 2900
Wire Wire Line
	4550 3000 3400 3000
Wire Wire Line
	4550 3100 3400 3100
Wire Wire Line
	4550 3200 3400 3200
Wire Wire Line
	4550 3300 3400 3300
Wire Wire Line
	4550 3400 3400 3400
Wire Bus Line
	3300 750  3300 3300
Wire Bus Line
	3300 750  1800 750 
Wire Wire Line
	2650 3600 4550 3600
Wire Wire Line
	2650 3700 4550 3700
Wire Wire Line
	2650 3800 4550 3800
Wire Wire Line
	2650 4000 4550 4000
Wire Wire Line
	1800 3600 2350 3600
Wire Wire Line
	1800 3700 2350 3700
Wire Wire Line
	1800 3800 2350 3800
Wire Wire Line
	1800 4000 2350 4000
Wire Wire Line
	7000 4400 7000 4750
Wire Wire Line
	7000 4650 7300 4650
Wire Wire Line
	7300 5350 7000 5350
Wire Wire Line
	7000 5350 7000 6100
Wire Wire Line
	7000 4750 7300 4750
Connection ~ 7000 4650
Wire Wire Line
	6400 4850 7300 4850
Wire Wire Line
	6400 4950 7300 4950
Wire Wire Line
	6400 5050 7300 5050
Wire Wire Line
	6400 5150 7300 5150
Wire Wire Line
	9300 6100 9300 6000
Wire Wire Line
	9800 6100 9800 6000
Wire Wire Line
	8400 5350 9300 5350
Wire Wire Line
	9300 5350 9300 5700
Wire Wire Line
	9800 5250 8400 5250
Wire Wire Line
	9800 3650 9800 5700
Wire Wire Line
	8800 4650 8400 4650
Wire Wire Line
	8800 4750 8400 4750
Wire Wire Line
	8800 4850 8400 4850
Wire Wire Line
	8800 4950 8400 4950
Wire Wire Line
	9100 4650 10350 4650
Wire Wire Line
	9100 4750 10350 4750
Wire Wire Line
	9100 4850 10350 4850
Wire Wire Line
	9100 4950 10350 4950
Wire Wire Line
	8400 5150 10350 5150
Wire Wire Line
	9200 4150 9200 4650
Connection ~ 9200 4650
Wire Wire Line
	9300 4150 9300 4750
Connection ~ 9300 4750
Wire Wire Line
	9400 4150 9400 4850
Connection ~ 9400 4850
Wire Wire Line
	9500 4150 9500 4950
Connection ~ 9500 4950
Wire Wire Line
	9600 4150 9600 5050
Wire Wire Line
	8400 5050 10350 5050
Wire Wire Line
	9700 4150 9700 5150
Connection ~ 9700 5150
Connection ~ 9800 5250
Wire Wire Line
	9700 3750 9700 3850
Wire Wire Line
	9200 3750 9800 3750
Wire Wire Line
	9200 3750 9200 3850
Wire Wire Line
	9600 3850 9600 3750
Connection ~ 9600 3750
Wire Wire Line
	9500 3850 9500 3750
Connection ~ 9500 3750
Wire Wire Line
	9400 3850 9400 3750
Connection ~ 9400 3750
Wire Wire Line
	9300 3850 9300 3750
Connection ~ 9300 3750
Connection ~ 9800 3750
Connection ~ 9700 3750
Wire Wire Line
	3550 4300 4550 4300
Wire Wire Line
	3550 4400 4550 4400
Wire Wire Line
	3550 4500 4550 4500
Wire Wire Line
	3550 4600 4550 4600
Wire Wire Line
	2650 4800 4550 4800
Wire Wire Line
	2650 4900 4550 4900
Wire Wire Line
	2650 5000 4550 5000
Wire Wire Line
	2650 5100 4550 5100
Wire Wire Line
	2650 5200 4550 5200
Wire Wire Line
	2650 5300 4550 5300
Wire Wire Line
	3700 5600 4550 5600
Wire Wire Line
	4550 5700 4350 5700
Wire Wire Line
	4350 5700 4350 5600
Connection ~ 4350 5600
Wire Wire Line
	3700 5900 4550 5900
Wire Wire Line
	4550 5800 4350 5800
Wire Wire Line
	4350 5800 4350 5900
Connection ~ 4350 5900
Wire Wire Line
	4050 6600 4050 6750
Wire Wire Line
	1800 4800 2350 4800
Wire Wire Line
	1800 4900 2350 4900
Wire Wire Line
	1800 5000 2350 5000
Wire Wire Line
	1800 5100 2350 5100
Wire Wire Line
	1800 5200 2350 5200
Wire Wire Line
	1800 5300 2350 5300
Wire Wire Line
	3700 5400 4550 5400
Wire Wire Line
	4350 4100 4550 4100
Wire Wire Line
	4350 1700 4350 5400
Connection ~ 4350 5400
Connection ~ 4350 4100
Connection ~ 4350 3900
Wire Wire Line
	4550 2600 4350 2600
Wire Wire Line
	4550 1700 4350 1700
Connection ~ 4350 2600
Wire Wire Line
	3750 6600 3750 6750
Wire Wire Line
	2650 6000 4550 6000
Wire Wire Line
	2650 6100 4550 6100
Wire Wire Line
	1800 6000 2350 6000
Wire Wire Line
	1800 6100 2350 6100
Wire Wire Line
	4050 6300 4050 6100
Connection ~ 4050 6100
Wire Wire Line
	3750 6300 3750 6000
Connection ~ 3750 6000
Wire Wire Line
	7600 950  7600 1200
Wire Wire Line
	6400 950  8200 950 
Wire Wire Line
	6400 800  6400 1200
Wire Wire Line
	6400 1500 6400 1850
Wire Wire Line
	6400 1700 8200 1700
Wire Wire Line
	7600 1700 7600 1500
Wire Wire Line
	7000 1200 7000 950 
Connection ~ 7000 950 
Wire Wire Line
	7000 1500 7000 1700
Connection ~ 7000 1700
Wire Wire Line
	8200 950  8200 1200
Connection ~ 7600 950 
Wire Wire Line
	8200 1700 8200 1500
Connection ~ 7600 1700
Connection ~ 6400 950 
Connection ~ 6400 1700
Wire Wire Line
	7600 2500 7600 2750
Wire Wire Line
	6400 2500 8200 2500
Wire Wire Line
	6400 2350 6400 2750
Wire Wire Line
	6400 3050 6400 3400
Wire Wire Line
	6400 3250 8200 3250
Wire Wire Line
	7600 3250 7600 3050
Wire Wire Line
	7000 2750 7000 2500
Connection ~ 7000 2500
Wire Wire Line
	7000 3050 7000 3250
Connection ~ 7000 3250
Wire Wire Line
	8200 2500 8200 2750
Connection ~ 7600 2500
Wire Wire Line
	8200 3250 8200 3050
Connection ~ 7600 3250
Connection ~ 6400 2500
Connection ~ 6400 3250
Wire Wire Line
	9250 800  9250 1200
Wire Wire Line
	9250 1500 9250 1850
Wire Wire Line
	9850 1200 9850 950 
Wire Wire Line
	9850 1500 9850 1700
Connection ~ 9250 950 
Connection ~ 9250 1700
Wire Wire Line
	9850 950  9250 950 
Wire Wire Line
	9850 1700 9250 1700
Wire Wire Line
	1800 3500 2350 3500
Wire Wire Line
	2650 3500 2900 3500
Wire Wire Line
	2900 3500 2900 3600
Connection ~ 2900 3600
Wire Wire Line
	3100 3400 2650 3400
Wire Wire Line
	2350 3400 2000 3400
Wire Wire Line
	2000 3400 2000 3500
Connection ~ 2000 3500
Wire Wire Line
	4550 3900 4350 3900
Wire Wire Line
	3100 3500 4550 3500
Wire Wire Line
	3100 3300 3100 3500
Wire Wire Line
	2350 3300 1800 3300
Wire Wire Line
	2650 3300 3100 3300
Connection ~ 3100 3400
$Comp
L R_SMT R111
U 1 1 56341610
P 2500 6100
F 0 "R111" V 2450 6300 50  0000 C CNN
F 1 "22R/5%" V 2450 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 6100 30  0001 C CNN
F 3 "" V 2580 6100 30  0000 C CNN
F 4 "0603" V 2500 6100 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 6100 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 6100 30  0001 C CNN "Provider"
	1    2500 6100
	0    1    1    0   
$EndComp
$Comp
L R_SMT R110
U 1 1 56341B0D
P 2500 6000
F 0 "R110" V 2450 6200 50  0000 C CNN
F 1 "22R/5%" V 2450 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 6000 30  0001 C CNN
F 3 "" V 2580 6000 30  0000 C CNN
F 4 "0603" V 2500 6000 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 6000 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 6000 30  0001 C CNN "Provider"
	1    2500 6000
	0    1    1    0   
$EndComp
$Comp
L R_SMT R109
U 1 1 56341B7A
P 2500 5300
F 0 "R109" V 2450 5500 50  0000 C CNN
F 1 "22R/5%" V 2450 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 5300 30  0001 C CNN
F 3 "" V 2580 5300 30  0000 C CNN
F 4 "0603" V 2500 5300 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 5300 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 5300 30  0001 C CNN "Provider"
	1    2500 5300
	0    1    1    0   
$EndComp
$Comp
L R_SMT R108
U 1 1 56341C9E
P 2500 5200
F 0 "R108" V 2450 5400 50  0000 C CNN
F 1 "22R/5%" V 2450 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 5200 30  0001 C CNN
F 3 "" V 2580 5200 30  0000 C CNN
F 4 "0603" V 2500 5200 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 5200 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 5200 30  0001 C CNN "Provider"
	1    2500 5200
	0    1    1    0   
$EndComp
$Comp
L R_SMT R107
U 1 1 56341D11
P 2500 5100
F 0 "R107" V 2450 5300 50  0000 C CNN
F 1 "22R/5%" V 2450 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 5100 30  0001 C CNN
F 3 "" V 2580 5100 30  0000 C CNN
F 4 "0603" V 2500 5100 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 5100 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 5100 30  0001 C CNN "Provider"
	1    2500 5100
	0    1    1    0   
$EndComp
$Comp
L R_SMT R106
U 1 1 56341D87
P 2500 5000
F 0 "R106" V 2450 5200 50  0000 C CNN
F 1 "22R/5%" V 2450 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 5000 30  0001 C CNN
F 3 "" V 2580 5000 30  0000 C CNN
F 4 "0603" V 2500 5000 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 5000 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 5000 30  0001 C CNN "Provider"
	1    2500 5000
	0    1    1    0   
$EndComp
$Comp
L R_SMT R105
U 1 1 56341E00
P 2500 4900
F 0 "R105" V 2450 5100 50  0000 C CNN
F 1 "22R/5%" V 2450 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 4900 30  0001 C CNN
F 3 "" V 2580 4900 30  0000 C CNN
F 4 "0603" V 2500 4900 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 4900 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 4900 30  0001 C CNN "Provider"
	1    2500 4900
	0    1    1    0   
$EndComp
$Comp
L R_SMT R104
U 1 1 56341E7C
P 2500 4800
F 0 "R104" V 2450 5000 50  0000 C CNN
F 1 "22R/5%" V 2450 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 4800 30  0001 C CNN
F 3 "" V 2580 4800 30  0000 C CNN
F 4 "0603" V 2500 4800 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 4800 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 4800 30  0001 C CNN "Provider"
	1    2500 4800
	0    1    1    0   
$EndComp
$Comp
L R_SMT R103
U 1 1 56341F45
P 2500 4000
F 0 "R103" V 2450 4200 50  0000 C CNN
F 1 "22R/5%" V 2450 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 4000 30  0001 C CNN
F 3 "" V 2580 4000 30  0000 C CNN
F 4 "0603" V 2500 4000 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 4000 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 4000 30  0001 C CNN "Provider"
	1    2500 4000
	0    1    1    0   
$EndComp
$Comp
L R_SMT R102
U 1 1 56342023
P 2500 3800
F 0 "R102" V 2450 4000 50  0000 C CNN
F 1 "22R/5%" V 2450 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 3800 30  0001 C CNN
F 3 "" V 2580 3800 30  0000 C CNN
F 4 "0603" V 2500 3800 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 3800 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 3800 30  0001 C CNN "Provider"
	1    2500 3800
	0    1    1    0   
$EndComp
$Comp
L R_SMT R101
U 1 1 563420B4
P 2500 3700
F 0 "R101" V 2450 3900 50  0000 C CNN
F 1 "22R/5%" V 2450 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 3700 30  0001 C CNN
F 3 "" V 2580 3700 30  0000 C CNN
F 4 "0603" V 2500 3700 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 3700 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 3700 30  0001 C CNN "Provider"
	1    2500 3700
	0    1    1    0   
$EndComp
$Comp
L R_SMT R100
U 1 1 5634213C
P 2500 3600
F 0 "R100" V 2450 3800 50  0000 C CNN
F 1 "22R/5%" V 2450 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 3600 30  0001 C CNN
F 3 "" V 2580 3600 30  0000 C CNN
F 4 "0603" V 2500 3600 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 3600 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 3600 30  0001 C CNN "Provider"
	1    2500 3600
	0    1    1    0   
$EndComp
$Comp
L R_SMT R99
U 1 1 563421C7
P 2500 3500
F 0 "R99" V 2450 3700 50  0000 C CNN
F 1 "22R/5%" V 2450 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 3500 30  0001 C CNN
F 3 "" V 2580 3500 30  0000 C CNN
F 4 "0603" V 2500 3500 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 3500 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 3500 30  0001 C CNN "Provider"
	1    2500 3500
	0    1    1    0   
$EndComp
$Comp
L R_SMT R97
U 1 1 56342255
P 2500 3300
F 0 "R97" V 2450 3500 50  0000 C CNN
F 1 "22R/5%" V 2450 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 3300 30  0001 C CNN
F 3 "" V 2580 3300 30  0000 C CNN
F 4 "0603" V 2500 3300 20  0000 C CNN "SMT"
F 5 "9331891" V 2700 3300 30  0001 C CNN "Part"
F 6 "Farnell" V 2750 3300 30  0001 C CNN "Provider"
	1    2500 3300
	0    1    1    0   
$EndComp
$Comp
L R_SMT R98
U 1 1 56342312
P 2500 3400
F 0 "R98" V 2450 3600 50  0000 C CNN
F 1 "N/A" V 2450 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2650 3400 30  0001 C CNN
F 3 "" V 2580 3400 30  0000 C CNN
F 4 "0603" V 2500 3400 20  0000 C CNN "SMT"
F 5 "NA" V 2700 3400 30  0001 C CNN "Part"
F 6 "NA" V 2750 3400 30  0001 C CNN "Provider"
	1    2500 3400
	0    1    1    0   
$EndComp
$Comp
L R_SMT R114
U 1 1 56342666
P 8950 4650
F 0 "R114" V 8900 4850 50  0000 C CNN
F 1 "22R/5%" V 8900 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9100 4650 30  0001 C CNN
F 3 "" V 9030 4650 30  0000 C CNN
F 4 "0603" V 8950 4650 20  0000 C CNN "SMT"
F 5 "9331891" V 9150 4650 30  0001 C CNN "Part"
F 6 "Farnell" V 9200 4650 30  0001 C CNN "Provider"
	1    8950 4650
	0    1    1    0   
$EndComp
$Comp
L R_SMT R115
U 1 1 56342834
P 8950 4750
F 0 "R115" V 8900 4950 50  0000 C CNN
F 1 "22R/5%" V 8900 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9100 4750 30  0001 C CNN
F 3 "" V 9030 4750 30  0000 C CNN
F 4 "0603" V 8950 4750 20  0000 C CNN "SMT"
F 5 "9331891" V 9150 4750 30  0001 C CNN "Part"
F 6 "Farnell" V 9200 4750 30  0001 C CNN "Provider"
	1    8950 4750
	0    1    1    0   
$EndComp
$Comp
L R_SMT R116
U 1 1 56342911
P 8950 4850
F 0 "R116" V 8900 5050 50  0000 C CNN
F 1 "22R/5%" V 8900 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9100 4850 30  0001 C CNN
F 3 "" V 9030 4850 30  0000 C CNN
F 4 "0603" V 8950 4850 20  0000 C CNN "SMT"
F 5 "9331891" V 9150 4850 30  0001 C CNN "Part"
F 6 "Farnell" V 9200 4850 30  0001 C CNN "Provider"
	1    8950 4850
	0    1    1    0   
$EndComp
$Comp
L R_SMT R117
U 1 1 563429A3
P 8950 4950
F 0 "R117" V 8900 5150 50  0000 C CNN
F 1 "22R/5%" V 8900 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9100 4950 30  0001 C CNN
F 3 "" V 9030 4950 30  0000 C CNN
F 4 "0603" V 8950 4950 20  0000 C CNN "SMT"
F 5 "9331891" V 9150 4950 30  0001 C CNN "Part"
F 6 "Farnell" V 9200 4950 30  0001 C CNN "Provider"
	1    8950 4950
	0    1    1    0   
$EndComp
$Comp
L R_SMT R112
U 1 1 56344727
P 3750 6450
F 0 "R112" V 3820 6450 50  0000 C CNN
F 1 "10K/5%" V 3680 6450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3900 6450 30  0001 C CNN
F 3 "" V 3830 6450 30  0000 C CNN
F 4 "0603" V 3750 6450 20  0000 C CNN "SMT"
F 5 "9331700" V 3950 6450 30  0001 C CNN "Part"
F 6 "Farnell" V 4000 6450 30  0001 C CNN "Provider"
	1    3750 6450
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R113
U 1 1 56344972
P 4050 6450
F 0 "R113" V 4120 6450 50  0000 C CNN
F 1 "10K/5%" V 3980 6450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4200 6450 30  0001 C CNN
F 3 "" V 4130 6450 30  0000 C CNN
F 4 "0603" V 4050 6450 20  0000 C CNN "SMT"
F 5 "9331700" V 4250 6450 30  0001 C CNN "Part"
F 6 "Farnell" V 4300 6450 30  0001 C CNN "Provider"
	1    4050 6450
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R118
U 1 1 56344CB6
P 9200 4000
F 0 "R118" V 9250 4150 50  0000 C CNN
F 1 "10K/5%" V 9150 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9350 4000 30  0001 C CNN
F 3 "" V 9280 4000 30  0000 C CNN
F 4 "0603" V 9200 4000 20  0000 C CNN "SMT"
F 5 "9331700" V 9400 4000 30  0001 C CNN "Part"
F 6 "Farnell" V 9450 4000 30  0001 C CNN "Provider"
	1    9200 4000
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R119
U 1 1 563452B8
P 9300 4000
F 0 "R119" V 9350 4150 50  0000 C CNN
F 1 "10K/5%" V 9250 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9450 4000 30  0001 C CNN
F 3 "" V 9380 4000 30  0000 C CNN
F 4 "0603" V 9300 4000 20  0000 C CNN "SMT"
F 5 "9331700" V 9500 4000 30  0001 C CNN "Part"
F 6 "Farnell" V 9550 4000 30  0001 C CNN "Provider"
	1    9300 4000
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R120
U 1 1 56345362
P 9400 4000
F 0 "R120" V 9450 4150 50  0000 C CNN
F 1 "10K/5%" V 9350 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9550 4000 30  0001 C CNN
F 3 "" V 9480 4000 30  0000 C CNN
F 4 "0603" V 9400 4000 20  0000 C CNN "SMT"
F 5 "9331700" V 9600 4000 30  0001 C CNN "Part"
F 6 "Farnell" V 9650 4000 30  0001 C CNN "Provider"
	1    9400 4000
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R121
U 1 1 56345414
P 9500 4000
F 0 "R121" V 9550 4150 50  0000 C CNN
F 1 "10K/5%" V 9450 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9650 4000 30  0001 C CNN
F 3 "" V 9580 4000 30  0000 C CNN
F 4 "0603" V 9500 4000 20  0000 C CNN "SMT"
F 5 "9331700" V 9700 4000 30  0001 C CNN "Part"
F 6 "Farnell" V 9750 4000 30  0001 C CNN "Provider"
	1    9500 4000
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R122
U 1 1 563454C6
P 9600 4000
F 0 "R122" V 9650 4150 50  0000 C CNN
F 1 "10K/5%" V 9550 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9750 4000 30  0001 C CNN
F 3 "" V 9680 4000 30  0000 C CNN
F 4 "0603" V 9600 4000 20  0000 C CNN "SMT"
F 5 "9331700" V 9800 4000 30  0001 C CNN "Part"
F 6 "Farnell" V 9850 4000 30  0001 C CNN "Provider"
	1    9600 4000
	1    0    0    -1  
$EndComp
$Comp
L R_SMT R123
U 1 1 56345584
P 9700 4000
F 0 "R123" V 9750 4150 50  0000 C CNN
F 1 "10K/5%" V 9650 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9850 4000 30  0001 C CNN
F 3 "" V 9780 4000 30  0000 C CNN
F 4 "0603" V 9700 4000 20  0000 C CNN "SMT"
F 5 "9331700" V 9900 4000 30  0001 C CNN "Part"
F 6 "Farnell" V 9950 4000 30  0001 C CNN "Provider"
	1    9700 4000
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C57
U 1 1 56346A60
P 9850 1350
F 0 "C57" H 9875 1450 50  0000 L CNN
F 1 "1uF/25V/X7R" V 9700 1100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9880 1200 30  0001 L CNN
F 3 "" H 9875 1450 60  0000 L CNN
F 4 "0603" H 9850 1350 20  0000 C CNN "SMT"
F 5 "1735540" H 9880 1160 30  0001 L CNN "Part"
F 6 "Farnell" H 9880 1120 30  0001 L CNN "Provider"
	1    9850 1350
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C54
U 1 1 56346C83
P 9250 1350
F 0 "C54" H 9275 1450 50  0000 L CNN
F 1 "100nF/50V/X7R" V 9100 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9280 1200 30  0001 L CNN
F 3 "" H 9275 1450 60  0000 L CNN
F 4 "0603" H 9250 1350 20  0000 C CNN "SMT"
F 5 "1414028" H 9280 1160 30  0001 L CNN "Part"
F 6 "Farnell" H 9280 1120 30  0001 L CNN "Provider"
	1    9250 1350
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C52
U 1 1 56346D84
P 8200 1350
F 0 "C52" H 8225 1450 50  0000 L CNN
F 1 "100nF/50V/X7R" V 8050 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8230 1200 30  0001 L CNN
F 3 "" H 8225 1450 60  0000 L CNN
F 4 "0603" H 8200 1350 20  0000 C CNN "SMT"
F 5 "1414028" H 8230 1160 30  0001 L CNN "Part"
F 6 "Farnell" H 8230 1120 30  0001 L CNN "Provider"
	1    8200 1350
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C50
U 1 1 56346FB8
P 7600 1350
F 0 "C50" H 7625 1450 50  0000 L CNN
F 1 "1uF/25V/X7R" V 7450 1100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7630 1200 30  0001 L CNN
F 3 "" H 7625 1450 60  0000 L CNN
F 4 "0603" H 7600 1350 20  0000 C CNN "SMT"
F 5 "1735540" H 7630 1160 30  0001 L CNN "Part"
F 6 "Farnell" H 7630 1120 30  0001 L CNN "Provider"
	1    7600 1350
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C48
U 1 1 563470D1
P 7000 1350
F 0 "C48" H 7025 1450 50  0000 L CNN
F 1 "100nF/50V/X7R" V 6850 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7030 1200 30  0001 L CNN
F 3 "" H 7025 1450 60  0000 L CNN
F 4 "0603" H 7000 1350 20  0000 C CNN "SMT"
F 5 "1414028" H 7030 1160 30  0001 L CNN "Part"
F 6 "Farnell" H 7030 1120 30  0001 L CNN "Provider"
	1    7000 1350
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C53
U 1 1 563471C4
P 8200 2900
F 0 "C53" H 8225 3000 50  0000 L CNN
F 1 "100nF/50V/X7R" V 8050 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8230 2750 30  0001 L CNN
F 3 "" H 8225 3000 60  0000 L CNN
F 4 "0603" H 8200 2900 20  0000 C CNN "SMT"
F 5 "1414028" H 8230 2710 30  0001 L CNN "Part"
F 6 "Farnell" H 8230 2670 30  0001 L CNN "Provider"
	1    8200 2900
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C51
U 1 1 563472B9
P 7600 2900
F 0 "C51" H 7625 3000 50  0000 L CNN
F 1 "1uF/25V/X7R" V 7450 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7630 2750 30  0001 L CNN
F 3 "" H 7625 3000 60  0000 L CNN
F 4 "0603" H 7600 2900 20  0000 C CNN "SMT"
F 5 "1735540" H 7630 2710 30  0001 L CNN "Part"
F 6 "Farnell" H 7630 2670 30  0001 L CNN "Provider"
	1    7600 2900
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C49
U 1 1 563473BE
P 7000 2900
F 0 "C49" H 7025 3000 50  0000 L CNN
F 1 "100nF/50V/X7R" V 6850 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7030 2750 30  0001 L CNN
F 3 "" H 7025 3000 60  0000 L CNN
F 4 "0603" H 7000 2900 20  0000 C CNN "SMT"
F 5 "1414028" H 7030 2710 30  0001 L CNN "Part"
F 6 "Farnell" H 7030 2670 30  0001 L CNN "Provider"
	1    7000 2900
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C46
U 1 1 563474A7
P 6400 1350
F 0 "C46" H 6425 1450 50  0000 L CNN
F 1 "47uF/25V/X7R" V 6250 1100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6430 1200 30  0001 L CNN
F 3 "" H 6425 1450 60  0000 L CNN
F 4 "0805" H 6400 1350 20  0000 C CNN "SMT"
F 5 "NA" H 6430 1160 30  0001 L CNN "Part"
F 6 "Farnell" H 6430 1120 30  0001 L CNN "Provider"
	1    6400 1350
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C47
U 1 1 56347634
P 6400 2900
F 0 "C47" H 6425 3000 50  0000 L CNN
F 1 "47uF/25V/X7R" V 6250 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6430 2750 30  0001 L CNN
F 3 "" H 6425 3000 60  0000 L CNN
F 4 "0805" H 6400 2900 20  0000 C CNN "SMT"
F 5 "NA" H 6430 2710 30  0001 L CNN "Part"
F 6 "Farnell" H 6430 2670 30  0001 L CNN "Provider"
	1    6400 2900
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C55
U 1 1 56347D5B
P 9300 5850
F 0 "C55" H 9325 5950 50  0000 L CNN
F 1 "100nF/50V/X7R" V 9150 5550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9330 5700 30  0001 L CNN
F 3 "" H 9325 5950 60  0000 L CNN
F 4 "0603" H 9300 5850 20  0000 C CNN "SMT"
F 5 "1414028" H 9330 5660 30  0001 L CNN "Part"
F 6 "Farnell" H 9330 5620 30  0001 L CNN "Provider"
	1    9300 5850
	1    0    0    -1  
$EndComp
$Comp
L C_SMT C56
U 1 1 56348062
P 9800 5850
F 0 "C56" H 9825 5950 50  0000 L CNN
F 1 "100nF/50V/X7R" V 9650 5550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9830 5700 30  0001 L CNN
F 3 "" H 9825 5950 60  0000 L CNN
F 4 "0603" H 9800 5850 20  0000 C CNN "SMT"
F 5 "1414028" H 9830 5660 30  0001 L CNN "Part"
F 6 "Farnell" H 9830 5620 30  0001 L CNN "Provider"
	1    9800 5850
	1    0    0    -1  
$EndComp
Text HLabel 10350 5050 2    60   Output ~ 0
TP_BUSY
Connection ~ 9600 5050
$Comp
L GND #PWR0171
U 1 1 56D2CBD4
P 4350 6750
F 0 "#PWR0171" H 4350 6500 50  0001 C CNN
F 1 "GND" H 4350 6600 50  0000 C CNN
F 2 "" H 4350 6750 60  0000 C CNN
F 3 "" H 4350 6750 60  0000 C CNN
	1    4350 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6300 4350 6300
Wire Wire Line
	4350 6300 4350 6750
Wire Wire Line
	4550 6400 4350 6400
Connection ~ 4350 6400
$EndSCHEMATC
