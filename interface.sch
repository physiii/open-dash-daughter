EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 12 13
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
L Connector_Generic:Conn_01x02 AMF_Antenna1
U 1 1 5B15E1EC
P 6975 925
F 0 "AMF_Antenna1" H 7055 917 50  0000 L CNN
F 1 "Conn_01x02" H 7055 826 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6975 925 50  0001 C CNN
F 3 "~" H 6975 925 50  0001 C CNN
	1    6975 925 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 GPS_ANT1
U 1 1 5AE240A7
P 8600 925
F 0 "GPS_ANT1" H 8680 917 50  0000 L CNN
F 1 "Conn_01x02" H 8680 826 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8600 925 50  0001 C CNN
F 3 "~" H 8600 925 50  0001 C CNN
	1    8600 925 
	1    0    0    -1  
$EndComp
Text Notes 6775 725  0    50   ~ 0
AM/FM Antenna
Text Notes 8350 725  0    50   ~ 0
GPS Antenna
Wire Wire Line
	6575 1125 6575 1025
Wire Wire Line
	6575 1025 6775 1025
Wire Wire Line
	8250 1125 8250 1025
Wire Wire Line
	8250 1025 8400 1025
Text HLabel 6675 925  0    50   Input ~ 0
AMF_Antenna
Text HLabel 8300 925  0    50   Input ~ 0
GPS_Antenna
Text HLabel 1375 1125 0    50   Input ~ 0
CAN+
Text HLabel 1875 1125 2    50   Input ~ 0
CAN-
Text HLabel 1375 1025 0    50   Input ~ 0
CAMERA+
Text HLabel 1875 925  2    50   Input ~ 0
CAMERA_S
Text HLabel 1875 1025 2    50   Input ~ 0
CAMERA-
Text HLabel 1375 825  0    50   Input ~ 0
BATTERY
Text HLabel 3400 1025 0    50   Input ~ 0
FL_AUDIO_OUT+
Text HLabel 3400 925  0    50   Input ~ 0
FR_AUDIO_OUT+
Text HLabel 3400 825  0    50   Input ~ 0
RL_AUDIO_OUT+
Text HLabel 3400 1125 0    50   Input ~ 0
RR_AUDIO_OUT+
Text HLabel 3900 1125 2    50   Input ~ 0
RR_AUDIO_OUT-
Text HLabel 3900 825  2    50   Input ~ 0
RL_AUDIO_OUT-
Text HLabel 3900 925  2    50   Input ~ 0
FR_AUDIO_OUT-
Text HLabel 3900 1025 2    50   Input ~ 0
FL_AUDIO_OUT-
$Comp
L open-automation:SW_PUSH SW1
U 1 1 5B15E1FC
P 2100 5625
F 0 "SW1" H 2100 5800 50  0000 C CNN
F 1 "SW_PUSH" H 2100 5545 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_KMR2" H 2100 5625 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/60/KMR2_9aug12-25127.pdf" H 2100 5625 50  0001 C CNN
F 4 "KMR211NG LFS" H 2100 5625 60  0001 C CNN "Part Number"
	1    2100 5625
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR0105
U 1 1 5B15E1EA
P 2100 6000
F 0 "#PWR0105" H 2100 5750 50  0001 C CNN
F 1 "GND" H 2100 5850 50  0000 C CNN
F 2 "" H 2100 6000 50  0000 C CNN
F 3 "" H 2100 6000 50  0000 C CNN
	1    2100 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6000 2100 5925
$Comp
L open-automation:R_10k R17
U 1 1 5B15E1FD
P 2100 5125
F 0 "R17" V 2100 5125 50  0000 C CNN
F 1 "R_10k" V 2000 5125 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2030 5125 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 2180 5125 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 2280 5225 60  0001 C CNN "Part Number"
	1    2100 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4925 2100 4975
Wire Wire Line
	2100 4575 2100 4625
Wire Wire Line
	2100 5275 2100 5300
Wire Wire Line
	2225 5300 2100 5300
Connection ~ 2100 5300
$Comp
L open-automation:SW_PUSH SW2
U 1 1 5B15E1FF
P 3050 5625
F 0 "SW2" H 3050 5800 50  0000 C CNN
F 1 "SW_PUSH" H 3050 5545 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_KMR2" H 3050 5625 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/60/KMR2_9aug12-25127.pdf" H 3050 5625 50  0001 C CNN
F 4 "KMR211NG LFS" H 3050 5625 60  0001 C CNN "Part Number"
	1    3050 5625
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR0106
U 1 1 5B15E200
P 3050 6000
F 0 "#PWR0106" H 3050 5750 50  0001 C CNN
F 1 "GND" H 3050 5850 50  0000 C CNN
F 2 "" H 3050 6000 50  0000 C CNN
F 3 "" H 3050 6000 50  0000 C CNN
	1    3050 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6000 3050 5925
$Comp
L open-automation:R_10k R38
U 1 1 5B15E201
P 3050 5125
F 0 "R38" V 3050 5125 50  0000 C CNN
F 1 "R_10k" V 2950 5125 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2980 5125 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 3130 5125 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 3230 5225 60  0001 C CNN "Part Number"
	1    3050 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4925 3050 4975
Wire Wire Line
	3050 4575 3050 4625
Wire Wire Line
	3050 5275 3050 5300
Wire Wire Line
	3175 5300 3050 5300
Connection ~ 3050 5300
$Comp
L open-automation:SW_PUSH SW3
U 1 1 5B15E203
P 3875 5625
F 0 "SW3" H 3875 5800 50  0000 C CNN
F 1 "SW_PUSH" H 3875 5545 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_KMR2" H 3875 5625 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/60/KMR2_9aug12-25127.pdf" H 3875 5625 50  0001 C CNN
F 4 "KMR211NG LFS" H 3875 5625 60  0001 C CNN "Part Number"
	1    3875 5625
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR0107
U 1 1 5B15E1EB
P 3875 6000
F 0 "#PWR0107" H 3875 5750 50  0001 C CNN
F 1 "GND" H 3875 5850 50  0000 C CNN
F 2 "" H 3875 6000 50  0000 C CNN
F 3 "" H 3875 6000 50  0000 C CNN
	1    3875 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 6000 3875 5925
$Comp
L open-automation:R_10k R39
U 1 1 5B1799BC
P 3875 5125
F 0 "R39" V 3875 5125 50  0000 C CNN
F 1 "R_10k" V 3775 5125 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 3805 5125 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 3955 5125 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 4055 5225 60  0001 C CNN "Part Number"
	1    3875 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 4925 3875 4975
Wire Wire Line
	3875 4575 3875 4625
Wire Wire Line
	3875 5275 3875 5300
Wire Wire Line
	4000 5300 3875 5300
Connection ~ 3875 5300
Wire Wire Line
	2100 5300 2100 5325
Wire Wire Line
	3050 5300 3050 5325
Wire Wire Line
	3875 5300 3875 5325
Text HLabel 2225 5300 2    60   Input ~ 0
FACTORY
Text HLabel 3175 5300 2    60   Input ~ 0
EN_ESP
Text HLabel 4000 5300 2    60   Input ~ 0
PROG
Text HLabel 3050 4575 1    60   Input ~ 0
3v3
Text HLabel 3875 4575 1    60   Input ~ 0
3v3
Text HLabel 2100 4575 1    60   Input ~ 0
3v3
$Comp
L open-automation:molex-2x4-5.7mm U7
U 1 1 5B1A08B0
P 1625 975
F 0 "U7" H 1625 1225 50  0000 C CNN
F 1 "molex-2x4-5.7mm" H 1650 725 50  0000 C CNN
F 2 "open-automation:molex-2x4-5.7mm" H 1625 575 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=768290008" H 1625 675 50  0001 C CNN
F 4 "0768290008" H 1625 725 50  0001 C CNN "Part Number"
	1    1625 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 825  1425 825 
Wire Wire Line
	1875 925  1825 925 
Wire Wire Line
	1825 825  1875 825 
Wire Wire Line
	1875 1025 1825 1025
Wire Wire Line
	1825 1125 1875 1125
Wire Wire Line
	1425 1125 1375 1125
Wire Wire Line
	1375 1025 1425 1025
Wire Wire Line
	3450 925  3400 925 
Wire Wire Line
	3450 1025 3400 1025
Wire Wire Line
	3850 1125 3900 1125
Wire Wire Line
	3900 1025 3850 1025
Wire Wire Line
	3850 925  3900 925 
Wire Wire Line
	3900 825  3850 825 
$Comp
L open-automation:GND #PWR0108
U 1 1 5B1DA0DF
P 1875 825
F 0 "#PWR0108" H 1875 575 50  0001 C CNN
F 1 "GND" V 1850 650 50  0000 C CNN
F 2 "" H 1875 825 50  0000 C CNN
F 3 "" H 1875 825 50  0000 C CNN
	1    1875 825 
	0    -1   -1   0   
$EndComp
Text HLabel 1375 925  0    50   Input ~ 0
SOFT_POWER
Wire Wire Line
	1425 925  1375 925 
Wire Wire Line
	8300 925  8400 925 
Wire Wire Line
	6675 925  6775 925 
$Comp
L open-automation:GND #PWR0112
U 1 1 5B15E1E7
P 3225 2050
F 0 "#PWR0112" H 3225 1800 50  0001 C CNN
F 1 "GND" H 3225 1900 50  0000 C CNN
F 2 "" H 3225 2050 50  0000 C CNN
F 3 "" H 3225 2050 50  0000 C CNN
	1    3225 2050
	-1   0    0    1   
$EndComp
$Comp
L open-automation:GND #PWR0113
U 1 1 5B15E1E8
P 3825 2050
F 0 "#PWR0113" H 3825 1800 50  0001 C CNN
F 1 "GND" H 3825 1900 50  0000 C CNN
F 2 "" H 3825 2050 50  0000 C CNN
F 3 "" H 3825 2050 50  0000 C CNN
	1    3825 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3825 2100 3825 2050
Wire Wire Line
	3775 2100 3825 2100
Wire Wire Line
	3225 2100 3275 2100
Wire Wire Line
	3225 2050 3225 2100
Wire Wire Line
	3775 2200 3875 2200
Wire Wire Line
	3875 2400 3775 2400
Wire Wire Line
	3775 2300 3875 2300
Wire Wire Line
	3175 2200 3275 2200
Wire Wire Line
	3175 2400 3275 2400
Wire Wire Line
	3175 2300 3275 2300
Wire Wire Line
	3175 2500 3275 2500
Wire Wire Line
	3775 2500 3875 2500
Text HLabel 3175 2200 0    60   Input ~ 0
3v3
Text HLabel 3175 2300 0    60   Input ~ 0
PROG
Text HLabel 3175 2400 0    60   Input ~ 0
FACTORY
Text HLabel 3875 2500 2    60   Input ~ 0
SCL
Text HLabel 3875 2200 2    60   Input ~ 0
5V
Text HLabel 3875 2300 2    60   Input ~ 0
TXD
Text HLabel 3875 2400 2    60   Input ~ 0
RXD
Text HLabel 3175 2500 0    60   Input ~ 0
SDA
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J4
U 1 1 5B15E1F0
P 3475 2300
F 0 "J4" H 3520 2610 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 3525 1850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 3475 2300 50  0001 C CNN
F 3 "~" H 3475 2300 50  0001 C CNN
	1    3475 2300
	1    0    0    -1  
$EndComp
Text HLabel 3150 2600 0    50   Output ~ 0
SOFT_POWER
Wire Wire Line
	3150 2600 3275 2600
Text HLabel 1475 2500 2    50   Output ~ 0
SOFT_POWER
Text HLabel 1375 2025 1    60   Input ~ 0
3v3
$Comp
L open-automation:R_10k R16
U 1 1 5AF64A9D
P 1375 2250
F 0 "R16" H 1445 2296 50  0000 L CNN
F 1 "R_10k" H 1445 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1305 2250 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 1455 2250 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 1555 2350 60  0001 C CNN "Part Number"
	1    1375 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 2025 1375 2100
Wire Wire Line
	1375 2400 1375 2500
Wire Wire Line
	1375 2500 1475 2500
$Comp
L open-automation:radio-housing-mounts U15
U 1 1 5B15D7E5
P 8675 2450
F 0 "U15" H 8800 2675 60  0000 L CNN
F 1 "radio-housing-mounts" H 8175 2250 60  0000 L CNN
F 2 "open-automation:radio-housing-mounts" H 8825 2750 60  0001 C CNN
F 3 "" H 8675 2500 60  0001 C CNN
	1    8675 2450
	1    0    0    -1  
$EndComp
$Comp
L open-automation:molex-2x4-5.7mm U16
U 1 1 5B11F212
P 6850 2375
F 0 "U16" H 6850 2625 50  0000 C CNN
F 1 "molex-2x4-5.7mm" H 6875 2125 50  0000 C CNN
F 2 "open-automation:molex-2x4-5.7mm" H 6850 1975 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=768290008" H 6850 2075 50  0001 C CNN
F 4 "0768290008" H 6850 2125 50  0001 C CNN "Part Number"
	1    6850 2375
	1    0    0    -1  
$EndComp
Text HLabel 6550 2225 0    60   Input ~ 0
MAIN_POWER
Text HLabel 6550 2325 0    60   Input ~ 0
DISPLAY_POWER
$Comp
L open-automation:GND #PWR0104
U 1 1 5B11F759
P 7125 2225
F 0 "#PWR0104" H 7125 1975 50  0001 C CNN
F 1 "GND" H 7125 2075 50  0000 C CNN
F 2 "" H 7125 2225 50  0000 C CNN
F 3 "" H 7125 2225 50  0000 C CNN
	1    7125 2225
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 2225 6550 2225
Wire Wire Line
	6550 2325 6650 2325
Wire Wire Line
	7050 2225 7100 2225
Wire Wire Line
	7050 2325 7100 2325
Wire Wire Line
	7100 2325 7100 2225
Connection ~ 7100 2225
Wire Wire Line
	7100 2225 7125 2225
Text HLabel 4950 2675 0    50   Output ~ 0
SOFT_POWER
Text HLabel 7150 2425 2    60   Input ~ 0
L_MAIN_AUDIO
Text HLabel 7150 2525 2    60   Input ~ 0
R_MAIN_AUDIO
$Comp
L open-automation:molex-2x4-5.7mm U14
U 1 1 5B1795E3
P 3650 975
F 0 "U14" H 3650 1350 50  0000 C CNN
F 1 "molex-2x4-5.7mm" H 3650 1259 50  0000 C CNN
F 2 "open-automation:molex-2x4-5.7mm" H 3650 575 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=768290008" H 3650 675 50  0001 C CNN
F 4 "0768290008" H 3650 725 50  0001 C CNN "Part Number"
	1    3650 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1125 3450 1125
Wire Wire Line
	3400 825  3450 825 
$Comp
L open-automation:GND #PWR0102
U 1 1 5B1DCBD3
P 6575 1125
F 0 "#PWR0102" H 6575 875 50  0001 C CNN
F 1 "GND" H 6575 975 50  0000 C CNN
F 2 "" H 6575 1125 50  0000 C CNN
F 3 "" H 6575 1125 50  0000 C CNN
	1    6575 1125
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0103
U 1 1 5B1DCC14
P 8250 1125
F 0 "#PWR0103" H 8250 875 50  0001 C CNN
F 1 "GND" H 8250 975 50  0000 C CNN
F 2 "" H 8250 1125 50  0000 C CNN
F 3 "" H 8250 1125 50  0000 C CNN
	1    8250 1125
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_1k R52
U 1 1 5B1B9666
P 5225 2675
F 0 "R52" V 5018 2675 50  0000 C CNN
F 1 "R_1k" V 5109 2675 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 5155 2675 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3GEYJ102V/P1.0KGDKR-ND/577615" V 5305 2675 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 5405 2775 60  0001 C CNN "Part Number"
	1    5225 2675
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_1k R51
U 1 1 5B1BAEB5
P 5025 2850
F 0 "R51" H 5095 2896 50  0000 L CNN
F 1 "R_1k" H 5095 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 4955 2850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3GEYJ102V/P1.0KGDKR-ND/577615" V 5105 2850 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 5205 2950 60  0001 C CNN "Part Number"
	1    5025 2850
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_1k R53
U 1 1 5B1BB164
P 5700 2250
F 0 "R53" H 5500 2325 50  0000 L CNN
F 1 "R_1k" H 5475 2250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 5630 2250 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3GEYJ102V/P1.0KGDKR-ND/577615" V 5780 2250 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 5880 2350 60  0001 C CNN "Part Number"
	1    5700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2425 6650 2425
Wire Wire Line
	5700 2875 5700 3025
$Comp
L open-automation:GND #PWR0124
U 1 1 5B1CB05C
P 5025 3025
F 0 "#PWR0124" H 5025 2775 50  0001 C CNN
F 1 "GND" H 5030 2852 50  0000 C CNN
F 2 "" H 5025 3025 50  0000 C CNN
F 3 "" H 5025 3025 50  0000 C CNN
	1    5025 3025
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0125
U 1 1 5B1CB0C0
P 5700 3025
F 0 "#PWR0125" H 5700 2775 50  0001 C CNN
F 1 "GND" H 5705 2852 50  0000 C CNN
F 2 "" H 5700 3025 50  0000 C CNN
F 3 "" H 5700 3025 50  0000 C CNN
	1    5700 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2475 5700 2425
Wire Wire Line
	5400 2675 5375 2675
Wire Wire Line
	5025 2675 5075 2675
Wire Wire Line
	5025 3025 5025 3000
Wire Wire Line
	5025 2675 5025 2700
Wire Wire Line
	5025 2675 4950 2675
Connection ~ 5025 2675
Wire Wire Line
	5700 2425 5700 2400
Connection ~ 5700 2425
Wire Wire Line
	5700 2100 5700 2075
Text HLabel 5700 2075 1    60   Input ~ 0
3v3
$Comp
L open-automation:Q_NPN_BEC Q6
U 1 1 5B1F6997
P 5600 2675
F 0 "Q6" H 5791 2721 50  0000 L CNN
F 1 "Q_NPN_BEC" H 5791 2630 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5800 2775 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/on-semiconductor/KST10MTF/KST10MTFCT-ND/965649" H 5800 2725 50  0001 C CNN
F 4 "KST10MTF" H 5900 2825 50  0001 C CNN "Part Number"
	1    5600 2675
	1    0    0    -1  
$EndComp
$Comp
L open-automation:LED-0603-R D?
U 1 1 5B35FE49
P 2100 4775
F 0 "D?" V 2138 4658 50  0000 R CNN
F 1 "LED-0603-R" V 2047 4658 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad0.82x1.00mm_HandSolder" H 2000 4775 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=475-2512-2-ND" H 2100 4875 50  0001 C CNN
F 4 "LS Q976-NR-1" H 2200 4975 50  0001 C CNN "Part Number"
	1    2100 4775
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:LED-0603-R D?
U 1 1 5B35FF8B
P 3050 4775
F 0 "D?" V 3088 4658 50  0000 R CNN
F 1 "LED-0603-R" V 2997 4658 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad0.82x1.00mm_HandSolder" H 2950 4775 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=475-2512-2-ND" H 3050 4875 50  0001 C CNN
F 4 "LS Q976-NR-1" H 3150 4975 50  0001 C CNN "Part Number"
	1    3050 4775
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:LED-0603-R D?
U 1 1 5B3600BD
P 3875 4775
F 0 "D?" V 3913 4658 50  0000 R CNN
F 1 "LED-0603-R" V 3822 4658 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad0.82x1.00mm_HandSolder" H 3775 4775 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=475-2512-2-ND" H 3875 4875 50  0001 C CNN
F 4 "LS Q976-NR-1" H 3975 4975 50  0001 C CNN "Part Number"
	1    3875 4775
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J?
U 1 1 5B5067C0
P 7150 5150
F 0 "J?" H 7200 5667 50  0000 C CNN
F 1 "Conn_02x08_Counter_Clockwise" H 7200 5576 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-16A2_2x08_P4.20mm_Vertical" H 7150 5150 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/molex-llc/0015978162/WM7202-ND/3044417" H 7150 5150 50  0001 C CNN
F 4 "0015978162" H 7150 5150 50  0001 C CNN "Part Number"
	1    7150 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J?
U 1 1 5B506A12
P 8575 5200
F 0 "J?" H 8625 5717 50  0000 C CNN
F 1 "Conn_02x08_Counter_Clockwise" H 8625 5626 50  0000 C CNN
F 2 "" H 8575 5200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/molex-llc/0015975161/WM2595-ND/2405484" H 8575 5200 50  0001 C CNN
F 4 "0015975161" H 8575 5200 50  0001 C CNN "Part Number"
	1    8575 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2425 7050 2425
Wire Wire Line
	7150 2525 7050 2525
$Comp
L open-automation:GND #PWR?
U 1 1 5B4B0C05
P 6475 2575
F 0 "#PWR?" H 6475 2325 50  0001 C CNN
F 1 "GND" H 6475 2425 50  0000 C CNN
F 2 "" H 6475 2575 50  0000 C CNN
F 3 "" H 6475 2575 50  0000 C CNN
	1    6475 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2525 6475 2525
Wire Wire Line
	6475 2525 6475 2575
$Comp
L Connector:Barrel_Jack J?
U 1 1 5B4B4D04
P 6875 3400
F 0 "J?" H 6953 3725 50  0000 C CNN
F 1 "Barrel_Jack" H 6953 3634 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 6925 3360 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/cui-inc/RCJ-021/CP-1406-ND/408493" H 6925 3360 50  0001 C CNN
F 4 "RCJ-021" H 6875 3400 50  0001 C CNN "Part Number"
	1    6875 3400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
