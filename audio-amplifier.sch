EESchema Schematic File Version 5
LIBS:open-dash-daughterboard-cache
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
L open-automation:GND #PWR043
U 1 1 5AC7C45C
P 1700 4500
F 0 "#PWR043" H 1700 4250 50  0001 C CNN
F 1 "GND" H 1700 4350 50  0000 C CNN
F 2 "" H 1700 4500 50  0000 C CNN
F 3 "" H 1700 4500 50  0000 C CNN
	1    1700 4500
	1    0    0    -1  
$EndComp
Text HLabel 1700 3700 1    60   Input ~ 0
MUTE_AUDIO
Text HLabel 9000 3600 2    60   Input ~ 0
RL_AUDIO_OUT+
Text HLabel 9000 3800 2    60   Input ~ 0
RR_AUDIO_OUT+
Text HLabel 9000 3100 2    60   Input ~ 0
FL_AUDIO_OUT-
Text HLabel 9000 3300 2    60   Input ~ 0
FR_AUDIO_OUT-
Text HLabel 9000 3400 2    60   Input ~ 0
FR_AUDIO_OUT+
Text HLabel 9000 3700 2    60   Input ~ 0
RR_AUDIO_OUT-
Text HLabel 9000 3200 2    60   Input ~ 0
FL_AUDIO_OUT+
Text HLabel 9000 3500 2    60   Input ~ 0
RL_AUDIO_OUT-
Wire Wire Line
	3550 2800 3550 2850
$Comp
L open-automation:GND #PWR0123
U 1 1 5B200BCF
P 3200 3250
F 0 "#PWR0123" H 3200 3000 50  0001 C CNN
F 1 "GND" H 3350 3200 50  0000 C CNN
F 2 "" H 3200 3250 50  0000 C CNN
F 3 "" H 3200 3250 50  0000 C CNN
	1    3200 3250
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_0.1uF C39
U 1 1 5B224815
P 3550 3000
F 0 "C39" H 3650 3000 50  0000 L CNN
F 1 "C_0.1uF" H 3550 2900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3650 3300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 3550 2750 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 3675 3200 60  0001 C CNN "Part Number"
	1    3550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3150 3550 3200
Wire Wire Line
	3200 2800 3200 2850
Wire Wire Line
	3200 2800 3550 2800
Wire Wire Line
	3200 3150 3200 3200
$Comp
L open-automation:C_1uF C28
U 1 1 5B2CAF63
P 3200 3000
F 0 "C28" H 2950 3000 50  0000 L CNN
F 1 "C_1uF" H 2950 2900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3300 3300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 3200 2750 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 3325 3200 60  0001 C CNN "Part Number"
	1    3200 3000
	1    0    0    -1  
$EndComp
$Comp
L open-automation:TDA7851F U?
U 1 1 5CBEF223
P 8200 3450
F 0 "U?" H 8200 4065 50  0000 C CNN
F 1 "TDA7851F" H 8200 3974 50  0000 C CNN
F 2 "open-automation:Flexiwatt25-V" H 8200 4050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/stmicroelectronics/TDA7851F/497-11760-5-ND/2214752" H 8750 3950 50  0001 C CNN
F 4 "TDA7851F" H 8200 3950 50  0001 C CNN "Part Number"
	1    8200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3100 9000 3100
Wire Wire Line
	9000 3200 8950 3200
Wire Wire Line
	8950 3300 9000 3300
Wire Wire Line
	9000 3400 8950 3400
Wire Wire Line
	8950 3500 9000 3500
Wire Wire Line
	9000 3600 8950 3600
Wire Wire Line
	8950 3700 9000 3700
Wire Wire Line
	9000 3800 8950 3800
$Comp
L open-automation:GND #PWR?
U 1 1 5CBFA119
P 8500 4400
F 0 "#PWR?" H 8500 4150 50  0001 C CNN
F 1 "GND" H 8500 4250 50  0000 C CNN
F 2 "" H 8500 4400 50  0000 C CNN
F 3 "" H 8500 4400 50  0000 C CNN
	1    8500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4300 8500 4350
Wire Wire Line
	8400 4300 8400 4350
Wire Wire Line
	8400 4350 8500 4350
Connection ~ 8500 4350
Wire Wire Line
	8500 4350 8500 4400
Wire Wire Line
	8300 4300 8300 4350
Wire Wire Line
	8300 4350 8400 4350
Connection ~ 8400 4350
Wire Wire Line
	8200 4300 8200 4350
Wire Wire Line
	8200 4350 8300 4350
Connection ~ 8300 4350
Wire Wire Line
	8100 4300 8100 4350
Wire Wire Line
	8100 4350 8200 4350
Connection ~ 8200 4350
Wire Wire Line
	8000 4300 8000 4350
Wire Wire Line
	8000 4350 8100 4350
Connection ~ 8100 4350
Text HLabel 2800 2800 0    60   Input ~ 0
AUDIO_POWER
Wire Wire Line
	7350 3100 7400 3100
Wire Wire Line
	7450 3200 7400 3200
Wire Wire Line
	7400 3200 7400 3100
Connection ~ 7400 3100
Wire Wire Line
	7400 3100 7450 3100
$Comp
L open-automation:C_0.1uF C?
U 1 1 5CC10031
P 6700 3600
F 0 "C?" V 6750 3450 50  0000 L CNN
F 1 "C_0.1uF" V 6650 3250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6800 3900 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 6700 3350 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 6825 3800 60  0001 C CNN "Part Number"
	1    6700 3600
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_1k R?
U 1 1 5CC13A39
P 6350 3600
F 0 "R?" V 6250 3600 50  0000 C CNN
F 1 "R_1k" V 6350 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6280 3600 50  0001 C CNN
F 3 "" V 6430 3600 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 6530 3700 60  0001 C CNN "Part Number"
	1    6350 3600
	0    1    1    0   
$EndComp
Text Label 3550 2800 0    50   ~ 0
POWER
Text Label 7350 3100 2    50   ~ 0
POWER
Wire Wire Line
	6150 3600 6200 3600
Wire Wire Line
	6500 3600 6550 3600
$Comp
L open-automation:C_0.1uF C?
U 1 1 5CC18F9C
P 6700 3850
F 0 "C?" V 6750 3700 50  0000 L CNN
F 1 "C_0.1uF" V 6650 3500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6800 4150 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 6700 3600 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 6825 4050 60  0001 C CNN "Part Number"
	1    6700 3850
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_1k R?
U 1 1 5CC18FAB
P 6350 3850
F 0 "R?" V 6250 3850 50  0000 C CNN
F 1 "R_1k" V 6350 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6280 3850 50  0001 C CNN
F 3 "" V 6430 3850 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 6530 3950 60  0001 C CNN "Part Number"
	1    6350 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 3850 6200 3850
Wire Wire Line
	6500 3850 6550 3850
$Comp
L open-automation:C_0.1uF C?
U 1 1 5CC19662
P 6700 4100
F 0 "C?" V 6750 3950 50  0000 L CNN
F 1 "C_0.1uF" V 6650 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6800 4400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 6700 3850 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 6825 4300 60  0001 C CNN "Part Number"
	1    6700 4100
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_1k R?
U 1 1 5CC19671
P 6350 4100
F 0 "R?" V 6250 4100 50  0000 C CNN
F 1 "R_1k" V 6350 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6280 4100 50  0001 C CNN
F 3 "" V 6430 4100 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 6530 4200 60  0001 C CNN "Part Number"
	1    6350 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 4100 6200 4100
Wire Wire Line
	6500 4100 6550 4100
$Comp
L open-automation:C_0.1uF C?
U 1 1 5CC19683
P 6700 4350
F 0 "C?" V 6750 4200 50  0000 L CNN
F 1 "C_0.1uF" V 6650 4000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6800 4650 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 6700 4100 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 6825 4550 60  0001 C CNN "Part Number"
	1    6700 4350
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_1k R?
U 1 1 5CC19692
P 6350 4350
F 0 "R?" V 6250 4350 50  0000 C CNN
F 1 "R_1k" V 6350 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6280 4350 50  0001 C CNN
F 3 "" V 6430 4350 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 6530 4450 60  0001 C CNN "Part Number"
	1    6350 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 4350 6200 4350
Wire Wire Line
	6500 4350 6550 4350
Wire Wire Line
	6150 3850 6150 3600
Wire Wire Line
	6150 4350 6150 4200
Wire Wire Line
	6850 3600 7450 3600
Wire Wire Line
	6850 3850 6950 3850
Wire Wire Line
	6950 3850 6950 3700
Wire Wire Line
	6950 3700 7450 3700
Wire Wire Line
	6850 4100 7100 4100
Wire Wire Line
	7100 4100 7100 3800
Wire Wire Line
	7100 3800 7450 3800
Wire Wire Line
	6850 4350 7200 4350
Wire Wire Line
	7200 4350 7200 3900
Wire Wire Line
	7200 3900 7450 3900
Text Label 1800 4100 0    50   ~ 0
MUTE
Text Label 7400 3500 2    50   ~ 0
MUTE
Wire Wire Line
	7400 3500 7450 3500
Text Label 7400 3400 2    50   ~ 0
STBY
Wire Wire Line
	7400 3400 7450 3400
Text Label 7400 3300 2    50   ~ 0
OD
Wire Wire Line
	7400 3300 7450 3300
Text Label 2250 4100 0    50   ~ 0
STBY
Wire Wire Line
	1700 4500 1700 4450
Wire Wire Line
	1700 4050 1700 4100
Wire Wire Line
	1800 4100 1700 4100
Connection ~ 1700 4100
Wire Wire Line
	1700 4100 1700 4150
Wire Wire Line
	1700 3700 1700 3750
$Comp
L open-automation:GND #PWR?
U 1 1 5CC4D3C7
P 2150 4500
F 0 "#PWR?" H 2150 4250 50  0001 C CNN
F 1 "GND" H 2150 4350 50  0000 C CNN
F 2 "" H 2150 4500 50  0000 C CNN
F 3 "" H 2150 4500 50  0000 C CNN
	1    2150 4500
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_10k R?
U 1 1 5CC4D3D7
P 2150 3900
F 0 "R?" V 2150 3900 50  0000 C CNN
F 1 "R_10k" V 2050 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2080 3900 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 2230 3900 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 2330 4000 60  0001 C CNN "Part Number"
	1    2150 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 4500 2150 4450
Wire Wire Line
	2150 4050 2150 4100
Wire Wire Line
	2250 4100 2150 4100
Connection ~ 2150 4100
Wire Wire Line
	2150 4100 2150 4150
Wire Wire Line
	2150 3700 2150 3750
Text HLabel 2150 3700 1    60   Input ~ 0
STBY_AUDIO
$Comp
L open-automation:C_1uF C?
U 1 1 5CC4FB58
P 2150 4300
F 0 "C?" H 2250 4300 50  0000 L CNN
F 1 "C_1uF" H 2150 4200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 2250 4600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 2150 4050 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 2275 4500 60  0001 C CNN "Part Number"
	1    2150 4300
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_1uF C?
U 1 1 5CC50D4D
P 1700 4300
F 0 "C?" H 1500 4300 50  0000 L CNN
F 1 "C_1uF" H 1450 4200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 1800 4600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 1700 4050 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 1825 4500 60  0001 C CNN "Part Number"
	1    1700 4300
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_47uF C?
U 1 1 5CC5C9F6
P 2600 4300
F 0 "C?" H 2700 4300 50  0000 L CNN
F 1 "C_47uF" H 2600 4200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 2700 4600 50  0001 C CNN
F 3 "" H 2600 4050 50  0001 C CNN
F 4 "GRM188R60G476ME15D" H 2725 4500 60  0001 C CNN "Part Number"
	1    2600 4300
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5CC61209
P 2600 4500
F 0 "#PWR?" H 2600 4250 50  0001 C CNN
F 1 "GND" H 2600 4350 50  0000 C CNN
F 2 "" H 2600 4500 50  0000 C CNN
F 3 "" H 2600 4500 50  0000 C CNN
	1    2600 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4500 2600 4450
Text Label 2600 4100 0    50   ~ 0
SVR
Wire Wire Line
	2600 4100 2600 4150
Text Label 7800 4350 3    50   ~ 0
SVR
Wire Wire Line
	7800 4350 7800 4300
$Comp
L open-automation:GND #PWR?
U 1 1 5CC62B1D
P 3000 4500
F 0 "#PWR?" H 3000 4250 50  0001 C CNN
F 1 "GND" H 3000 4350 50  0000 C CNN
F 2 "" H 3000 4500 50  0000 C CNN
F 3 "" H 3000 4500 50  0000 C CNN
	1    3000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4500 3000 4450
Text Label 3000 4100 0    50   ~ 0
AC_GND
Wire Wire Line
	3000 4100 3000 4150
Text Label 7900 4350 3    50   ~ 0
AC_GND
Wire Wire Line
	7900 4350 7900 4300
$Comp
L open-automation:C_0.470uF C?
U 1 1 5CC6B3DC
P 3000 4300
F 0 "C?" H 3100 4300 50  0000 L CNN
F 1 "C_0.47uF" H 3000 4200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3100 4600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B474KA8NFNC/1276-2082-1-ND/3890168" H 3000 4050 50  0001 C CNN
F 4 "CL10B474KA8NFNC" H 3125 4500 60  0001 C CNN "Part Number"
	1    3000 4300
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_47.5k R?
U 1 1 5CC75CA6
P 3500 4300
F 0 "R?" V 3500 4250 50  0000 L CNN
F 1 "R_47.5k" V 3600 4150 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 3430 4300 50  0001 C CNN
F 3 "" V 3580 4300 50  0001 C CNN
F 4 "ERJ-3EKF4752V" V 3680 4400 60  0001 C CNN "Part Number"
	1    3500 4300
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5CC7689C
P 3500 4500
F 0 "#PWR?" H 3500 4250 50  0001 C CNN
F 1 "GND" H 3500 4350 50  0000 C CNN
F 2 "" H 3500 4500 50  0000 C CNN
F 3 "" H 3500 4500 50  0000 C CNN
	1    3500 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4500 3500 4450
Text Label 3500 4100 0    50   ~ 0
OD
Wire Wire Line
	3500 4100 3500 4150
$Comp
L open-automation:R_47.5k R?
U 1 1 5CC79680
P 1700 3900
F 0 "R?" V 1700 3850 50  0000 L CNN
F 1 "R_47.5k" V 1800 3800 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 1630 3900 50  0001 C CNN
F 3 "" V 1780 3900 50  0001 C CNN
F 4 "ERJ-3EKF4752V" V 1880 4000 60  0001 C CNN "Part Number"
	1    1700 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5CC7B01E
P 2800 3000
F 0 "C?" H 2600 3000 50  0000 L CNN
F 1 "470uF" H 2550 3100 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 2838 2850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rubycon/16YXJ470M8X11.5/1189-1146-ND/3134104" H 2800 3000 50  0001 C CNN
F 4 "16YXJ470M8X11.5" H 2800 3000 60  0001 C CNN "Part Number"
	1    2800 3000
	1    0    0    1   
$EndComp
Wire Wire Line
	3200 3200 3550 3200
Wire Wire Line
	3200 3250 3200 3200
Connection ~ 3200 3200
Wire Wire Line
	3200 3200 2800 3200
Wire Wire Line
	2800 3200 2800 3150
Wire Wire Line
	2800 2850 2800 2800
Wire Wire Line
	2800 2800 3200 2800
Connection ~ 3200 2800
$Comp
L open-automation:AudioJack4_T2RS J?
U 1 1 5CBD1BCD
P 5550 3950
F 0 "J?" H 5200 3700 50  0000 C CNN
F 1 "AudioJack4_T2RS" H 5450 3600 50  0000 C CNN
F 2 "" H 5550 3950 50  0001 C CNN
F 3 "~" H 5550 3950 50  0001 C CNN
	1    5550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4050 5750 4150
$Comp
L open-automation:GND #PWR?
U 1 1 5CBD5444
P 5800 3800
F 0 "#PWR?" H 5800 3550 50  0001 C CNN
F 1 "GND" H 5800 3650 50  0000 C CNN
F 2 "" H 5800 3800 50  0000 C CNN
F 3 "" H 5800 3800 50  0000 C CNN
	1    5800 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 3850 5800 3850
Wire Wire Line
	5800 3850 5800 3800
Wire Wire Line
	5750 4150 6050 4150
Wire Wire Line
	6050 4150 6050 4200
Wire Wire Line
	6050 4200 6150 4200
Connection ~ 5750 4150
Connection ~ 6150 4200
Wire Wire Line
	6150 4200 6150 4100
Wire Wire Line
	6050 3950 6050 3850
Wire Wire Line
	6050 3850 6150 3850
Wire Wire Line
	5750 3950 6050 3950
Connection ~ 6150 3850
$EndSCHEMATC
