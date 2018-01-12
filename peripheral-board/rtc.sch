EESchema Schematic File Version 4
LIBS:peripheral-board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 8
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
L peripheral-board-rescue:MCP7940N-RESCUE-peripheral-board U5001
U 1 1 582217B7
P 5600 3400
F 0 "U5001" H 5800 3200 50  0000 C CNN
F 1 "MCP7940N" H 5600 3400 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5600 3400 50  0001 C CNN
F 3 "" H 5600 3400 50  0000 C CNN
	1    5600 3400
	1    0    0    -1  
$EndComp
$Comp
L peripheral-board-rescue:Crystal_Small-RESCUE-peripheral-board Y5001
U 1 1 582218F8
P 6150 3400
F 0 "Y5001" V 6196 3312 50  0000 R CNN
F 1 "32768 Hz" V 6105 3312 50  0000 R CNN
F 2 "Crystals:Crystal_Watch" H 6150 3400 50  0001 C CNN
F 3 "" H 6150 3400 50  0000 C CNN
	1    6150 3400
	0    -1   -1   0   
$EndComp
$Comp
L peripheral-board-rescue:C_Small-RESCUE-peripheral-board C5001
U 1 1 582219D3
P 6250 3200
F 0 "C5001" V 6021 3200 50  0000 C CNN
F 1 "22p" V 6112 3200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 6250 3200 50  0001 C CNN
F 3 "" H 6250 3200 50  0000 C CNN
	1    6250 3200
	0    1    1    0   
$EndComp
$Comp
L peripheral-board-rescue:C_Small-RESCUE-peripheral-board C5002
U 1 1 58221AAE
P 6250 3600
F 0 "C5002" V 6500 3600 50  0000 C CNN
F 1 "22p" V 6400 3600 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 6250 3600 50  0001 C CNN
F 3 "" H 6250 3600 50  0000 C CNN
	1    6250 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3300 6150 3300
Wire Wire Line
	6150 3300 6150 3200
Wire Wire Line
	6000 3500 6150 3500
Wire Wire Line
	6150 3500 6150 3600
$Comp
L peripheral-board-rescue:GND-RESCUE-peripheral-board #PWR063
U 1 1 58221B92
P 6400 3200
F 0 "#PWR063" H 6400 2950 50  0001 C CNN
F 1 "GND" V 6405 3072 50  0000 R CNN
F 2 "" H 6400 3200 50  0000 C CNN
F 3 "" H 6400 3200 50  0000 C CNN
	1    6400 3200
	0    -1   -1   0   
$EndComp
$Comp
L peripheral-board-rescue:GND-RESCUE-peripheral-board #PWR064
U 1 1 58221BBA
P 6400 3600
F 0 "#PWR064" H 6400 3350 50  0001 C CNN
F 1 "GND" V 6405 3472 50  0000 R CNN
F 2 "" H 6400 3600 50  0000 C CNN
F 3 "" H 6400 3600 50  0000 C CNN
	1    6400 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 3200 6350 3200
Wire Wire Line
	6400 3600 6350 3600
NoConn ~ 5200 3500
$Comp
L peripheral-board-rescue:GND-RESCUE-peripheral-board #PWR065
U 1 1 58221C3E
P 5600 3800
F 0 "#PWR065" H 5600 3550 50  0001 C CNN
F 1 "GND" H 5605 3627 50  0000 C CNN
F 2 "" H 5600 3800 50  0000 C CNN
F 3 "" H 5600 3800 50  0000 C CNN
	1    5600 3800
	1    0    0    -1  
$EndComp
$Comp
L peripheral-board-rescue:+3V3-RESCUE-peripheral-board #PWR066
U 1 1 58221C5A
P 5600 3000
F 0 "#PWR066" H 5600 2850 50  0001 C CNN
F 1 "+3V3" H 5450 3100 50  0000 C CNN
F 2 "" H 5600 3000 50  0000 C CNN
F 3 "" H 5600 3000 50  0000 C CNN
	1    5600 3000
	1    0    0    -1  
$EndComp
Text HLabel 4800 3200 0    60   Input ~ 0
SCL
Text HLabel 4800 3300 0    60   BiDi ~ 0
SDA
Wire Wire Line
	5200 3200 4800 3200
Wire Wire Line
	5200 3300 4800 3300
$Comp
L peripheral-board-rescue:+3.3VP-RESCUE-peripheral-board #PWR067
U 1 1 58A61230
P 5700 3000
F 0 "#PWR067" H -50 250 50  0001 C CNN
F 1 "+3.3VP" H 5850 3100 50  0000 C CNN
F 2 "" H -200 300 50  0001 C CNN
F 3 "" H -200 300 50  0001 C CNN
	1    5700 3000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
