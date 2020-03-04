EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Goldcap-XBee"
Date "2020-01-23"
Rev "R1"
Comp ""
Comment1 "This is revision 2 of the GoldCap check. This time directly using an XBEE"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L XBee-Adapter:DIGI_XBEE H1
U 1 1 5E29B181
P 9600 3950
F 0 "H1" H 10400 3050 60  0000 C CNN
F 1 "DIGI_XBEE" H 9650 3950 60  0000 C CNN
F 2 "XBee-Adapter:XBEE_S2C" H 8950 3750 60  0001 C CNN
F 3 "" H 8950 3750 60  0000 C CNN
	1    9600 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5E29C815
P 4100 3900
F 0 "C2" H 4218 3946 50  0000 L CNN
F 1 "470mF 5V5" H 4218 3855 50  0000 L CNN
F 2 "GoldCap-Check:CP_Radial_D21.5mm_P5.00mm" H 4138 3750 50  0001 C CNN
F 3 "~" H 4100 3900 50  0001 C CNN
	1    4100 3900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E29CCD4
P 4100 3450
F 0 "R5" H 4170 3496 50  0000 L CNN
F 1 "33Ω" H 4170 3405 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 4030 3450 50  0001 C CNN
F 3 "~" H 4100 3450 50  0001 C CNN
	1    4100 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E29D3DB
P 4100 4350
F 0 "#PWR0101" H 4100 4100 50  0001 C CNN
F 1 "GND" H 4105 4177 50  0000 C CNN
F 2 "" H 4100 4350 50  0001 C CNN
F 3 "" H 4100 4350 50  0001 C CNN
	1    4100 4350
	1    0    0    -1  
$EndComp
$Comp
L GoldCap:IRLML6401 Q2
U 1 1 5E29D96F
P 3300 2750
F 0 "Q2" V 3643 2750 50  0000 C CNN
F 1 "IRLML6401" V 3552 2750 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3500 2675 50  0001 L CIN
F 3 "" H 3300 2750 50  0001 L CNN
	1    3300 2750
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC847 Q1
U 1 1 5E2A003B
P 3200 3450
F 0 "Q1" H 3391 3496 50  0000 L CNN
F 1 "BC847" H 3391 3405 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3400 3375 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 3200 3450 50  0001 L CNN
	1    3200 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E2A0C17
P 2900 3900
F 0 "R3" H 2970 3946 50  0000 L CNN
F 1 "100kΩ" H 2970 3855 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 2830 3900 50  0001 C CNN
F 3 "~" H 2900 3900 50  0001 C CNN
	1    2900 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E2A1337
P 2350 3450
F 0 "R2" V 2143 3450 50  0000 C CNN
F 1 "470kΩ" V 2234 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2280 3450 50  0001 C CNN
F 3 "~" H 2350 3450 50  0001 C CNN
	1    2350 3450
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5E2A1EA9
P 2600 3900
F 0 "C1" H 2715 3946 50  0000 L CNN
F 1 "100nF" H 2715 3855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2638 3750 50  0001 C CNN
F 3 "~" H 2600 3900 50  0001 C CNN
	1    2600 3900
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E2A27C1
P 9200 2600
F 0 "C4" H 9315 2646 50  0000 L CNN
F 1 "100nF" H 9315 2555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9238 2450 50  0001 C CNN
F 3 "~" H 9200 2600 50  0001 C CNN
	1    9200 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E2A3415
P 9200 2800
F 0 "#PWR0102" H 9200 2550 50  0001 C CNN
F 1 "GND" H 9205 2627 50  0000 C CNN
F 2 "" H 9200 2800 50  0001 C CNN
F 3 "" H 9200 2800 50  0001 C CNN
	1    9200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3450 1900 3450
Wire Wire Line
	2500 3450 2600 3450
$Comp
L power:GND #PWR0103
U 1 1 5E2A728E
P 2250 4350
F 0 "#PWR0103" H 2250 4100 50  0001 C CNN
F 1 "GND" H 2255 4177 50  0000 C CNN
F 2 "" H 2250 4350 50  0001 C CNN
F 3 "" H 2250 4350 50  0001 C CNN
	1    2250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4200 2900 4200
Wire Wire Line
	2250 4200 2250 4350
Wire Wire Line
	2600 4200 2600 4050
Wire Wire Line
	2600 3750 2600 3450
Connection ~ 2600 4200
Wire Wire Line
	2600 4200 2250 4200
Connection ~ 2600 3450
Wire Wire Line
	2600 3450 2900 3450
Wire Wire Line
	2900 4200 2900 4050
Wire Wire Line
	2900 3750 2900 3450
Connection ~ 2900 4200
Wire Wire Line
	2900 4200 2600 4200
Connection ~ 2900 3450
Wire Wire Line
	2900 3450 3000 3450
Wire Wire Line
	3500 2650 4100 2650
Wire Wire Line
	4100 2650 4100 3100
Wire Wire Line
	4100 3600 4100 3750
Connection ~ 4100 2650
Wire Wire Line
	9600 2900 9600 2400
Wire Wire Line
	9600 2400 9200 2400
Wire Wire Line
	9200 2400 9200 2450
Wire Wire Line
	9200 2750 9200 2800
$Comp
L power:GND #PWR0104
U 1 1 5E2C45AD
P 9600 5100
F 0 "#PWR0104" H 9600 4850 50  0001 C CNN
F 1 "GND" H 9605 4927 50  0000 C CNN
F 2 "" H 9600 5100 50  0001 C CNN
F 3 "" H 9600 5100 50  0001 C CNN
	1    9600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4950 9600 5100
Text Label 4800 2650 2    50   ~ 0
VCC
Text Label 9600 2400 2    50   ~ 0
VCC
Text Label 950  2650 0    50   ~ 0
VIN_3V3
Wire Wire Line
	10700 3700 10850 3700
Text Label 11550 3700 2    50   ~ 0
PWR_MON
Wire Wire Line
	8500 3700 7950 3700
Wire Wire Line
	8500 3800 7950 3800
Wire Wire Line
	10700 4400 11550 4400
Text Label 11550 4400 2    50   ~ 0
~XBEE_CTS
Text Label 7950 3700 0    50   ~ 0
XBEE_DOUT
Text Label 7950 3800 0    50   ~ 0
XBEE_DIN
Wire Wire Line
	10700 4300 11650 4300
Text Label 12350 4300 2    50   ~ 0
ON_~SLEEP~
Text Notes 1050 2250 0    50   ~ 0
Officially, the input voltage (i.e. Vb) could be from 10V to 18V.\nThis needs to be dropped down to 5V and then to 3V3.\n
Text Notes 8700 6350 0    50   ~ 0
The XBee sould be configured such that \n\nDID0 - Digital input with Change Interrupt enabled\nAD1 - Analogue input \nVREF - Configured for VIN_3V3. This will drop to zero\n            when the power fails.\n\nWhen the power fails, DID0 will change from 1 to 0 signalling \na send message for that digital input. The analogue will not be\n a part of that message. Since the VREF is zero, the value can \nnot be trusted anyhow.\n
Wire Wire Line
	10700 4200 11100 4200
$Comp
L Device:LED D3
U 1 1 5E2D0154
P 12350 4650
F 0 "D3" V 12389 4533 50  0000 R CNN
F 1 "LED" V 12298 4533 50  0000 R CNN
F 2 "LEDs:LED_0805" H 12350 4650 50  0001 C CNN
F 3 "~" H 12350 4650 50  0001 C CNN
	1    12350 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 5E2D14E5
P 11800 4300
F 0 "R13" H 11870 4346 50  0000 L CNN
F 1 "680Ω" H 11870 4255 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 11730 4300 50  0001 C CNN
F 3 "~" H 11800 4300 50  0001 C CNN
	1    11800 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E2D1C4D
P 12350 4950
F 0 "#PWR0105" H 12350 4700 50  0001 C CNN
F 1 "GND" H 12355 4777 50  0000 C CNN
F 2 "" H 12350 4950 50  0001 C CNN
F 3 "" H 12350 4950 50  0001 C CNN
	1    12350 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12350 4300 12350 4500
Wire Wire Line
	11150 3700 11550 3700
Wire Wire Line
	11950 4300 12350 4300
$Comp
L Device:R R12
U 1 1 5E2DF1D6
P 11250 4200
F 0 "R12" H 11320 4246 50  0000 L CNN
F 1 "0Ω" H 11320 4155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 11180 4200 50  0001 C CNN
F 3 "~" H 11250 4200 50  0001 C CNN
	1    11250 4200
	0    1    -1   0   
$EndComp
Text Label 11900 4200 2    50   ~ 0
VREF
Wire Wire Line
	11400 4200 11900 4200
Text Notes 12550 4900 0    50   ~ 0
3V3 @ 5mA
$Comp
L Device:R R11
U 1 1 5E2C1E1E
P 11000 3700
F 0 "R11" H 11070 3746 50  0000 L CNN
F 1 "0Ω" H 11070 3655 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10930 3700 50  0001 C CNN
F 3 "~" H 11000 3700 50  0001 C CNN
	1    11000 3700
	0    1    1    0   
$EndComp
NoConn ~ 10700 3800
NoConn ~ 10700 3900
NoConn ~ 10700 4100
NoConn ~ 10700 4500
NoConn ~ 8500 4200
NoConn ~ 8500 4100
NoConn ~ 8500 4000
NoConn ~ 8500 3900
Wire Wire Line
	10050 900  9600 900 
Wire Wire Line
	10050 1000 9600 1000
Wire Wire Line
	10050 1100 9600 1100
Wire Wire Line
	10050 1200 9600 1200
Wire Wire Line
	10050 1300 9600 1300
Text Label 3450 900  0    50   ~ 0
VIN_3V3
Text Label 9600 900  0    50   ~ 0
XBEE_DOUT
Text Label 9600 1000 0    50   ~ 0
XBEE_DIN
Text Label 9600 1100 0    50   ~ 0
~XBEE_RTS
Text Label 9600 1200 0    50   ~ 0
~XBEE_CTS
Text Label 6900 900  0    50   ~ 0
VREF
$Comp
L power:GND #PWR0106
U 1 1 5E2C9D94
P 9600 1450
F 0 "#PWR0106" H 9600 1200 50  0001 C CNN
F 1 "GND" H 9605 1277 50  0000 C CNN
F 2 "" H 9600 1450 50  0001 C CNN
F 3 "" H 9600 1450 50  0001 C CNN
	1    9600 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1300 9600 1450
Wire Wire Line
	3750 900  3300 900 
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5E2DE084
P 3950 900
F 0 "J2" H 3922 874 50  0000 R CNN
F 1 "3V3 IN" H 3922 783 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3950 900 50  0001 C CNN
F 3 "~" H 3950 900 50  0001 C CNN
	1    3950 900 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3750 1000 3450 1000
$Comp
L power:GND #PWR0107
U 1 1 5E2DE08F
P 3450 1150
F 0 "#PWR0107" H 3450 900 50  0001 C CNN
F 1 "GND" H 3455 977 50  0000 C CNN
F 2 "" H 3450 1150 50  0001 C CNN
F 3 "" H 3450 1150 50  0001 C CNN
	1    3450 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1000 3450 1050
Wire Wire Line
	7200 900  6900 900 
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5E2E0AE9
P 7400 900
F 0 "J3" H 7372 874 50  0000 R CNN
F 1 "VREF" H 7372 783 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7400 900 50  0001 C CNN
F 3 "~" H 7400 900 50  0001 C CNN
	1    7400 900 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 1000 6900 1000
$Comp
L power:GND #PWR0108
U 1 1 5E2E0AF4
P 6900 1150
F 0 "#PWR0108" H 6900 900 50  0001 C CNN
F 1 "GND" H 6905 977 50  0000 C CNN
F 2 "" H 6900 1150 50  0001 C CNN
F 3 "" H 6900 1150 50  0001 C CNN
	1    6900 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1000 6900 1150
$Comp
L Connector:Conn_01x05_Male J4
U 1 1 5E2EDE8B
P 10250 1100
F 0 "J4" H 10222 1124 50  0000 R CNN
F 1 "USART" H 10222 1033 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 10250 1100 50  0001 C CNN
F 3 "~" H 10250 1100 50  0001 C CNN
	1    10250 1100
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5E2F2A62
P 1350 3200
F 0 "D1" V 1389 3083 50  0000 R CNN
F 1 "LED" V 1298 3083 50  0000 R CNN
F 2 "LEDs:LED_0805" H 1350 3200 50  0001 C CNN
F 3 "~" H 1350 3200 50  0001 C CNN
	1    1350 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5E2F2A6C
P 1350 3600
F 0 "R1" H 1420 3646 50  0000 L CNN
F 1 "680Ω" H 1420 3555 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 1280 3600 50  0001 C CNN
F 3 "~" H 1350 3600 50  0001 C CNN
	1    1350 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5E2F2A76
P 1350 3850
F 0 "#PWR0109" H 1350 3600 50  0001 C CNN
F 1 "GND" H 1355 3677 50  0000 C CNN
F 2 "" H 1350 3850 50  0001 C CNN
F 3 "" H 1350 3850 50  0001 C CNN
	1    1350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2650 1350 3050
Wire Wire Line
	1350 3350 1350 3450
Wire Wire Line
	1350 3750 1350 3850
Text Notes 1450 3800 0    50   ~ 0
3V3 @ 5mA
Connection ~ 1350 2650
Wire Wire Line
	1350 2650 950  2650
Text Label 1700 3450 0    50   ~ 0
Vb
$Comp
L Device:R R10
U 1 1 5E337F89
P 11000 3600
F 0 "R10" H 11070 3646 50  0000 L CNN
F 1 "0Ω" H 11070 3555 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10930 3600 50  0001 C CNN
F 3 "~" H 11000 3600 50  0001 C CNN
	1    11000 3600
	0    1    -1   0   
$EndComp
Wire Wire Line
	10700 3600 10850 3600
Wire Wire Line
	11150 3600 11550 3600
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E346011
P 3300 900
F 0 "#FLG0101" H 3300 975 50  0001 C CNN
F 1 "PWR_FLAG" H 3300 1073 50  0000 C CNN
F 2 "" H 3300 900 50  0001 C CNN
F 3 "~" H 3300 900 50  0001 C CNN
	1    3300 900 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E347F1C
P 3450 1050
F 0 "#FLG0102" H 3450 1125 50  0001 C CNN
F 1 "PWR_FLAG" V 3450 1177 50  0000 L CNN
F 2 "" H 3450 1050 50  0001 C CNN
F 3 "~" H 3450 1050 50  0001 C CNN
	1    3450 1050
	0    -1   -1   0   
$EndComp
Connection ~ 3450 1050
Wire Wire Line
	3450 1050 3450 1150
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5E348B7A
P 4350 2650
F 0 "#FLG0103" H 4350 2725 50  0001 C CNN
F 1 "PWR_FLAG" H 4350 2823 50  0000 C CNN
F 2 "" H 4350 2650 50  0001 C CNN
F 3 "~" H 4350 2650 50  0001 C CNN
	1    4350 2650
	1    0    0    -1  
$EndComp
Connection ~ 4350 2650
Wire Wire Line
	4350 2650 4800 2650
Wire Wire Line
	12350 4800 12350 4950
Text Notes 7150 1500 0    50   ~ 0
VREF should be a stable 3V3\nreference voltage\nXBee Digi Mesh does not use this!\nIt has a fixed reference of 1.2V. The analog\ninput will not read anything above 1.2V
Text Notes 4350 1000 0    50   ~ 0
3V3_IN is a 3V3 input voltage that can vary to \nzero.
Wire Wire Line
	1350 2650 1650 2650
Text Label 1350 850  0    50   ~ 0
Vb
Wire Wire Line
	1650 850  1200 850 
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5E35D866
P 1850 850
F 0 "J1" H 1822 824 50  0000 R CNN
F 1 "5-7.5V" H 1822 733 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1850 850 50  0001 C CNN
F 3 "~" H 1850 850 50  0001 C CNN
	1    1850 850 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1650 950  1350 950 
$Comp
L power:GND #PWR0110
U 1 1 5E35D871
P 1350 1100
F 0 "#PWR0110" H 1350 850 50  0001 C CNN
F 1 "GND" H 1355 927 50  0000 C CNN
F 2 "" H 1350 1100 50  0001 C CNN
F 3 "" H 1350 1100 50  0001 C CNN
	1    1350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 950  1350 1000
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5E35D87C
P 1200 850
F 0 "#FLG0104" H 1200 925 50  0001 C CNN
F 1 "PWR_FLAG" H 1200 1023 50  0000 C CNN
F 2 "" H 1200 850 50  0001 C CNN
F 3 "~" H 1200 850 50  0001 C CNN
	1    1200 850 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5E35D886
P 1350 1000
F 0 "#FLG0105" H 1350 1075 50  0001 C CNN
F 1 "PWR_FLAG" V 1350 1127 50  0000 L CNN
F 2 "" H 1350 1000 50  0001 C CNN
F 3 "~" H 1350 1000 50  0001 C CNN
	1    1350 1000
	0    -1   -1   0   
$EndComp
Connection ~ 1350 1000
Wire Wire Line
	1350 1000 1350 1100
$Comp
L Device:R R4
U 1 1 5E366D00
P 3700 3100
F 0 "R4" H 3770 3146 50  0000 L CNN
F 1 "100kΩ" H 3770 3055 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 3630 3100 50  0001 C CNN
F 3 "~" H 3700 3100 50  0001 C CNN
	1    3700 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 3100 3550 3100
Wire Wire Line
	3850 3100 4100 3100
Connection ~ 3300 3100
Wire Wire Line
	3300 3100 3300 3250
Connection ~ 4100 3100
Wire Wire Line
	4100 3100 4100 3300
Wire Wire Line
	3300 2950 3300 3100
Wire Wire Line
	3300 3650 3300 4200
Wire Wire Line
	4100 4050 4100 4350
$Comp
L power:GND #PWR0111
U 1 1 5E37654C
P 4500 7300
F 0 "#PWR0111" H 4500 7050 50  0001 C CNN
F 1 "GND" H 4505 7127 50  0000 C CNN
F 2 "" H 4500 7300 50  0001 C CNN
F 3 "" H 4500 7300 50  0001 C CNN
	1    4500 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5E376CD8
P 4500 6450
F 0 "R6" H 4570 6496 50  0000 L CNN
F 1 "100kΩ" H 4570 6405 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 4430 6450 50  0001 C CNN
F 3 "~" H 4500 6450 50  0001 C CNN
	1    4500 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6600 4500 6700
$Comp
L Device:R R7
U 1 1 5E3772E0
P 4500 6950
F 0 "R7" H 4570 6996 50  0000 L CNN
F 1 "100kΩ" H 4570 6905 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 4430 6950 50  0001 C CNN
F 3 "~" H 4500 6950 50  0001 C CNN
	1    4500 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 7100 4500 7250
Connection ~ 4500 6700
Wire Wire Line
	4500 6700 4500 6800
Wire Wire Line
	5700 6700 5700 6400
Wire Wire Line
	5700 6400 6100 6400
Text Label 8000 6800 2    50   ~ 0
~BATT_LOW~
Text Label 6100 6400 2    50   ~ 0
PWR_MON
$Comp
L Device:R_POT_TRIM RV1
U 1 1 5E3844E1
P 6150 7500
F 0 "RV1" H 6081 7546 50  0000 R CNN
F 1 "10kΩ" H 6081 7455 50  0000 R CNN
F 2 "XBee-Adapter:Trimpot_CT6EP" H 6150 7500 50  0001 C CNN
F 3 "~" H 6150 7500 50  0001 C CNN
F 4 "CT6EP103" H 6150 7500 50  0001 C CNN "MPN"
	1    6150 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 7500 6450 7500
Wire Wire Line
	6150 7650 6150 7750
$Comp
L power:GND #PWR0112
U 1 1 5E389479
P 6150 7750
F 0 "#PWR0112" H 6150 7500 50  0001 C CNN
F 1 "GND" H 6155 7577 50  0000 C CNN
F 2 "" H 6150 7750 50  0001 C CNN
F 3 "" H 6150 7750 50  0001 C CNN
	1    6150 7750
	1    0    0    -1  
$EndComp
$Comp
L Diode:MM5Zxx D2
U 1 1 5E391405
P 4900 7000
F 0 "D2" V 4854 7079 50  0000 L CNN
F 1 "MM5Z3V3T1G" H 4900 7100 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-523" H 4900 6825 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/mm5z2v4.pdf" H 4900 7000 50  0001 C CNN
	1    4900 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 6700 4900 6850
Wire Wire Line
	4900 7250 4500 7250
Wire Wire Line
	4900 7150 4900 7250
Connection ~ 4900 6700
Wire Wire Line
	4900 6700 4500 6700
Connection ~ 4500 7250
Wire Wire Line
	4500 7250 4500 7300
Wire Wire Line
	4500 6150 4500 6300
Text Label 4500 6150 0    50   ~ 0
Vb
$Comp
L Device:R R8
U 1 1 5E36FB31
P 6150 7100
F 0 "R8" H 6220 7146 50  0000 L CNN
F 1 "0Ω" H 6220 7055 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 6080 7100 50  0001 C CNN
F 3 "~" H 6150 7100 50  0001 C CNN
	1    6150 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 7250 6150 7350
Wire Wire Line
	4100 2650 4350 2650
Wire Wire Line
	6150 6950 6150 6850
Wire Wire Line
	6150 6850 6000 6850
$Comp
L Comparator:LMV331 U1
U 1 1 5E37C886
P 6900 6800
F 0 "U1" H 7244 6846 50  0000 L CNN
F 1 "LMV331" H 7244 6755 50  0000 L CNN
F 2 "XBee-Adapter:SOT-25" H 6900 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmv331.pdf" H 6900 7000 50  0001 C CNN
F 4 "LMV331W5-7" H 6900 6800 50  0001 C CNN "MPN"
	1    6900 6800
	1    0    0    1   
$EndComp
Wire Wire Line
	6800 7100 6800 7400
Wire Wire Line
	6800 7400 6600 7400
Wire Wire Line
	6800 6500 6800 6400
$Comp
L power:GND #PWR0113
U 1 1 5E38644A
P 6800 6400
F 0 "#PWR0113" H 6800 6150 50  0001 C CNN
F 1 "GND" H 6805 6227 50  0000 C CNN
F 2 "" H 6800 6400 50  0001 C CNN
F 3 "" H 6800 6400 50  0001 C CNN
	1    6800 6400
	1    0    0    1   
$EndComp
Text Label 6600 7400 0    50   ~ 0
VCC
Text Label 6000 6850 0    50   ~ 0
VCC
Text Notes 11350 3450 0    50   ~ 0
When ~BAT~ == 0 then Power Fail detected.\nThe question is, could this be used to feed the SLEEP_REQ?
Wire Wire Line
	4900 6700 5500 6700
Connection ~ 5700 6700
Wire Wire Line
	5700 6700 6600 6700
Wire Wire Line
	6450 7500 6450 6900
Wire Wire Line
	6450 6900 6600 6900
Text Label 6450 6900 0    50   ~ 0
Vref
Text Notes 6550 7850 0    50   ~ 0
~~1.8V\nVcc will drop when\nthe system is being\nsupplied from the Goldcap
$Comp
L Device:R R9
U 1 1 5E3B1B14
P 7700 4400
F 0 "R9" H 7770 4446 50  0000 L CNN
F 1 "0Ω" H 7770 4355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7630 4400 50  0001 C CNN
F 3 "~" H 7700 4400 50  0001 C CNN
	1    7700 4400
	0    1    -1   0   
$EndComp
Wire Wire Line
	7850 4400 8500 4400
Wire Wire Line
	10700 4000 11550 4000
Text Label 11550 4000 2    50   ~ 0
~XBEE_RTS
$Comp
L Device:C C3
U 1 1 5E3BBE2F
P 5500 7000
F 0 "C3" H 5615 7046 50  0000 L CNN
F 1 "100nF" H 5615 6955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5538 6850 50  0001 C CNN
F 3 "~" H 5500 7000 50  0001 C CNN
	1    5500 7000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 6700 5500 6850
Wire Wire Line
	5500 7150 5500 7300
Connection ~ 5500 6700
Wire Wire Line
	5500 6700 5700 6700
$Comp
L power:GND #PWR0114
U 1 1 5E3C36A3
P 5500 7300
F 0 "#PWR0114" H 5500 7050 50  0001 C CNN
F 1 "GND" H 5505 7127 50  0000 C CNN
F 2 "" H 5500 7300 50  0001 C CNN
F 3 "" H 5500 7300 50  0001 C CNN
	1    5500 7300
	1    0    0    -1  
$EndComp
Text Notes 4500 5950 0    50   ~ 0
The idea of the Zenner is to \nproctect the XBee from any Vb:2 greater\nthan 3V3
$Comp
L power:PWR_FLAG #FLG0106
U 1 1 5E4507A6
P 1650 2650
F 0 "#FLG0106" H 1650 2725 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 2823 50  0000 C CNN
F 2 "" H 1650 2650 50  0001 C CNN
F 3 "~" H 1650 2650 50  0001 C CNN
	1    1650 2650
	1    0    0    -1  
$EndComp
Connection ~ 1650 2650
Wire Wire Line
	1650 2650 3100 2650
$Comp
L power:PWR_FLAG #FLG0107
U 1 1 5E450F70
P 1900 3450
F 0 "#FLG0107" H 1900 3525 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 3623 50  0000 C CNN
F 2 "" H 1900 3450 50  0001 C CNN
F 3 "~" H 1900 3450 50  0001 C CNN
	1    1900 3450
	1    0    0    -1  
$EndComp
Connection ~ 1900 3450
Wire Wire Line
	1900 3450 2200 3450
Wire Wire Line
	7550 4400 7000 4400
Text Label 11550 3600 2    50   ~ 0
~BATT_LOW~
Text Label 7000 4400 0    50   ~ 0
~BATT_LOW~
Text Label 7950 4400 0    50   ~ 0
SLEEP_REQ
Text Notes 11600 3800 0    50   ~ 0
The analog inputs will not read \nanything above 1.2V
Wire Wire Line
	7200 6800 8000 6800
$EndSCHEMATC
