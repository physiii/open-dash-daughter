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
L Connector_Generic:Conn_01x02 J6
U 1 1 5B15E1EC
P 7775 900
F 0 "J6" H 7855 892 50  0000 L CNN
F 1 "Conn_01x02" H 7855 801 50  0000 L CNN
F 2 "" H 7775 900 50  0001 C CNN
F 3 "~" H 7775 900 50  0001 C CNN
	1    7775 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5AE240A7
P 9400 900
F 0 "J7" H 9480 892 50  0000 L CNN
F 1 "Conn_01x02" H 9480 801 50  0000 L CNN
F 2 "" H 9400 900 50  0001 C CNN
F 3 "~" H 9400 900 50  0001 C CNN
	1    9400 900 
	1    0    0    -1  
$EndComp
Text Notes 7575 700  0    50   ~ 0
AM/FM Antenna
Text Notes 9150 700  0    50   ~ 0
GPS Antenna
$Comp
L power:GNDA #PWR0102
U 1 1 5AE24110
P 7375 1100
F 0 "#PWR0102" H 7375 850 50  0001 C CNN
F 1 "GNDA" H 7380 927 50  0000 C CNN
F 2 "" H 7375 1100 50  0001 C CNN
F 3 "" H 7375 1100 50  0001 C CNN
	1    7375 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0103
U 1 1 5AE24128
P 9050 1100
F 0 "#PWR0103" H 9050 850 50  0001 C CNN
F 1 "GNDA" H 9055 927 50  0000 C CNN
F 2 "" H 9050 1100 50  0001 C CNN
F 3 "" H 9050 1100 50  0001 C CNN
	1    9050 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7375 1100 7375 1000
Wire Wire Line
	7375 1000 7575 1000
Wire Wire Line
	9050 1100 9050 1000
Wire Wire Line
	9050 1000 9200 1000
Text HLabel 7475 900  0    50   Input ~ 0
AMF_Antenna
Text HLabel 9100 900  0    50   Input ~ 0
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
Text HLabel 3400 825  0    50   Input ~ 0
LF_AUDIO_OUT+
Text HLabel 3400 925  0    50   Input ~ 0
LR_AUDIO_OUT+
Text HLabel 3400 1025 0    50   Input ~ 0
RF_AUDIO_OUT+
Text HLabel 3400 1125 0    50   Input ~ 0
RR_AUDIO_OUT+
Text HLabel 3900 1125 2    50   Input ~ 0
RR_AUDIO_OUT-
Text HLabel 3900 1025 2    50   Input ~ 0
RF_AUDIO_OUT-
Text HLabel 3900 925  2    50   Input ~ 0
LR_AUDIO_OUT-
Text HLabel 3900 825  2    50   Input ~ 0
LF_AUDIO_OUT-
$Comp
L open-dash-daughterboard-rescue:LED-open-automation D10
U 1 1 5B1799AD
P 1950 6050
F 0 "D10" V 1925 6150 50  0000 C CNN
F 1 "LED" V 2050 5975 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad0.82x1.00mm_HandSolder" H 1950 6050 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic9/00128792_0.pdf" H 1950 6050 50  0001 C CNN
F 4 "475-2512-2-ND" H 1950 6050 60  0001 C CNN "Part Number"
	1    1950 6050
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:USB_A_2 P3
U 1 1 5B1799AF
P 9200 2400
F 0 "P3" H 9450 2200 50  0000 C CNN
F 1 "USB_A_2" H 9150 2600 50  0000 C CNN
F 2 "open-automation:USB_A_2" V 9150 2300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/cnc-tech/1002-004-01010/1175-1018-ND/3064749" V 9150 2300 50  0001 C CNN
F 4 "1002-004-01010" H 9200 2400 60  0001 C CNN "Part Number"
	1    9200 2400
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0104
U 1 1 5969393D
P 9350 2800
F 0 "#PWR0104" H 9350 2550 50  0001 C CNN
F 1 "GND" H 9350 2650 50  0000 C CNN
F 2 "" H 9350 2800 50  0000 C CNN
F 3 "" H 9350 2800 50  0000 C CNN
	1    9350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2700 9350 2750
Wire Wire Line
	9600 2300 9600 2750
Wire Wire Line
	9600 2750 9350 2750
Connection ~ 9350 2750
Wire Wire Line
	8750 2700 8750 2800
Wire Wire Line
	8750 2800 8700 2800
$Comp
L open-automation:SW_PUSH FACTORY1
U 1 1 5B15E1FC
P 1950 6900
F 0 "FACTORY1" H 1950 7075 50  0000 C CNN
F 1 "SW_PUSH" H 1950 6820 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_KMR2" H 1950 6900 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/60/KMR2_9aug12-25127.pdf" H 1950 6900 50  0001 C CNN
F 4 "KMR211NG LFS" H 1950 6900 60  0001 C CNN "Part Number"
	1    1950 6900
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR0105
U 1 1 5B15E1EA
P 1950 7275
F 0 "#PWR0105" H 1950 7025 50  0001 C CNN
F 1 "GND" H 1950 7125 50  0000 C CNN
F 2 "" H 1950 7275 50  0000 C CNN
F 3 "" H 1950 7275 50  0000 C CNN
	1    1950 7275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7275 1950 7200
$Comp
L open-automation:R_10k R17
U 1 1 5B15E1FD
P 1950 6400
F 0 "R17" V 1950 6400 50  0000 C CNN
F 1 "R_10k" V 1850 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1880 6400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 2030 6400 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 2130 6500 60  0001 C CNN "Part Number"
	1    1950 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6200 1950 6250
Wire Wire Line
	1950 5850 1950 5900
Wire Wire Line
	1950 6550 1950 6575
Wire Wire Line
	2075 6575 1950 6575
Connection ~ 1950 6575
$Comp
L open-dash-daughterboard-rescue:LED-open-automation D11
U 1 1 5B15E1FE
P 2900 6050
F 0 "D11" V 2875 6150 50  0000 C CNN
F 1 "LED" V 3000 5975 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad0.82x1.00mm_HandSolder" H 2900 6050 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic9/00128792_0.pdf" H 2900 6050 50  0001 C CNN
F 4 "475-2512-2-ND" H 2900 6050 60  0001 C CNN "Part Number"
	1    2900 6050
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:SW_PUSH REBOOT1
U 1 1 5B15E1FF
P 2900 6900
F 0 "REBOOT1" H 2900 7075 50  0000 C CNN
F 1 "SW_PUSH" H 2900 6820 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_KMR2" H 2900 6900 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/60/KMR2_9aug12-25127.pdf" H 2900 6900 50  0001 C CNN
F 4 "KMR211NG LFS" H 2900 6900 60  0001 C CNN "Part Number"
	1    2900 6900
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR0106
U 1 1 5B15E200
P 2900 7275
F 0 "#PWR0106" H 2900 7025 50  0001 C CNN
F 1 "GND" H 2900 7125 50  0000 C CNN
F 2 "" H 2900 7275 50  0000 C CNN
F 3 "" H 2900 7275 50  0000 C CNN
	1    2900 7275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7275 2900 7200
$Comp
L open-automation:R_10k R38
U 1 1 5B15E201
P 2900 6400
F 0 "R38" V 2900 6400 50  0000 C CNN
F 1 "R_10k" V 2800 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2830 6400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 2980 6400 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 3080 6500 60  0001 C CNN "Part Number"
	1    2900 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6200 2900 6250
Wire Wire Line
	2900 5850 2900 5900
Wire Wire Line
	2900 6550 2900 6575
Wire Wire Line
	3025 6575 2900 6575
Connection ~ 2900 6575
$Comp
L open-dash-daughterboard-rescue:LED-open-automation D12
U 1 1 5B15E202
P 3725 6050
F 0 "D12" V 3700 6150 50  0000 C CNN
F 1 "LED" V 3825 5975 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad0.82x1.00mm_HandSolder" H 3725 6050 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic9/00128792_0.pdf" H 3725 6050 50  0001 C CNN
F 4 "475-2512-2-ND" H 3725 6050 60  0001 C CNN "Part Number"
	1    3725 6050
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:SW_PUSH PROG1
U 1 1 5B15E203
P 3725 6900
F 0 "PROG1" H 3725 7075 50  0000 C CNN
F 1 "SW_PUSH" H 3725 6820 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_KMR2" H 3725 6900 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/60/KMR2_9aug12-25127.pdf" H 3725 6900 50  0001 C CNN
F 4 "KMR211NG LFS" H 3725 6900 60  0001 C CNN "Part Number"
	1    3725 6900
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR0107
U 1 1 5B15E1EB
P 3725 7275
F 0 "#PWR0107" H 3725 7025 50  0001 C CNN
F 1 "GND" H 3725 7125 50  0000 C CNN
F 2 "" H 3725 7275 50  0000 C CNN
F 3 "" H 3725 7275 50  0000 C CNN
	1    3725 7275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3725 7275 3725 7200
$Comp
L open-automation:R_10k R39
U 1 1 5B1799BC
P 3725 6400
F 0 "R39" V 3725 6400 50  0000 C CNN
F 1 "R_10k" V 3625 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 3655 6400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 3805 6400 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 3905 6500 60  0001 C CNN "Part Number"
	1    3725 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3725 6200 3725 6250
Wire Wire Line
	3725 5850 3725 5900
Wire Wire Line
	3725 6550 3725 6575
Wire Wire Line
	3850 6575 3725 6575
Connection ~ 3725 6575
Wire Wire Line
	9350 2750 9350 2800
Wire Wire Line
	1950 6575 1950 6600
Wire Wire Line
	2900 6575 2900 6600
Wire Wire Line
	3725 6575 3725 6600
Text HLabel 8700 2800 0    60   Input ~ 0
5V
Text HLabel 2075 6575 2    60   Input ~ 0
FACTORY
Text HLabel 3025 6575 2    60   Input ~ 0
EN_ESP
Text HLabel 3850 6575 2    60   Input ~ 0
PROG
Text HLabel 2900 5850 1    60   Input ~ 0
3v3
Text HLabel 3725 5850 1    60   Input ~ 0
3v3
Text HLabel 1950 5850 1    60   Input ~ 0
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
$Comp
L open-automation:molex-2x4-5.7mm U14
U 1 1 5B1A09A6
P 3650 975
F 0 "U14" H 3650 1225 50  0000 C CNN
F 1 "molex-2x4-5.7mm" H 3650 725 50  0000 C CNN
F 2 "open-automation:molex-2x4-5.7mm" H 3650 575 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=768290008" H 3650 675 50  0001 C CNN
F 4 "0768290008" H 3650 725 50  0001 C CNN "Part Number"
	1    3650 975 
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
	3400 825  3450 825 
Wire Wire Line
	3450 925  3400 925 
Wire Wire Line
	3450 1025 3400 1025
Wire Wire Line
	3400 1125 3450 1125
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
$Comp
L open-automation:CONN-BARREL-2x5.5mm P1
U 1 1 5B15E1F2
P 2475 3725
F 0 "P1" H 2552 3766 50  0000 L CNN
F 1 "CONN-BARREL-2x5.5mm" H 2552 3675 50  0000 L CNN
F 2 "open-automation:CONN-BARREL_PJ-037A" H 2475 3475 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/cui-inc/PJ-037A/CP-037A-ND/1644545" H 2475 3425 50  0001 C CNN
F 4 "PJ-037A" H 2475 3325 50  0001 C CNN "Part Number"
	1    2475 3725
	1    0    0    -1  
$EndComp
$Comp
L open-automation:CONN-BARREL-2x5.5mm P2
U 1 1 5B0FBEBD
P 2475 4225
F 0 "P2" H 2552 4266 50  0000 L CNN
F 1 "CONN-BARREL-2x5.5mm" H 2552 4175 50  0000 L CNN
F 2 "open-automation:CONN-BARREL_PJ-037A" H 2475 3975 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/cui-inc/PJ-037A/CP-037A-ND/1644545" H 2475 3925 50  0001 C CNN
F 4 "PJ-037A" H 2475 3825 50  0001 C CNN "Part Number"
	1    2475 4225
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0109
U 1 1 5B0FC9F0
P 2250 4300
F 0 "#PWR0109" H 2250 4050 50  0001 C CNN
F 1 "GND" H 2250 4150 50  0000 C CNN
F 2 "" H 2250 4300 50  0000 C CNN
F 3 "" H 2250 4300 50  0000 C CNN
	1    2250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4300 2250 4275
Wire Wire Line
	2250 4275 2275 4275
$Comp
L open-automation:GND #PWR0110
U 1 1 5B15E1F5
P 2250 3800
F 0 "#PWR0110" H 2250 3550 50  0001 C CNN
F 1 "GND" H 2250 3650 50  0000 C CNN
F 2 "" H 2250 3800 50  0000 C CNN
F 3 "" H 2250 3800 50  0000 C CNN
	1    2250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3800 2250 3775
Wire Wire Line
	2250 3775 2275 3775
Text HLabel 2225 3675 0    60   Input ~ 0
DISPLAY_POWER
Wire Wire Line
	2225 3675 2275 3675
Text HLabel 2225 4175 0    60   Input ~ 0
MAIN_POWER
Wire Wire Line
	2225 4175 2275 4175
$Comp
L open-automation:USB_B J5
U 1 1 5B15E1F6
P 7750 2525
F 0 "J5" H 7805 2992 50  0000 C CNN
F 1 "USB_B" H 7805 2901 50  0000 C CNN
F 2 "open-automation:USB_B-B1HSB6" H 7650 3275 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/on-shore-technology-inc/USB-B1HSB6/ED2983-ND/2677744" H 7650 3175 50  0001 C CNN
F 4 "USB-B1HSB6" H 7650 3075 50  0001 C CNN "Part Number"
	1    7750 2525
	1    0    0    -1  
$EndComp
Text HLabel 8125 2325 2    60   Input ~ 0
5V
$Comp
L open-automation:GND #PWR0111
U 1 1 5B15E1F7
P 7700 3000
F 0 "#PWR0111" H 7700 2750 50  0001 C CNN
F 1 "GND" H 7700 2850 50  0000 C CNN
F 2 "" H 7700 3000 50  0000 C CNN
F 3 "" H 7700 3000 50  0000 C CNN
	1    7700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2925 7650 2975
Wire Wire Line
	7650 2975 7700 2975
Wire Wire Line
	7750 2975 7750 2925
Wire Wire Line
	7700 3000 7700 2975
Connection ~ 7700 2975
Wire Wire Line
	7700 2975 7750 2975
Wire Wire Line
	8050 2325 8125 2325
Wire Wire Line
	9100 900  9200 900 
Wire Wire Line
	7475 900  7575 900 
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
Text HLabel 3175 2500 0    60   Input ~ 0
SCL
Text HLabel 3875 2200 2    60   Input ~ 0
5V
Text HLabel 3875 2300 2    60   Input ~ 0
TXD
Text HLabel 3875 2400 2    60   Input ~ 0
RXD
Text HLabel 3875 2500 2    60   Input ~ 0
SDA
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J4
U 1 1 5B15E1F0
P 3475 2300
F 0 "J4" H 3525 2717 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 3525 1850 50  0000 C CNN
F 2 "" H 3475 2300 50  0001 C CNN
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
Wire Wire Line
	8900 2800 8900 2700
Wire Wire Line
	9000 2800 9000 2700
Wire Wire Line
	9100 2800 9100 2700
Wire Wire Line
	9200 2800 9200 2700
Text HLabel 9000 4550 2    60   Input ~ 0
RXD
Text HLabel 9000 4650 2    60   Input ~ 0
TXD
Wire Wire Line
	9000 4650 8900 4650
Wire Wire Line
	9000 4550 8900 4550
$Comp
L open-automation:USB_IC-CP2104 U16
U 1 1 5B15E1F8
P 8200 4650
F 0 "U16" H 8200 3564 50  0000 C CNN
F 1 "USB_IC-CP2104" H 8200 3473 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_3x3mm_P0.45mm_EP1.6x1.6mm" H 8350 3700 50  0001 L CNN
F 3 "https://www.digikey.com/product-detail/en/silicon-labs/CP2102N-A01-GQFN20/336-3692-ND/6012517" H 7650 5900 50  0001 C CNN
F 4 "CP2102N-A01-GQFN20" H 8200 3382 50  0000 C CNN "Part Number"
	1    8200 4650
	1    0    0    -1  
$EndComp
$Comp
L open-automation:radio-housing-mounts U15
U 1 1 5B15D7E5
P 5750 3500
F 0 "U15" H 5875 3725 60  0000 L CNN
F 1 "radio-housing-mounts" H 5250 3300 60  0000 L CNN
F 2 "open-automation:radio-housing-mounts" H 5900 3800 60  0001 C CNN
F 3 "" H 5750 3550 60  0001 C CNN
	1    5750 3500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
