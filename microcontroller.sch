EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 13
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
L open-automation:GND #PWR027
U 1 1 59097974
P 4825 2750
F 0 "#PWR027" H 4825 2500 50  0001 C CNN
F 1 "GND" H 4825 2600 50  0000 C CNN
F 2 "" H 4825 2750 50  0000 C CNN
F 3 "" H 4825 2750 50  0000 C CNN
	1    4825 2750
	-1   0    0    1   
$EndComp
Text Label 4200 1025 0    197  ~ 0
Microcontroller
$Comp
L open-automation:GND #PWR026
U 1 1 59C55B05
P 2600 4000
F 0 "#PWR026" H 2600 3750 50  0001 C CNN
F 1 "GND" H 2600 3850 50  0000 C CNN
F 2 "" H 2600 4000 50  0000 C CNN
F 3 "" H 2600 4000 50  0000 C CNN
	1    2600 4000
	1    0    0    -1  
$EndComp
Text Notes 2275 4400 0    60   ~ 0
Bypass CAPs
$Comp
L open-automation:R_10k R15
U 1 1 59C609F8
P 6400 4700
F 0 "R15" V 6400 4700 50  0000 C CNN
F 1 "R_10k" V 6325 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6330 4700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 6480 4700 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 6580 4800 60  0001 C CNN "Part Number"
	1    6400 4700
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR028
U 1 1 5AF61DA0
P 6600 4700
F 0 "#PWR028" H 6600 4450 50  0001 C CNN
F 1 "GND" H 6600 4550 50  0000 C CNN
F 2 "" H 6600 4700 50  0000 C CNN
F 3 "" H 6600 4700 50  0000 C CNN
	1    6600 4700
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_10k R14
U 1 1 59C83F25
P 3450 3700
F 0 "R14" V 3450 3700 50  0000 C CNN
F 1 "R_10k" H 3325 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 3380 3700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 3530 3700 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 3630 3800 60  0001 C CNN "Part Number"
	1    3450 3700
	-1   0    0    1   
$EndComp
$Comp
L open-automation:R_10k R13
U 1 1 59C83F7C
P 3350 3700
F 0 "R13" V 3350 3700 50  0000 C CNN
F 1 "R_10k" H 3475 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 3280 3700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 3430 3700 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 3530 3800 60  0001 C CNN "Part Number"
	1    3350 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6625 3900 6725 3900
Wire Wire Line
	6725 3400 6625 3400
Wire Wire Line
	6625 3500 6725 3500
Wire Wire Line
	6725 3050 6625 3050
Wire Wire Line
	6625 2950 6725 2950
Wire Wire Line
	6625 4100 6725 4100
Wire Wire Line
	6175 4650 6175 4700
Wire Wire Line
	4775 3000 4875 3000
Wire Wire Line
	4875 2900 4775 2900
Wire Wire Line
	4825 2800 4875 2800
Wire Wire Line
	4825 2750 4825 2800
Wire Wire Line
	4775 4100 4875 4100
Wire Wire Line
	6250 4700 6175 4700
Wire Wire Line
	6600 4700 6550 4700
Wire Wire Line
	3450 3850 3450 3925
Wire Wire Line
	3350 3925 3350 3850
Wire Wire Line
	3350 3550 3350 3425
Wire Wire Line
	3450 3425 3450 3550
Wire Notes Line
	2075 4275 2075 3150
Wire Notes Line
	2075 3150 3000 3150
Wire Notes Line
	3000 3150 3000 4275
Wire Notes Line
	3000 4275 2075 4275
Text HLabel 3350 3425 1    60   Input ~ 0
3v3
Text HLabel 3450 3425 1    60   Input ~ 0
3v3
Text HLabel 3450 3925 3    60   Input ~ 0
SCL
Text HLabel 3350 3925 3    60   Input ~ 0
SDA
Text HLabel 2600 3300 1    60   Input ~ 0
3v3
Text HLabel 6725 3600 2    60   Input ~ 0
EN_MAIN
Text HLabel 6725 3900 2    60   Input ~ 0
EN_AUDIO
Text HLabel 4775 3700 0    60   Input ~ 0
MUTE_AUDIO
Text HLabel 4775 3600 0    60   Input ~ 0
STBY_AUDIO
Text HLabel 6725 4100 2    60   Input ~ 0
PROG
Text HLabel 6725 3500 2    60   Input ~ 0
SDA
Text HLabel 6725 3400 2    60   Input ~ 0
SCL
Text HLabel 6725 3050 2    60   Input ~ 0
RXD
Text HLabel 6725 2950 2    60   Input ~ 0
TXD
Text HLabel 4775 4100 0    60   Input ~ 0
FACTORY
Text HLabel 4775 2900 0    60   Input ~ 0
3v3
Text HLabel 4775 3000 0    60   Input ~ 0
EN_ESP
Text HLabel 4765 4200 0    50   Output ~ 0
SOFT_POWER
Wire Wire Line
	6625 4000 6725 4000
$Comp
L open-automation:ESP-WROOM-32 U6
U 1 1 5AFA4EFB
P 5775 3450
F 0 "U6" H 6325 2350 60  0000 C CNN
F 1 "ESP-WROOM-32" H 5775 4250 60  0000 C CNN
F 2 "open-automation:ESP-WROOM-32" H 5425 4050 60  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp_wroom_32_datasheet_en.pdf" H 5425 4050 60  0001 C CNN
	1    5775 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6625 3700 6725 3700
Wire Wire Line
	6625 3600 6725 3600
Text HLabel 6075 4725 3    60   Input ~ 0
EN_DISPLAY
Wire Wire Line
	6075 4725 6075 4650
Wire Wire Line
	4875 4200 4765 4200
Text HLabel 6725 4000 2    60   Input ~ 0
CAN_RX
Text HLabel 6725 3700 2    60   Input ~ 0
CAN_TX
Wire Wire Line
	4775 3700 4875 3700
Wire Wire Line
	4775 3600 4875 3600
Wire Wire Line
	2600 4000 2600 3950
Wire Wire Line
	2600 3950 2400 3950
Wire Wire Line
	2400 3950 2400 3900
Wire Wire Line
	2600 3950 2800 3950
Wire Wire Line
	2800 3950 2800 3900
Connection ~ 2600 3950
Wire Wire Line
	2800 3600 2800 3450
Wire Wire Line
	2800 3450 2600 3450
Wire Wire Line
	2400 3450 2400 3600
Wire Wire Line
	2600 3450 2600 3300
Wire Wire Line
	2600 3450 2400 3450
Connection ~ 2600 3450
$Comp
L open-automation:C_10uF C10
U 1 1 5B2706A8
P 2400 3750
F 0 "C10" H 2515 3796 50  0000 L CNN
F 1 "C_10uF" H 2515 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 2500 4050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10A106MP8NNNC/1276-1871-1-ND/3889957" H 2400 3500 50  0001 C CNN
F 4 "CL10A106MP8NNNC" H 2525 3950 60  0001 C CNN "Part Number"
	1    2400 3750
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_1uF C12
U 1 1 5B2CA474
P 2800 3750
F 0 "C12" H 2915 3796 50  0000 L CNN
F 1 "C_1uF" H 2915 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 2900 4050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 2800 3500 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 2925 3950 60  0001 C CNN "Part Number"
	1    2800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6625 3300 6725 3300
Text HLabel 6725 3300 2    50   Input ~ 0
I2S_DATA_IN
Wire Wire Line
	4875 3800 4775 3800
Text HLabel 4775 3800 0    50   Input ~ 0
I2S_DATA_OUT
$Comp
L open-dash-daughterboard-rescue:R_47.5-liger-rescue R?
U 1 1 5B2E2168
P 4450 3900
F 0 "R?" V 4450 3900 50  0000 C CNN
F 1 "R_47.5" V 4550 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4380 3900 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3EKF4752V/P47.5KHCT-ND/198404" V 4530 3900 50  0001 C CNN
F 4 "ERJ-3EKF4752V" V 4630 4000 60  0001 C CNN "Part Number"
	1    4450 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 3900 4250 3900
Text HLabel 4250 3900 0    50   Input ~ 0
I2S_BCLK
Wire Wire Line
	4875 3900 4600 3900
Wire Wire Line
	6625 3200 7025 3200
$Comp
L open-dash-daughterboard-rescue:R_47.5-liger-rescue R?
U 1 1 5B308AD6
P 7175 3200
F 0 "R?" V 7175 3200 50  0000 C CNN
F 1 "R_47.5" V 7075 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7105 3200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3EKF4752V/P47.5KHCT-ND/198404" V 7255 3200 50  0001 C CNN
F 4 "ERJ-3EKF4752V" V 7355 3300 60  0001 C CNN "Part Number"
	1    7175 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	7325 3200 7450 3200
Text HLabel 7450 3200 2    50   Input ~ 0
I2S_WS
$Comp
L open-automation:R_1k R?
U 1 1 5B33C581
P 2225 5350
F 0 "R?" V 2018 5350 50  0000 C CNN
F 1 "R_1k" V 2109 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2155 5350 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3GEYJ102V/P1.0KGDKR-ND/577615" V 2305 5350 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 2405 5450 60  0001 C CNN "Part Number"
	1    2225 5350
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_1k R?
U 1 1 5B33C589
P 2025 5525
F 0 "R?" H 2095 5571 50  0000 L CNN
F 1 "R_1k" H 2095 5480 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1955 5525 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3GEYJ102V/P1.0KGDKR-ND/577615" V 2105 5525 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 2205 5625 60  0001 C CNN "Part Number"
	1    2025 5525
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_1k R?
U 1 1 5B33C591
P 2700 4925
F 0 "R?" H 2500 5000 50  0000 L CNN
F 1 "R_1k" H 2475 4925 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2630 4925 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3GEYJ102V/P1.0KGDKR-ND/577615" V 2780 4925 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 2880 5025 60  0001 C CNN "Part Number"
	1    2700 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5100 3650 5100
Wire Wire Line
	2700 5550 2700 5700
$Comp
L open-automation:GND #PWR?
U 1 1 5B33C59A
P 2025 5700
F 0 "#PWR?" H 2025 5450 50  0001 C CNN
F 1 "GND" H 2030 5527 50  0000 C CNN
F 2 "" H 2025 5700 50  0000 C CNN
F 3 "" H 2025 5700 50  0000 C CNN
	1    2025 5700
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5B33C5A0
P 2700 5700
F 0 "#PWR?" H 2700 5450 50  0001 C CNN
F 1 "GND" H 2705 5527 50  0000 C CNN
F 2 "" H 2700 5700 50  0000 C CNN
F 3 "" H 2700 5700 50  0000 C CNN
	1    2700 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5150 2700 5100
Wire Wire Line
	2400 5350 2375 5350
Wire Wire Line
	2025 5350 2075 5350
Wire Wire Line
	2025 5700 2025 5675
Wire Wire Line
	2025 5350 2025 5375
Wire Wire Line
	2025 5350 1950 5350
Connection ~ 2025 5350
Wire Wire Line
	2700 5100 2700 5075
Connection ~ 2700 5100
$Comp
L open-automation:Q_NPN_BEC Q?
U 1 1 5B33C5B0
P 2600 5350
F 0 "Q?" H 2791 5396 50  0000 L CNN
F 1 "Q_NPN_BEC" H 2791 5305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2800 5450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/on-semiconductor/KST10MTF/KST10MTFCT-ND/965649" H 2800 5400 50  0001 C CNN
F 4 "KST10MTF" H 2900 5500 50  0001 C CNN "Part Number"
	1    2600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4775 2700 4675
Text HLabel 3650 5100 2    60   Input ~ 0
MUTE_AUDIO
Text HLabel 1950 6950 0    60   Input ~ 0
STBY_AUDIO
Text HLabel 1950 5350 0    60   Input ~ 0
MUTE_AUDIO
Text HLabel 3650 6700 2    60   Input ~ 0
STBY_AUDIO
$Comp
L open-automation:R_1k R?
U 1 1 5B346765
P 2225 6950
F 0 "R?" V 2018 6950 50  0000 C CNN
F 1 "R_1k" V 2109 6950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2155 6950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3GEYJ102V/P1.0KGDKR-ND/577615" V 2305 6950 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 2405 7050 60  0001 C CNN "Part Number"
	1    2225 6950
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_1k R?
U 1 1 5B34676D
P 2025 7125
F 0 "R?" H 2095 7171 50  0000 L CNN
F 1 "R_1k" H 2095 7080 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1955 7125 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3GEYJ102V/P1.0KGDKR-ND/577615" V 2105 7125 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 2205 7225 60  0001 C CNN "Part Number"
	1    2025 7125
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_1k R?
U 1 1 5B346775
P 2700 6525
F 0 "R?" H 2500 6600 50  0000 L CNN
F 1 "R_1k" H 2475 6525 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2630 6525 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3GEYJ102V/P1.0KGDKR-ND/577615" V 2780 6525 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 2880 6625 60  0001 C CNN "Part Number"
	1    2700 6525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6700 3650 6700
Wire Wire Line
	2700 7150 2700 7300
$Comp
L open-automation:GND #PWR?
U 1 1 5B34677E
P 2025 7300
F 0 "#PWR?" H 2025 7050 50  0001 C CNN
F 1 "GND" H 2030 7127 50  0000 C CNN
F 2 "" H 2025 7300 50  0000 C CNN
F 3 "" H 2025 7300 50  0000 C CNN
	1    2025 7300
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5B346784
P 2700 7300
F 0 "#PWR?" H 2700 7050 50  0001 C CNN
F 1 "GND" H 2705 7127 50  0000 C CNN
F 2 "" H 2700 7300 50  0000 C CNN
F 3 "" H 2700 7300 50  0000 C CNN
	1    2700 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6750 2700 6700
Wire Wire Line
	2400 6950 2375 6950
Wire Wire Line
	2025 6950 2075 6950
Wire Wire Line
	2025 7300 2025 7275
Wire Wire Line
	2025 6950 2025 6975
Wire Wire Line
	2025 6950 1950 6950
Connection ~ 2025 6950
Wire Wire Line
	2700 6700 2700 6675
Connection ~ 2700 6700
$Comp
L open-automation:Q_NPN_BEC Q?
U 1 1 5B346794
P 2600 6950
F 0 "Q?" H 2791 6996 50  0000 L CNN
F 1 "Q_NPN_BEC" H 2791 6905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2800 7050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/on-semiconductor/KST10MTF/KST10MTFCT-ND/965649" H 2800 7000 50  0001 C CNN
F 4 "KST10MTF" H 2900 7100 50  0001 C CNN "Part Number"
	1    2600 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6375 2700 6275
Text HLabel 2700 4675 1    50   Input ~ 0
5V
Text HLabel 2700 6275 1    50   Input ~ 0
5V
$EndSCHEMATC
