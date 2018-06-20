EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 7 13
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
L open-automation:TDA7297 U?
U 1 1 5AC797FB
P 9050 1350
F 0 "U?" H 8700 600 60  0000 C CNN
F 1 "TDA7297" H 9225 600 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-15_Vertical_StaggeredType1_Py5.08mm" H 8900 1200 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/stmicroelectronics/TDA7297/497-3967-5-ND/715883" H 8900 1200 60  0001 C CNN
F 4 "TDA7297" H 9050 1350 50  0001 C CNN "Part Number"
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L open-automation:AGND #PWR?
U 1 1 5AC7B29E
P 8300 1400
F 0 "#PWR?" H 8300 1150 50  0001 C CNN
F 1 "AGND" H 8300 1250 50  0000 C CNN
F 2 "" H 8300 1400 50  0000 C CNN
F 3 "" H 8300 1400 50  0000 C CNN
	1    8300 1400
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5AC7B2BE
P 7400 1450
F 0 "#PWR?" H 7400 1200 50  0001 C CNN
F 1 "GND" H 7400 1300 50  0000 C CNN
F 2 "" H 7400 1450 50  0000 C CNN
F 3 "" H 7400 1450 50  0000 C CNN
	1    7400 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5AC7B472
P 7400 1200
F 0 "C?" H 7425 1300 50  0000 L CNN
F 1 "470uF" H 7425 1100 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7438 1050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rubycon/16YXJ470M8X11.5/1189-1146-ND/3134104" H 7400 1200 50  0001 C CNN
F 4 "16YXJ470M8X11.5" H 7400 1200 60  0001 C CNN "Part Number"
	1    7400 1200
	1    0    0    1   
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5AC7C381
P 7575 2925
F 0 "#PWR?" H 7575 2675 50  0001 C CNN
F 1 "GND" H 7575 2775 50  0000 C CNN
F 2 "" H 7575 2925 50  0000 C CNN
F 3 "" H 7575 2925 50  0000 C CNN
	1    7575 2925
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5AC7C45C
P 7600 3725
F 0 "#PWR?" H 7600 3475 50  0001 C CNN
F 1 "GND" H 7600 3575 50  0000 C CNN
F 2 "" H 7600 3725 50  0000 C CNN
F 3 "" H 7600 3725 50  0000 C CNN
	1    7600 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1000 8350 1100
Wire Wire Line
	7275 1000 7400 1000
Connection ~ 8350 1000
Wire Wire Line
	7400 1050 7400 1000
Connection ~ 7400 1000
Wire Wire Line
	7725 1050 7725 1000
Connection ~ 7725 1000
Wire Wire Line
	7400 1350 7400 1400
Wire Wire Line
	7400 1400 7725 1400
Wire Wire Line
	7725 1400 7725 1350
Connection ~ 7400 1400
Wire Wire Line
	8100 1400 8100 1300
Connection ~ 7725 1400
Wire Wire Line
	7100 3250 6975 3250
Wire Wire Line
	7100 2475 6975 2475
Wire Wire Line
	7400 3250 7600 3250
Wire Wire Line
	7600 3250 7600 3325
Connection ~ 7600 3250
Wire Wire Line
	7400 2475 7575 2475
Wire Wire Line
	7575 2475 7575 2550
Connection ~ 7575 2475
Wire Wire Line
	7575 2850 7575 2925
Wire Wire Line
	7600 3625 7600 3725
$Comp
L Device:C C?
U 1 1 5AC7CAB7
P 7300 1925
F 0 "C?" V 7350 2000 50  0000 L CNN
F 1 "0.22uF" V 7250 2000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7338 1775 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B224KO8NNNC/1276-1112-1-ND/3889198" H 7300 1925 50  0001 C CNN
F 4 "CL10B224KO8NNNC" V 7300 1925 60  0001 C CNN "Part Number"
	1    7300 1925
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 2175 8075 2175
Wire Wire Line
	8075 2175 8075 1700
Wire Wire Line
	8000 1600 8000 1925
Wire Wire Line
	8000 1925 7450 1925
Wire Wire Line
	8150 2475 8150 1850
Wire Wire Line
	8225 3250 8225 1950
$Comp
L Device:C C?
U 1 1 5AC80604
P 7300 2175
F 0 "C?" V 7350 2250 50  0000 L CNN
F 1 "0.22uF" V 7250 2250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7338 2025 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B224KO8NNNC/1276-1112-1-ND/3889198" H 7300 2175 50  0001 C CNN
F 4 "CL10B224KO8NNNC" V 7300 2175 60  0001 C CNN "Part Number"
	1    7300 2175
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 1000 7725 1000
Wire Wire Line
	7725 1000 8350 1000
Wire Wire Line
	7400 1400 7400 1450
Wire Wire Line
	7725 1400 8100 1400
Wire Wire Line
	7600 3250 8225 3250
Wire Wire Line
	7575 2475 8150 2475
Text HLabel 7275 1000 0    60   Input ~ 0
AUDIO_POWER
Text HLabel 1150 2925 0    60   Input ~ 0
L_FM_AUDIO
Text HLabel 6975 2475 0    60   Input ~ 0
MUTE_AUDIO
Text HLabel 9850 1150 2    60   Input ~ 0
RL_AUDIO_OUT+
Text HLabel 9850 1700 2    60   Input ~ 0
RR_AUDIO_OUT+
Text HLabel 9850 1250 2    60   Input ~ 0
FL_AUDIO_OUT-
Text HLabel 9850 1800 2    60   Input ~ 0
FR_AUDIO_OUT-
Text HLabel 6975 3250 0    60   Input ~ 0
STBY_AUDIO
Wire Wire Line
	8350 1100 8450 1100
Wire Wire Line
	8300 1400 8450 1400
Wire Wire Line
	8100 1300 8450 1300
Wire Wire Line
	8225 1950 8450 1950
Wire Wire Line
	8150 1850 8450 1850
Wire Wire Line
	8075 1700 8450 1700
Wire Wire Line
	8000 1600 8450 1600
Wire Wire Line
	8350 1000 8450 1000
Text HLabel 9850 1600 2    60   Input ~ 0
FR_AUDIO_OUT+
Text HLabel 9850 1900 2    60   Input ~ 0
RR_AUDIO_OUT-
Text HLabel 9850 1050 2    60   Input ~ 0
FL_AUDIO_OUT+
Text HLabel 9850 1350 2    60   Input ~ 0
RL_AUDIO_OUT-
Wire Wire Line
	9850 1250 9800 1250
Wire Wire Line
	9800 1250 9800 1300
Wire Wire Line
	9600 1250 9700 1250
Wire Wire Line
	9850 1050 9775 1050
Wire Wire Line
	9775 1050 9775 1100
Wire Wire Line
	9850 1600 9800 1600
Wire Wire Line
	9800 1600 9800 1650
Wire Wire Line
	9800 1700 9850 1700
Wire Wire Line
	9850 1800 9800 1800
Wire Wire Line
	9800 1800 9800 1850
Wire Wire Line
	9800 1900 9850 1900
Wire Wire Line
	9600 1700 9675 1700
Wire Wire Line
	9675 1700 9675 1850
Wire Wire Line
	9675 1850 9800 1850
Connection ~ 9800 1850
Wire Wire Line
	9800 1850 9800 1900
Wire Wire Line
	9600 1600 9750 1600
Wire Wire Line
	9750 1600 9750 1650
Wire Wire Line
	9750 1650 9800 1650
Connection ~ 9800 1650
Wire Wire Line
	9800 1650 9800 1700
Wire Wire Line
	9850 1150 9775 1150
Wire Wire Line
	9800 1350 9850 1350
Wire Wire Line
	9600 1350 9700 1350
Wire Wire Line
	9700 1350 9700 1300
Wire Wire Line
	9700 1300 9800 1300
Connection ~ 9800 1300
Wire Wire Line
	9800 1300 9800 1350
Wire Wire Line
	9700 1100 9775 1100
Wire Wire Line
	9700 1100 9700 1250
Connection ~ 9775 1100
Wire Wire Line
	9775 1100 9775 1150
$Comp
L open-automation:R_10k R?
U 1 1 5B1BCAC5
P 7250 3250
F 0 "R?" V 7250 3250 50  0000 C CNN
F 1 "R_10k" V 7150 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 7180 3250 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 7330 3250 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 7430 3350 60  0001 C CNN "Part Number"
	1    7250 3250
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_10k R?
U 1 1 5B1BD0E6
P 7250 2475
F 0 "R?" V 7250 2475 50  0000 C CNN
F 1 "R_10k" V 7150 2475 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 7180 2475 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 7330 2475 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 7430 2575 60  0001 C CNN "Part Number"
	1    7250 2475
	0    1    1    0   
$EndComp
$Comp
L open-automation:OPA1662 U?
U 1 1 5B159652
P 2825 2400
F 0 "U?" H 3125 2150 60  0000 C CNN
F 1 "OPA1662" H 2850 2800 60  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 2925 2400 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/texas-instruments/OPA1662AIDGKR/296-36691-1-ND/4341323" H 2925 2400 60  0001 C CNN
F 4 "OPA1662AIDGKR" H 2850 2833 50  0001 C CNN "Part Number"
	1    2825 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 2100 3375 2100
$Comp
L open-automation:GND #PWR?
U 1 1 5B15E593
P 2275 2600
F 0 "#PWR?" H 2275 2350 50  0001 C CNN
F 1 "GND" H 2275 2450 50  0000 C CNN
F 2 "" H 2275 2600 50  0000 C CNN
F 3 "" H 2275 2600 50  0000 C CNN
	1    2275 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 2550 2325 2550
Text Label 3525 2250 0    50   ~ 0
R_AUDIO_CODEC_IN
Text Label 1900 1950 0    50   ~ 0
L_AUDIO_CODEC_IN
$Comp
L open-automation:GND #PWR?
U 1 1 5B166003
P 2800 3500
F 0 "#PWR?" H 2800 3250 50  0001 C CNN
F 1 "GND" V 2775 3325 50  0000 C CNN
F 2 "" H 2800 3500 50  0000 C CNN
F 3 "" H 2800 3500 50  0000 C CNN
	1    2800 3500
	1    0    0    -1  
$EndComp
Text HLabel 3425 2100 2    60   Input ~ 0
AUDIO_POWER
Text HLabel 1175 3200 0    60   Input ~ 0
L_MAIN_AUDIO
Text Label 6375 2175 0    50   ~ 0
R_AUDIO_IN
Text Label 6375 1925 0    50   ~ 0
L_AUDIO_IN
Text HLabel 4250 2975 2    60   Input ~ 0
R_FM_AUDIO
Wire Wire Line
	3850 2975 3775 2975
Text HLabel 4250 3250 2    60   Input ~ 0
R_MAIN_AUDIO
Wire Wire Line
	3375 2250 3850 2250
Text HLabel 3425 650  2    60   Input ~ 0
AUDIO_POWER
Wire Wire Line
	3300 650  3300 700 
$Comp
L open-automation:GND #PWR?
U 1 1 5B200BCF
P 3300 1100
F 0 "#PWR?" H 3300 850 50  0001 C CNN
F 1 "GND" V 3275 925 50  0000 C CNN
F 2 "" H 3300 1100 50  0000 C CNN
F 3 "" H 3300 1100 50  0000 C CNN
	1    3300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1175 3200 1250 3200
Wire Wire Line
	1150 2925 1250 2925
Wire Wire Line
	2275 2550 2275 2600
Wire Wire Line
	4250 2975 4150 2975
Wire Wire Line
	4250 3250 4150 3250
Wire Wire Line
	3775 3250 3850 3250
Wire Wire Line
	1550 2925 1675 2925
Wire Wire Line
	1675 3200 1550 3200
Wire Wire Line
	3375 2550 3475 2550
Wire Wire Line
	2325 2100 2300 2100
Wire Wire Line
	2300 2100 2300 1950
$Comp
L open-automation:R_20k R?
U 1 1 5B27132F
P 2125 2100
F 0 "R?" V 2125 2025 50  0000 L CNN
F 1 "R_20k" V 2225 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2055 2100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 2205 2100 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 2305 2200 60  0001 C CNN "Part Number"
	1    2125 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2250 2125 2250
Wire Wire Line
	1900 1950 2125 1950
Connection ~ 2125 1950
Wire Wire Line
	2125 1950 2300 1950
Connection ~ 2125 2250
Wire Wire Line
	2125 2250 2325 2250
$Comp
L open-automation:R_20k R?
U 1 1 5B271F00
P 1825 2925
F 0 "R?" V 1825 2875 50  0000 L CNN
F 1 "R_20k" V 1900 2825 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1755 2925 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 1905 2925 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 2005 3025 60  0001 C CNN "Part Number"
	1    1825 2925
	0    1    1    0   
$EndComp
Wire Wire Line
	1975 2925 1975 3200
$Comp
L open-automation:R_20k R?
U 1 1 5B272058
P 1825 3200
F 0 "R?" V 1825 3150 50  0000 L CNN
F 1 "R_20k" V 1900 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1755 3200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 1905 3200 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 2005 3300 60  0001 C CNN "Part Number"
	1    1825 3200
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_20k R?
U 1 1 5B2722CD
P 3850 2400
F 0 "R?" V 3850 2350 50  0000 L CNN
F 1 "R_20k" V 3925 2300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 3780 2400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 3930 2400 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 4030 2500 60  0001 C CNN "Part Number"
	1    3850 2400
	-1   0    0    1   
$EndComp
$Comp
L open-automation:R_20k R?
U 1 1 5B272444
P 3625 2975
F 0 "R?" V 3625 2925 50  0000 L CNN
F 1 "R_20k" V 3700 2875 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 3555 2975 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 3705 2975 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 3805 3075 60  0001 C CNN "Part Number"
	1    3625 2975
	0    1    1    0   
$EndComp
Wire Wire Line
	3475 2975 3475 3250
$Comp
L open-automation:R_20k R?
U 1 1 5B272558
P 3625 3250
F 0 "R?" V 3625 3200 50  0000 L CNN
F 1 "R_20k" V 3700 3150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 3555 3250 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 3705 3250 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 3805 3350 60  0001 C CNN "Part Number"
	1    3625 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	3375 2400 3650 2400
Wire Wire Line
	3650 2400 3650 2550
Wire Wire Line
	3650 2550 3850 2550
Wire Wire Line
	3850 2550 4075 2550
Connection ~ 3850 2550
Wire Wire Line
	3850 2250 4075 2250
Connection ~ 3850 2250
Wire Wire Line
	3425 650  3300 650 
Wire Wire Line
	1975 2925 1975 2350
Wire Wire Line
	1975 2350 1900 2350
Wire Wire Line
	1900 2350 1900 2250
Connection ~ 1975 2925
Wire Wire Line
	3475 2975 3475 2750
Wire Wire Line
	3475 2750 3850 2750
Wire Wire Line
	3850 2750 3850 2550
Connection ~ 3475 2975
Wire Wire Line
	2325 2400 2175 2400
Wire Wire Line
	2175 2400 2175 3050
Wire Wire Line
	3475 2550 3475 2675
Wire Wire Line
	3475 2675 3300 2675
Wire Wire Line
	3300 2675 3300 3050
$Comp
L open-automation:R_20k R?
U 1 1 5B29B9F5
P 6950 2175
F 0 "R?" V 6950 2125 50  0000 L CNN
F 1 "R_20k" V 7025 2075 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6880 2175 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 7030 2175 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 7130 2275 60  0001 C CNN "Part Number"
	1    6950 2175
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_20k R?
U 1 1 5B29BB83
P 6950 1925
F 0 "R?" V 6950 1875 50  0000 L CNN
F 1 "R_20k" V 7025 1825 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6880 1925 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 7030 1925 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 7130 2025 60  0001 C CNN "Part Number"
	1    6950 1925
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 2175 7150 2175
Wire Wire Line
	7150 1925 7100 1925
$Comp
L open-automation:C_100p C?
U 1 1 5B2B8BFB
P 4075 2400
F 0 "C?" H 4190 2446 50  0000 L CNN
F 1 "C_100p" H 4190 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4175 2700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C101J3GACTU/399-8980-1-ND/3522497" H 4075 2150 50  0001 C CNN
F 4 "C0603C101J3GACTU" H 4200 2600 60  0001 C CNN "Part Number"
	1    4075 2400
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_100p C?
U 1 1 5B2B8D2D
P 1900 2100
F 0 "C?" H 1750 2175 50  0000 L CNN
F 1 "C_100p" H 1600 2025 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 2000 2400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C101J3GACTU/399-8980-1-ND/3522497" H 1900 1850 50  0001 C CNN
F 4 "C0603C101J3GACTU" H 2025 2300 60  0001 C CNN "Part Number"
	1    1900 2100
	1    0    0    -1  
$EndComp
Connection ~ 1900 2250
Text HLabel 1250 4025 0    60   Input ~ 0
L_FM_AUDIO
Text HLabel 1250 4225 0    60   Input ~ 0
L_MAIN_AUDIO
Text HLabel 1250 4125 0    60   Input ~ 0
R_FM_AUDIO
Text HLabel 1250 4325 0    60   Input ~ 0
R_MAIN_AUDIO
Wire Wire Line
	1250 4325 1350 4325
Wire Wire Line
	1350 4225 1250 4225
Wire Wire Line
	1250 4125 1350 4125
Wire Wire Line
	1350 4025 1250 4025
$Comp
L open-automation:CONN_01X04 P?
U 1 1 5B2EA1FB
P 1550 4175
F 0 "P?" H 1525 4425 50  0000 L CNN
F 1 "CONN_01X04" H 1325 3925 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1450 4325 50  0001 C CNN
F 3 "" H 1550 4175 50  0000 C CNN
	1    1550 4175
	1    0    0    -1  
$EndComp
$Comp
L open-automation:CONN_01X02 P?
U 1 1 5B2F01D2
P 2500 4200
F 0 "P?" H 2500 4050 50  0000 C CNN
F 1 "CONN_01X02" H 2500 4350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2400 4250 50  0001 C CNN
F 3 "" H 2500 4200 50  0000 C CNN
	1    2500 4200
	-1   0    0    1   
$EndComp
Text Label 2800 4150 0    50   ~ 0
R_AUDIO_IN
Text Label 2800 4250 0    50   ~ 0
L_AUDIO_IN
Wire Wire Line
	2800 4250 2700 4250
Wire Wire Line
	2700 4150 2800 4150
$Comp
L open-automation:C_0.1uF C?
U 1 1 5B224815
P 3300 850
F 0 "C?" H 3415 896 50  0000 L CNN
F 1 "C_0.1uF" H 3415 805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3400 1150 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 3300 600 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 3425 1050 60  0001 C CNN "Part Number"
	1    3300 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1000 3300 1050
Connection ~ 3300 650 
Wire Wire Line
	2950 650  2950 700 
Wire Wire Line
	2950 650  3300 650 
Wire Wire Line
	2950 1000 2950 1050
Wire Wire Line
	2950 1050 3300 1050
Wire Wire Line
	3300 1050 3300 1100
Connection ~ 3300 1050
Wire Wire Line
	2175 3050 2800 3050
Connection ~ 2800 3050
Wire Wire Line
	2800 3050 3300 3050
$Comp
L open-automation:C_10uF C?
U 1 1 5B270C92
P 7600 3475
F 0 "C?" H 7715 3521 50  0000 L CNN
F 1 "C_10uF" H 7715 3430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7700 3775 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10A106MP8NNNC/1276-1871-1-ND/3889957" H 7600 3225 50  0001 C CNN
F 4 "CL10A106MP8NNNC" H 7725 3675 60  0001 C CNN "Part Number"
	1    7600 3475
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_10uF C?
U 1 1 5B276089
P 1400 2925
F 0 "C?" V 1148 2925 50  0000 C CNN
F 1 "C_10uF" V 1239 2925 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 1500 3225 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10A106MP8NNNC/1276-1871-1-ND/3889957" H 1400 2675 50  0001 C CNN
F 4 "CL10A106MP8NNNC" H 1525 3125 60  0001 C CNN "Part Number"
	1    1400 2925
	0    1    1    0   
$EndComp
$Comp
L open-automation:C_10uF C?
U 1 1 5B2761C8
P 1400 3200
F 0 "C?" V 1148 3200 50  0000 C CNN
F 1 "C_10uF" V 1239 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 1500 3500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10A106MP8NNNC/1276-1871-1-ND/3889957" H 1400 2950 50  0001 C CNN
F 4 "CL10A106MP8NNNC" H 1525 3400 60  0001 C CNN "Part Number"
	1    1400 3200
	0    1    1    0   
$EndComp
$Comp
L open-automation:C_10uF C?
U 1 1 5B27B4AF
P 4000 2975
F 0 "C?" V 3748 2975 50  0000 C CNN
F 1 "C_10uF" V 3839 2975 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4100 3275 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10A106MP8NNNC/1276-1871-1-ND/3889957" H 4000 2725 50  0001 C CNN
F 4 "CL10A106MP8NNNC" H 4125 3175 60  0001 C CNN "Part Number"
	1    4000 2975
	0    1    1    0   
$EndComp
$Comp
L open-automation:C_10uF C?
U 1 1 5B27B567
P 4000 3250
F 0 "C?" V 3950 3350 50  0000 C CNN
F 1 "C_10uF" V 4150 3275 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4100 3550 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10A106MP8NNNC/1276-1871-1-ND/3889957" H 4000 3000 50  0001 C CNN
F 4 "CL10A106MP8NNNC" H 4125 3450 60  0001 C CNN "Part Number"
	1    4000 3250
	0    1    1    0   
$EndComp
$Comp
L open-automation:C_0.1uF C?
U 1 1 5B28525F
P 7725 1200
F 0 "C?" H 7840 1246 50  0000 L CNN
F 1 "C_0.1uF" H 7840 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7825 1500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 7725 950 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 7850 1400 60  0001 C CNN "Part Number"
	1    7725 1200
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_1uF C?
U 1 1 5B2CA971
P 7575 2700
F 0 "C?" H 7690 2746 50  0000 L CNN
F 1 "C_1uF" H 7690 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7675 3000 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 7575 2450 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 7700 2900 60  0001 C CNN "Part Number"
	1    7575 2700
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_1uF C?
U 1 1 5B2CAF63
P 2950 850
F 0 "C?" H 3065 896 50  0000 L CNN
F 1 "C_1uF" H 3065 805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3050 1150 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 2950 600 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 3075 1050 60  0001 C CNN "Part Number"
	1    2950 850 
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_1uF C?
U 1 1 5B2CB4BD
P 2675 3275
F 0 "C?" H 2475 3350 50  0000 L CNN
F 1 "C_1uF" H 2450 3200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 2775 3575 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 2675 3025 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 2800 3475 60  0001 C CNN "Part Number"
	1    2675 3275
	1    0    0    -1  
$EndComp
$Comp
L liger-rescue:R_100k R?
U 1 1 5A1620AF
P 7200 4625
F 0 "R?" V 7200 4625 50  0000 C CNN
F 1 "R_100k" V 7125 4625 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7130 4625 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-07100KL/311-100KGRCT-ND/729645" V 7280 4625 50  0001 C CNN
F 4 "RC0603JR-07100KL" V 7380 4725 60  0001 C CNN "Part Number"
	1    7200 4625
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5A1620B0
P 7425 4850
F 0 "#PWR?" H 7425 4600 50  0001 C CNN
F 1 "GND" H 7425 4700 50  0000 C CNN
F 2 "" H 7425 4850 50  0000 C CNN
F 3 "" H 7425 4850 50  0000 C CNN
	1    7425 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7425 4850 7425 4825
Wire Wire Line
	7425 4825 7450 4825
Wire Wire Line
	7100 4750 7200 4750
Wire Wire Line
	7375 4450 7450 4450
Wire Wire Line
	8550 4450 8700 4450
Wire Wire Line
	8550 4550 8775 4550
Wire Wire Line
	8650 4750 8550 4750
Wire Wire Line
	8650 4650 8550 4650
$Comp
L liger-rescue:MAX98357AETE+T U?
U 1 1 5A1620B1
P 7800 4575
F 0 "U?" H 8250 4225 60  0000 C CNN
F 1 "MAX98357AETE+T" H 8000 4800 60  0000 C CNN
F 2 "open-automation:MAX98357A" H 8150 4125 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/maxim-integrated/MAX98357AETE-T/MAX98357AETE-TCT-ND/7603777" H 7975 4150 60  0001 C CNN
F 4 "MAX98357AETE+T" H 8000 4875 60  0000 C CNN "Part Number"
	1    7800 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4650 7400 4650
Wire Wire Line
	7400 4650 7400 4750
Connection ~ 7400 4750
$Comp
L power:GND #PWR?
U 1 1 5A1620B2
P 6950 4625
F 0 "#PWR?" H 6950 4375 50  0001 C CNN
F 1 "GND" V 6900 4450 50  0000 C CNN
F 2 "" H 6950 4625 50  0000 C CNN
F 3 "" H 6950 4625 50  0000 C CNN
	1    6950 4625
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 4625 7050 4625
Wire Wire Line
	7350 4625 7375 4625
Wire Wire Line
	7375 4625 7375 4550
Wire Wire Line
	7375 4550 7450 4550
Wire Wire Line
	7200 4775 7200 4750
Connection ~ 7200 4750
$Comp
L power:GND #PWR?
U 1 1 5A1620B4
P 7200 5125
F 0 "#PWR?" H 7200 4875 50  0001 C CNN
F 1 "GND" H 7200 4975 50  0000 C CNN
F 2 "" H 7200 5125 50  0000 C CNN
F 3 "" H 7200 5125 50  0000 C CNN
	1    7200 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5125 7200 5075
$Comp
L liger-rescue:speaker-CVS-1508 LS?
U 1 1 5A1620B5
P 9725 4250
F 0 "LS?" H 9725 4375 50  0000 R CNN
F 1 "speaker-CVS-1508" H 9775 4400 50  0001 R CNN
F 2 "open-automation:speaker-1508" H 9725 4050 50  0001 C CNN
F 3 "http://www.cui.com/product/resource/cvs-1508.pdf" H 9715 4200 50  0001 C CNN
F 4 "CVS-1508" H 9875 4575 60  0001 C CNN "Part Number"
	1    9725 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4450 8700 4250
Wire Wire Line
	8700 4250 8825 4250
Wire Wire Line
	8775 4550 8775 4350
Wire Wire Line
	8775 4350 8825 4350
Text Label 3800 4900 0    197  ~ 0
Speaker
Wire Wire Line
	7400 4750 7450 4750
Wire Wire Line
	7200 4750 7400 4750
$Comp
L open-automation:C_0.1uF C?
U 1 1 5B1F08F4
P 7200 4925
F 0 "C?" H 7315 4971 50  0000 L CNN
F 1 "C_0.1uF" H 7315 4880 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7300 5225 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 7200 4675 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 7325 5125 60  0001 C CNN "Part Number"
	1    7200 4925
	1    0    0    -1  
$EndComp
Text HLabel 7100 4750 0    60   Input ~ 0
V_IN
Text HLabel 7375 4450 0    60   Input ~ 0
I2S_DATA_OUT
Text HLabel 8650 4650 2    60   Input ~ 0
I2S_WS
Text HLabel 8650 4750 2    60   Input ~ 0
I2S_BCLK
Wire Wire Line
	9525 4250 9450 4250
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5B2BE39C
P 9025 4250
F 0 "J?" H 8975 4350 50  0000 L CNN
F 1 "Conn_01x02" H 8900 4025 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x02_P1.00mm_Vertical" H 9025 4250 50  0001 C CNN
F 3 "~" H 9025 4250 50  0001 C CNN
	1    9025 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5B2BE409
P 9250 4350
F 0 "J?" H 9170 4025 50  0000 C CNN
F 1 "Conn_01x02" H 9170 4116 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x02_P1.00mm_Vertical" H 9250 4350 50  0001 C CNN
F 3 "~" H 9250 4350 50  0001 C CNN
	1    9250 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9450 4350 9525 4350
$Comp
L open-automation:R_100k R?
U 1 1 5B3182B5
P 2925 3275
F 0 "R?" H 3000 3300 50  0000 L CNN
F 1 "R_100k" H 2995 3230 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 2855 3275 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-07100KL/311-100KGRCT-ND/729645" V 3005 3275 50  0001 C CNN
F 4 "RC0603JR-07100KL" V 3105 3375 60  0001 C CNN "Part Number"
	1    2925 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3125 2925 3125
Wire Wire Line
	2800 3050 2800 3125
Wire Wire Line
	2800 3125 2675 3125
Connection ~ 2800 3125
Wire Wire Line
	2675 3425 2800 3425
Wire Wire Line
	2800 3425 2800 3500
Wire Wire Line
	2925 3425 2800 3425
Connection ~ 2800 3425
$Comp
L Amplifier_Audio:MAX98089 U?
U 1 1 5B46AEA2
P 4275 6000
F 0 "U?" H 3425 6600 50  0000 L CNN
F 1 "MAX98089" H 5050 6600 50  0000 L CNN
F 2 "Package_DFN_QFN:QFN-56-1EP_7x7mm_P0.4mm_EP5.7x5.7mm" H 4825 6900 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/maxim-integrated/MAX98089ETN/MAX98089ETN-ND/2744335" H 4275 7100 50  0001 C CNN
F 4 "MAX98089ETN+" H 5316 5584 50  0000 L CNN "Part Number"
	1    4275 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1925 6375 1925
Wire Wire Line
	6375 2175 6800 2175
Text Label 4175 7725 1    50   ~ 0
R_AUDIO_IN
Text Label 3875 7725 1    50   ~ 0
L_AUDIO_IN
Wire Wire Line
	3875 7300 3875 7725
Wire Wire Line
	4175 7725 4175 7300
Wire Wire Line
	4375 7300 4375 7375
Wire Wire Line
	3775 7300 3775 7400
$Comp
L open-automation:GND #PWR?
U 1 1 5B4DCFCE
P 4375 7375
F 0 "#PWR?" H 4375 7125 50  0001 C CNN
F 1 "GND" H 4380 7202 50  0000 C CNN
F 2 "" H 4375 7375 50  0000 C CNN
F 3 "" H 4375 7375 50  0000 C CNN
	1    4375 7375
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5B4DD05F
P 3725 7550
F 0 "#PWR?" H 3725 7300 50  0001 C CNN
F 1 "GND" H 3730 7377 50  0000 C CNN
F 2 "" H 3725 7550 50  0000 C CNN
F 3 "" H 3725 7550 50  0000 C CNN
	1    3725 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 7400 3725 7400
Wire Wire Line
	3725 7400 3725 7550
Wire Wire Line
	5275 6250 5500 6250
Text Label 5500 6250 0    50   ~ 0
R_AUDIO_CODEC_IN
Wire Wire Line
	5275 6350 5500 6350
Text Label 5500 6350 0    50   ~ 0
L_AUDIO_CODEC_IN
$EndSCHEMATC
