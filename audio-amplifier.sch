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
L open-automation:TDA7297 U11
U 1 1 5AC797FB
P 8175 3050
F 0 "U11" H 7825 2300 60  0000 C CNN
F 1 "TDA7297" H 8350 2300 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-15_Vertical_StaggeredType1_Py5.08mm" H 8025 2900 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/stmicroelectronics/TDA7297/497-3967-5-ND/715883" H 8025 2900 60  0001 C CNN
F 4 "TDA7297" H 8175 3050 50  0001 C CNN "Part Number"
	1    8175 3050
	1    0    0    -1  
$EndComp
$Comp
L open-automation:AGND #PWR044
U 1 1 5AC7B29E
P 7425 3100
F 0 "#PWR044" H 7425 2850 50  0001 C CNN
F 1 "AGND" H 7425 2950 50  0000 C CNN
F 2 "" H 7425 3100 50  0000 C CNN
F 3 "" H 7425 3100 50  0000 C CNN
	1    7425 3100
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR041
U 1 1 5AC7B2BE
P 6525 3150
F 0 "#PWR041" H 6525 2900 50  0001 C CNN
F 1 "GND" H 6525 3000 50  0000 C CNN
F 2 "" H 6525 3150 50  0000 C CNN
F 3 "" H 6525 3150 50  0000 C CNN
	1    6525 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 5AC7B472
P 6525 2900
F 0 "C22" H 6550 3000 50  0000 L CNN
F 1 "470uF" H 6550 2800 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 6563 2750 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rubycon/16YXJ470M8X11.5/1189-1146-ND/3134104" H 6525 2900 50  0001 C CNN
F 4 "16YXJ470M8X11.5" H 6525 2900 60  0001 C CNN "Part Number"
	1    6525 2900
	1    0    0    1   
$EndComp
$Comp
L open-automation:GND #PWR042
U 1 1 5AC7C381
P 6700 4625
F 0 "#PWR042" H 6700 4375 50  0001 C CNN
F 1 "GND" H 6700 4475 50  0000 C CNN
F 2 "" H 6700 4625 50  0000 C CNN
F 3 "" H 6700 4625 50  0000 C CNN
	1    6700 4625
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR043
U 1 1 5AC7C45C
P 6725 5425
F 0 "#PWR043" H 6725 5175 50  0001 C CNN
F 1 "GND" H 6725 5275 50  0000 C CNN
F 2 "" H 6725 5425 50  0000 C CNN
F 3 "" H 6725 5425 50  0000 C CNN
	1    6725 5425
	1    0    0    -1  
$EndComp
Wire Wire Line
	7475 2700 7475 2800
Wire Wire Line
	6400 2700 6525 2700
Connection ~ 7475 2700
Wire Wire Line
	6525 2750 6525 2700
Connection ~ 6525 2700
Wire Wire Line
	6850 2750 6850 2700
Connection ~ 6850 2700
Wire Wire Line
	6525 3050 6525 3100
Wire Wire Line
	6525 3100 6850 3100
Wire Wire Line
	6850 3100 6850 3050
Connection ~ 6525 3100
Wire Wire Line
	7225 3100 7225 3000
Connection ~ 6850 3100
Wire Wire Line
	6225 4950 6100 4950
Wire Wire Line
	6225 4175 6100 4175
Wire Wire Line
	6525 4950 6725 4950
Wire Wire Line
	6725 4950 6725 5025
Connection ~ 6725 4950
Wire Wire Line
	6525 4175 6700 4175
Wire Wire Line
	6700 4175 6700 4250
Connection ~ 6700 4175
Wire Wire Line
	6700 4550 6700 4625
Wire Wire Line
	6725 5325 6725 5425
$Comp
L Device:C C20
U 1 1 5AC7CAB7
P 6425 3625
F 0 "C20" V 6475 3700 50  0000 L CNN
F 1 "0.22uF" V 6375 3700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6463 3475 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B224KO8NNNC/1276-1112-1-ND/3889198" H 6425 3625 50  0001 C CNN
F 4 "CL10B224KO8NNNC" V 6425 3625 60  0001 C CNN "Part Number"
	1    6425 3625
	0    1    1    0   
$EndComp
Wire Wire Line
	6575 3875 7200 3875
Wire Wire Line
	7200 3875 7200 3400
Wire Wire Line
	7125 3300 7125 3625
Wire Wire Line
	7125 3625 6575 3625
Wire Wire Line
	7275 4175 7275 3550
Wire Wire Line
	7350 4950 7350 3650
$Comp
L Device:C C21
U 1 1 5AC80604
P 6425 3875
F 0 "C21" V 6475 3950 50  0000 L CNN
F 1 "0.22uF" V 6375 3950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6463 3725 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B224KO8NNNC/1276-1112-1-ND/3889198" H 6425 3875 50  0001 C CNN
F 4 "CL10B224KO8NNNC" V 6425 3875 60  0001 C CNN "Part Number"
	1    6425 3875
	0    1    1    0   
$EndComp
Wire Wire Line
	6525 2700 6850 2700
Wire Wire Line
	6850 2700 7475 2700
Wire Wire Line
	6525 3100 6525 3150
Wire Wire Line
	6850 3100 7225 3100
Wire Wire Line
	6725 4950 7350 4950
Wire Wire Line
	6700 4175 7275 4175
Text HLabel 6400 2700 0    60   Input ~ 0
AUDIO_POWER
Text HLabel 1450 3825 0    60   Input ~ 0
L_FM_AUDIO
Text HLabel 6100 4175 0    60   Input ~ 0
MUTE_AUDIO
Text HLabel 8975 2850 2    60   Input ~ 0
RL_AUDIO_OUT+
Text HLabel 8975 3400 2    60   Input ~ 0
RR_AUDIO_OUT+
Text HLabel 8975 2950 2    60   Input ~ 0
FL_AUDIO_OUT-
Text HLabel 8975 3500 2    60   Input ~ 0
FR_AUDIO_OUT-
Text HLabel 6100 4950 0    60   Input ~ 0
STBY_AUDIO
Wire Wire Line
	7475 2800 7575 2800
Wire Wire Line
	7425 3100 7575 3100
Wire Wire Line
	7225 3000 7575 3000
Wire Wire Line
	7350 3650 7575 3650
Wire Wire Line
	7275 3550 7575 3550
Wire Wire Line
	7200 3400 7575 3400
Wire Wire Line
	7125 3300 7575 3300
Wire Wire Line
	7475 2700 7575 2700
Text HLabel 8975 3300 2    60   Input ~ 0
FR_AUDIO_OUT+
Text HLabel 8975 3600 2    60   Input ~ 0
RR_AUDIO_OUT-
Text HLabel 8975 2750 2    60   Input ~ 0
FL_AUDIO_OUT+
Text HLabel 8975 3050 2    60   Input ~ 0
RL_AUDIO_OUT-
Wire Wire Line
	8975 2950 8925 2950
Wire Wire Line
	8925 2950 8925 3000
Wire Wire Line
	8725 2950 8825 2950
Wire Wire Line
	8975 2750 8900 2750
Wire Wire Line
	8900 2750 8900 2800
Wire Wire Line
	8975 3300 8925 3300
Wire Wire Line
	8925 3300 8925 3350
Wire Wire Line
	8925 3400 8975 3400
Wire Wire Line
	8975 3500 8925 3500
Wire Wire Line
	8925 3500 8925 3550
Wire Wire Line
	8925 3600 8975 3600
Wire Wire Line
	8725 3400 8800 3400
Wire Wire Line
	8800 3400 8800 3550
Wire Wire Line
	8800 3550 8925 3550
Connection ~ 8925 3550
Wire Wire Line
	8925 3550 8925 3600
Wire Wire Line
	8725 3300 8875 3300
Wire Wire Line
	8875 3300 8875 3350
Wire Wire Line
	8875 3350 8925 3350
Connection ~ 8925 3350
Wire Wire Line
	8925 3350 8925 3400
Wire Wire Line
	8975 2850 8900 2850
Wire Wire Line
	8925 3050 8975 3050
Wire Wire Line
	8725 3050 8825 3050
Wire Wire Line
	8825 3050 8825 3000
Wire Wire Line
	8825 3000 8925 3000
Connection ~ 8925 3000
Wire Wire Line
	8925 3000 8925 3050
Wire Wire Line
	8825 2800 8900 2800
Wire Wire Line
	8825 2800 8825 2950
Connection ~ 8900 2800
Wire Wire Line
	8900 2800 8900 2850
$Comp
L open-automation:R_10k R23
U 1 1 5B1BCAC5
P 6375 4950
F 0 "R23" V 6375 4950 50  0000 C CNN
F 1 "R_10k" V 6275 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6305 4950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 6455 4950 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 6555 5050 60  0001 C CNN "Part Number"
	1    6375 4950
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_10k R22
U 1 1 5B1BD0E6
P 6375 4175
F 0 "R22" V 6375 4175 50  0000 C CNN
F 1 "R_10k" V 6275 4175 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6305 4175 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 6455 4175 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 6555 4275 60  0001 C CNN "Part Number"
	1    6375 4175
	0    1    1    0   
$EndComp
$Comp
L open-automation:OPA1662 U19
U 1 1 5B159652
P 3125 3300
F 0 "U19" H 3425 3050 60  0000 C CNN
F 1 "OPA1662" H 3150 3700 60  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 3225 3300 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/texas-instruments/OPA1662AIDGKR/296-36691-1-ND/4341323" H 3225 3300 60  0001 C CNN
F 4 "OPA1662AIDGKR" H 3150 3733 50  0001 C CNN "Part Number"
	1    3125 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3725 3000 3675 3000
$Comp
L open-automation:GND #PWR0121
U 1 1 5B15E593
P 2575 3500
F 0 "#PWR0121" H 2575 3250 50  0001 C CNN
F 1 "GND" H 2575 3350 50  0000 C CNN
F 2 "" H 2575 3500 50  0000 C CNN
F 3 "" H 2575 3500 50  0000 C CNN
	1    2575 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 3450 2625 3450
Text Label 3825 3150 0    50   ~ 0
R_AUDIO_IN
Text Label 2200 2850 0    50   ~ 0
L_AUDIO_IN
$Comp
L open-automation:GND #PWR0122
U 1 1 5B166003
P 3100 4350
F 0 "#PWR0122" H 3100 4100 50  0001 C CNN
F 1 "GND" V 3075 4175 50  0000 C CNN
F 2 "" H 3100 4350 50  0000 C CNN
F 3 "" H 3100 4350 50  0000 C CNN
	1    3100 4350
	1    0    0    -1  
$EndComp
Text HLabel 3725 3000 2    60   Input ~ 0
AUDIO_POWER
Text HLabel 1475 4100 0    60   Input ~ 0
L_MAIN_AUDIO
Text Label 5500 3625 0    50   ~ 0
R_AUDIO_IN
Text Label 5500 3875 0    50   ~ 0
L_AUDIO_IN
Text HLabel 4550 3875 2    60   Input ~ 0
R_FM_AUDIO
Wire Wire Line
	4150 3875 4075 3875
Text HLabel 4550 4150 2    60   Input ~ 0
R_MAIN_AUDIO
Wire Wire Line
	3675 3150 4150 3150
Text HLabel 3725 1550 2    60   Input ~ 0
AUDIO_POWER
Wire Wire Line
	3600 1550 3600 1600
$Comp
L open-automation:GND #PWR0123
U 1 1 5B200BCF
P 3600 2000
F 0 "#PWR0123" H 3600 1750 50  0001 C CNN
F 1 "GND" V 3575 1825 50  0000 C CNN
F 2 "" H 3600 2000 50  0000 C CNN
F 3 "" H 3600 2000 50  0000 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1475 4100 1550 4100
Wire Wire Line
	1450 3825 1550 3825
Wire Wire Line
	2575 3450 2575 3500
Wire Wire Line
	4550 3875 4450 3875
Wire Wire Line
	4550 4150 4450 4150
Wire Wire Line
	4075 4150 4150 4150
Wire Wire Line
	1850 3825 1975 3825
Wire Wire Line
	1975 4100 1850 4100
Wire Wire Line
	3675 3450 3775 3450
Wire Wire Line
	2625 3000 2600 3000
Wire Wire Line
	2600 3000 2600 2850
$Comp
L open-automation:R_20k R45
U 1 1 5B27132F
P 2425 3000
F 0 "R45" V 2425 2925 50  0000 L CNN
F 1 "R_20k" V 2525 2900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2355 3000 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 2505 3000 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 2605 3100 60  0001 C CNN "Part Number"
	1    2425 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3150 2425 3150
Wire Wire Line
	2200 2850 2425 2850
Connection ~ 2425 2850
Wire Wire Line
	2425 2850 2600 2850
Connection ~ 2425 3150
Wire Wire Line
	2425 3150 2625 3150
$Comp
L open-automation:R_20k R43
U 1 1 5B271F00
P 2125 3825
F 0 "R43" V 2125 3775 50  0000 L CNN
F 1 "R_20k" V 2200 3725 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2055 3825 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 2205 3825 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 2305 3925 60  0001 C CNN "Part Number"
	1    2125 3825
	0    1    1    0   
$EndComp
Wire Wire Line
	2275 3825 2275 4100
$Comp
L open-automation:R_20k R44
U 1 1 5B272058
P 2125 4100
F 0 "R44" V 2125 4050 50  0000 L CNN
F 1 "R_20k" V 2200 4000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2055 4100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 2205 4100 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 2305 4200 60  0001 C CNN "Part Number"
	1    2125 4100
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_20k R48
U 1 1 5B2722CD
P 4150 3300
F 0 "R48" V 4150 3250 50  0000 L CNN
F 1 "R_20k" V 4225 3200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 4080 3300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 4230 3300 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 4330 3400 60  0001 C CNN "Part Number"
	1    4150 3300
	-1   0    0    1   
$EndComp
$Comp
L open-automation:R_20k R46
U 1 1 5B272444
P 3925 3875
F 0 "R46" V 3925 3825 50  0000 L CNN
F 1 "R_20k" V 4000 3775 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 3855 3875 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 4005 3875 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 4105 3975 60  0001 C CNN "Part Number"
	1    3925 3875
	0    1    1    0   
$EndComp
Wire Wire Line
	3775 3875 3775 4150
$Comp
L open-automation:R_20k R47
U 1 1 5B272558
P 3925 4150
F 0 "R47" V 3925 4100 50  0000 L CNN
F 1 "R_20k" V 4000 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 3855 4150 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 4005 4150 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 4105 4250 60  0001 C CNN "Part Number"
	1    3925 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	3675 3300 3950 3300
Wire Wire Line
	3950 3300 3950 3450
Wire Wire Line
	3950 3450 4150 3450
Wire Wire Line
	4150 3450 4375 3450
Connection ~ 4150 3450
Wire Wire Line
	4150 3150 4375 3150
Connection ~ 4150 3150
Wire Wire Line
	3725 1550 3600 1550
Wire Wire Line
	2275 3825 2275 3250
Wire Wire Line
	2275 3250 2200 3250
Wire Wire Line
	2200 3250 2200 3150
Connection ~ 2275 3825
Wire Wire Line
	3775 3875 3775 3650
Wire Wire Line
	3775 3650 4150 3650
Wire Wire Line
	4150 3650 4150 3450
Connection ~ 3775 3875
Wire Wire Line
	2625 3300 2475 3300
Wire Wire Line
	2475 3300 2475 3950
Wire Wire Line
	3775 3450 3775 3575
Wire Wire Line
	3775 3575 3600 3575
Wire Wire Line
	3600 3575 3600 3950
$Comp
L open-automation:R_20k R50
U 1 1 5B29B9F5
P 6075 3875
F 0 "R50" V 6075 3825 50  0000 L CNN
F 1 "R_20k" V 6150 3775 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6005 3875 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 6155 3875 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 6255 3975 60  0001 C CNN "Part Number"
	1    6075 3875
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_20k R49
U 1 1 5B29BB83
P 6075 3625
F 0 "R49" V 6075 3575 50  0000 L CNN
F 1 "R_20k" V 6150 3525 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6005 3625 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0720KL/311-20KGRTR-ND/726740" V 6155 3625 50  0001 C CNN
F 4 "RC0603JR-0720KL" V 6255 3725 60  0001 C CNN "Part Number"
	1    6075 3625
	0    1    1    0   
$EndComp
Wire Wire Line
	5925 3625 5500 3625
Wire Wire Line
	5500 3875 5925 3875
Wire Wire Line
	6225 3875 6275 3875
Wire Wire Line
	6275 3625 6225 3625
$Comp
L open-automation:C_100p C53
U 1 1 5B2B8BFB
P 4375 3300
F 0 "C53" H 4490 3346 50  0000 L CNN
F 1 "C_100p" H 4490 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4475 3600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C101J3GACTU/399-8980-1-ND/3522497" H 4375 3050 50  0001 C CNN
F 4 "C0603C101J3GACTU" H 4500 3500 60  0001 C CNN "Part Number"
	1    4375 3300
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_100p C47
U 1 1 5B2B8D2D
P 2200 3000
F 0 "C47" H 2050 3075 50  0000 L CNN
F 1 "C_100p" H 1900 2925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 2300 3300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C101J3GACTU/399-8980-1-ND/3522497" H 2200 2750 50  0001 C CNN
F 4 "C0603C101J3GACTU" H 2325 3200 60  0001 C CNN "Part Number"
	1    2200 3000
	1    0    0    -1  
$EndComp
Connection ~ 2200 3150
Text HLabel 1550 4925 0    60   Input ~ 0
L_FM_AUDIO
Text HLabel 1550 5125 0    60   Input ~ 0
L_MAIN_AUDIO
Text HLabel 1550 5025 0    60   Input ~ 0
R_FM_AUDIO
Text HLabel 1550 5225 0    60   Input ~ 0
R_MAIN_AUDIO
Wire Wire Line
	1550 5225 1650 5225
Wire Wire Line
	1650 5125 1550 5125
Wire Wire Line
	1550 5025 1650 5025
Wire Wire Line
	1650 4925 1550 4925
$Comp
L open-automation:CONN_01X04 P1
U 1 1 5B2EA1FB
P 1850 5075
F 0 "P1" H 1825 5325 50  0000 L CNN
F 1 "CONN_01X04" H 1625 4825 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1750 5225 50  0001 C CNN
F 3 "" H 1850 5075 50  0000 C CNN
	1    1850 5075
	1    0    0    -1  
$EndComp
$Comp
L open-automation:CONN_01X02 P2
U 1 1 5B2F01D2
P 2800 5100
F 0 "P2" H 2800 4950 50  0000 C CNN
F 1 "CONN_01X02" H 2800 5250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2700 5150 50  0001 C CNN
F 3 "" H 2800 5100 50  0000 C CNN
	1    2800 5100
	-1   0    0    1   
$EndComp
Text Label 3100 5050 0    50   ~ 0
R_AUDIO_IN
Text Label 3100 5150 0    50   ~ 0
L_AUDIO_IN
Wire Wire Line
	3100 5150 3000 5150
Wire Wire Line
	3000 5050 3100 5050
$Comp
L open-automation:C_0.1uF C39
U 1 1 5B224815
P 3600 1750
F 0 "C39" H 3715 1796 50  0000 L CNN
F 1 "C_0.1uF" H 3715 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3700 2050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 3600 1500 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 3725 1950 60  0001 C CNN "Part Number"
	1    3600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1900 3600 1950
Connection ~ 3600 1550
Wire Wire Line
	3250 1550 3250 1600
Wire Wire Line
	3250 1550 3600 1550
Wire Wire Line
	3250 1900 3250 1950
Wire Wire Line
	3250 1950 3600 1950
Wire Wire Line
	3600 1950 3600 2000
Connection ~ 3600 1950
Wire Wire Line
	2475 3950 3100 3950
Wire Wire Line
	3100 4350 3100 4300
Wire Wire Line
	3100 4000 3100 3950
Connection ~ 3100 3950
Wire Wire Line
	3100 3950 3600 3950
$Comp
L open-automation:C_10uF C51
U 1 1 5B270C92
P 6725 5175
F 0 "C51" H 6840 5221 50  0000 L CNN
F 1 "C_10uF" H 6840 5130 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6825 5475 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10A106MP8NNNC/1276-1871-1-ND/3889957" H 6725 4925 50  0001 C CNN
F 4 "CL10A106MP8NNNC" H 6850 5375 60  0001 C CNN "Part Number"
	1    6725 5175
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_10uF C13
U 1 1 5B276089
P 1700 3825
F 0 "C13" V 1448 3825 50  0000 C CNN
F 1 "C_10uF" V 1539 3825 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 1800 4125 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10A106MP8NNNC/1276-1871-1-ND/3889957" H 1700 3575 50  0001 C CNN
F 4 "CL10A106MP8NNNC" H 1825 4025 60  0001 C CNN "Part Number"
	1    1700 3825
	0    1    1    0   
$EndComp
$Comp
L open-automation:C_10uF C24
U 1 1 5B2761C8
P 1700 4100
F 0 "C24" V 1448 4100 50  0000 C CNN
F 1 "C_10uF" V 1539 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 1800 4400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10A106MP8NNNC/1276-1871-1-ND/3889957" H 1700 3850 50  0001 C CNN
F 4 "CL10A106MP8NNNC" H 1825 4300 60  0001 C CNN "Part Number"
	1    1700 4100
	0    1    1    0   
$EndComp
$Comp
L open-automation:C_10uF C44
U 1 1 5B27B4AF
P 4300 3875
F 0 "C44" V 4048 3875 50  0000 C CNN
F 1 "C_10uF" V 4139 3875 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4400 4175 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10A106MP8NNNC/1276-1871-1-ND/3889957" H 4300 3625 50  0001 C CNN
F 4 "CL10A106MP8NNNC" H 4425 4075 60  0001 C CNN "Part Number"
	1    4300 3875
	0    1    1    0   
$EndComp
$Comp
L open-automation:C_10uF C45
U 1 1 5B27B567
P 4300 4150
F 0 "C45" V 4250 4250 50  0000 C CNN
F 1 "C_10uF" V 4450 4175 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4400 4450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10A106MP8NNNC/1276-1871-1-ND/3889957" H 4300 3900 50  0001 C CNN
F 4 "CL10A106MP8NNNC" H 4425 4350 60  0001 C CNN "Part Number"
	1    4300 4150
	0    1    1    0   
$EndComp
$Comp
L open-automation:C_0.1uF C25
U 1 1 5B28525F
P 6850 2900
F 0 "C25" H 6965 2946 50  0000 L CNN
F 1 "C_0.1uF" H 6965 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6950 3200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 6850 2650 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 6975 3100 60  0001 C CNN "Part Number"
	1    6850 2900
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_1uF C41
U 1 1 5B2CA971
P 6700 4400
F 0 "C41" H 6815 4446 50  0000 L CNN
F 1 "C_1uF" H 6815 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6800 4700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 6700 4150 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 6825 4600 60  0001 C CNN "Part Number"
	1    6700 4400
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_1uF C28
U 1 1 5B2CAF63
P 3250 1750
F 0 "C28" H 3365 1796 50  0000 L CNN
F 1 "C_1uF" H 3365 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3350 2050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 3250 1500 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 3375 1950 60  0001 C CNN "Part Number"
	1    3250 1750
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_1uF C23
U 1 1 5B2CB4BD
P 3100 4150
F 0 "C23" H 3215 4196 50  0000 L CNN
F 1 "C_1uF" H 3215 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3200 4450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 3100 3900 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 3225 4350 60  0001 C CNN "Part Number"
	1    3100 4150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
