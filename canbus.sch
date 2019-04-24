EESchema Schematic File Version 5
LIBS:open-dash-daughterboard-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 7
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
L Interface_CAN_LIN:MCP2551-I-SN U8
U 1 1 5AD6C5A2
P 5150 3600
F 0 "U8" H 5500 3250 50  0000 C CNN
F 1 "MCP2551-I_SN" H 5500 3950 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5150 3100 50  0001 C CIN
F 3 "https://www.digikey.com/product-detail/en/microchip-technology/MCP2551-I-SN/MCP2551-I-SN-ND/509452" H 5150 3600 50  0001 C CNN
F 4 "MCP2551-I/SN" H 5150 3600 50  0001 C CNN "Part Number"
	1    5150 3600
	1    0    0    -1  
$EndComp
Text HLabel 1500 1000 0    50   Input ~ 0
5V
$Comp
L open-automation:R_10k R20
U 1 1 5AD72887
P 5750 1600
F 0 "R20" H 5820 1646 50  0000 L CNN
F 1 "100" H 5820 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 5680 1600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-07100RL/311-100GRCT-ND/729644" V 5830 1600 50  0001 C CNN
F 4 "RC0603JR-07100RL" H 5750 1600 50  0001 C CNN "Part Number"
	1    5750 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 5AD73AF7
P 5300 2000
F 0 "C16" H 5050 2000 50  0000 L CNN
F 1 "560pF" H 5050 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 5338 1850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B561KB8NNNC/1276-1278-1-ND/3889364" H 5300 2000 50  0001 C CNN
F 4 "CL10B561KB8NNNC" H 5300 2000 50  0001 C CNN "Part Number"
	1    5300 2000
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:SP0502BAHT D7
U 1 1 5AD76474
P 6250 3600
F 0 "D7" V 6500 3550 50  0000 L CNN
F 1 "PESD1CAN" V 6000 3400 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70_Handsoldering" H 6475 3550 50  0001 L CNN
F 3 "https://www.digikey.com/product-detail/en/nexperia-usa-inc/PESD1CAN-UX/1727-1306-1-ND/4386316" H 6375 3725 50  0001 C CNN
F 4 "PESD1CAN-UX" H 6250 3600 50  0001 C CNN "Part Number"
	1    6250 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 2150 5750 2225
$Comp
L Device:C C17
U 1 1 5ADA5772
P 5750 2000
F 0 "C17" H 5850 2000 50  0000 L CNN
F 1 "560pF" H 5750 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 5788 1850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B561KB8NNNC/1276-1278-1-ND/3889364" H 5750 2000 50  0001 C CNN
F 4 "CL10B561KB8NNNC" H 5750 2000 50  0001 C CNN "Part Number"
	1    5750 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5ADD74BB
P 4600 4300
F 0 "#PWR032" H 4600 4050 50  0001 C CNN
F 1 "GND" H 4605 4127 50  0000 C CNN
F 2 "" H 4600 4300 50  0001 C CNN
F 3 "" H 4600 4300 50  0001 C CNN
	1    4600 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5ADD757D
P 5150 4050
F 0 "#PWR034" H 5150 3800 50  0001 C CNN
F 1 "GND" H 5155 3877 50  0000 C CNN
F 2 "" H 5150 4050 50  0001 C CNN
F 3 "" H 5150 4050 50  0001 C CNN
	1    5150 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 5ADD7680
P 5750 2225
F 0 "#PWR035" H 5750 1975 50  0001 C CNN
F 1 "GND" H 5755 2052 50  0000 C CNN
F 2 "" H 5750 2225 50  0001 C CNN
F 3 "" H 5750 2225 50  0001 C CNN
	1    5750 2225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5ADD76B3
P 4550 1950
F 0 "#PWR033" H 4550 1700 50  0001 C CNN
F 1 "GND" H 4555 1777 50  0000 C CNN
F 2 "" H 4550 1950 50  0001 C CNN
F 3 "" H 4550 1950 50  0001 C CNN
	1    4550 1950
	1    0    0    -1  
$EndComp
Text HLabel 1500 1200 0    50   Input ~ 0
CAN_RX
Text HLabel 1500 1100 0    50   Input ~ 0
CAN_TX
$Comp
L open-automation:C_0.1uF C15
U 1 1 5B19B412
P 4550 1750
F 0 "C15" H 4665 1796 50  0000 L CNN
F 1 "C_0.1uF" H 4665 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4650 2050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 4550 1500 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 4675 1950 60  0001 C CNN "Part Number"
	1    4550 1750
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_4K7 R18
U 1 1 5B29BD7E
P 4350 4050
F 0 "R18" V 4400 4100 50  0000 L CNN
F 1 "R_4K7" V 4500 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4325 3875 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3GEYJ472V/P4.7KGCT-ND/135199" H 4350 3800 50  0001 C CNN
F 4 "ERJ-3GEYJ472V" H 4350 4125 60  0001 C CNN "Part Number"
	1    4350 4050
	0    1    1    0   
$EndComp
Text Label 1550 1000 0    50   ~ 0
5V
Wire Wire Line
	1550 1000 1500 1000
Text Label 4550 1550 0    50   ~ 0
5V
Wire Wire Line
	4550 1550 4550 1600
Wire Wire Line
	4550 1950 4550 1900
Text Label 5150 3150 2    50   ~ 0
5V
Text Label 1550 1100 0    50   ~ 0
TX
Text Label 1550 1200 0    50   ~ 0
RX
Wire Wire Line
	1550 1200 1500 1200
Text Label 4600 3400 2    50   ~ 0
TX
Text Label 4600 3500 2    50   ~ 0
RX
Text HLabel 1500 1400 0    50   Input ~ 0
CAN-
Text HLabel 1500 1300 0    50   Input ~ 0
CAN+
Text Label 1550 1300 0    50   ~ 0
CANH
Wire Wire Line
	1550 1300 1500 1300
Text Label 1550 1400 0    50   ~ 0
CANL
Wire Wire Line
	1550 1400 1500 1400
Wire Wire Line
	1500 1100 1550 1100
Text Label 5900 3700 2    50   ~ 0
CANL
Text Label 5300 1350 2    50   ~ 0
CANH
$Comp
L power:GND #PWR0105
U 1 1 5CC02094
P 5300 2200
F 0 "#PWR0105" H 5300 1950 50  0001 C CNN
F 1 "GND" H 5305 2027 50  0000 C CNN
F 2 "" H 5300 2200 50  0001 C CNN
F 3 "" H 5300 2200 50  0001 C CNN
	1    5300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2200 5300 2150
$Comp
L power:GND #PWR0106
U 1 1 5CC051DA
P 6500 3600
F 0 "#PWR0106" H 6500 3350 50  0001 C CNN
F 1 "GND" H 6505 3427 50  0000 C CNN
F 2 "" H 6500 3600 50  0001 C CNN
F 3 "" H 6500 3600 50  0001 C CNN
	1    6500 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 3600 6450 3600
$Comp
L open-automation:R_10k R19
U 1 1 5ADA3415
P 5300 1600
F 0 "R19" H 5370 1646 50  0000 L CNN
F 1 "100" H 5370 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 5230 1600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-07100RL/311-100GRCT-ND/729644" V 5380 1600 50  0001 C CNN
F 4 "RC0603JR-07100RL" H 5300 1600 50  0001 C CNN "Part Number"
	1    5300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1350 5300 1400
Text Label 5750 1350 2    50   ~ 0
CANL
Wire Wire Line
	5750 1350 5750 1400
Text Label 5900 3500 2    50   ~ 0
CANH
Wire Wire Line
	5650 3700 6050 3700
Wire Wire Line
	5650 3500 6050 3500
Wire Wire Line
	5150 3150 5150 3200
Wire Wire Line
	4600 3500 4650 3500
Wire Wire Line
	4600 3400 4650 3400
Wire Wire Line
	4600 4300 4600 4250
Wire Wire Line
	4600 3850 4600 3800
Wire Wire Line
	4600 3800 4650 3800
Wire Wire Line
	5150 4050 5150 4000
Wire Wire Line
	5750 1850 5750 1800
Wire Wire Line
	5300 1850 5300 1800
$EndSCHEMATC
