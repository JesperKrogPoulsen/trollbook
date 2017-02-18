EESchema Schematic File Version 2
LIBS:peripheral-board-rescue
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
LIBS:vref
LIBS:switches
LIBS:peripheral-board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 10
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
S 7300 5000 700  300 
U 5819E78C
F0 "Mouse" 60
F1 "mouse.sch" 60
F2 "X" O L 7300 5100 60 
F3 "Y" O L 7300 5200 60 
$EndSheet
$Comp
L ATTINY48-AU U1001
U 1 1 5819EBDE
P 4000 4200
F 0 "U1001" H 3400 4250 50  0000 C CNN
F 1 "ATTINY48-A" H 3450 4150 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 4000 5775 50  0001 C CIN
F 3 "" H 4000 4200 50  0000 C CNN
	1    4000 4200
	1    0    0    -1  
$EndComp
Text Label 4950 3450 0    60   ~ 0
SPI_SS2
Text Label 4950 3550 0    60   ~ 0
SPI_MOSI
Text Label 4950 3650 0    60   ~ 0
SPI_MISO
Text Label 4950 3750 0    60   ~ 0
SPI_SCK
Text Label 4950 4500 0    60   ~ 0
I2C_SDA
Text Label 4950 4600 0    60   ~ 0
I2C_SCL
Text Label 4950 5050 0    60   ~ 0
MOUSE_X
Text Label 4950 4950 0    60   ~ 0
MOUSE_Y
$Sheet
S 9100 2550 1050 800 
U 5819EDEF
F0 "Power Supply" 60
F1 "power.sch" 60
F2 "SHDN_3" I L 9100 2650 60 
F3 "~SHDN_24" I L 9100 2750 60 
$EndSheet
$Sheet
S 8000 3800 550  300 
U 5819EDF3
F0 "RTC" 60
F1 "rtc.sch" 60
F2 "SCL" I L 8000 3900 60 
F3 "SDA" B L 8000 4000 60 
$EndSheet
$Sheet
S 8700 950  700  650 
U 5819EF10
F0 "Audio" 60
F1 "audio.sch" 60
F2 "L" I L 8700 1050 60 
F3 "R" I L 8700 1150 60 
F4 "UP/~DOWN" I L 8700 1300 60 
F5 "~CS_L" I L 8700 1400 60 
F6 "~CS_R" I L 8700 1500 60 
F7 "DETECT" O R 9400 1050 60 
$EndSheet
$Comp
L GND #PWR01
U 1 1 581F524B
P 3000 5700
F 0 "#PWR01" H 3000 5450 50  0001 C CNN
F 1 "GND" H 3005 5527 50  0000 C CNN
F 2 "" H 3000 5700 50  0000 C CNN
F 3 "" H 3000 5700 50  0000 C CNN
	1    3000 5700
	1    0    0    -1  
$EndComp
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
$Comp
L GND #PWR02
U 1 1 581F752E
P 1000 1950
F 0 "#PWR02" H 1000 1700 50  0001 C CNN
F 1 "GND" V 1005 1822 50  0000 R CNN
F 2 "" H 1000 1950 50  0000 C CNN
F 3 "" H 1000 1950 50  0000 C CNN
	1    1000 1950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 581F7634
P 1000 2800
F 0 "#PWR03" H 1000 2550 50  0001 C CNN
F 1 "GND" V 1005 2672 50  0000 R CNN
F 2 "" H 1000 2800 50  0000 C CNN
F 3 "" H 1000 2800 50  0000 C CNN
	1    1000 2800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 581F76B8
P 1000 3200
F 0 "#PWR04" H 1000 2950 50  0001 C CNN
F 1 "GND" V 1005 3072 50  0000 R CNN
F 2 "" H 1000 3200 50  0000 C CNN
F 3 "" H 1000 3200 50  0000 C CNN
	1    1000 3200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 581F7709
P 1000 3500
F 0 "#PWR05" H 1000 3250 50  0001 C CNN
F 1 "GND" V 1005 3372 50  0000 R CNN
F 2 "" H 1000 3500 50  0000 C CNN
F 3 "" H 1000 3500 50  0000 C CNN
	1    1000 3500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 581F7744
P 1000 4200
F 0 "#PWR06" H 1000 3950 50  0001 C CNN
F 1 "GND" V 1005 4072 50  0000 R CNN
F 2 "" H 1000 4200 50  0000 C CNN
F 3 "" H 1000 4200 50  0000 C CNN
	1    1000 4200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 581F77D7
P 1000 4450
F 0 "#PWR07" H 1000 4200 50  0001 C CNN
F 1 "GND" V 1005 4322 50  0000 R CNN
F 2 "" H 1000 4450 50  0000 C CNN
F 3 "" H 1000 4450 50  0000 C CNN
	1    1000 4450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 581F7812
P 1000 4950
F 0 "#PWR08" H 1000 4700 50  0001 C CNN
F 1 "GND" V 1005 4822 50  0000 R CNN
F 2 "" H 1000 4950 50  0000 C CNN
F 3 "" H 1000 4950 50  0000 C CNN
	1    1000 4950
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR09
U 1 1 581F7F97
P 1000 4800
F 0 "#PWR09" H 1000 4650 50  0001 C CNN
F 1 "+24V" V 1000 4950 50  0000 L CNN
F 2 "" H 1000 4800 50  0000 C CNN
F 3 "" H 1000 4800 50  0000 C CNN
	1    1000 4800
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR010
U 1 1 581F7FED
P 1000 5100
F 0 "#PWR010" H 1000 4950 50  0001 C CNN
F 1 "+3V3" V 1000 5250 50  0000 L CNN
F 2 "" H 1000 5100 50  0000 C CNN
F 3 "" H 1000 5100 50  0000 C CNN
	1    1000 5100
	0    1    1    0   
$EndComp
$Sheet
S 6650 900  800  500 
U 581F67DF
F0 "SD Card" 60
F1 "sd.sch" 60
F2 "MISO" O L 6650 1000 60 
F3 "MOSI" I L 6650 1100 60 
F4 "SS" I L 6650 1200 60 
F5 "SCK" I L 6650 1300 60 
F6 "WP" O R 7450 1000 60 
F7 "DETECT" O R 7450 1100 60 
$EndSheet
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
F15 "AN" O R 10350 5750 60 
$EndSheet
$Sheet
S 10050 850  950  800 
U 581F8966
F0 "VGA" 60
F1 "vga.sch" 60
$EndSheet
$Comp
L R R1001
U 1 1 58224307
P 5600 4600
F 0 "R1001" V 5550 4350 50  0000 C CNN
F 1 "R" V 5600 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5530 4600 50  0001 C CNN
F 3 "" H 5600 4600 50  0000 C CNN
	1    5600 4600
	0    -1   -1   0   
$EndComp
$Comp
L R R1002
U 1 1 582244B8
P 5600 4500
F 0 "R1002" V 5650 4250 50  0000 C CNN
F 1 "R" V 5600 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5530 4500 50  0001 C CNN
F 3 "" H 5600 4500 50  0000 C CNN
	1    5600 4500
	0    -1   -1   0   
$EndComp
$Comp
L SW_Push SW1001
U 1 1 5823964C
P 3500 2350
F 0 "SW1001" H 3500 2605 50  0000 C CNN
F 1 "Power" H 3500 2514 50  0000 C CNN
F 2 "lib:SMD-TACT-5.2x5.2x2mm" H 3500 2350 50  0001 C CNN
F 3 "" H 3500 2350 50  0000 C CNN
	1    3500 2350
	1    0    0    -1  
$EndComp
Text Label 10400 5750 0    60   ~ 0
EXT_AN
Text Label 10400 4750 0    60   ~ 0
EXT_DET
Text Label 7500 3900 0    60   ~ 0
I2C_SDA
Text Label 7500 4000 0    60   ~ 0
I2C_SCL
Text Label 8600 5650 0    60   ~ 0
I2C_SDA
Text Label 8600 5750 0    60   ~ 0
I2C_SCL
$Comp
L +3V3 #PWR011
U 1 1 58A469F7
P 5800 4550
F 0 "#PWR011" H 5850 4600 50  0001 C CNN
F 1 "+3V3" V 5815 4678 50  0000 L CNN
F 2 "" H -500 0   50  0001 C CNN
F 3 "" H -500 0   50  0001 C CNN
	1    5800 4550
	0    1    1    0   
$EndComp
Text Label 6900 5100 0    60   ~ 0
MOUSE_X
Text Label 6900 5200 0    60   ~ 0
MOUSE_Y
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
	4950 4950 5450 4950
Wire Wire Line
	4950 5050 5450 5050
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
	10350 4600 10800 4600
Wire Wire Line
	10350 4750 10800 4750
Wire Wire Line
	10350 5750 10800 5750
Wire Wire Line
	8600 4600 9050 4600
Wire Wire Line
	9050 4700 8600 4700
Wire Wire Line
	9050 4800 8600 4800
Wire Wire Line
	9050 4950 8600 4950
Wire Wire Line
	9050 5050 8600 5050
Wire Wire Line
	9050 5150 8600 5150
Wire Wire Line
	9050 5250 8600 5250
Wire Wire Line
	9050 5650 8600 5650
Wire Wire Line
	9050 5400 8600 5400
Wire Wire Line
	9050 5500 8600 5500
Wire Wire Line
	9050 5750 8600 5750
Wire Wire Line
	7500 3900 8000 3900
Wire Wire Line
	7500 4000 8000 4000
Wire Wire Line
	5750 4500 5750 4600
Wire Wire Line
	5800 4550 5750 4550
Connection ~ 5750 4550
Wire Wire Line
	6800 5100 7300 5100
Wire Wire Line
	6800 5200 7300 5200
Wire Wire Line
	5400 1450 5850 1450
Wire Wire Line
	5400 1550 5850 1550
Wire Wire Line
	5400 1650 5850 1650
Wire Wire Line
	5400 1750 5850 1750
Wire Wire Line
	4150 1450 4600 1450
Wire Wire Line
	4150 1750 4600 1750
Text Label 5450 1450 0    60   ~ 0
KBD_Q0
Text Label 5450 1550 0    60   ~ 0
KBD_Q1
Text Label 5450 1650 0    60   ~ 0
KBD_Q2
Text Label 5450 1750 0    60   ~ 0
KBD_Q3
Text Label 4200 1450 0    60   ~ 0
KBD_CLK
Text Label 4200 1750 0    60   ~ 0
KBD_RST
Text Label 6200 1100 0    60   ~ 0
SPI_MOSI
Text Label 6200 1000 0    60   ~ 0
SPI_MISO
Text Label 6200 1300 0    60   ~ 0
SPI_SCK
Wire Wire Line
	6200 1000 6650 1000
Wire Wire Line
	6200 1100 6650 1100
Wire Wire Line
	6200 1200 6650 1200
Wire Wire Line
	6200 1300 6650 1300
Text Label 8600 4700 0    60   ~ 0
SPI_MOSI
Text Label 8600 4600 0    60   ~ 0
SPI_MISO
Text Label 8600 4800 0    60   ~ 0
SPI_SCK
Text Label 8600 5400 0    60   ~ 0
UART_TX
Text Label 8600 5500 0    60   ~ 0
UART_RX
Text Label 6200 1200 0    60   ~ 0
SPI_SS3
Text Label 8600 4950 0    60   ~ 0
SPI_SS4
Text Label 8600 5050 0    60   ~ 0
SPI_SS5
Text Label 8600 5150 0    60   ~ 0
SPI_SS6
Text Label 8600 5250 0    60   ~ 0
SPI_SS7
Text Label 8450 2650 0    60   ~ 0
PWR_SHDN_3
Wire Wire Line
	8300 2650 9100 2650
Wire Wire Line
	8300 2750 9100 2750
Text Label 8450 2750 0    60   ~ 0
PWR_SHDN_24
$Comp
L R R1003
U 1 1 58A574F1
P 8300 2500
F 0 "R1003" H 8370 2546 50  0000 L CNN
F 1 "R" H 8370 2455 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V -270 350 50  0001 C CNN
F 3 "" H -200 350 50  0001 C CNN
	1    8300 2500
	1    0    0    -1  
$EndComp
$Comp
L R R1004
U 1 1 58A57622
P 8300 2900
F 0 "R1004" H 8370 2946 50  0000 L CNN
F 1 "R" H 8370 2855 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V -270 700 50  0001 C CNN
F 3 "" H -200 700 50  0001 C CNN
	1    8300 2900
	1    0    0    -1  
$EndComp
Text Label 8250 1050 0    60   ~ 0
AUDIO_L
Text Label 8250 1150 0    60   ~ 0
AUDIO_R
Wire Wire Line
	8250 1300 8700 1300
Wire Wire Line
	8700 1400 8250 1400
Wire Wire Line
	8700 1500 8250 1500
Wire Wire Line
	8700 1050 8250 1050
Wire Wire Line
	8700 1150 8250 1150
Text Label 8250 1300 0    60   ~ 0
AUD_UD
Text Label 8250 1400 0    60   ~ 0
AUD_CS_L
Text Label 8250 1500 0    60   ~ 0
AUD_CS_R
Text Label 4950 4800 0    60   ~ 0
AUD_UD
Text Label 4950 2900 0    60   ~ 0
AUD_CS_L
Text Label 4950 2800 0    60   ~ 0
AUD_CS_R
Text Label 4950 4300 0    60   ~ 0
EXT_DET
Text Label 4950 4200 0    60   ~ 0
EXT_AN
Wire Wire Line
	5450 4300 4950 4300
Wire Wire Line
	5450 5150 4950 5150
Wire Wire Line
	5450 3350 4950 3350
Wire Wire Line
	5450 3250 4950 3250
Text Label 4950 3000 0    60   ~ 0
KBD_Q0
Text Label 4950 5350 0    60   ~ 0
KBD_Q1
Text Label 4950 5250 0    60   ~ 0
KBD_Q2
Text Label 4950 4400 0    60   ~ 0
KBD_Q3
Text Label 4950 3350 0    60   ~ 0
KBD_CLK
Text Label 4950 3250 0    60   ~ 0
KBD_RST
Text Label 3700 2350 0    60   ~ 0
PWR_BTN
Text Label 4950 3100 0    60   ~ 0
EXTINT0
Text Label 10400 4600 0    60   ~ 0
EXTINT1
Text Label 4950 5150 0    60   ~ 0
PWR_BTN
Text Label 4950 5650 0    60   ~ 0
PWR_SHDN_3
Text Label 4950 5550 0    60   ~ 0
PWR_SHDN_24
Wire Wire Line
	4950 5650 5450 5650
Wire Wire Line
	4950 5550 5450 5550
Text Label 4950 3850 0    60   ~ 0
PWRON_RESET
Text Label 4950 5450 0    60   ~ 0
CPURST
Wire Wire Line
	4950 3850 5450 3850
Wire Wire Line
	4950 5450 5450 5450
NoConn ~ 1400 1800
NoConn ~ 1400 2100
Text Label 950  1800 0    60   ~ 0
CLK33
Text Label 950  2100 0    60   ~ 0
CLK12
Wire Wire Line
	9400 1050 9850 1050
Text Label 9450 1050 0    60   ~ 0
AUD_DET
Text Label 4950 4100 0    60   ~ 0
AUD_DET
Wire Wire Line
	7450 1000 7900 1000
Wire Wire Line
	7450 1100 7900 1100
Text Label 7500 1000 0    60   ~ 0
SD_WP
Text Label 7500 1100 0    60   ~ 0
SD_DET
Text Label 4950 3950 0    60   ~ 0
SD_DET
Wire Wire Line
	4950 4100 5450 4100
Wire Wire Line
	4950 4700 6400 4700
Wire Wire Line
	4950 4200 5450 4200
Wire Wire Line
	4950 4800 5450 4800
Wire Wire Line
	4950 2900 5450 2900
Wire Wire Line
	4950 2800 5450 2800
Wire Wire Line
	4950 3100 5450 3100
Wire Wire Line
	4950 3000 5450 3000
Wire Wire Line
	4950 5350 5450 5350
Wire Wire Line
	4950 5250 5450 5250
Wire Wire Line
	4950 4400 5450 4400
Wire Wire Line
	4950 3950 5450 3950
$Comp
L LED D1001
U 1 1 58A4D1EF
P 3550 900
F 0 "D1001" V 3588 782 50  0000 R CNN
F 1 "LED_PWR" V 3497 782 50  0000 R CNN
F 2 "LEDs:LED-3MM" H 250 -1150 50  0001 C CNN
F 3 "" H 250 -1150 50  0001 C CNN
	1    3550 900 
	0    -1   -1   0   
$EndComp
$Comp
L R R1006
U 1 1 58A4D893
P 3550 1200
F 0 "R1006" H 3620 1246 50  0000 L CNN
F 1 "1k" H 3620 1155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 130 -800 50  0001 C CNN
F 3 "" H 200 -800 50  0001 C CNN
	1    3550 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 58A4D9DD
P 3550 1350
F 0 "#PWR012" H 250 -650 50  0001 C CNN
F 1 "GND" H 3555 1177 50  0000 C CNN
F 2 "" H 250 -400 50  0001 C CNN
F 3 "" H 250 -400 50  0001 C CNN
	1    3550 1350
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR013
U 1 1 58A4DB27
P 3550 750
F 0 "#PWR013" H 100 -1200 50  0001 C CNN
F 1 "+3V3" H 3565 923 50  0000 C CNN
F 2 "" H 100 -1050 50  0001 C CNN
F 3 "" H 100 -1050 50  0001 C CNN
	1    3550 750 
	1    0    0    -1  
$EndComp
$Comp
L MC78L05ACH U1002
U 1 1 58A5B00E
P 2450 3550
F 0 "U1002" H 2450 3867 50  0000 C CNN
F 1 "L78L33ACUTR" H 2450 3776 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT89-3_Housing" H -50 1150 50  0001 C CNN
F 3 "" H -50 1150 50  0001 C CNN
	1    2450 3550
	1    0    0    -1  
$EndComp
$Comp
L C C1001
U 1 1 58A5F9BD
P 2050 3650
F 0 "C1001" H 1750 3750 50  0000 L CNN
F 1 "C" H 1750 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H -1062 1250 50  0001 C CNN
F 3 "" H -1100 1400 50  0001 C CNN
	1    2050 3650
	1    0    0    -1  
$EndComp
$Comp
L C C1002
U 1 1 58A5FB28
P 2850 3650
F 0 "C1002" H 2965 3696 50  0000 L CNN
F 1 "C" H 2965 3605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H -112 950 50  0001 C CNN
F 3 "" H -150 1100 50  0001 C CNN
	1    2850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3800 2850 3800
Connection ~ 2450 3800
$Comp
L GND #PWR014
U 1 1 58A610B7
P 2450 3800
F 0 "#PWR014" H -200 -450 50  0001 C CNN
F 1 "GND" H 2455 3627 50  0000 C CNN
F 2 "" H -200 -200 50  0001 C CNN
F 3 "" H -200 -200 50  0001 C CNN
	1    2450 3800
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR015
U 1 1 58A6141E
P 2050 3500
F 0 "#PWR015" H -350 200 50  0001 C CNN
F 1 "VAA" H 2067 3673 50  0000 C CNN
F 2 "" H -350 350 50  0001 C CNN
F 3 "" H -350 350 50  0001 C CNN
	1    2050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3500 2850 3500
Connection ~ 3050 3100
Connection ~ 3050 2800
$Comp
L R R1005
U 1 1 58A61F8B
P 3550 2450
F 0 "R1005" V 3650 2450 50  0000 C CNN
F 1 "100k" V 3550 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V -970 200 50  0001 C CNN
F 3 "" H -900 200 50  0001 C CNN
	1    3550 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 2350 4100 2350
Wire Wire Line
	3700 2450 3700 2350
$Comp
L GND #PWR016
U 1 1 58A62D39
P 3300 2350
F 0 "#PWR016" H -950 -400 50  0001 C CNN
F 1 "GND" V 3305 2222 50  0000 R CNN
F 2 "" H -950 -150 50  0001 C CNN
F 3 "" H -950 -150 50  0001 C CNN
	1    3300 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2200 3050 3500
Wire Wire Line
	3050 2450 3400 2450
$Comp
L GND #PWR017
U 1 1 58A674BE
P 8300 3050
F 0 "#PWR017" H 8350 3100 50  0001 C CNN
F 1 "GND" H 8305 2877 50  0000 C CNN
F 2 "" H 50  -50 50  0001 C CNN
F 3 "" H 50  -50 50  0001 C CNN
	1    8300 3050
	1    0    0    -1  
$EndComp
$Comp
L +3.3VP #PWR018
U 1 1 58A5F469
P 3050 2200
F 0 "#PWR018" H 900 -100 50  0001 C CNN
F 1 "+3.3VP" H 3070 2343 50  0000 C CNN
F 2 "" H 750 -50 50  0001 C CNN
F 3 "" H 750 -50 50  0001 C CNN
	1    3050 2200
	1    0    0    -1  
$EndComp
Connection ~ 3050 2450
$Comp
L +3.3VP #PWR019
U 1 1 58A5FC40
P 8300 2350
F 0 "#PWR019" H 6150 50  50  0001 C CNN
F 1 "+3.3VP" H 8320 2493 50  0000 C CNN
F 2 "" H 6000 100 50  0001 C CNN
F 3 "" H 6000 100 50  0001 C CNN
	1    8300 2350
	1    0    0    -1  
$EndComp
Text GLabel 6400 4700 2    60   Input ~ 0
RESET
$Comp
L R R1007
U 1 1 58A64298
P 6300 4550
F 0 "R1007" H 6400 4550 50  0000 C CNN
F 1 "10k" V 6300 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6230 4550 50  0001 C CNN
F 3 "" H 6300 4550 50  0000 C CNN
	1    6300 4550
	1    0    0    -1  
$EndComp
Connection ~ 6300 4700
$Comp
L +3.3VP #PWR020
U 1 1 58A6621C
P 6300 4400
F 0 "#PWR020" H 4150 2100 50  0001 C CNN
F 1 "+3.3VP" H 6320 4543 50  0000 C CNN
F 2 "" H 4000 2150 50  0001 C CNN
F 3 "" H 4000 2150 50  0001 C CNN
	1    6300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6500 4550 6500
Wire Wire Line
	3500 6700 4550 6700
Wire Wire Line
	3450 6400 4550 6400
Text Label 3700 6700 0    60   ~ 0
SPI_SCK
Text Label 3700 6500 0    60   ~ 0
SPI_MISO
Text Label 3700 6400 0    60   ~ 0
SPI_MOSI
$Comp
L R R1009
U 1 1 58A68BB9
P 3450 6250
F 0 "R1009" H 3520 6296 50  0000 L CNN
F 1 "47k" H 3520 6205 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V -2570 100 50  0001 C CNN
F 3 "" H -2500 100 50  0001 C CNN
	1    3450 6250
	1    0    0    -1  
$EndComp
$Comp
L R R1008
U 1 1 58A68D48
P 3200 6250
F 0 "R1008" H 3270 6296 50  0000 L CNN
F 1 "47k" H 3270 6205 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V -170 0   50  0001 C CNN
F 3 "" H -100 0   50  0001 C CNN
	1    3200 6250
	1    0    0    -1  
$EndComp
$Comp
L R R1010
U 1 1 58A68E7F
P 3500 6850
F 0 "R1010" H 3570 6896 50  0000 L CNN
F 1 "47k" H 3570 6805 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 330 650 50  0001 C CNN
F 3 "" H 400 650 50  0001 C CNN
	1    3500 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6500 3200 6400
$Comp
L +3.3VP #PWR021
U 1 1 58A69C82
P 3450 6100
F 0 "#PWR021" H 1300 3800 50  0001 C CNN
F 1 "+3.3VP" H 3470 6243 50  0000 C CNN
F 2 "" H 1150 3850 50  0001 C CNN
F 3 "" H 1150 3850 50  0001 C CNN
	1    3450 6100
	1    0    0    -1  
$EndComp
$Comp
L +3.3VP #PWR022
U 1 1 58A6A0BF
P 3200 6100
F 0 "#PWR022" H 1050 3800 50  0001 C CNN
F 1 "+3.3VP" H 3220 6243 50  0000 C CNN
F 2 "" H 900 3850 50  0001 C CNN
F 3 "" H 900 3850 50  0001 C CNN
	1    3200 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 58A6A217
P 3500 7000
F 0 "#PWR023" H 3550 7050 50  0001 C CNN
F 1 "GND" H 3505 6827 50  0000 C CNN
F 2 "" H -1650 800 50  0001 C CNN
F 3 "" H -1650 800 50  0001 C CNN
	1    3500 7000
	1    0    0    -1  
$EndComp
$Comp
L C C1003
U 1 1 58A68B7C
P 2900 2800
F 0 "C1003" V 2648 2800 50  0000 C CNN
F 1 "100n" V 2739 2800 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 588 -50 50  0001 C CNN
F 3 "" H 550 100 50  0001 C CNN
	1    2900 2800
	0    1    1    0   
$EndComp
$Comp
L C C1004
U 1 1 58A68D67
P 2900 3100
F 0 "C1004" V 3100 3100 50  0000 C CNN
F 1 "100n" V 3050 3100 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 38  -150 50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    2900 3100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR024
U 1 1 58A69569
P 2750 2800
F 0 "#PWR024" H 450 50  50  0001 C CNN
F 1 "GND" V 2755 2672 50  0000 R CNN
F 2 "" H 450 300 50  0001 C CNN
F 3 "" H 450 300 50  0001 C CNN
	1    2750 2800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR025
U 1 1 58A69716
P 2750 3100
F 0 "#PWR025" H 50  -250 50  0001 C CNN
F 1 "GND" V 2755 2972 50  0000 R CNN
F 2 "" H 50  0   50  0001 C CNN
F 3 "" H 50  0   50  0001 C CNN
	1    2750 3100
	0    1    1    0   
$EndComp
$EndSCHEMATC
