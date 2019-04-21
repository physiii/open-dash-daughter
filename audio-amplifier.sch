EESchema Schematic File Version 5
EELAYER 29 0
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
L open-automation:TDA7297 U11
U 1 1 5AC797FB
P 8575 3150
F 0 "U11" H 8225 2400 60  0000 C CNN
F 1 "TDA7297" H 8750 2400 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-15_Vertical_StaggeredType1_Py5.08mm" H 8425 3000 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/stmicroelectronics/TDA7297/497-3967-5-ND/715883" H 8425 3000 60  0001 C CNN
F 4 "TDA7297" H 8575 3150 50  0001 C CNN "Part Number"
	1    8575 3150
	1    0    0    -1  
$EndComp
$Comp
L open-automation:AGND #PWR044
U 1 1 5AC7B29E
P 7825 3200
F 0 "#PWR044" H 7825 2950 50  0001 C CNN
F 1 "AGND" H 7825 3050 50  0000 C CNN
F 2 "" H 7825 3200 50  0000 C CNN
F 3 "" H 7825 3200 50  0000 C CNN
	1    7825 3200
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR041
U 1 1 5AC7B2BE
P 6925 3250
F 0 "#PWR041" H 6925 3000 50  0001 C CNN
F 1 "GND" H 6925 3100 50  0000 C CNN
F 2 "" H 6925 3250 50  0000 C CNN
F 3 "" H 6925 3250 50  0000 C CNN
	1    6925 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 5AC7B472
P 6925 3000
F 0 "C22" H 6950 3100 50  0000 L CNN
F 1 "470uF" H 6950 2900 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 6963 2850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rubycon/16YXJ470M8X11.5/1189-1146-ND/3134104" H 6925 3000 50  0001 C CNN
F 4 "16YXJ470M8X11.5" H 6925 3000 60  0001 C CNN "Part Number"
	1    6925 3000
	1    0    0    1   
$EndComp
$Comp
L Device:C C25
U 1 1 5AC7B4BE
P 7250 3000
F 0 "C25" H 7275 3100 50  0000 L CNN
F 1 "100nF" H 7275 2900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7288 2850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B104KA8NFNC/1276-1931-1-ND/3890017" H 7250 3000 50  0001 C CNN
F 4 "CL10B104KA8NFNC" H 7250 3000 60  0001 C CNN "Part Number"
	1    7250 3000
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR042
U 1 1 5AC7C381
P 7100 4725
F 0 "#PWR042" H 7100 4475 50  0001 C CNN
F 1 "GND" H 7100 4575 50  0000 C CNN
F 2 "" H 7100 4725 50  0000 C CNN
F 3 "" H 7100 4725 50  0000 C CNN
	1    7100 4725
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR043
U 1 1 5AC7C45C
P 7125 5525
F 0 "#PWR043" H 7125 5275 50  0001 C CNN
F 1 "GND" H 7125 5375 50  0000 C CNN
F 2 "" H 7125 5525 50  0000 C CNN
F 3 "" H 7125 5525 50  0000 C CNN
	1    7125 5525
	1    0    0    -1  
$EndComp
Wire Wire Line
	7875 2800 7875 2900
Wire Wire Line
	6800 2800 6925 2800
Connection ~ 7875 2800
Wire Wire Line
	6925 2850 6925 2800
Connection ~ 6925 2800
Wire Wire Line
	7250 2850 7250 2800
Connection ~ 7250 2800
Wire Wire Line
	6925 3150 6925 3200
Wire Wire Line
	6925 3200 7250 3200
Wire Wire Line
	7250 3200 7250 3150
Connection ~ 6925 3200
Wire Wire Line
	7625 3200 7625 3100
Connection ~ 7250 3200
Wire Wire Line
	6625 5050 6500 5050
Wire Wire Line
	6625 4275 6500 4275
Wire Wire Line
	6925 5050 7125 5050
Wire Wire Line
	7125 5050 7125 5125
Connection ~ 7125 5050
Wire Wire Line
	6925 4275 7100 4275
Wire Wire Line
	7100 4275 7100 4350
Wire Wire Line
	7100 4650 7100 4725
Wire Wire Line
	7125 5425 7125 5525
$Comp
L Device:C C20
U 1 1 5AC7CAB7
P 6825 3725
F 0 "C20" V 6875 3800 50  0000 L CNN
F 1 "0.22uF" V 6775 3800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6863 3575 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B224KO8NNNC/1276-1112-1-ND/3889198" H 6825 3725 50  0001 C CNN
F 4 "CL10B224KO8NNNC" V 6825 3725 60  0001 C CNN "Part Number"
	1    6825 3725
	0    1    1    0   
$EndComp
Wire Wire Line
	6975 3975 7600 3975
Wire Wire Line
	7600 3975 7600 3500
Wire Wire Line
	7525 3400 7525 3725
Wire Wire Line
	7525 3725 6975 3725
Wire Wire Line
	7750 5050 7750 3750
$Comp
L Device:C C21
U 1 1 5AC80604
P 6825 3975
F 0 "C21" V 6875 4050 50  0000 L CNN
F 1 "0.22uF" V 6775 4050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6863 3825 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B224KO8NNNC/1276-1112-1-ND/3889198" H 6825 3975 50  0001 C CNN
F 4 "CL10B224KO8NNNC" V 6825 3975 60  0001 C CNN "Part Number"
	1    6825 3975
	0    1    1    0   
$EndComp
Wire Wire Line
	6925 2800 7250 2800
Wire Wire Line
	7250 2800 7875 2800
Wire Wire Line
	6925 3200 6925 3250
Wire Wire Line
	7250 3200 7625 3200
Wire Wire Line
	7125 5050 7750 5050
Text HLabel 6800 2800 0    60   Input ~ 0
AUDIO_POWER
Text HLabel 1500 2850 0    60   Input ~ 0
L_FM_AUDIO
Text HLabel 6500 4275 0    60   Input ~ 0
MUTE_AUDIO
Text HLabel 9375 2950 2    60   Input ~ 0
RL_AUDIO_OUT+
Text HLabel 9375 3500 2    60   Input ~ 0
RR_AUDIO_OUT+
Text HLabel 9375 3050 2    60   Input ~ 0
FL_AUDIO_OUT-
Text HLabel 9375 3600 2    60   Input ~ 0
FR_AUDIO_OUT-
Text HLabel 6500 5050 0    60   Input ~ 0
STBY_AUDIO
Wire Wire Line
	7875 2900 7975 2900
Wire Wire Line
	7825 3200 7975 3200
Wire Wire Line
	7625 3100 7975 3100
Wire Wire Line
	7750 3750 7975 3750
Wire Wire Line
	7600 3500 7975 3500
Wire Wire Line
	7525 3400 7975 3400
Wire Wire Line
	7875 2800 7975 2800
Text HLabel 9375 3400 2    60   Input ~ 0
FR_AUDIO_OUT+
Text HLabel 9375 3700 2    60   Input ~ 0
RR_AUDIO_OUT-
Text HLabel 9375 2850 2    60   Input ~ 0
FL_AUDIO_OUT+
Text HLabel 9375 3150 2    60   Input ~ 0
RL_AUDIO_OUT-
Wire Wire Line
	9375 3050 9325 3050
Wire Wire Line
	9325 3050 9325 3100
Wire Wire Line
	9125 3050 9225 3050
Wire Wire Line
	9375 2850 9300 2850
Wire Wire Line
	9300 2850 9300 2900
Wire Wire Line
	9375 3400 9325 3400
Wire Wire Line
	9325 3400 9325 3450
Wire Wire Line
	9325 3500 9375 3500
Wire Wire Line
	9375 3600 9325 3600
Wire Wire Line
	9325 3600 9325 3650
Wire Wire Line
	9325 3700 9375 3700
Wire Wire Line
	9125 3500 9200 3500
Wire Wire Line
	9200 3500 9200 3650
Wire Wire Line
	9200 3650 9325 3650
Connection ~ 9325 3650
Wire Wire Line
	9325 3650 9325 3700
Wire Wire Line
	9125 3400 9275 3400
Wire Wire Line
	9275 3400 9275 3450
Wire Wire Line
	9275 3450 9325 3450
Connection ~ 9325 3450
Wire Wire Line
	9325 3450 9325 3500
Wire Wire Line
	9375 2950 9300 2950
Wire Wire Line
	9325 3150 9375 3150
Wire Wire Line
	9125 3150 9225 3150
Wire Wire Line
	9225 3150 9225 3100
Wire Wire Line
	9225 3100 9325 3100
Connection ~ 9325 3100
Wire Wire Line
	9325 3100 9325 3150
Wire Wire Line
	9225 2900 9300 2900
Wire Wire Line
	9225 2900 9225 3050
Connection ~ 9300 2900
Wire Wire Line
	9300 2900 9300 2950
$Comp
L open-automation:R_10k R23
U 1 1 5B1BCAC5
P 6775 5050
F 0 "R23" V 6775 5050 50  0000 C CNN
F 1 "R_10k" V 6675 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6705 5050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 6855 5050 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 6955 5150 60  0001 C CNN "Part Number"
	1    6775 5050
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_10k R22
U 1 1 5B1BD0E6
P 6775 4275
F 0 "R22" V 6775 4275 50  0000 C CNN
F 1 "R_10k" V 6675 4275 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6705 4275 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 6855 4275 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 6955 4375 60  0001 C CNN "Part Number"
	1    6775 4275
	0    1    1    0   
$EndComp
$Comp
L open-automation:C_10uF C24
U 1 1 5B1BD541
P 7125 5275
F 0 "C24" H 7240 5321 50  0000 L CNN
F 1 "C_10uF" H 7240 5230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7225 5575 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/murata-electronics-north-america/GRM188R61A106ME69D/490-10475-1-ND/5026393" H 7125 5025 50  0001 C CNN
F 4 "GRM188R61A106ME69D" H 7250 5475 60  0001 C CNN "Part Number"
	1    7125 5275
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_1uF C23
U 1 1 5B1BD64D
P 7100 4500
F 0 "C23" H 7215 4546 50  0000 L CNN
F 1 "C_1uF" H 7215 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7200 4800 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/CC0603ZRY5V7BB105/311-1372-1-ND/2103156" H 7100 4250 50  0001 C CNN
F 4 "CC0603ZRY5V7BB105" H 7225 4700 60  0001 C CNN "Part Number"
	1    7100 4500
	1    0    0    -1  
$EndComp
Text HLabel 1500 3250 0    60   Input ~ 0
L_MAIN_AUDIO
Text Label 5900 3725 0    50   ~ 0
R_AUDIO
Text Label 5900 3975 0    50   ~ 0
L_AUDIO
$Comp
L open-automation:C_1uF C49
U 1 1 5B1FBA94
P 3325 1750
F 0 "C49" H 3225 1825 50  0000 L CNN
F 1 "C_1uF" H 3075 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3425 2050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/CC0603ZRY5V7BB105/311-1372-1-ND/2103156" H 3325 1500 50  0001 C CNN
F 4 "CC0603ZRY5V7BB105" H 3450 1950 60  0001 C CNN "Part Number"
	1    3325 1750
	1    0    0    -1  
$EndComp
Text HLabel 3400 1500 0    60   Input ~ 0
AUDIO_POWER
Wire Wire Line
	3325 1550 3325 1600
Wire Wire Line
	3600 1550 3600 1600
$Comp
L open-automation:GND #PWR0123
U 1 1 5B200BCF
P 3450 2000
F 0 "#PWR0123" H 3450 1750 50  0001 C CNN
F 1 "GND" H 3350 1900 50  0000 C CNN
F 2 "" H 3450 2000 50  0000 C CNN
F 3 "" H 3450 2000 50  0000 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 1900 3325 1950
Wire Wire Line
	3600 1950 3600 1900
Wire Wire Line
	3325 1950 3450 1950
$Comp
L open-automation:R_20k R50
U 1 1 5B29B9F5
P 6475 3975
F 0 "R50" V 6475 3925 50  0000 L CNN
F 1 "R_20k" V 6550 3875 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6405 3975 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 6555 3975 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 6655 4075 60  0001 C CNN "Part Number"
	1    6475 3975
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_20k R49
U 1 1 5B29BB83
P 6475 3725
F 0 "R49" V 6475 3675 50  0000 L CNN
F 1 "R_20k" V 6550 3625 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6405 3725 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 6555 3725 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 6655 3825 60  0001 C CNN "Part Number"
	1    6475 3725
	0    1    1    0   
$EndComp
Wire Wire Line
	6325 3725 5900 3725
Wire Wire Line
	5900 3975 6325 3975
Wire Wire Line
	6625 3975 6675 3975
Wire Wire Line
	6675 3725 6625 3725
$Comp
L open-automation:C_10uF C44
U 1 1 5B2B20EE
P 1700 2850
F 0 "C44" V 1600 2950 50  0000 C CNN
F 1 "C_10uF" V 1600 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 1800 3150 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/murata-electronics-north-america/GRM188R61A106ME69D/490-10475-1-ND/5026393" H 1700 2600 50  0001 C CNN
F 4 "GRM188R61A106ME69D" H 1825 3050 60  0001 C CNN "Part Number"
	1    1700 2850
	0    1    1    0   
$EndComp
$Comp
L open-automation:C_10uF C45
U 1 1 5B2B21EB
P 1700 3250
F 0 "C45" V 1600 3350 50  0000 C CNN
F 1 "C_10uF" V 1600 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 1800 3550 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/murata-electronics-north-america/GRM188R61A106ME69D/490-10475-1-ND/5026393" H 1700 3000 50  0001 C CNN
F 4 "GRM188R61A106ME69D" H 1825 3450 60  0001 C CNN "Part Number"
	1    1700 3250
	0    1    1    0   
$EndComp
$Comp
L open-automation:C_0.1uF C50
U 1 1 5B2C45B8
P 3600 1750
F 0 "C50" H 3715 1796 50  0000 L CNN
F 1 "C_0.1uF" H 3715 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3700 2050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 3600 1500 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 3725 1950 60  0001 C CNN "Part Number"
	1    3600 1750
	1    0    0    -1  
$EndComp
Text HLabel 1900 5725 0    60   Input ~ 0
L_FM_AUDIO
Text HLabel 1900 5925 0    60   Input ~ 0
L_MAIN_AUDIO
Text HLabel 1900 5825 0    60   Input ~ 0
R_FM_AUDIO
Text HLabel 1900 6025 0    60   Input ~ 0
R_MAIN_AUDIO
Wire Wire Line
	1900 6025 2000 6025
Wire Wire Line
	2000 5925 1900 5925
Wire Wire Line
	1900 5825 2000 5825
Wire Wire Line
	2000 5725 1900 5725
$Comp
L open-automation:CONN_01X04 P1
U 1 1 5B2EA1FB
P 2200 5875
F 0 "P1" H 2175 6125 50  0000 L CNN
F 1 "CONN_01X04" H 1975 5625 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2100 6025 50  0001 C CNN
F 3 "" H 2200 5875 50  0000 C CNN
	1    2200 5875
	1    0    0    -1  
$EndComp
$Comp
L open-automation:CONN_01X02 P2
U 1 1 5B2F01D2
P 3150 5950
F 0 "P2" H 3150 6100 50  0000 C CNN
F 1 "CONN_01X02" H 3150 5800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3050 6000 50  0001 C CNN
F 3 "" H 3150 5950 50  0000 C CNN
	1    3150 5950
	1    0    0    -1  
$EndComp
Text Label 2850 6000 2    50   ~ 0
R_AUDIO_IN
Text Label 2850 5900 2    50   ~ 0
L_AUDIO_IN
Wire Wire Line
	2850 5900 2950 5900
Wire Wire Line
	2950 6000 2850 6000
$Comp
L open-automation:C_10uF C52
U 1 1 5B2B242D
P 1700 3700
F 0 "C52" V 1800 3600 50  0000 C CNN
F 1 "C_10uF" V 1800 3850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 1800 4000 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/murata-electronics-north-america/GRM188R61A106ME69D/490-10475-1-ND/5026393" H 1700 3450 50  0001 C CNN
F 4 "GRM188R61A106ME69D" H 1825 3900 60  0001 C CNN "Part Number"
	1    1700 3700
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:C_10uF C51
U 1 1 5B2B2249
P 1700 4000
F 0 "C51" V 1800 3900 50  0000 C CNN
F 1 "C_10uF" V 1800 4150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 1800 4300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/murata-electronics-north-america/GRM188R61A106ME69D/490-10475-1-ND/5026393" H 1700 3750 50  0001 C CNN
F 4 "GRM188R61A106ME69D" H 1825 4200 60  0001 C CNN "Part Number"
	1    1700 4000
	0    -1   -1   0   
$EndComp
Text HLabel 1500 3700 0    60   Input ~ 0
R_MAIN_AUDIO
Text HLabel 1500 4000 0    60   Input ~ 0
R_FM_AUDIO
$Comp
L open-automation:R_1k R?
U 1 1 5CBD6584
P 2050 4000
F 0 "R?" V 1950 4000 50  0000 C CNN
F 1 "R_1k" V 2050 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1980 4000 50  0001 C CNN
F 3 "" V 2130 4000 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 2230 4100 60  0001 C CNN "Part Number"
	1    2050 4000
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_1k R?
U 1 1 5CBDBDCE
P 2050 3700
F 0 "R?" V 1950 3700 50  0000 C CNN
F 1 "R_1k" V 2050 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1980 3700 50  0001 C CNN
F 3 "" V 2130 3700 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 2230 3800 60  0001 C CNN "Part Number"
	1    2050 3700
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_1k R?
U 1 1 5CBDC5FE
P 2050 3250
F 0 "R?" V 1950 3250 50  0000 C CNN
F 1 "R_1k" V 2050 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1980 3250 50  0001 C CNN
F 3 "" V 2130 3250 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 2230 3350 60  0001 C CNN "Part Number"
	1    2050 3250
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_1k R?
U 1 1 5CBDDE41
P 2050 2850
F 0 "R?" V 1950 2850 50  0000 C CNN
F 1 "R_1k" V 2050 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1980 2850 50  0001 C CNN
F 3 "" V 2130 2850 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 2230 2950 60  0001 C CNN "Part Number"
	1    2050 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 2850 1550 2850
Wire Wire Line
	1550 3250 1500 3250
Wire Wire Line
	1850 3250 1900 3250
Wire Wire Line
	1850 2850 1900 2850
Wire Wire Line
	1900 3700 1850 3700
Wire Wire Line
	1850 4000 1900 4000
Wire Wire Line
	1550 3700 1500 3700
Wire Wire Line
	1500 4000 1550 4000
Wire Wire Line
	2200 3700 2250 3700
Wire Wire Line
	2250 3700 2250 4000
Wire Wire Line
	2250 4000 2200 4000
Wire Wire Line
	2200 3250 2250 3250
Wire Wire Line
	2250 3250 2250 2850
Wire Wire Line
	2250 2850 2200 2850
$Comp
L open-automation:LM1972 U?
U 1 1 5CC4C54B
P 3500 3350
F 0 "U?" H 3850 2750 50  0000 C CNN
F 1 "LM1972" H 3500 3850 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 3500 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1972.pdf" H 3500 4000 50  0001 C CNN
F 4 " LM1972MX/NOPB " H 3450 4100 50  0001 C CNN "Part Number"
	1    3500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2000 3450 1950
Connection ~ 3450 1950
Wire Wire Line
	3450 1950 3600 1950
Wire Wire Line
	3325 1550 3450 1550
Wire Wire Line
	3400 1500 3450 1500
Wire Wire Line
	3450 1500 3450 1550
Connection ~ 3450 1550
Wire Wire Line
	3450 1550 3600 1550
Text Label 2250 3050 0    50   ~ 0
L_IN
Text Label 2250 3850 0    50   ~ 0
R_IN
Text Label 4050 3150 0    50   ~ 0
L_IN
Wire Wire Line
	4050 3150 4000 3150
Text Label 4050 3250 0    50   ~ 0
R_IN
Wire Wire Line
	4050 3250 4000 3250
Wire Wire Line
	3050 3750 3000 3750
Wire Wire Line
	3000 3750 3000 3650
Wire Wire Line
	3000 2950 3050 2950
Wire Wire Line
	3050 3050 3000 3050
Connection ~ 3000 3050
Wire Wire Line
	3000 3050 3000 2950
Wire Wire Line
	3050 3150 3000 3150
Connection ~ 3000 3150
Wire Wire Line
	3000 3150 3000 3050
Wire Wire Line
	3050 3250 3000 3250
Connection ~ 3000 3250
Wire Wire Line
	3000 3250 3000 3150
Wire Wire Line
	3050 3350 3000 3350
Connection ~ 3000 3350
Wire Wire Line
	3000 3350 3000 3250
Wire Wire Line
	3050 3450 3000 3450
Connection ~ 3000 3450
Wire Wire Line
	3000 3450 3000 3350
Wire Wire Line
	3050 3550 3000 3550
Connection ~ 3000 3550
Wire Wire Line
	3000 3550 3000 3450
Wire Wire Line
	3050 3650 3000 3650
Connection ~ 3000 3650
Wire Wire Line
	3000 3650 3000 3550
$Comp
L open-automation:GND #PWR?
U 1 1 5CC68BAA
P 3000 3750
F 0 "#PWR?" H 3000 3500 50  0001 C CNN
F 1 "GND" V 2950 3600 50  0000 C CNN
F 2 "" H 3000 3750 50  0000 C CNN
F 3 "" H 3000 3750 50  0000 C CNN
	1    3000 3750
	0    1    1    0   
$EndComp
Connection ~ 3000 3750
Text Label 4050 3450 0    50   ~ 0
R_AUDIO
Text Label 4050 3350 0    50   ~ 0
L_AUDIO
Wire Wire Line
	4050 3350 4000 3350
Wire Wire Line
	4000 3450 4050 3450
Wire Wire Line
	3050 3850 3000 3850
Wire Wire Line
	3000 3850 3000 3750
Text HLabel 4050 2950 2    60   Input ~ 0
AUDIO_POWER
Wire Wire Line
	4050 2950 4000 2950
Wire Wire Line
	4050 2950 4050 3050
Wire Wire Line
	4050 3050 4000 3050
Text HLabel 4050 3550 2    60   Input ~ 0
CLK
Text HLabel 4050 3650 2    60   Input ~ 0
LOAD
Text HLabel 4050 3750 2    60   Input ~ 0
DATA_IN
Text HLabel 4050 3850 2    60   Input ~ 0
DATA_OUT
Wire Wire Line
	4000 3550 4050 3550
Wire Wire Line
	4050 3650 4000 3650
Wire Wire Line
	4000 3750 4050 3750
Wire Wire Line
	4050 3850 4000 3850
$EndSCHEMATC
