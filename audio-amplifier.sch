EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 12
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
L open-automation:TDA7297 U8
U 1 1 5AC797FB
P 4500 1750
F 0 "U8" H 4150 1000 60  0000 C CNN
F 1 "TDA7297" H 4675 1000 60  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-15_Vertical_StaggeredType1" H 4350 1600 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/stmicroelectronics/TDA7297/497-3967-5-ND/715883" H 4350 1600 60  0001 C CNN
	1    4500 1750
	1    0    0    -1  
$EndComp
$Comp
L open-automation:AGND #PWR033
U 1 1 5AC7B29E
P 3750 1800
F 0 "#PWR033" H 3750 1550 50  0001 C CNN
F 1 "AGND" H 3750 1650 50  0000 C CNN
F 2 "" H 3750 1800 50  0000 C CNN
F 3 "" H 3750 1800 50  0000 C CNN
	1    3750 1800
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR034
U 1 1 5AC7B2BE
P 2850 1850
F 0 "#PWR034" H 2850 1600 50  0001 C CNN
F 1 "GND" H 2850 1700 50  0000 C CNN
F 2 "" H 2850 1850 50  0000 C CNN
F 3 "" H 2850 1850 50  0000 C CNN
	1    2850 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5AC7B472
P 2850 1600
F 0 "C14" H 2875 1700 50  0000 L CNN
F 1 "470uF" H 2875 1500 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 2888 1450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rubycon/16YXJ470M8X11.5/1189-1146-ND/3134104" H 2850 1600 50  0001 C CNN
F 4 "16YXJ470M8X11.5" H 2850 1600 60  0001 C CNN "Part Number"
	1    2850 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5AC7B4BE
P 3175 1600
F 0 "C17" H 3200 1700 50  0000 L CNN
F 1 "100nF" H 3200 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3213 1450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B104KA8NFNC/1276-1931-1-ND/3890017" H 3175 1600 50  0001 C CNN
F 4 "CL10B104KA8NFNC" H 3175 1600 60  0001 C CNN "Part Number"
	1    3175 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5AC7BCAE
P 2700 2875
F 0 "R14" V 2780 2875 50  0000 C CNN
F 1 "R_10k" V 2600 2875 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2630 2875 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" H 2700 2875 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 2700 2875 60  0001 C CNN "Part Number"
	1    2700 2875
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR035
U 1 1 5AC7C381
P 3025 3325
F 0 "#PWR035" H 3025 3075 50  0001 C CNN
F 1 "GND" H 3025 3175 50  0000 C CNN
F 2 "" H 3025 3325 50  0000 C CNN
F 3 "" H 3025 3325 50  0000 C CNN
	1    3025 3325
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR036
U 1 1 5AC7C45C
P 3050 4125
F 0 "#PWR036" H 3050 3875 50  0001 C CNN
F 1 "GND" H 3050 3975 50  0000 C CNN
F 2 "" H 3050 4125 50  0000 C CNN
F 3 "" H 3050 4125 50  0000 C CNN
	1    3050 4125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1400 3800 1500
Wire Wire Line
	2725 1400 2850 1400
Connection ~ 3800 1400
Wire Wire Line
	2850 1450 2850 1400
Connection ~ 2850 1400
Wire Wire Line
	3175 1450 3175 1400
Connection ~ 3175 1400
Wire Wire Line
	2850 1750 2850 1800
Wire Wire Line
	2850 1800 3175 1800
Wire Wire Line
	3175 1800 3175 1750
Connection ~ 2850 1800
Wire Wire Line
	3550 1800 3550 1700
Connection ~ 3175 1800
Wire Wire Line
	2550 3650 2425 3650
Wire Wire Line
	2550 2875 2425 2875
Wire Wire Line
	2850 3650 3050 3650
Wire Wire Line
	3050 3650 3050 3725
Connection ~ 3050 3650
Wire Wire Line
	2850 2875 3025 2875
Wire Wire Line
	3025 2875 3025 2950
Connection ~ 3025 2875
Wire Wire Line
	3025 3250 3025 3325
Wire Wire Line
	3050 4025 3050 4125
$Comp
L Device:C C12
U 1 1 5AC7CAB7
P 2750 2325
F 0 "C12" V 2800 2400 50  0000 L CNN
F 1 "0.22uF" V 2700 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2788 2175 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B224KO8NNNC/1276-1112-1-ND/3889198" H 2750 2325 50  0001 C CNN
F 4 "CL10B224KO8NNNC" V 2750 2325 60  0001 C CNN "Part Number"
	1    2750 2325
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2575 3525 2575
Wire Wire Line
	3525 2575 3525 2100
Wire Wire Line
	3450 2000 3450 2325
Wire Wire Line
	3450 2325 2900 2325
Wire Wire Line
	2600 2325 2400 2325
Wire Wire Line
	2600 2575 2400 2575
Wire Wire Line
	5050 1650 5225 1650
Wire Wire Line
	5050 1750 5225 1750
Wire Wire Line
	5050 2000 5225 2000
Wire Wire Line
	5050 2100 5225 2100
Wire Wire Line
	3600 2875 3600 2250
Wire Wire Line
	3675 3650 3675 2350
$Comp
L Device:C C13
U 1 1 5AC80604
P 2750 2575
F 0 "C13" V 2800 2650 50  0000 L CNN
F 1 "0.22uF" V 2700 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2788 2425 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B224KO8NNNC/1276-1112-1-ND/3889198" H 2750 2575 50  0001 C CNN
F 4 "CL10B224KO8NNNC" V 2750 2575 60  0001 C CNN "Part Number"
	1    2750 2575
	0    1    1    0   
$EndComp
$Comp
L Device:C C15
U 1 1 5AC80ED0
P 3025 3100
F 0 "C15" H 3150 3075 50  0000 L CNN
F 1 "1uF" H 3125 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3063 2950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B105MO8NNWC/1276-6524-1-ND/5961383" H 3025 3100 50  0001 C CNN
F 4 "CL10B105MO8NNWC" V 3025 3100 60  0001 C CNN "Part Number"
	1    3025 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C16
U 1 1 5AC81549
P 3050 3875
F 0 "C16" H 3075 3975 50  0000 L CNN
F 1 "10uF" H 3075 3775 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 3088 3725 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/ESH106M050AC3AA/399-6543-ND/3082958" H 3050 3875 50  0001 C CNN
F 4 "ESH106M050AC3AA" H 3050 3875 60  0001 C CNN "Part Number"
	1    3050 3875
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5AC82122
P 2700 3650
F 0 "R15" V 2780 3650 50  0000 C CNN
F 1 "R_10k" V 2600 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2630 3650 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" H 2700 3650 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 2700 3650 60  0001 C CNN "Part Number"
	1    2700 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 1400 3175 1400
Wire Wire Line
	3175 1400 3800 1400
Wire Wire Line
	2850 1800 2850 1850
Wire Wire Line
	3175 1800 3550 1800
Wire Wire Line
	3050 3650 3675 3650
Wire Wire Line
	3025 2875 3600 2875
Text HLabel 2725 1400 0    60   Input ~ 0
8V
Text HLabel 2400 2325 0    60   Input ~ 0
L_AUDIO_IN
Text HLabel 2400 2575 0    60   Input ~ 0
R_AUDIO_IN
Text HLabel 2425 2875 0    60   Input ~ 0
MUTE_AUDIO_AMP
Text HLabel 5225 1650 2    60   Input ~ 0
L_AUDIO_OUT+
Text HLabel 5225 2000 2    60   Input ~ 0
R_AUDIO_OUT+
Text HLabel 5225 1750 2    60   Input ~ 0
L_AUDIO_OUT-
Text HLabel 5225 2100 2    60   Input ~ 0
R_AUDIO_OUT-
Text HLabel 2425 3650 0    60   Input ~ 0
STBY_AUDIO_AMP
Wire Wire Line
	3800 1500 3900 1500
Wire Wire Line
	3750 1800 3900 1800
Wire Wire Line
	3550 1700 3900 1700
Wire Wire Line
	3675 2350 3900 2350
Wire Wire Line
	3600 2250 3900 2250
Wire Wire Line
	3525 2100 3900 2100
Wire Wire Line
	3450 2000 3900 2000
Wire Wire Line
	3800 1400 3900 1400
$EndSCHEMATC
