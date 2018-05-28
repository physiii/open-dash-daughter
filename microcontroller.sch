EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 15
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
L open-automation:GND #PWR021
U 1 1 59097974
P 4825 2750
F 0 "#PWR021" H 4825 2500 50  0001 C CNN
F 1 "GND" H 4825 2600 50  0000 C CNN
F 2 "" H 4825 2750 50  0000 C CNN
F 3 "" H 4825 2750 50  0000 C CNN
	1    4825 2750
	-1   0    0    1   
$EndComp
Text Label 4200 1025 0    197  ~ 0
Microcontroller
$Comp
L open-automation:C_1uF C8
U 1 1 59C55B03
P 2825 3775
F 0 "C8" H 2825 3875 50  0000 L CNN
F 1 "C_1uF" H 2575 3675 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2925 4075 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/CC0603ZRY5V7BB105/311-1372-1-ND/2103156" H 2825 3525 50  0001 C CNN
F 4 "CC0603ZRY5V7BB105" H 2950 3975 60  0001 C CNN "Part Number"
	1    2825 3775
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR024
U 1 1 59C55B05
P 2625 4025
F 0 "#PWR024" H 2625 3775 50  0001 C CNN
F 1 "GND" H 2625 3875 50  0000 C CNN
F 2 "" H 2625 4025 50  0000 C CNN
F 3 "" H 2625 4025 50  0000 C CNN
	1    2625 4025
	1    0    0    -1  
$EndComp
Text Notes 2275 4400 0    60   ~ 0
Bypass CAPs
$Comp
L open-automation:R_10k R12
U 1 1 59C609F8
P 6400 4700
F 0 "R12" V 6400 4700 50  0000 C CNN
F 1 "R_10k" V 6325 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6330 4700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 6480 4700 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 6580 4800 60  0001 C CNN "Part Number"
	1    6400 4700
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR025
U 1 1 5AF61DA0
P 6600 4700
F 0 "#PWR025" H 6600 4450 50  0001 C CNN
F 1 "GND" H 6600 4550 50  0000 C CNN
F 2 "" H 6600 4700 50  0000 C CNN
F 3 "" H 6600 4700 50  0000 C CNN
	1    6600 4700
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_10k R11
U 1 1 59C83F25
P 3450 3700
F 0 "R11" V 3450 3700 50  0000 C CNN
F 1 "R_10k" H 3325 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3380 3700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 3530 3700 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 3630 3800 60  0001 C CNN "Part Number"
	1    3450 3700
	-1   0    0    1   
$EndComp
$Comp
L open-automation:R_10k R10
U 1 1 59C83F7C
P 3350 3700
F 0 "R10" V 3350 3700 50  0000 C CNN
F 1 "R_10k" H 3475 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3280 3700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 3430 3700 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 3530 3800 60  0001 C CNN "Part Number"
	1    3350 3700
	-1   0    0    1   
$EndComp
$Comp
L open-automation:C_10uF C7
U 1 1 5AF61DA3
P 2425 3775
F 0 "C7" H 2450 3875 50  0000 L CNN
F 1 "C_10uF" H 2125 3675 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2525 4075 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/murata-electronics-north-america/GRM188R61A106ME69D/490-10475-1-ND/5026393" H 2425 3525 50  0001 C CNN
F 4 "GRM188R61A106ME69D" H 2550 3975 60  0001 C CNN "Part Number"
	1    2425 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6625 3800 6725 3800
Wire Wire Line
	6725 3500 6625 3500
Wire Wire Line
	6625 3600 6725 3600
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
	2425 3925 2425 3975
Wire Wire Line
	2425 3975 2625 3975
Wire Wire Line
	2825 3975 2825 3925
Wire Wire Line
	2625 4025 2625 3975
Connection ~ 2625 3975
Wire Wire Line
	6250 4700 6175 4700
Connection ~ 6175 4700
Wire Wire Line
	6600 4700 6550 4700
Wire Wire Line
	6725 3900 6625 3900
Wire Wire Line
	3450 3850 3450 3925
Wire Wire Line
	3350 3925 3350 3850
Wire Wire Line
	3350 3550 3350 3425
Wire Wire Line
	3450 3425 3450 3550
Wire Wire Line
	2425 3625 2425 3525
Wire Wire Line
	2425 3525 2625 3525
Wire Wire Line
	2625 3525 2625 3400
Wire Wire Line
	2825 3525 2825 3625
Connection ~ 2625 3525
Wire Notes Line
	2075 4275 2075 3150
Wire Notes Line
	2075 3150 3000 3150
Wire Notes Line
	3000 3150 3000 4275
Wire Notes Line
	3000 4275 2075 4275
Wire Wire Line
	4850 5250 5150 5250
Wire Wire Line
	4850 5400 5150 5400
Wire Wire Line
	4850 5550 5150 5550
Wire Wire Line
	4850 5700 5150 5700
Wire Wire Line
	2625 3975 2825 3975
Wire Wire Line
	6175 4700 6175 4750
Wire Wire Line
	2625 3525 2825 3525
Text HLabel 3350 3425 1    60   Input ~ 0
3V3
Text HLabel 3450 3425 1    60   Input ~ 0
3V3
Text HLabel 3450 3925 3    60   Input ~ 0
SCL
Text HLabel 3350 3925 3    60   Input ~ 0
SDA
Text HLabel 2625 3400 1    60   Input ~ 0
3V3
Text HLabel 4850 5250 0    60   Input ~ 0
EN_5V_POWER
Text HLabel 4850 5400 0    60   Input ~ 0
EN_8V_POWER
Text HLabel 4850 5550 0    60   Input ~ 0
MUTE_AUDIO_AMP
Text HLabel 4850 5700 0    60   Input ~ 0
STBY_AUDIO_AMP
Text HLabel 6175 4750 3    60   Input ~ 0
IO2
Text HLabel 6725 4100 2    60   Input ~ 0
PROG
Text HLabel 6725 3900 2    60   Input ~ 0
PANEL_SW
Text HLabel 6725 3800 2    60   Input ~ 0
POWER_EN
Text HLabel 6725 3600 2    60   Input ~ 0
SDA
Text HLabel 6725 3500 2    60   Input ~ 0
SCL
Text HLabel 6725 3050 2    60   Input ~ 0
RXD
Text HLabel 6725 2950 2    60   Input ~ 0
TXD
Text HLabel 4775 4100 0    60   Input ~ 0
FACTORY
Text HLabel 4775 2900 0    60   Input ~ 0
3V3
Text HLabel 4775 3000 0    60   Input ~ 0
ESP_EN
Text HLabel 6725 4000 2    50   Output ~ 0
SOFT_POWER
Wire Wire Line
	6625 4000 6725 4000
$Comp
L open-automation:ESP-WROOM-32 U14
U 1 1 5AFA4EFB
P 5775 3450
F 0 "U14" H 6325 2350 60  0000 C CNN
F 1 "ESP-WROOM-32" H 5775 4250 60  0000 C CNN
F 2 "open-automation:ESP-WROOM-32" H 5425 4050 60  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp_wroom_32_datasheet_en.pdf" H 5425 4050 60  0001 C CNN
	1    5775 3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
