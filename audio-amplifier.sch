EESchema Schematic File Version 5
LIBS:open-dash-daughterboard-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 7 7
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
P 4000 3700
F 0 "#PWR043" H 4000 3450 50  0001 C CNN
F 1 "GND" V 3950 3550 50  0000 C CNN
F 2 "" H 4000 3700 50  0000 C CNN
F 3 "" H 4000 3700 50  0000 C CNN
	1    4000 3700
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:GND #PWR0123
U 1 1 5B200BCF
P 7500 2200
F 0 "#PWR0123" H 7500 1950 50  0001 C CNN
F 1 "GND" H 7500 2050 50  0000 C CNN
F 2 "" H 7500 2200 50  0000 C CNN
F 3 "" H 7500 2200 50  0000 C CNN
	1    7500 2200
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_0.1uF C39
U 1 1 5B224815
P 7800 2000
F 0 "C39" H 7800 2100 50  0000 L CNN
F 1 "C_0.1uF" H 7800 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7900 2300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 7800 1750 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 7925 2200 60  0001 C CNN "Part Number"
	1    7800 2000
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_1uF C28
U 1 1 5B2CAF63
P 7500 2000
F 0 "C28" H 7350 2100 50  0000 L CNN
F 1 "C_1uF" H 7250 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7600 2300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 7500 1750 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 7625 2200 60  0001 C CNN "Part Number"
	1    7500 2000
	1    0    0    -1  
$EndComp
$Comp
L open-automation:TDA7851F U13
U 1 1 5CBEF223
P 7550 3400
F 0 "U13" H 7550 4015 50  0000 C CNN
F 1 "TDA7851F" H 7550 3924 50  0000 C CNN
F 2 "open-automation:Flexiwatt25-V" H 7550 4000 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/stmicroelectronics/TDA7851F/497-11760-5-ND/2214752" H 8100 3900 50  0001 C CNN
F 4 "TDA7851F" H 7550 3900 50  0001 C CNN "Part Number"
	1    7550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3050 8350 3050
Wire Wire Line
	8350 3150 8300 3150
Wire Wire Line
	8300 3250 8350 3250
Wire Wire Line
	8350 3350 8300 3350
Wire Wire Line
	8300 3450 8350 3450
Wire Wire Line
	8350 3550 8300 3550
Wire Wire Line
	8300 3650 8350 3650
Wire Wire Line
	8350 3750 8300 3750
$Comp
L open-automation:GND #PWR0152
U 1 1 5CBFA119
P 7850 4350
F 0 "#PWR0152" H 7850 4100 50  0001 C CNN
F 1 "GND" H 7850 4200 50  0000 C CNN
F 2 "" H 7850 4350 50  0000 C CNN
F 3 "" H 7850 4350 50  0000 C CNN
	1    7850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4250 7850 4300
Wire Wire Line
	7750 4250 7750 4300
Wire Wire Line
	7750 4300 7850 4300
Connection ~ 7850 4300
Wire Wire Line
	7850 4300 7850 4350
Wire Wire Line
	7650 4250 7650 4300
Wire Wire Line
	7650 4300 7750 4300
Connection ~ 7750 4300
Wire Wire Line
	7550 4250 7550 4300
Wire Wire Line
	7550 4300 7650 4300
Connection ~ 7650 4300
Wire Wire Line
	7450 4250 7450 4300
Wire Wire Line
	7450 4300 7550 4300
Connection ~ 7550 4300
Wire Wire Line
	7350 4250 7350 4300
Wire Wire Line
	7350 4300 7450 4300
Connection ~ 7450 4300
Wire Wire Line
	6800 3150 6750 3150
$Comp
L open-automation:C_0.1uF C23
U 1 1 5CC10031
P 6050 3550
F 0 "C23" V 6100 3400 50  0000 L CNN
F 1 "C_0.1uF" V 6000 3200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6150 3850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 6050 3300 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 6175 3750 60  0001 C CNN "Part Number"
	1    6050 3550
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_1k R33
U 1 1 5CC13A39
P 5700 3550
F 0 "R33" V 5600 3550 50  0000 C CNN
F 1 "R_1k" V 5700 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 5630 3550 50  0001 C CNN
F 3 "" V 5780 3550 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 5880 3650 60  0001 C CNN "Part Number"
	1    5700 3550
	0    1    1    0   
$EndComp
Text Label 6750 3050 2    50   ~ 0
POWER
Wire Wire Line
	5500 3550 5550 3550
Wire Wire Line
	5850 3550 5900 3550
$Comp
L open-automation:C_0.1uF C24
U 1 1 5CC18F9C
P 6050 3800
F 0 "C24" V 6100 3650 50  0000 L CNN
F 1 "C_0.1uF" V 6000 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6150 4100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 6050 3550 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 6175 4000 60  0001 C CNN "Part Number"
	1    6050 3800
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_1k R34
U 1 1 5CC18FAB
P 5700 3800
F 0 "R34" V 5600 3800 50  0000 C CNN
F 1 "R_1k" V 5700 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 5630 3800 50  0001 C CNN
F 3 "" V 5780 3800 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 5880 3900 60  0001 C CNN "Part Number"
	1    5700 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 3800 5550 3800
Wire Wire Line
	5850 3800 5900 3800
$Comp
L open-automation:C_0.1uF C25
U 1 1 5CC19662
P 6050 4050
F 0 "C25" V 6100 3900 50  0000 L CNN
F 1 "C_0.1uF" V 6000 3700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6150 4350 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 6050 3800 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 6175 4250 60  0001 C CNN "Part Number"
	1    6050 4050
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_1k R35
U 1 1 5CC19671
P 5700 4050
F 0 "R35" V 5600 4050 50  0000 C CNN
F 1 "R_1k" V 5700 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 5630 4050 50  0001 C CNN
F 3 "" V 5780 4050 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 5880 4150 60  0001 C CNN "Part Number"
	1    5700 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4050 5550 4050
Wire Wire Line
	5850 4050 5900 4050
$Comp
L open-automation:C_0.1uF C26
U 1 1 5CC19683
P 6050 4300
F 0 "C26" V 6100 4150 50  0000 L CNN
F 1 "C_0.1uF" V 6000 3950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6150 4600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 6050 4050 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 6175 4500 60  0001 C CNN "Part Number"
	1    6050 4300
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_1k R36
U 1 1 5CC19692
P 5700 4300
F 0 "R36" V 5600 4300 50  0000 C CNN
F 1 "R_1k" V 5700 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 5630 4300 50  0001 C CNN
F 3 "" V 5780 4300 50  0001 C CNN
F 4 "ERJ-3GEYJ102V" V 5880 4400 60  0001 C CNN "Part Number"
	1    5700 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4300 5550 4300
Wire Wire Line
	5850 4300 5900 4300
Wire Wire Line
	6200 3550 6800 3550
Wire Wire Line
	6200 3800 6300 3800
Wire Wire Line
	6300 3800 6300 3650
Wire Wire Line
	6300 3650 6800 3650
Wire Wire Line
	6200 4050 6450 4050
Wire Wire Line
	6450 4050 6450 3750
Wire Wire Line
	6450 3750 6800 3750
Wire Wire Line
	6200 4300 6550 4300
Wire Wire Line
	6550 4300 6550 3850
Wire Wire Line
	6550 3850 6800 3850
Text Label 3550 3700 0    50   ~ 0
MUTE
Text Label 6750 3450 2    50   ~ 0
MUTE
Wire Wire Line
	6750 3450 6800 3450
Text Label 6750 3350 2    50   ~ 0
STBY
Wire Wire Line
	6750 3350 6800 3350
Text Label 6750 3250 2    50   ~ 0
OD
Wire Wire Line
	6750 3250 6800 3250
Wire Wire Line
	4000 3700 3950 3700
Wire Wire Line
	3200 3700 3250 3700
$Comp
L open-automation:GND #PWR0153
U 1 1 5CC4D3C7
P 4100 3300
F 0 "#PWR0153" H 4100 3050 50  0001 C CNN
F 1 "GND" V 4050 3150 50  0000 C CNN
F 2 "" H 4100 3300 50  0000 C CNN
F 3 "" H 4100 3300 50  0000 C CNN
	1    4100 3300
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_10k R31
U 1 1 5CC4D3D7
P 3400 3300
F 0 "R31" V 3400 3300 50  0000 C CNN
F 1 "R_10k" V 3300 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 3330 3300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 3480 3300 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 3580 3400 60  0001 C CNN "Part Number"
	1    3400 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3300 4050 3300
$Comp
L open-automation:C_1uF C22
U 1 1 5CC4FB58
P 3900 3300
F 0 "C22" V 3950 3150 50  0000 L CNN
F 1 "C_1uF" V 4050 3100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4000 3600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 3900 3050 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 4025 3500 60  0001 C CNN "Part Number"
	1    3900 3300
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:C_1uF C21
U 1 1 5CC50D4D
P 3800 3700
F 0 "C21" V 3750 3550 50  0000 L CNN
F 1 "C_1uF" V 3650 3500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3900 4000 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 3800 3450 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 3925 3900 60  0001 C CNN "Part Number"
	1    3800 3700
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:C_47uF C27
U 1 1 5CC5C9F6
P 7100 5150
F 0 "C27" H 7200 5150 50  0000 L CNN
F 1 "C_47uF" H 7100 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7200 5450 50  0001 C CNN
F 3 "" H 7100 4900 50  0001 C CNN
F 4 "GRM188R60G476ME15D" H 7225 5350 60  0001 C CNN "Part Number"
	1    7100 5150
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0154
U 1 1 5CC61209
P 7100 5350
F 0 "#PWR0154" H 7100 5100 50  0001 C CNN
F 1 "GND" H 7100 5200 50  0000 C CNN
F 2 "" H 7100 5350 50  0000 C CNN
F 3 "" H 7100 5350 50  0000 C CNN
	1    7100 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5350 7100 5300
Text Label 7100 4950 0    50   ~ 0
SVR
Wire Wire Line
	7100 4950 7100 5000
Text Label 7150 4300 3    50   ~ 0
SVR
Wire Wire Line
	7150 4300 7150 4250
$Comp
L open-automation:GND #PWR0155
U 1 1 5CC62B1D
P 7500 5350
F 0 "#PWR0155" H 7500 5100 50  0001 C CNN
F 1 "GND" H 7500 5200 50  0000 C CNN
F 2 "" H 7500 5350 50  0000 C CNN
F 3 "" H 7500 5350 50  0000 C CNN
	1    7500 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5350 7500 5300
Text Label 7500 4950 0    50   ~ 0
AC_GND
Wire Wire Line
	7500 4950 7500 5000
Text Label 7250 4300 3    50   ~ 0
AC_GND
Wire Wire Line
	7250 4300 7250 4250
$Comp
L open-automation:C_0.470uF C30
U 1 1 5CC6B3DC
P 7500 5150
F 0 "C30" H 7600 5150 50  0000 L CNN
F 1 "C_0.47uF" H 7500 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7600 5450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B474KA8NFNC/1276-2082-1-ND/3890168" H 7500 4900 50  0001 C CNN
F 4 "CL10B474KA8NFNC" H 7625 5350 60  0001 C CNN "Part Number"
	1    7500 5150
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_47.5k R37
U 1 1 5CC75CA6
P 8000 5150
F 0 "R37" V 8000 5100 50  0000 L CNN
F 1 "R_47.5k" V 8100 5000 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 7930 5150 50  0001 C CNN
F 3 "" V 8080 5150 50  0001 C CNN
F 4 "ERJ-3EKF4752V" V 8180 5250 60  0001 C CNN "Part Number"
	1    8000 5150
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0156
U 1 1 5CC7689C
P 8000 5350
F 0 "#PWR0156" H 8000 5100 50  0001 C CNN
F 1 "GND" H 8000 5200 50  0000 C CNN
F 2 "" H 8000 5350 50  0000 C CNN
F 3 "" H 8000 5350 50  0000 C CNN
	1    8000 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5350 8000 5300
Text Label 8000 4950 0    50   ~ 0
OD
Wire Wire Line
	8000 4950 8000 5000
$Comp
L open-automation:R_47.5k R32
U 1 1 5CC79680
P 3400 3700
F 0 "R32" V 3400 3650 50  0000 L CNN
F 1 "R_47.5k" V 3500 3600 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 3330 3700 50  0001 C CNN
F 3 "" V 3480 3700 50  0001 C CNN
F 4 "ERJ-3EKF4752V" V 3580 3800 60  0001 C CNN "Part Number"
	1    3400 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C29
U 1 1 5CC7B01E
P 7150 2000
F 0 "C29" H 7050 1900 50  0000 L CNN
F 1 "470uF" H 6900 2100 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7188 1850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rubycon/16YXJ470M8X11.5/1189-1146-ND/3134104" H 7150 2000 50  0001 C CNN
F 4 "16YXJ470M8X11.5" H 7150 2000 60  0001 C CNN "Part Number"
	1    7150 2000
	1    0    0    1   
$EndComp
$Comp
L open-automation:GND #PWR0157
U 1 1 5CBD5444
P 3450 4950
F 0 "#PWR0157" H 3450 4700 50  0001 C CNN
F 1 "GND" H 3450 4800 50  0000 C CNN
F 2 "" H 3450 4950 50  0000 C CNN
F 3 "" H 3450 4950 50  0000 C CNN
	1    3450 4950
	1    0    0    -1  
$EndComp
$Comp
L open-automation:AudioJack4_TTRS J8
U 1 1 5CBF7E66
P 3200 4700
F 0 "J8" H 3200 4900 50  0000 C CNN
F 1 "AudioJack4_TTRS" H 3157 4934 50  0001 C CNN
F 2 "open-automation:AudioConn-SJ1-2503A" H 3150 4150 50  0001 C CNN
F 3 "https://www.cui.com/product/resource/sj1-2503a.pdf" H 3200 4700 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 2850 4250 50  0001 C CNN "Website"
F 5 "SJ1-2503A" H 3157 4933 50  0001 C CNN "Part Number"
	1    3200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4600 3450 4600
Wire Wire Line
	3450 4900 3400 4900
Text Label 3450 4600 0    50   ~ 0
IN1
Wire Wire Line
	3450 4950 3450 4900
Wire Wire Line
	3400 4700 3450 4700
Wire Wire Line
	3450 4700 3450 4600
Text Label 3450 4800 0    50   ~ 0
IN2
Wire Wire Line
	3450 4800 3400 4800
$Comp
L open-automation:GND #PWR0158
U 1 1 5CC0386A
P 4400 4950
F 0 "#PWR0158" H 4400 4700 50  0001 C CNN
F 1 "GND" H 4400 4800 50  0000 C CNN
F 2 "" H 4400 4950 50  0000 C CNN
F 3 "" H 4400 4950 50  0000 C CNN
	1    4400 4950
	1    0    0    -1  
$EndComp
$Comp
L open-automation:AudioJack4_TTRS J9
U 1 1 5CC0387E
P 4150 4700
F 0 "J9" H 4150 4900 50  0000 C CNN
F 1 "AudioJack4_TTRS" H 4107 4934 50  0001 C CNN
F 2 "open-automation:AudioConn-SJ1-2503A" H 4100 4150 50  0001 C CNN
F 3 "https://www.cui.com/product/resource/sj1-2503a.pdf" H 4150 4700 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 3800 4250 50  0001 C CNN "Website"
F 5 "SJ1-2503A" H 4107 4933 50  0001 C CNN "Part Number"
	1    4150 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4600 4400 4600
Wire Wire Line
	4400 4900 4350 4900
Text Label 4400 4600 0    50   ~ 0
IN3
Wire Wire Line
	4400 4950 4400 4900
Wire Wire Line
	4350 4700 4400 4700
Wire Wire Line
	4400 4700 4400 4600
Text Label 4400 4800 0    50   ~ 0
IN4
Wire Wire Line
	4400 4800 4350 4800
Text Label 5500 3550 2    50   ~ 0
IN1
Text Label 5500 3800 2    50   ~ 0
IN2
Text Label 5500 4050 2    50   ~ 0
IN3
Text Label 5500 4300 2    50   ~ 0
IN4
Text Label 3650 3300 0    50   ~ 0
STBY
Wire Wire Line
	3550 3700 3650 3700
Text HLabel 3850 2500 0    60   Input ~ 0
LR_AUDIO_OUT+
Text HLabel 3850 2700 0    60   Input ~ 0
RR_AUDIO_OUT+
Text HLabel 3850 2000 0    60   Input ~ 0
LF_AUDIO_OUT-
Text HLabel 3850 2200 0    60   Input ~ 0
RF_AUDIO_OUT-
Text HLabel 3850 2300 0    60   Input ~ 0
RF_AUDIO_OUT+
Text HLabel 3850 2600 0    60   Input ~ 0
RR_AUDIO_OUT-
Text HLabel 3850 2100 0    60   Input ~ 0
LF_AUDIO_OUT+
Text HLabel 3850 2400 0    60   Input ~ 0
LR_AUDIO_OUT-
Wire Wire Line
	3900 2700 3850 2700
Wire Wire Line
	3850 2600 3900 2600
Wire Wire Line
	3900 2500 3850 2500
Wire Wire Line
	3850 2400 3900 2400
Wire Wire Line
	3900 2300 3850 2300
Wire Wire Line
	3850 2200 3900 2200
Wire Wire Line
	3900 2100 3850 2100
Wire Wire Line
	3850 2000 3900 2000
Text Label 3900 2000 0    50   ~ 0
OUT1-
Text Label 3900 2100 0    50   ~ 0
OUT1+
Text Label 3900 2200 0    50   ~ 0
OUT2-
Text Label 3900 2300 0    50   ~ 0
OUT2+
Text Label 3900 2400 0    50   ~ 0
OUT3-
Text Label 3900 2500 0    50   ~ 0
OUT3+
Text Label 3900 2600 0    50   ~ 0
OUT4-
Text Label 3900 2700 0    50   ~ 0
OUT4+
Text Label 8350 3050 0    50   ~ 0
OUT1-
Text Label 8350 3150 0    50   ~ 0
OUT1+
Text Label 8350 3250 0    50   ~ 0
OUT2-
Text Label 8350 3350 0    50   ~ 0
OUT2+
Text Label 8350 3450 0    50   ~ 0
OUT3-
Text Label 8350 3550 0    50   ~ 0
OUT3+
Text Label 8350 3650 0    50   ~ 0
OUT4-
Text Label 8350 3750 0    50   ~ 0
OUT4+
Text HLabel 2400 2050 0    60   Input ~ 0
AUDIO_STBY
Text Label 2450 2050 0    50   ~ 0
STBY
Wire Wire Line
	2400 2050 2450 2050
Text HLabel 2400 2150 0    60   Input ~ 0
MUTE_AUDIO
Text Label 2450 2150 0    50   ~ 0
MUTE
Wire Wire Line
	2400 2150 2450 2150
Text Label 3150 3300 2    50   ~ 0
STBY
Wire Wire Line
	3200 3300 3150 3300
Wire Wire Line
	3600 3300 3750 3300
Text Label 3200 3700 2    50   ~ 0
MUTE
Text HLabel 2400 2250 0    60   Input ~ 0
AUDIO_POWER
Text Label 2450 2250 0    50   ~ 0
POWER
Wire Wire Line
	2400 2250 2450 2250
$Comp
L open-automation:GND #PWR0159
U 1 1 5CC0A9BD
P 7150 2200
F 0 "#PWR0159" H 7150 1950 50  0001 C CNN
F 1 "GND" H 7150 2050 50  0000 C CNN
F 2 "" H 7150 2200 50  0000 C CNN
F 3 "" H 7150 2200 50  0000 C CNN
	1    7150 2200
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0160
U 1 1 5CC0C325
P 7800 2200
F 0 "#PWR0160" H 7800 1950 50  0001 C CNN
F 1 "GND" H 7800 2050 50  0000 C CNN
F 2 "" H 7800 2200 50  0000 C CNN
F 3 "" H 7800 2200 50  0000 C CNN
	1    7800 2200
	1    0    0    -1  
$EndComp
Text Label 7400 1850 2    50   ~ 0
POWER
Wire Wire Line
	7150 2200 7150 2150
Wire Wire Line
	7500 2200 7500 2150
Wire Wire Line
	7500 1850 7150 1850
Wire Wire Line
	7800 1850 7500 1850
Connection ~ 7500 1850
Wire Wire Line
	7800 2150 7800 2200
$Comp
L open-automation:CONN_01X04 P2
U 1 1 5CC11BC9
P 3900 5650
F 0 "P2" H 3900 5900 50  0000 C CNN
F 1 "CONN_01X04" H 3750 5400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3800 5800 50  0001 C CNN
F 3 "" H 3900 5650 50  0000 C CNN
	1    3900 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 5500 4100 5500
Wire Wire Line
	4150 5600 4100 5600
Wire Wire Line
	4150 5800 4100 5800
Text Label 4150 5500 0    50   ~ 0
IN1
Text Label 4150 5600 0    50   ~ 0
IN2
Text Label 4150 5800 0    50   ~ 0
IN4
Text Label 4150 5700 0    50   ~ 0
IN3
Wire Wire Line
	4150 5700 4100 5700
Wire Wire Line
	6750 3150 6750 3050
Wire Wire Line
	6750 3050 6800 3050
$EndSCHEMATC
