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
Sheet 1 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4600 1350 800  500 
U 581919F6
F0 "Keyboard" 60
F1 "keyboard.sch" 60
F2 "Q0" O R 5400 1450 60 
F3 "Q1" O R 5400 1550 60 
F4 "Q2" O R 5400 1650 60 
F5 "Q3" O R 5400 1750 60 
F6 "CLK" I L 4600 1450 60 
F7 "~RESET" I L 4600 1750 60 
$EndSheet
$Sheet
S 6650 3100 650  300 
U 5819E78C
F0 "Mouse" 60
F1 "mouse.sch" 60
F2 "X" O L 6650 3200 60 
F3 "Y" O L 6650 3300 60 
$EndSheet
$Comp
L ATTINY48-A IC1001
U 1 1 5819EBDE
P 4000 4200
F 0 "IC1001" H 3400 4250 50  0000 C CNN
F 1 "ATTINY48-A" H 3450 4150 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 4000 5775 50  0001 C CIN
F 3 "" H 4000 4200 50  0000 C CNN
	1    4000 4200
	1    0    0    -1  
$EndComp
Text Label 5050 3450 0    60   ~ 0
SPI_SS
Text Label 5050 3550 0    60   ~ 0
SPI_MOSI
Text Label 5050 3650 0    60   ~ 0
SPI_MISO
Text Label 5050 3750 0    60   ~ 0
SPI_SCK
Text Label 5050 4500 0    60   ~ 0
I2C_SDA
Text Label 5050 4600 0    60   ~ 0
I2C_SCL
Text Label 5050 4100 0    60   ~ 0
MOUSE_X
Text Label 5050 4200 0    60   ~ 0
MOUSE_Y
$Sheet
S 9100 2550 1050 800 
U 5819EDEF
F0 "Power Supply" 60
F1 "power.sch" 60
F2 "~SHDN" I L 9100 2700 60 
$EndSheet
$Sheet
S 7950 4150 550  300 
U 5819EDF3
F0 "RTC" 60
F1 "rtc.sch" 60
F2 "SCL" I L 7950 4250 60 
F3 "SDA" B L 7950 4350 60 
$EndSheet
Text Notes 7400 2700 0    60   ~ 0
VGA\nExternal connector\nBattery
$Sheet
S 8200 800  700  650 
U 5819EF10
F0 "Audio" 60
F1 "audio.sch" 60
F2 "L" I L 8200 900 60 
F3 "R" I L 8200 1000 60 
F4 "UP/~DOWN" I L 8200 1150 60 
F5 "~CS_L" I L 8200 1250 60 
F6 "~CS_R" I L 8200 1350 60 
$EndSheet
$Comp
L AVR-ISP-10 CON1001
U 1 1 581F49F5
P 4750 6600
F 0 "CON1001" H 4609 7055 50  0000 C CNN
F 1 "AVR-ISP-10" H 4609 6964 50  0000 C CNN
F 2 "Connect:IDC_Header_Straight_10pins" V 4000 6650 50  0001 C CNN
F 3 "" H 4750 6600 50  0000 C CNN
	1    4750 6600
	1    0    0    -1  
$EndComp
Text Label 3700 6400 0    60   ~ 0
SPI_MOSI
Text Label 3700 6800 0    60   ~ 0
SPI_MISO
Text Label 3700 6600 0    60   ~ 0
RESET
Text Label 3700 6700 0    60   ~ 0
SPI_SCK
$Comp
L GND #PWR01
U 1 1 581F4F29
P 5150 6850
F 0 "#PWR01" H 5150 6600 50  0001 C CNN
F 1 "GND" H 5155 6677 50  0000 C CNN
F 2 "" H 5150 6850 50  0000 C CNN
F 3 "" H 5150 6850 50  0000 C CNN
	1    5150 6850
	1    0    0    -1  
$EndComp
NoConn ~ 4800 6500
NoConn ~ 4800 6600
NoConn ~ 4550 6500
$Comp
L GND #PWR02
U 1 1 581F524B
P 3000 5700
F 0 "#PWR02" H 3000 5450 50  0001 C CNN
F 1 "GND" H 3005 5527 50  0000 C CNN
F 2 "" H 3000 5700 50  0000 C CNN
F 3 "" H 3000 5700 50  0000 C CNN
	1    3000 5700
	1    0    0    -1  
$EndComp
Text Notes 3450 2650 0    60   ~ 0
Powered directly from battery?
$Comp
L CONN_01X04 P1002
U 1 1 581F57E9
P 750 4950
F 0 "P1002" H 750 5300 50  0000 C CNN
F 1 "Power" H 750 5200 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 750 4950 50  0001 C CNN
F 3 "" H 750 4950 50  0000 C CNN
	1    750  4950
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X29 P1001
U 1 1 581F5A9B
P 750 3200
F 0 "P1001" H 669 1575 50  0000 C CNN
F 1 "Peripheral Bus" H 669 1666 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x29" H 750 3200 50  0001 C CNN
F 3 "" H 750 3200 50  0000 C CNN
	1    750  3200
	-1   0    0    1   
$EndComp
Text Label 950  4600 0    60   ~ 0
AUDIO_R
Text Label 950  4300 0    60   ~ 0
AUDIO_L
Text Label 950  4100 0    60   ~ 0
EXTINT0
Text Label 950  4000 0    60   ~ 0
EXTINT1
Text Label 950  3900 0    60   ~ 0
EXTINT2
Text Label 950  3800 0    60   ~ 0
EXTINT3
Text Label 950  3700 0    60   ~ 0
UART_RX
Text Label 950  3600 0    60   ~ 0
UART_TX
Text Label 950  3400 0    60   ~ 0
CPURST
Text Label 950  3300 0    60   ~ 0
PWRON_RESET
Text Label 950  3000 0    60   ~ 0
SPI_MOSI
Text Label 950  2900 0    60   ~ 0
SPI_MISO
Text Label 950  3100 0    60   ~ 0
SPI_SCK
Text Label 950  2700 0    60   ~ 0
SPI_SS2
Text Label 950  2600 0    60   ~ 0
SPI_SS3
Text Label 950  2500 0    60   ~ 0
SPI_SS4
Text Label 950  2400 0    60   ~ 0
SPI_SS5
Text Label 950  2300 0    60   ~ 0
SPI_SS6
Text Label 950  2200 0    60   ~ 0
SPI_SS7
Text GLabel 1400 2100 2    60   Input ~ 0
CLK12
Text GLabel 1400 1800 2    60   Input ~ 0
CLK33
$Comp
L GND #PWR03
U 1 1 581F752E
P 1000 1950
F 0 "#PWR03" H 1000 1700 50  0001 C CNN
F 1 "GND" V 1005 1822 50  0000 R CNN
F 2 "" H 1000 1950 50  0000 C CNN
F 3 "" H 1000 1950 50  0000 C CNN
	1    1000 1950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 581F7634
P 1000 2800
F 0 "#PWR04" H 1000 2550 50  0001 C CNN
F 1 "GND" V 1005 2672 50  0000 R CNN
F 2 "" H 1000 2800 50  0000 C CNN
F 3 "" H 1000 2800 50  0000 C CNN
	1    1000 2800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 581F76B8
P 1000 3200
F 0 "#PWR05" H 1000 2950 50  0001 C CNN
F 1 "GND" V 1005 3072 50  0000 R CNN
F 2 "" H 1000 3200 50  0000 C CNN
F 3 "" H 1000 3200 50  0000 C CNN
	1    1000 3200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 581F7709
P 1000 3500
F 0 "#PWR06" H 1000 3250 50  0001 C CNN
F 1 "GND" V 1005 3372 50  0000 R CNN
F 2 "" H 1000 3500 50  0000 C CNN
F 3 "" H 1000 3500 50  0000 C CNN
	1    1000 3500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 581F7744
P 1000 4200
F 0 "#PWR07" H 1000 3950 50  0001 C CNN
F 1 "GND" V 1005 4072 50  0000 R CNN
F 2 "" H 1000 4200 50  0000 C CNN
F 3 "" H 1000 4200 50  0000 C CNN
	1    1000 4200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 581F77D7
P 1000 4450
F 0 "#PWR08" H 1000 4200 50  0001 C CNN
F 1 "GND" V 1005 4322 50  0000 R CNN
F 2 "" H 1000 4450 50  0000 C CNN
F 3 "" H 1000 4450 50  0000 C CNN
	1    1000 4450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 581F7812
P 1000 4950
F 0 "#PWR09" H 1000 4700 50  0001 C CNN
F 1 "GND" V 1005 4822 50  0000 R CNN
F 2 "" H 1000 4950 50  0000 C CNN
F 3 "" H 1000 4950 50  0000 C CNN
	1    1000 4950
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR010
U 1 1 581F7F97
P 1000 4800
F 0 "#PWR010" H 1000 4650 50  0001 C CNN
F 1 "+24V" V 1000 4950 50  0000 L CNN
F 2 "" H 1000 4800 50  0000 C CNN
F 3 "" H 1000 4800 50  0000 C CNN
	1    1000 4800
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR011
U 1 1 581F7FED
P 1000 5100
F 0 "#PWR011" H 1000 4950 50  0001 C CNN
F 1 "+3V3" V 1000 5250 50  0000 L CNN
F 2 "" H 1000 5100 50  0000 C CNN
F 3 "" H 1000 5100 50  0000 C CNN
	1    1000 5100
	0    1    1    0   
$EndComp
$Sheet
S 6250 900  800  500 
U 581F67DF
F0 "SD Card" 60
F1 "sd.sch" 60
F2 "MISO" O L 6250 1000 60 
F3 "MOSI" I L 6250 1100 60 
F4 "SS" I L 6250 1200 60 
F5 "SCK" I L 6250 1300 60 
F6 "WP" O R 7050 1000 60 
F7 "DETECT" O R 7050 1100 60 
$EndSheet
$Comp
L R_PACK4 RP1001
U 1 1 581F7416
P 2950 6850
F 0 "RP1001" H 2950 7415 50  0000 C CNN
F 1 "10k" H 2950 7324 50  0000 C CNN
F 2 "Resistors_SMD:R_Cat16-4" H 2950 6850 50  0001 C CNN
F 3 "" H 2950 6850 50  0000 C CNN
	1    2950 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3450 5450 3450
Wire Wire Line
	4950 3550 5450 3550
Wire Wire Line
	4950 3650 5450 3650
Wire Wire Line
	4950 3750 5450 3750
Wire Wire Line
	4950 4500 5450 4500
Wire Wire Line
	4950 4600 5450 4600
Wire Wire Line
	4950 4100 5450 4100
Wire Wire Line
	4950 4200 5450 4200
Wire Wire Line
	3450 6400 4550 6400
Wire Wire Line
	3150 6600 4550 6600
Wire Wire Line
	3500 6700 4550 6700
Wire Wire Line
	3350 6800 4550 6800
Wire Wire Line
	4800 6400 5150 6400
Wire Wire Line
	5150 6400 5150 6300
Wire Wire Line
	4800 6700 5150 6700
Wire Wire Line
	5150 6700 5150 6850
Wire Wire Line
	4800 6800 5150 6800
Connection ~ 5150 6800
Wire Wire Line
	3050 5550 3000 5550
Wire Wire Line
	3000 5550 3000 5700
Wire Wire Line
	3050 5650 3000 5650
Connection ~ 3000 5650
Wire Wire Line
	950  2100 1400 2100
Wire Wire Line
	950  2200 1400 2200
Wire Wire Line
	950  2300 1400 2300
Wire Wire Line
	950  2400 1400 2400
Wire Wire Line
	950  2500 1400 2500
Wire Wire Line
	950  2600 1400 2600
Wire Wire Line
	950  2700 1400 2700
Wire Wire Line
	950  2900 1400 2900
Wire Wire Line
	950  3000 1400 3000
Wire Wire Line
	950  3100 1400 3100
Wire Wire Line
	950  3300 1400 3300
Wire Wire Line
	950  3400 1400 3400
Wire Wire Line
	950  3600 1400 3600
Wire Wire Line
	950  3700 1400 3700
Wire Wire Line
	950  3800 1400 3800
Wire Wire Line
	950  3900 1400 3900
Wire Wire Line
	950  4000 1400 4000
Wire Wire Line
	950  4100 1400 4100
Wire Wire Line
	950  4300 1400 4300
Wire Wire Line
	950  4600 1400 4600
Wire Wire Line
	950  1800 1400 1800
Wire Wire Line
	950  4900 1000 4900
Wire Wire Line
	1000 4900 1000 5000
Wire Wire Line
	1000 5000 950  5000
Connection ~ 1000 4950
Wire Wire Line
	950  4400 1000 4400
Wire Wire Line
	1000 4400 1000 4500
Wire Wire Line
	1000 4500 950  4500
Connection ~ 1000 4450
Wire Wire Line
	950  4200 1000 4200
Wire Wire Line
	950  3500 1000 3500
Wire Wire Line
	950  3200 1000 3200
Wire Wire Line
	950  2800 1000 2800
Wire Wire Line
	950  1900 1000 1900
Wire Wire Line
	1000 1900 1000 2000
Wire Wire Line
	1000 2000 950  2000
Connection ~ 1000 1950
Wire Wire Line
	1000 4800 950  4800
Wire Wire Line
	1000 5100 950  5100
Wire Wire Line
	3450 6400 3450 6500
Wire Wire Line
	3450 6500 3150 6500
Wire Wire Line
	3350 6800 3350 6700
Wire Wire Line
	3350 6700 3150 6700
Wire Wire Line
	3500 6700 3500 6900
Wire Wire Line
	3500 6900 3150 6900
Wire Wire Line
	3150 6900 3150 6800
$Comp
L GND #PWR012
U 1 1 581F76DB
P 2700 6850
F 0 "#PWR012" H 2700 6600 50  0001 C CNN
F 1 "GND" H 2705 6677 50  0000 C CNN
F 2 "" H 2700 6850 50  0000 C CNN
F 3 "" H 2700 6850 50  0000 C CNN
	1    2700 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6800 2700 6800
Wire Wire Line
	2700 6800 2700 6850
Wire Wire Line
	2700 6700 2700 6400
Wire Wire Line
	2750 6600 2700 6600
Connection ~ 2700 6600
Wire Wire Line
	2750 6700 2700 6700
Wire Wire Line
	2750 6500 2700 6500
Connection ~ 2700 6500
$Comp
L +3V3 #PWR013
U 1 1 581F7984
P 2700 6400
F 0 "#PWR013" H 2700 6250 50  0001 C CNN
F 1 "+3V3" H 2715 6573 50  0000 C CNN
F 2 "" H 2700 6400 50  0000 C CNN
F 3 "" H 2700 6400 50  0000 C CNN
	1    2700 6400
	1    0    0    -1  
$EndComp
$Sheet
S 9050 4500 1300 1400
U 581F7C47
F0 "External" 60
F1 "external.sch" 60
F2 "MISO" O L 9050 4600 60 
F3 "MOSI" I L 9050 4700 60 
F4 "SCK" I L 9050 4800 60 
F5 "SS1" I L 9050 4950 60 
F6 "SS2" I L 9050 5050 60 
F7 "SS3" I L 9050 5150 60 
F8 "SS4" I L 9050 5250 60 
F9 "INTERRUPT" O R 10350 4600 60 
F10 "TX" I L 9050 5400 60 
F11 "RX" O L 9050 5500 60 
F12 "SDA" B L 9050 5650 60 
F13 "SCL" I L 9050 5750 60 
F14 "DETECT" U R 10350 4750 60 
$EndSheet
$Sheet
S 9650 850  950  800 
U 581F8966
F0 "VGA" 60
F1 "vga.sch" 60
$EndSheet
Text Notes 7400 2950 0    60   ~ 0
Power button\nRGB led
$Comp
L R R1001
U 1 1 58224307
P 5700 4500
F 0 "R1001" V 5600 4500 50  0000 C CNN
F 1 "R" V 5700 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5630 4500 50  0001 C CNN
F 3 "" H 5700 4500 50  0000 C CNN
	1    5700 4500
	0    1    1    0   
$EndComp
$Comp
L R R1002
U 1 1 582244B8
P 5700 4600
F 0 "R1002" V 5800 4600 50  0000 C CNN
F 1 "R" V 5700 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5630 4600 50  0001 C CNN
F 3 "" H 5700 4600 50  0000 C CNN
	1    5700 4600
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW1001
U 1 1 5823964C
P 2500 1300
F 0 "SW1001" H 2500 1555 50  0000 C CNN
F 1 "Power" H 2500 1464 50  0000 C CNN
F 2 "lib:SMD-TACT-5.2x5.2x2mm" H 2500 1300 50  0001 C CNN
F 3 "" H 2500 1300 50  0000 C CNN
	1    2500 1300
	1    0    0    -1  
$EndComp
$Comp
L LED_RABG D1001
U 1 1 582399DC
P 3350 1250
F 0 "D1001" V 3396 922 50  0000 R CNN
F 1 "Status LED" V 3305 922 50  0000 R CNN
F 2 "" H 3300 1200 50  0001 C CNN
F 3 "" H 3300 1200 50  0000 C CNN
	1    3350 1250
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
