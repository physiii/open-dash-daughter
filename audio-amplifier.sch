EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 7 15
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
P 6200 2650
F 0 "U8" H 5850 1900 60  0000 C CNN
F 1 "TDA7297" H 6375 1900 60  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-15_Vertical_StaggeredType1" H 6050 2500 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/stmicroelectronics/TDA7297/497-3967-5-ND/715883" H 6050 2500 60  0001 C CNN
	1    6200 2650
	1    0    0    -1  
$EndComp
$Comp
L open-automation:AGND #PWR033
U 1 1 5AC7B29E
P 5450 2700
F 0 "#PWR033" H 5450 2450 50  0001 C CNN
F 1 "AGND" H 5450 2550 50  0000 C CNN
F 2 "" H 5450 2700 50  0000 C CNN
F 3 "" H 5450 2700 50  0000 C CNN
	1    5450 2700
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR034
U 1 1 5AC7B2BE
P 4550 2750
F 0 "#PWR034" H 4550 2500 50  0001 C CNN
F 1 "GND" H 4550 2600 50  0000 C CNN
F 2 "" H 4550 2750 50  0000 C CNN
F 3 "" H 4550 2750 50  0000 C CNN
	1    4550 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5AC7B472
P 4550 2500
F 0 "C14" H 4575 2600 50  0000 L CNN
F 1 "470uF" H 4575 2400 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 4588 2350 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rubycon/16YXJ470M8X11.5/1189-1146-ND/3134104" H 4550 2500 50  0001 C CNN
F 4 "16YXJ470M8X11.5" H 4550 2500 60  0001 C CNN "Part Number"
	1    4550 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5AC7B4BE
P 4875 2500
F 0 "C17" H 4900 2600 50  0000 L CNN
F 1 "100nF" H 4900 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4913 2350 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B104KA8NFNC/1276-1931-1-ND/3890017" H 4875 2500 50  0001 C CNN
F 4 "CL10B104KA8NFNC" H 4875 2500 60  0001 C CNN "Part Number"
	1    4875 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5AC7BCAE
P 4400 3775
F 0 "R14" V 4480 3775 50  0000 C CNN
F 1 "R_10k" V 4300 3775 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4330 3775 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" H 4400 3775 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 4400 3775 60  0001 C CNN "Part Number"
	1    4400 3775
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR035
U 1 1 5AC7C381
P 4725 4225
F 0 "#PWR035" H 4725 3975 50  0001 C CNN
F 1 "GND" H 4725 4075 50  0000 C CNN
F 2 "" H 4725 4225 50  0000 C CNN
F 3 "" H 4725 4225 50  0000 C CNN
	1    4725 4225
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR036
U 1 1 5AC7C45C
P 4750 5025
F 0 "#PWR036" H 4750 4775 50  0001 C CNN
F 1 "GND" H 4750 4875 50  0000 C CNN
F 2 "" H 4750 5025 50  0000 C CNN
F 3 "" H 4750 5025 50  0000 C CNN
	1    4750 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2300 5500 2400
Wire Wire Line
	4425 2300 4550 2300
Connection ~ 5500 2300
Wire Wire Line
	4550 2350 4550 2300
Connection ~ 4550 2300
Wire Wire Line
	4875 2350 4875 2300
Connection ~ 4875 2300
Wire Wire Line
	4550 2650 4550 2700
Wire Wire Line
	4550 2700 4875 2700
Wire Wire Line
	4875 2700 4875 2650
Connection ~ 4550 2700
Wire Wire Line
	5250 2700 5250 2600
Connection ~ 4875 2700
Wire Wire Line
	4250 4550 4125 4550
Wire Wire Line
	4250 3775 4125 3775
Wire Wire Line
	4550 4550 4750 4550
Wire Wire Line
	4750 4550 4750 4625
Connection ~ 4750 4550
Wire Wire Line
	4550 3775 4725 3775
Wire Wire Line
	4725 3775 4725 3850
Connection ~ 4725 3775
Wire Wire Line
	4725 4150 4725 4225
Wire Wire Line
	4750 4925 4750 5025
$Comp
L Device:C C12
U 1 1 5AC7CAB7
P 4450 3225
F 0 "C12" V 4500 3300 50  0000 L CNN
F 1 "0.22uF" V 4400 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4488 3075 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B224KO8NNNC/1276-1112-1-ND/3889198" H 4450 3225 50  0001 C CNN
F 4 "CL10B224KO8NNNC" V 4450 3225 60  0001 C CNN "Part Number"
	1    4450 3225
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 3475 5225 3475
Wire Wire Line
	5225 3475 5225 3000
Wire Wire Line
	5150 2900 5150 3225
Wire Wire Line
	5150 3225 4600 3225
Wire Wire Line
	4300 3225 4100 3225
Wire Wire Line
	4300 3475 4100 3475
Wire Wire Line
	6750 2550 6925 2550
Wire Wire Line
	6750 2650 6925 2650
Wire Wire Line
	6750 2900 6925 2900
Wire Wire Line
	6750 3000 6925 3000
Wire Wire Line
	5300 3775 5300 3150
Wire Wire Line
	5375 4550 5375 3250
$Comp
L Device:C C13
U 1 1 5AC80604
P 4450 3475
F 0 "C13" V 4500 3550 50  0000 L CNN
F 1 "0.22uF" V 4400 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4488 3325 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B224KO8NNNC/1276-1112-1-ND/3889198" H 4450 3475 50  0001 C CNN
F 4 "CL10B224KO8NNNC" V 4450 3475 60  0001 C CNN "Part Number"
	1    4450 3475
	0    1    1    0   
$EndComp
$Comp
L Device:C C15
U 1 1 5AC80ED0
P 4725 4000
F 0 "C15" H 4850 3975 50  0000 L CNN
F 1 "1uF" H 4825 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4763 3850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B105MO8NNWC/1276-6524-1-ND/5961383" H 4725 4000 50  0001 C CNN
F 4 "CL10B105MO8NNWC" V 4725 4000 60  0001 C CNN "Part Number"
	1    4725 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C16
U 1 1 5AC81549
P 4750 4775
F 0 "C16" H 4775 4875 50  0000 L CNN
F 1 "10uF" H 4775 4675 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 4788 4625 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/ESH106M050AC3AA/399-6543-ND/3082958" H 4750 4775 50  0001 C CNN
F 4 "ESH106M050AC3AA" H 4750 4775 60  0001 C CNN "Part Number"
	1    4750 4775
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5AC82122
P 4400 4550
F 0 "R15" V 4480 4550 50  0000 C CNN
F 1 "R_10k" V 4300 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4330 4550 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" H 4400 4550 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 4400 4550 60  0001 C CNN "Part Number"
	1    4400 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2300 4875 2300
Wire Wire Line
	4875 2300 5500 2300
Wire Wire Line
	4550 2700 4550 2750
Wire Wire Line
	4875 2700 5250 2700
Wire Wire Line
	4750 4550 5375 4550
Wire Wire Line
	4725 3775 5300 3775
Text HLabel 4425 2300 0    60   Input ~ 0
8V
Text HLabel 4100 3225 0    60   Input ~ 0
L_AUDIO_IN
Text HLabel 4100 3475 0    60   Input ~ 0
R_AUDIO_IN
Text HLabel 4125 3775 0    60   Input ~ 0
MUTE_AUDIO_AMP
Text HLabel 6925 2550 2    60   Input ~ 0
L_AUDIO_OUT+
Text HLabel 6925 2900 2    60   Input ~ 0
R_AUDIO_OUT+
Text HLabel 6925 2650 2    60   Input ~ 0
L_AUDIO_OUT-
Text HLabel 6925 3000 2    60   Input ~ 0
R_AUDIO_OUT-
Text HLabel 4125 4550 0    60   Input ~ 0
STBY_AUDIO_AMP
Wire Wire Line
	5500 2400 5600 2400
Wire Wire Line
	5450 2700 5600 2700
Wire Wire Line
	5250 2600 5600 2600
Wire Wire Line
	5375 3250 5600 3250
Wire Wire Line
	5300 3150 5600 3150
Wire Wire Line
	5225 3000 5600 3000
Wire Wire Line
	5150 2900 5600 2900
Wire Wire Line
	5500 2300 5600 2300
$EndSCHEMATC
