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
L Device:CP C2
U 1 1 5E29C815
P 4100 3900
F 0 "C2" H 4218 3946 50  0000 L CNN
F 1 "470mF 5V5" H 4218 3855 50  0000 L CNN
F 2 "GoldCap-Check:CP_Radial_D21.5mm_P5.00mm" H 4138 3750 50  0001 C CNN
F 3 "~" H 4100 3900 50  0001 C CNN
F 4 "EECF5R5U474" H 4100 3900 50  0001 C CNN "MPN"
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
P 3300 2300
F 0 "Q2" V 3643 2300 50  0000 C CNN
F 1 "IRLML6401" V 3552 2300 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3500 2225 50  0001 L CIN
F 3 "" H 3300 2300 50  0001 L CNN
	1    3300 2300
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
P 11250 2550
F 0 "C4" H 11365 2596 50  0000 L CNN
F 1 "100nF" H 11365 2505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 11288 2400 50  0001 C CNN
F 3 "~" H 11250 2550 50  0001 C CNN
	1    11250 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E2A3415
P 11250 2750
F 0 "#PWR0102" H 11250 2500 50  0001 C CNN
F 1 "GND" H 11255 2577 50  0000 C CNN
F 2 "" H 11250 2750 50  0001 C CNN
F 3 "" H 11250 2750 50  0001 C CNN
	1    11250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3450 1900 3450
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
	4100 3600 4100 3750
Wire Wire Line
	11650 2850 11650 2350
Wire Wire Line
	11650 2350 11250 2350
Wire Wire Line
	11250 2350 11250 2400
Wire Wire Line
	11250 2700 11250 2750
$Comp
L power:GND #PWR0104
U 1 1 5E2C45AD
P 11650 5050
F 0 "#PWR0104" H 11650 4800 50  0001 C CNN
F 1 "GND" H 11655 4877 50  0000 C CNN
F 2 "" H 11650 5050 50  0001 C CNN
F 3 "" H 11650 5050 50  0001 C CNN
	1    11650 5050
	1    0    0    -1  
$EndComp
Text Label 6350 2200 2    50   ~ 0
VCC
Text Label 11650 2350 2    50   ~ 0
VCC
Text Label 650  2200 0    50   ~ 0
VIN_3V3
Wire Wire Line
	12750 3650 12900 3650
Text Label 13600 3650 2    50   ~ 0
PWR_MON
Wire Wire Line
	10550 3650 10000 3650
Wire Wire Line
	10550 3750 10000 3750
Wire Wire Line
	12750 4350 13950 4350
Text Label 13950 4350 2    50   ~ 0
~XBEE_CTS
Text Label 10000 3650 0    50   ~ 0
XBEE_DOUT
Text Label 10000 3750 0    50   ~ 0
XBEE_DIN
Wire Wire Line
	12750 4250 12950 4250
Text Notes 1050 1800 0    50   ~ 0
Officially, the input voltage (i.e. Vb) could be from 10V to 18V.\nThis needs to be dropped down to 5V and then to 3V3.\n
Text Notes 10750 6300 0    50   ~ 0
The XBee sould be configured such that \n\nDID0 - Digital input with Change Interrupt enabled\nAD1 - Analogue input \nVREF - Configured for VIN_3V3. This will drop to zero\n            when the power fails.\n\nWhen the power fails, DID0 will change from 1 to 0 signalling \na send message for that digital input. The analogue will not be\n a part of that message. Since the VREF is zero, the value can \nnot be trusted anyhow.\n
Wire Wire Line
	12750 4150 13300 4150
$Comp
L Device:R R16
U 1 1 5E2D14E5
P 14300 4250
F 0 "R16" V 14400 4200 50  0000 L CNN
F 1 "680Ω" V 14300 4150 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 14230 4250 50  0001 C CNN
F 3 "~" H 14300 4250 50  0001 C CNN
	1    14300 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	13200 3650 13600 3650
$Comp
L Device:R R15
U 1 1 5E2DF1D6
P 13450 4150
F 0 "R15" V 13400 4300 50  0000 L CNN
F 1 "0Ω" V 13450 4100 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 13380 4150 50  0001 C CNN
F 3 "~" H 13450 4150 50  0001 C CNN
	1    13450 4150
	0    1    -1   0   
$EndComp
Text Label 13950 4150 2    50   ~ 0
VREF
Wire Wire Line
	13600 4150 13950 4150
$Comp
L Device:R R14
U 1 1 5E2C1E1E
P 13050 3650
F 0 "R14" H 13120 3696 50  0000 L CNN
F 1 "0Ω" H 13120 3605 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 12980 3650 50  0001 C CNN
F 3 "~" H 13050 3650 50  0001 C CNN
	1    13050 3650
	0    1    1    0   
$EndComp
NoConn ~ 12750 3750
NoConn ~ 12750 3850
NoConn ~ 12750 4450
NoConn ~ 10550 4150
NoConn ~ 10550 4050
NoConn ~ 10550 3850
Wire Wire Line
	2500 9100 2050 9100
Wire Wire Line
	2500 9200 2050 9200
Wire Wire Line
	2500 9300 2050 9300
Wire Wire Line
	2500 9400 2050 9400
Wire Wire Line
	2500 9600 2050 9600
Text Label 2200 6100 0    50   ~ 0
VIN_3V3
Text Label 2050 9100 0    50   ~ 0
XBEE_DOUT
Text Label 2050 9200 0    50   ~ 0
XBEE_DIN
Text Label 2050 9300 0    50   ~ 0
~XBEE_RTS
Text Label 2050 9400 0    50   ~ 0
~XBEE_CTS
Text Label 2200 8200 0    50   ~ 0
VREF
$Comp
L power:GND #PWR0105
U 1 1 5E2C9D94
P 2050 9750
F 0 "#PWR0105" H 2050 9500 50  0001 C CNN
F 1 "GND" H 2055 9577 50  0000 C CNN
F 2 "" H 2050 9750 50  0001 C CNN
F 3 "" H 2050 9750 50  0001 C CNN
	1    2050 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 9600 2050 9750
Wire Wire Line
	2500 6100 2050 6100
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5E2DE084
P 2700 6100
F 0 "J1" H 2672 6074 50  0000 R CNN
F 1 "3V3 IN" H 2672 5983 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 2700 6100 50  0001 C CNN
F 3 "~" H 2700 6100 50  0001 C CNN
	1    2700 6100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2500 6200 2200 6200
$Comp
L power:GND #PWR0106
U 1 1 5E2DE08F
P 2200 6350
F 0 "#PWR0106" H 2200 6100 50  0001 C CNN
F 1 "GND" H 2205 6177 50  0000 C CNN
F 2 "" H 2200 6350 50  0001 C CNN
F 3 "" H 2200 6350 50  0001 C CNN
	1    2200 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6200 2200 6250
Wire Wire Line
	2500 8200 2200 8200
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5E2E0AE9
P 2700 8200
F 0 "J3" H 2672 8174 50  0000 R CNN
F 1 "VREF" H 2672 8083 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 2700 8200 50  0001 C CNN
F 3 "~" H 2700 8200 50  0001 C CNN
	1    2700 8200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2500 8300 2200 8300
$Comp
L power:GND #PWR0107
U 1 1 5E2E0AF4
P 2200 8450
F 0 "#PWR0107" H 2200 8200 50  0001 C CNN
F 1 "GND" H 2205 8277 50  0000 C CNN
F 2 "" H 2200 8450 50  0001 C CNN
F 3 "" H 2200 8450 50  0001 C CNN
	1    2200 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 8300 2200 8450
$Comp
L Device:R R1
U 1 1 5E2F2A6C
P 1050 3900
F 0 "R1" H 1120 3946 50  0000 L CNN
F 1 "680Ω" H 1120 3855 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 980 3900 50  0001 C CNN
F 3 "~" H 1050 3900 50  0001 C CNN
	1    1050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2200 1050 2900
Wire Wire Line
	1050 3650 1050 3750
Wire Wire Line
	1050 4050 1050 4150
Text Notes 1150 4150 0    50   ~ 0
3V3 @ 5mA
Connection ~ 1050 2200
Wire Wire Line
	1050 2200 650  2200
$Comp
L Device:R R13
U 1 1 5E337F89
P 13050 3550
F 0 "R13" H 13120 3596 50  0000 L CNN
F 1 "0Ω" H 13120 3505 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 12980 3550 50  0001 C CNN
F 3 "~" H 13050 3550 50  0001 C CNN
	1    13050 3550
	0    1    -1   0   
$EndComp
Wire Wire Line
	12750 3550 12900 3550
Wire Wire Line
	13200 3550 13600 3550
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E346011
P 2050 6100
F 0 "#FLG0101" H 2050 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 6273 50  0000 C CNN
F 2 "" H 2050 6100 50  0001 C CNN
F 3 "~" H 2050 6100 50  0001 C CNN
	1    2050 6100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E347F1C
P 2200 6250
F 0 "#FLG0102" H 2200 6325 50  0001 C CNN
F 1 "PWR_FLAG" V 2200 6377 50  0000 L CNN
F 2 "" H 2200 6250 50  0001 C CNN
F 3 "~" H 2200 6250 50  0001 C CNN
	1    2200 6250
	0    -1   -1   0   
$EndComp
Connection ~ 2200 6250
Wire Wire Line
	2200 6250 2200 6350
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5E348B7A
P 4350 2200
F 0 "#FLG0103" H 4350 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 4350 2373 50  0000 C CNN
F 2 "" H 4350 2200 50  0001 C CNN
F 3 "~" H 4350 2200 50  0001 C CNN
	1    4350 2200
	1    0    0    -1  
$EndComp
Connection ~ 4350 2200
Wire Wire Line
	4350 2200 5600 2200
Text Notes 3050 8450 0    50   ~ 0
VREF should be a stable 3V3\nreference voltage\nXBee Digi Mesh does not use this!\nIt has a fixed reference of 1.2V. The analog\ninput will not read anything above 1.2V
Text Notes 1400 7000 0    50   ~ 0
3V3_IN is a 3V3 input voltage that can vary to \nzero.
Wire Wire Line
	1050 2200 1650 2200
Text Label 2200 7350 0    50   ~ 0
Vb
Wire Wire Line
	2500 7350 2050 7350
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5E35D866
P 2700 7350
F 0 "J2" H 2672 7324 50  0000 R CNN
F 1 "5-7.5V" H 2672 7233 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 2700 7350 50  0001 C CNN
F 3 "~" H 2700 7350 50  0001 C CNN
	1    2700 7350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2500 7450 2200 7450
$Comp
L power:GND #PWR0108
U 1 1 5E35D871
P 2200 7600
F 0 "#PWR0108" H 2200 7350 50  0001 C CNN
F 1 "GND" H 2205 7427 50  0000 C CNN
F 2 "" H 2200 7600 50  0001 C CNN
F 3 "" H 2200 7600 50  0001 C CNN
	1    2200 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 7450 2200 7500
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5E35D87C
P 2050 7350
F 0 "#FLG0104" H 2050 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 7523 50  0000 C CNN
F 2 "" H 2050 7350 50  0001 C CNN
F 3 "~" H 2050 7350 50  0001 C CNN
	1    2050 7350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5E35D886
P 2200 7500
F 0 "#FLG0105" H 2200 7575 50  0001 C CNN
F 1 "PWR_FLAG" V 2200 7627 50  0000 L CNN
F 2 "" H 2200 7500 50  0001 C CNN
F 3 "~" H 2200 7500 50  0001 C CNN
	1    2200 7500
	0    -1   -1   0   
$EndComp
Connection ~ 2200 7500
Wire Wire Line
	2200 7500 2200 7600
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
	3300 2500 3300 3100
Wire Wire Line
	3300 3650 3300 4200
Wire Wire Line
	4100 4050 4100 4350
$Comp
L power:GND #PWR0109
U 1 1 5E37654C
P 6400 6550
F 0 "#PWR0109" H 6400 6300 50  0001 C CNN
F 1 "GND" H 6405 6377 50  0000 C CNN
F 2 "" H 6400 6550 50  0001 C CNN
F 3 "" H 6400 6550 50  0001 C CNN
	1    6400 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5E376CD8
P 6400 5700
F 0 "R7" H 6470 5746 50  0000 L CNN
F 1 "100kΩ" H 6470 5655 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 6330 5700 50  0001 C CNN
F 3 "~" H 6400 5700 50  0001 C CNN
	1    6400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5850 6400 5950
$Comp
L Device:R R8
U 1 1 5E3772E0
P 6400 6200
F 0 "R8" H 6470 6246 50  0000 L CNN
F 1 "100kΩ" H 6470 6155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 6330 6200 50  0001 C CNN
F 3 "~" H 6400 6200 50  0001 C CNN
	1    6400 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 6350 6400 6500
Connection ~ 6400 5950
Wire Wire Line
	6400 5950 6400 6050
Wire Wire Line
	7600 5950 7600 5650
Wire Wire Line
	7600 5650 8000 5650
Text Label 9900 6050 2    50   ~ 0
~BATT_LOW~
Text Label 8000 5650 2    50   ~ 0
PWR_MON
$Comp
L Device:R_POT_TRIM RV1
U 1 1 5E3844E1
P 8050 6750
F 0 "RV1" H 7981 6796 50  0000 R CNN
F 1 "10kΩ" H 7981 6705 50  0000 R CNN
F 2 "XBee-Adapter:Trimpot_CT6EP" H 8050 6750 50  0001 C CNN
F 3 "~" H 8050 6750 50  0001 C CNN
F 4 "CT6EP103" H 8050 6750 50  0001 C CNN "MPN"
	1    8050 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 6750 8350 6750
Wire Wire Line
	8050 6900 8050 7000
$Comp
L power:GND #PWR0110
U 1 1 5E389479
P 8050 7000
F 0 "#PWR0110" H 8050 6750 50  0001 C CNN
F 1 "GND" H 8055 6827 50  0000 C CNN
F 2 "" H 8050 7000 50  0001 C CNN
F 3 "" H 8050 7000 50  0001 C CNN
	1    8050 7000
	1    0    0    -1  
$EndComp
$Comp
L Diode:MM5Zxx D2
U 1 1 5E391405
P 6800 6250
F 0 "D2" V 6754 6329 50  0000 L CNN
F 1 "MM5Z3V3T1G" H 6800 6350 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-523" H 6800 6075 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/mm5z2v4.pdf" H 6800 6250 50  0001 C CNN
	1    6800 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 5950 6800 6100
Wire Wire Line
	6800 6500 6400 6500
Wire Wire Line
	6800 6400 6800 6500
Connection ~ 6800 5950
Wire Wire Line
	6800 5950 6400 5950
Connection ~ 6400 6500
Wire Wire Line
	6400 6500 6400 6550
Wire Wire Line
	6400 5400 6400 5550
Text Label 6400 5400 0    50   ~ 0
Vb
$Comp
L Device:R R9
U 1 1 5E36FB31
P 8050 6350
F 0 "R9" H 8120 6396 50  0000 L CNN
F 1 "0Ω" H 8120 6305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7980 6350 50  0001 C CNN
F 3 "~" H 8050 6350 50  0001 C CNN
	1    8050 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 6500 8050 6600
Wire Wire Line
	8050 6200 8050 6100
Wire Wire Line
	8050 6100 7900 6100
$Comp
L Comparator:LMV331 U2
U 1 1 5E37C886
P 8800 6050
F 0 "U2" H 9144 6096 50  0000 L CNN
F 1 "LMV331" H 9144 6005 50  0000 L CNN
F 2 "XBee-Adapter:SOT-25" H 8800 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmv331.pdf" H 8800 6250 50  0001 C CNN
F 4 "LMV331W5-7" H 8800 6050 50  0001 C CNN "MPN"
	1    8800 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 6350 8700 6450
$Comp
L power:GND #PWR0111
U 1 1 5E38644A
P 8700 6450
F 0 "#PWR0111" H 8700 6200 50  0001 C CNN
F 1 "GND" H 8705 6277 50  0000 C CNN
F 2 "" H 8700 6450 50  0001 C CNN
F 3 "" H 8700 6450 50  0001 C CNN
	1    8700 6450
	-1   0    0    -1  
$EndComp
Text Label 8500 5300 0    50   ~ 0
VCC
Text Label 7900 6100 0    50   ~ 0
VCC
Text Notes 13400 3400 0    50   ~ 0
When ~BAT~ == 0 then Power Fail detected.\nThe question is, could this be used to feed the SLEEP_REQ?
Wire Wire Line
	6800 5950 7400 5950
Connection ~ 7600 5950
Wire Wire Line
	7600 5950 8500 5950
Wire Wire Line
	8350 6750 8350 6150
Wire Wire Line
	8350 6150 8500 6150
Text Label 8350 6150 0    50   ~ 0
Vref
Text Notes 8450 7100 0    50   ~ 0
~~1.8V\nVcc will drop when\nthe system is being\nsupplied from the Goldcap
Wire Wire Line
	10100 4350 10550 4350
Wire Wire Line
	12750 3950 13600 3950
Text Label 13600 3950 2    50   ~ 0
~XBEE_RTS
$Comp
L Device:C C3
U 1 1 5E3BBE2F
P 7400 6250
F 0 "C3" H 7515 6296 50  0000 L CNN
F 1 "100nF" H 7515 6205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7438 6100 50  0001 C CNN
F 3 "~" H 7400 6250 50  0001 C CNN
	1    7400 6250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7400 5950 7400 6100
Wire Wire Line
	7400 6400 7400 6550
Connection ~ 7400 5950
Wire Wire Line
	7400 5950 7600 5950
$Comp
L power:GND #PWR0112
U 1 1 5E3C36A3
P 7400 6550
F 0 "#PWR0112" H 7400 6300 50  0001 C CNN
F 1 "GND" H 7405 6377 50  0000 C CNN
F 2 "" H 7400 6550 50  0001 C CNN
F 3 "" H 7400 6550 50  0001 C CNN
	1    7400 6550
	1    0    0    -1  
$EndComp
Text Notes 6400 5200 0    50   ~ 0
The idea of the Zenner is to \nproctect the XBee from any Vb:2 greater\nthan 3V3
$Comp
L power:PWR_FLAG #FLG0106
U 1 1 5E4507A6
P 1650 2200
F 0 "#FLG0106" H 1650 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 2373 50  0000 C CNN
F 2 "" H 1650 2200 50  0001 C CNN
F 3 "~" H 1650 2200 50  0001 C CNN
	1    1650 2200
	1    0    0    -1  
$EndComp
Connection ~ 1650 2200
Wire Wire Line
	1650 2200 3100 2200
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
	9800 4350 9300 4350
Text Label 13600 3550 2    50   ~ 0
~BATT_LOW~
Text Label 9300 4350 0    50   ~ 0
~BATT_LOW~
Text Label 10150 4350 0    50   ~ 0
SLEEP_REQ
Text Notes 13250 3750 0    50   ~ 0
The analog inputs will not read \nanything above 1.2V
Wire Wire Line
	9100 6050 9500 6050
$Comp
L Device:R R10
U 1 1 5E60981F
P 9500 5650
F 0 "R10" H 9570 5696 50  0000 L CNN
F 1 "10kΩ" H 9570 5605 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 9430 5650 50  0001 C CNN
F 3 "~" H 9500 5650 50  0001 C CNN
	1    9500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5300 9500 5500
Wire Wire Line
	9500 5800 9500 6050
Connection ~ 9500 6050
Wire Wire Line
	9500 6050 9900 6050
Text Label 1450 3450 0    50   ~ 0
VIN_3V3
Wire Wire Line
	8700 5300 8700 5750
Wire Wire Line
	8700 5300 9500 5300
Wire Wire Line
	8700 5300 8500 5300
Connection ~ 8700 5300
Wire Wire Line
	5600 2850 5600 2200
$Comp
L power:GND #PWR0113
U 1 1 5E6D34F8
P 5600 4550
F 0 "#PWR0113" H 5600 4300 50  0001 C CNN
F 1 "GND" H 5605 4377 50  0000 C CNN
F 2 "" H 5600 4550 50  0001 C CNN
F 3 "" H 5600 4550 50  0001 C CNN
	1    5600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4100 5600 4250
Wire Wire Line
	6100 3550 6250 3550
Text Label 6550 3550 2    50   ~ 0
~RESET
Wire Wire Line
	10550 3950 10000 3950
Text Label 10000 3950 0    50   ~ 0
~RESET
Wire Wire Line
	11650 4900 11650 5050
$Comp
L XBee-Adapter:DIGI_XBEE H1
U 1 1 5E29B181
P 11650 3900
F 0 "H1" H 12450 3000 60  0000 C CNN
F 1 "DIGI_XBEE" H 11700 3900 60  0000 C CNN
F 2 "XBee-Adapter:XBEE_S2C" H 11000 3700 60  0001 C CNN
F 3 "" H 11000 3700 60  0000 C CNN
	1    11650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	12750 4050 12950 4050
Text Label 14650 4250 2    50   ~ 0
ON
Wire Wire Line
	15000 4650 15000 4750
Wire Wire Line
	14650 4750 14650 4800
Connection ~ 14650 4750
Wire Wire Line
	15000 4750 14650 4750
Wire Wire Line
	15000 4050 15000 4350
$Comp
L Device:LED D4
U 1 1 5E6E0E76
P 15000 4500
F 0 "D4" V 15039 4383 50  0000 R CNN
F 1 "LED" V 14948 4383 50  0000 R CNN
F 2 "LEDs:LED_0805" H 15000 4500 50  0001 C CNN
F 3 "~" H 15000 4500 50  0001 C CNN
	1    15000 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14650 4650 14650 4750
Text Notes 14800 4850 0    50   ~ 0
3V3 @ 5mA
Wire Wire Line
	14650 4250 14650 4350
$Comp
L power:GND #PWR0114
U 1 1 5E2D1C4D
P 14650 4800
F 0 "#PWR0114" H 14650 4550 50  0001 C CNN
F 1 "GND" H 14655 4627 50  0000 C CNN
F 2 "" H 14650 4800 50  0001 C CNN
F 3 "" H 14650 4800 50  0001 C CNN
	1    14650 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5E2D0154
P 14650 4500
F 0 "D3" V 14689 4383 50  0000 R CNN
F 1 "LED" V 14598 4383 50  0000 R CNN
F 2 "LEDs:LED_0805" H 14650 4500 50  0001 C CNN
F 3 "~" H 14650 4500 50  0001 C CNN
	1    14650 4500
	0    -1   -1   0   
$EndComp
Text Label 15000 4050 2    50   ~ 0
ASSOCIATE
Wire Wire Line
	13250 4050 14150 4050
Wire Wire Line
	5600 2200 6350 2200
Connection ~ 5600 2200
$Comp
L Jumper:SolderJumper_2_Bridged JP2
U 1 1 5E73FF88
P 13100 4050
F 0 "JP2" H 12950 4100 50  0000 C CNN
F 1 "ASSOCIATE_BR" H 13500 4100 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 13100 4050 50  0001 C CNN
F 3 "~" H 13100 4050 50  0001 C CNN
	1    13100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2950 4100 3100
$Comp
L Jumper:SolderJumper_2_Bridged JP3
U 1 1 5E751FAA
P 13100 4250
F 0 "JP3" H 12950 4300 50  0000 C CNN
F 1 "ON" H 13200 4300 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 13100 4250 50  0001 C CNN
F 3 "~" H 13100 4250 50  0001 C CNN
	1    13100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	13250 4250 14150 4250
$Comp
L GoldCap:SGM811 U1
U 1 1 5E781635
P 5600 3450
F 0 "U1" H 5800 2950 50  0000 L CNN
F 1 "SGM811" H 5450 3500 50  0000 L CNN
F 2 "GoldCap-Check:SGM811B" H 5600 3350 50  0001 C CNN
F 3 "" H 5600 3350 50  0001 C CNN
F 4 "SGM811B-SXKA4G/TR" H 5600 3450 50  0001 C CNN "MPN"
	1    5600 3450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5E791CB0
P 4800 3550
F 0 "SW1" H 4800 3835 50  0000 C CNN
F 1 "Reset" H 4800 3744 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3S-1000" H 4800 3750 50  0001 C CNN
F 3 "~" H 4800 3750 50  0001 C CNN
F 4 "  B3S-1000P BY OMZ " H 4800 3550 50  0001 C CNN "MPN"
	1    4800 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5E7925E0
P 4500 3750
F 0 "#PWR0115" H 4500 3500 50  0001 C CNN
F 1 "GND" H 4505 3577 50  0000 C CNN
F 2 "" H 4500 3750 50  0001 C CNN
F 3 "" H 4500 3750 50  0001 C CNN
	1    4500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3550 5000 3550
Wire Wire Line
	4500 3550 4500 3750
Wire Wire Line
	4600 3550 4500 3550
$Comp
L Jumper:SolderJumper_2_Bridged JP1
U 1 1 5E796FD2
P 1050 3050
F 0 "JP1" H 850 3100 50  0000 C CNN
F 1 "Pwr LED" H 1050 2900 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 1050 3050 50  0001 C CNN
F 3 "~" H 1050 3050 50  0001 C CNN
	1    1050 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5E2F2A76
P 1050 4150
F 0 "#PWR0116" H 1050 3900 50  0001 C CNN
F 1 "GND" H 1055 3977 50  0000 C CNN
F 2 "" H 1050 4150 50  0001 C CNN
F 3 "" H 1050 4150 50  0001 C CNN
	1    1050 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5E2F2A62
P 1050 3500
F 0 "D1" V 1089 3383 50  0000 R CNN
F 1 "LED" V 998 3383 50  0000 R CNN
F 2 "LEDs:LED_0805" H 1050 3500 50  0001 C CNN
F 3 "~" H 1050 3500 50  0001 C CNN
	1    1050 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 3200 1050 3350
$Comp
L Device:R R11
U 1 1 5E3B1B14
P 9950 4350
F 0 "R11" H 10020 4396 50  0000 L CNN
F 1 "0Ω" H 10020 4305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 9880 4350 50  0001 C CNN
F 3 "~" H 9950 4350 50  0001 C CNN
	1    9950 4350
	0    1    -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E7A8FAF
P 6250 3900
F 0 "R6" H 6320 3946 50  0000 L CNN
F 1 "100kΩ" H 6320 3855 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 6180 3900 50  0001 C CNN
F 3 "~" H 6250 3900 50  0001 C CNN
	1    6250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3550 6250 3750
Wire Wire Line
	6250 4250 5600 4250
Wire Wire Line
	6250 4050 6250 4250
Connection ~ 6250 3550
Wire Wire Line
	6250 3550 6550 3550
Connection ~ 5600 4250
Wire Wire Line
	5600 4250 5600 4550
$Comp
L Connector:Conn_01x06_Female J4
U 1 1 5E7688D6
P 2700 9300
F 0 "J4" H 2728 9276 50  0000 L CNN
F 1 "Conn_01x06_Female" H 2728 9185 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 2700 9300 50  0001 C CNN
F 3 "~" H 2700 9300 50  0001 C CNN
	1    2700 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 9500 2050 9500
Text Label 2050 9500 0    50   ~ 0
SLEEP_REQ
$Comp
L Device:R R12
U 1 1 5E6E08A5
P 14300 4050
F 0 "R12" V 14250 3800 50  0000 L CNN
F 1 "680Ω" V 14300 3950 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 14230 4050 50  0001 C CNN
F 3 "~" H 14300 4050 50  0001 C CNN
	1    14300 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	14450 4050 15000 4050
Wire Wire Line
	14450 4250 14650 4250
$Comp
L Switch:SW_SPDT SW2
U 1 1 5E784EE5
P 4100 2750
F 0 "SW2" V 4146 2562 50  0000 R CNN
F 1 "Goldcap Enable" V 4055 2562 50  0000 R CNN
F 2 "GoldCap-Check:SPST-CL-SB-12C01" H 4100 2750 50  0001 C CNN
F 3 "~" H 4100 2750 50  0001 C CNN
	1    4100 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 2200 4000 2200
Wire Wire Line
	4000 2550 4000 2200
Connection ~ 4000 2200
Wire Wire Line
	4000 2200 4350 2200
$EndSCHEMATC
