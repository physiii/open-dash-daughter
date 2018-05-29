EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 14 14
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
L Connector_Generic:Conn_01x02 J?
U 1 1 5AE24043
P 8175 950
F 0 "J?" H 8255 942 50  0000 L CNN
F 1 "Conn_01x02" H 8255 851 50  0000 L CNN
F 2 "" H 8175 950 50  0001 C CNN
F 3 "~" H 8175 950 50  0001 C CNN
	1    8175 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5AE240A7
P 8225 1650
F 0 "J?" H 8305 1642 50  0000 L CNN
F 1 "Conn_01x02" H 8305 1551 50  0000 L CNN
F 2 "" H 8225 1650 50  0001 C CNN
F 3 "~" H 8225 1650 50  0001 C CNN
	1    8225 1650
	1    0    0    -1  
$EndComp
Text Notes 7975 750  0    50   ~ 0
AM/FM Antenna
Text Notes 7975 1450 0    50   ~ 0
GPS Antenna
$Comp
L power:GNDA #PWR?
U 1 1 5AE24110
P 7775 1150
F 0 "#PWR?" H 7775 900 50  0001 C CNN
F 1 "GNDA" H 7780 977 50  0000 C CNN
F 2 "" H 7775 1150 50  0001 C CNN
F 3 "" H 7775 1150 50  0001 C CNN
	1    7775 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5AE24128
P 7875 1850
F 0 "#PWR?" H 7875 1600 50  0001 C CNN
F 1 "GNDA" H 7880 1677 50  0000 C CNN
F 2 "" H 7875 1850 50  0001 C CNN
F 3 "" H 7875 1850 50  0001 C CNN
	1    7875 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7775 1150 7775 1050
Wire Wire Line
	7775 1050 7975 1050
Wire Wire Line
	7875 1850 7875 1750
Wire Wire Line
	7875 1750 8025 1750
Text HLabel 7475 950  0    50   Input ~ 0
AMF_Antenna
Text HLabel 7475 1650 0    50   Input ~ 0
GPS_Antenna
Wire Wire Line
	7975 950  7475 950 
Wire Wire Line
	7475 1650 8025 1650
Text HLabel 2375 2325 0    50   Input ~ 0
CAN+
Text HLabel 2875 2325 2    50   Input ~ 0
CAN-
Text HLabel 2375 2225 0    50   Input ~ 0
CameraSignal
Text HLabel 2875 2125 2    50   Input ~ 0
CameraShield
Text HLabel 2875 2225 2    50   Input ~ 0
CameraReturn
Text HLabel 2875 2025 2    50   Input ~ 0
Ground
Text HLabel 2375 2025 0    50   Input ~ 0
BATTERY
Text HLabel 5150 1550 0    50   Input ~ 0
LF_AUDIO_OUT+
Text HLabel 5150 1650 0    50   Input ~ 0
LR_AUDIO_OUT+
Text HLabel 5150 1750 0    50   Input ~ 0
RF_AUDIO_OUT+
Text HLabel 5150 1850 0    50   Input ~ 0
RR_AUDIO_OUT+
Text HLabel 5650 1850 2    50   Input ~ 0
RR_AUDIO_OUT-
Text HLabel 5650 1750 2    50   Input ~ 0
RF_AUDIO_OUT-
Text HLabel 5650 1650 2    50   Input ~ 0
LR_AUDIO_OUT-
Text HLabel 5650 1550 2    50   Input ~ 0
LF_AUDIO_OUT-
$Comp
L open-dash-daughterboard-rescue:LED-open-automation D?
U 1 1 5B1799AD
P 1975 3750
F 0 "D?" V 1950 3850 50  0000 C CNN
F 1 "LED" V 2075 3675 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 1975 3750 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic9/00128792_0.pdf" H 1975 3750 50  0001 C CNN
F 4 "475-2512-2-ND" H 1975 3750 60  0001 C CNN "Part Number"
	1    1975 3750
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:USB_A_2 P?
U 1 1 5B1799AF
P 7850 3000
F 0 "P?" H 8100 2800 50  0000 C CNN
F 1 "USB_A_2" H 7800 3200 50  0000 C CNN
F 2 "open-automation:USB_A_2" V 7800 2900 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/cnc-tech/1002-004-01010/1175-1018-ND/3064749" V 7800 2900 50  0001 C CNN
F 4 "1002-004-01010" H 7850 3000 60  0001 C CNN "Part Number"
	1    7850 3000
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5969393D
P 8000 3400
F 0 "#PWR?" H 8000 3150 50  0001 C CNN
F 1 "GND" H 8000 3250 50  0000 C CNN
F 2 "" H 8000 3400 50  0000 C CNN
F 3 "" H 8000 3400 50  0000 C CNN
	1    8000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3300 8000 3350
Wire Wire Line
	8250 2900 8250 3350
Wire Wire Line
	8250 3350 8000 3350
Connection ~ 8000 3350
Wire Wire Line
	7400 3300 7400 3400
Wire Wire Line
	7400 3400 7350 3400
$Comp
L open-automation:housing-mounts U?
U 1 1 5978A2A6
P 7925 4225
F 0 "U?" H 8075 4125 60  0000 C CNN
F 1 "housing-mounts" H 7925 4425 60  0000 C CNN
F 2 "open-automation:enclosure-25x38" H 7925 4275 60  0001 C CNN
F 3 "https://www.mcmaster.com/#catalog/123/904/=18nyvt2" H 7925 4275 60  0001 C CNN
	1    7925 4225
	1    0    0    -1  
$EndComp
$Comp
L open-automation:SW_PUSH FACTORY?
U 1 1 5B1799B2
P 1975 4600
F 0 "FACTORY?" H 1975 4775 50  0000 C CNN
F 1 "SW_PUSH" H 1975 4520 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_KMR2" H 1975 4600 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/60/KMR2_9aug12-25127.pdf" H 1975 4600 50  0001 C CNN
F 4 "KMR211NG LFS" H 1975 4600 60  0001 C CNN "Part Number"
	1    1975 4600
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 59C59092
P 1975 4975
F 0 "#PWR?" H 1975 4725 50  0001 C CNN
F 1 "GND" H 1975 4825 50  0000 C CNN
F 2 "" H 1975 4975 50  0000 C CNN
F 3 "" H 1975 4975 50  0000 C CNN
	1    1975 4975
	1    0    0    -1  
$EndComp
Wire Wire Line
	1975 4975 1975 4900
$Comp
L open-automation:R_10k R?
U 1 1 5B1799B4
P 1975 4100
F 0 "R?" V 1975 4100 50  0000 C CNN
F 1 "R_10k" V 1875 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1905 4100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 2055 4100 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 2155 4200 60  0001 C CNN "Part Number"
	1    1975 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1975 3900 1975 3950
Wire Wire Line
	1975 3550 1975 3600
Wire Wire Line
	1975 4250 1975 4275
Wire Wire Line
	2100 4275 1975 4275
Connection ~ 1975 4275
$Comp
L open-dash-daughterboard-rescue:LED-open-automation D?
U 1 1 5B1799B5
P 2925 3750
F 0 "D?" V 2900 3850 50  0000 C CNN
F 1 "LED" V 3025 3675 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 2925 3750 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic9/00128792_0.pdf" H 2925 3750 50  0001 C CNN
F 4 "475-2512-2-ND" H 2925 3750 60  0001 C CNN "Part Number"
	1    2925 3750
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:SW_PUSH REBOOT?
U 1 1 5B1799B6
P 2925 4600
F 0 "REBOOT?" H 2925 4775 50  0000 C CNN
F 1 "SW_PUSH" H 2925 4520 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_KMR2" H 2925 4600 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/60/KMR2_9aug12-25127.pdf" H 2925 4600 50  0001 C CNN
F 4 "KMR211NG LFS" H 2925 4600 60  0001 C CNN "Part Number"
	1    2925 4600
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5B1799B7
P 2925 4975
F 0 "#PWR?" H 2925 4725 50  0001 C CNN
F 1 "GND" H 2925 4825 50  0000 C CNN
F 2 "" H 2925 4975 50  0000 C CNN
F 3 "" H 2925 4975 50  0000 C CNN
	1    2925 4975
	1    0    0    -1  
$EndComp
Wire Wire Line
	2925 4975 2925 4900
$Comp
L open-automation:R_10k R?
U 1 1 5B1799B8
P 2925 4100
F 0 "R?" V 2925 4100 50  0000 C CNN
F 1 "R_10k" V 2825 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2855 4100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 3005 4100 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 3105 4200 60  0001 C CNN "Part Number"
	1    2925 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2925 3900 2925 3950
Wire Wire Line
	2925 3550 2925 3600
Wire Wire Line
	2925 4250 2925 4275
Wire Wire Line
	3050 4275 2925 4275
Connection ~ 2925 4275
$Comp
L open-dash-daughterboard-rescue:LED-open-automation D?
U 1 1 5B1799B9
P 3750 3750
F 0 "D?" V 3725 3850 50  0000 C CNN
F 1 "LED" V 3850 3675 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 3750 3750 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic9/00128792_0.pdf" H 3750 3750 50  0001 C CNN
F 4 "475-2512-2-ND" H 3750 3750 60  0001 C CNN "Part Number"
	1    3750 3750
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:SW_PUSH PROG?
U 1 1 5B1799BA
P 3750 4600
F 0 "PROG?" H 3750 4775 50  0000 C CNN
F 1 "SW_PUSH" H 3750 4520 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_KMR2" H 3750 4600 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/60/KMR2_9aug12-25127.pdf" H 3750 4600 50  0001 C CNN
F 4 "KMR211NG LFS" H 3750 4600 60  0001 C CNN "Part Number"
	1    3750 4600
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 59E3F1D2
P 3750 4975
F 0 "#PWR?" H 3750 4725 50  0001 C CNN
F 1 "GND" H 3750 4825 50  0000 C CNN
F 2 "" H 3750 4975 50  0000 C CNN
F 3 "" H 3750 4975 50  0000 C CNN
	1    3750 4975
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4975 3750 4900
$Comp
L open-automation:R_10k R?
U 1 1 5B1799BC
P 3750 4100
F 0 "R?" V 3750 4100 50  0000 C CNN
F 1 "R_10k" V 3650 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3680 4100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 3830 4100 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 3930 4200 60  0001 C CNN "Part Number"
	1    3750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3900 3750 3950
Wire Wire Line
	3750 3550 3750 3600
Wire Wire Line
	3750 4250 3750 4275
Wire Wire Line
	3875 4275 3750 4275
Connection ~ 3750 4275
Wire Wire Line
	7850 3400 7850 3300
Wire Wire Line
	7750 3400 7750 3300
Wire Wire Line
	7650 3400 7650 3300
Wire Wire Line
	7550 3400 7550 3300
Wire Wire Line
	8000 3350 8000 3400
Wire Wire Line
	1975 4275 1975 4300
Wire Wire Line
	2925 4275 2925 4300
Wire Wire Line
	3750 4275 3750 4300
Text HLabel 7350 3400 0    60   Input ~ 0
V_USB
Text HLabel 7550 3400 3    60   Input ~ 0
TXD
Text HLabel 7650 3400 3    60   Input ~ 0
RXD
Text HLabel 7750 3400 3    60   Input ~ 0
TXD
Text HLabel 7850 3400 3    60   Input ~ 0
RXD
Text HLabel 2100 4275 2    60   Input ~ 0
FACTORY
Text HLabel 3050 4275 2    60   Input ~ 0
EN
Text HLabel 3875 4275 2    60   Input ~ 0
PROG
Text HLabel 2925 3550 1    60   Input ~ 0
3v3
Text HLabel 3750 3550 1    60   Input ~ 0
3v3
Text HLabel 1975 3550 1    60   Input ~ 0
3v3
$Comp
L open-automation:molex-2x4-5.7mm U?
U 1 1 5B1A08B0
P 2625 2175
F 0 "U?" H 2625 2425 50  0000 C CNN
F 1 "molex-2x4-5.7mm" H 2650 1925 50  0000 C CNN
F 2 "open-automation:molex-2x4-5.7mm" H 2625 1775 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=768290008" H 2625 1875 50  0001 C CNN
F 4 "0768290008" H 2625 1925 50  0001 C CNN "Part Number"
	1    2625 2175
	1    0    0    -1  
$EndComp
$Comp
L open-automation:molex-2x4-5.7mm U?
U 1 1 5B1A09A6
P 5400 1700
F 0 "U?" H 5400 1950 50  0000 C CNN
F 1 "molex-2x4-5.7mm" H 5400 1450 50  0000 C CNN
F 2 "open-automation:molex-2x4-5.7mm" H 5400 1300 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=768290008" H 5400 1400 50  0001 C CNN
F 4 "0768290008" H 5400 1450 50  0001 C CNN "Part Number"
	1    5400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2375 2025 2425 2025
Wire Wire Line
	2875 2125 2825 2125
Wire Wire Line
	2825 2025 2875 2025
Wire Wire Line
	2875 2225 2825 2225
Wire Wire Line
	2825 2325 2875 2325
Wire Wire Line
	2425 2325 2375 2325
Wire Wire Line
	2375 2225 2425 2225
Wire Wire Line
	5150 1550 5200 1550
Wire Wire Line
	5200 1650 5150 1650
Wire Wire Line
	5200 1750 5150 1750
Wire Wire Line
	5150 1850 5200 1850
Wire Wire Line
	5600 1850 5650 1850
Wire Wire Line
	5650 1750 5600 1750
Wire Wire Line
	5600 1650 5650 1650
Wire Wire Line
	5650 1550 5600 1550
$EndSCHEMATC
