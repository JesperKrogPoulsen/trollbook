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
LIBS:amp
LIBS:card-edge
LIBS:switchmode
LIBS:joystick
LIBS:digital-pot
LIBS:peripheral-board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 9
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
L JACK_TRS_6PINS J6001
U 1 1 5819EF20
P 6450 1700
F 0 "J6001" H 6431 2225 50  0000 C CNN
F 1 "JACK_TRS_6PINS" H 6431 2134 50  0000 C CNN
F 2 "" H 6550 1550 50  0001 C CNN
F 3 "" H 6550 1550 50  0000 C CNN
	1    6450 1700
	1    0    0    -1  
$EndComp
$Comp
L TCA0372 U6001
U 1 1 581D2053
P 5700 2850
F 0 "U6001" H 5600 2950 60  0000 L CNN
F 1 "TCA0372" H 5500 2850 60  0000 L CNN
F 2 "Housings_SOIC:SOIC-16_7.5x10.3mm_Pitch1.27mm" H 5700 2850 60  0001 C CNN
F 3 "" H 5700 2850 60  0001 C CNN
	1    5700 2850
	1    0    0    -1  
$EndComp
$Comp
L TCA0372 U6001
U 2 1 581D2125
P 5700 4250
F 0 "U6001" H 5600 4350 60  0000 L CNN
F 1 "TCA0372" H 5500 4250 60  0000 L CNN
F 2 "Housings_SOIC:SOIC-16_7.5x10.3mm_Pitch1.27mm" H 5700 4250 60  0001 C CNN
F 3 "" H 5700 4250 60  0001 C CNN
	2    5700 4250
	1    0    0    -1  
$EndComp
Text HLabel 4100 2800 2    60   Input ~ 0
L
Text HLabel 4100 4200 2    60   Input ~ 0
R
Text HLabel 1600 4550 0    60   Input ~ 0
UP/~DOWN
Text HLabel 1600 4650 0    60   Input ~ 0
~CS_L
Text HLabel 1600 4750 0    60   Input ~ 0
~CS_R
$Comp
L MCP4011 U6002
U 1 1 582347E6
P 3300 2900
F 0 "U6002" H 3300 2950 60  0000 C CNN
F 1 "MCP4011" H 3300 2850 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3300 2900 60  0001 C CNN
F 3 "" H 3300 2900 60  0001 C CNN
	1    3300 2900
	1    0    0    -1  
$EndComp
$Comp
L MCP4011 U6003
U 1 1 58234B7F
P 3300 4300
F 0 "U6003" H 3300 4350 60  0000 C CNN
F 1 "MCP4011" H 3300 4250 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3300 4300 60  0001 C CNN
F 3 "" H 3300 4300 60  0001 C CNN
	1    3300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2850 2550 2850
Wire Wire Line
	1800 2950 2550 2950
Wire Wire Line
	1700 4250 2550 4250
Wire Wire Line
	2550 4350 1900 4350
Wire Wire Line
	1700 2850 1700 4550
Wire Wire Line
	1700 4550 1600 4550
Connection ~ 1700 4250
Wire Wire Line
	1800 2950 1800 4650
Wire Wire Line
	1800 4650 1600 4650
Wire Wire Line
	1900 4350 1900 4750
Wire Wire Line
	1900 4750 1600 4750
$Comp
L GND #PWR028
U 1 1 5823647F
P 3300 3450
F 0 "#PWR028" H 3300 3200 50  0001 C CNN
F 1 "GND" H 3305 3277 50  0000 C CNN
F 2 "" H 3300 3450 50  0000 C CNN
F 3 "" H 3300 3450 50  0000 C CNN
	1    3300 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 582364AF
P 3300 4850
F 0 "#PWR029" H 3300 4600 50  0001 C CNN
F 1 "GND" H 3305 4677 50  0000 C CNN
F 2 "" H 3300 4850 50  0000 C CNN
F 3 "" H 3300 4850 50  0000 C CNN
	1    3300 4850
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR030
U 1 1 582364E9
P 3300 2350
F 0 "#PWR030" H 3300 2200 50  0001 C CNN
F 1 "+3V3" V 3315 2478 50  0000 L CNN
F 2 "" H 3300 2350 50  0000 C CNN
F 3 "" H 3300 2350 50  0000 C CNN
	1    3300 2350
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR031
U 1 1 58236543
P 3350 3800
F 0 "#PWR031" H 3350 3650 50  0001 C CNN
F 1 "+3V3" V 3365 3928 50  0000 L CNN
F 2 "" H 3350 3800 50  0000 C CNN
F 3 "" H 3350 3800 50  0000 C CNN
	1    3350 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 2350 3300 2400
Wire Wire Line
	3300 3400 3300 3450
Wire Wire Line
	3300 3800 3350 3800
Wire Wire Line
	3300 4800 3300 4850
Text HLabel 6950 1400 2    60   Output ~ 0
DETECT
Wire Wire Line
	6950 1400 6850 1400
Wire Wire Line
	4100 4200 4050 4200
Wire Wire Line
	4100 2800 4050 2800
$Comp
L GND #PWR032
U 1 1 58240DA5
P 4100 3050
F 0 "#PWR032" H 4100 2800 50  0001 C CNN
F 1 "GND" H 4105 2877 50  0000 C CNN
F 2 "" H 4100 3050 50  0000 C CNN
F 3 "" H 4100 3050 50  0000 C CNN
	1    4100 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 58240DD7
P 4100 4450
F 0 "#PWR033" H 4100 4200 50  0001 C CNN
F 1 "GND" H 4105 4277 50  0000 C CNN
F 2 "" H 4100 4450 50  0000 C CNN
F 3 "" H 4100 4450 50  0000 C CNN
	1    4100 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4450 4100 4400
Wire Wire Line
	4100 4400 4050 4400
Wire Wire Line
	4050 3000 4100 3000
Wire Wire Line
	4100 3000 4100 3050
$EndSCHEMATC
