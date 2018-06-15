EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 5 13
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
L Interface_CAN_LIN:MCP2551-I-SN U8
U 1 1 5AD6C5A2
P 5825 2950
F 0 "U8" H 5950 3375 50  0000 C CNN
F 1 "MCP2551-I_SN" H 6200 3300 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5825 2450 50  0001 C CIN
F 3 "https://www.digikey.com/product-detail/en/microchip-technology/MCP2551-I-SN/MCP2551-I-SN-ND/509452" H 5825 2950 50  0001 C CNN
F 4 "MCP2551-I/SN" H 5825 2950 50  0001 C CNN "Part Number"
	1    5825 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5825 3350 5825 3525
NoConn ~ 5325 3050
Wire Wire Line
	5650 2325 5650 2250
Wire Wire Line
	5650 1950 5650 1900
Wire Wire Line
	5825 1900 5825 2550
Wire Wire Line
	5450 1900 5650 1900
Connection ~ 5650 1900
Text HLabel 5450 1900 0    50   Input ~ 0
5V
Wire Wire Line
	5650 1900 5825 1900
$Comp
L open-automation:R_10k R20
U 1 1 5AD72887
P 7100 3275
F 0 "R20" H 7170 3321 50  0000 L CNN
F 1 "100" H 7170 3230 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 7030 3275 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-07100RL/311-100GRCT-ND/729644" V 7180 3275 50  0001 C CNN
F 4 "RC0603JR-07100RL" H 7100 3275 50  0001 C CNN "Part Number"
	1    7100 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3500 7100 3425
$Comp
L Device:C C16
U 1 1 5AD73AF7
P 6650 3650
F 0 "C16" H 6375 3700 50  0000 L CNN
F 1 "560pF" H 6325 3625 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 6688 3500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B561KB8NNNC/1276-1278-1-ND/3889364" H 6650 3650 50  0001 C CNN
F 4 "CL10B561KB8NNNC" H 6650 3650 50  0001 C CNN "Part Number"
	1    6650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3875 6650 3800
Wire Wire Line
	6650 3500 6650 3425
Wire Wire Line
	6650 3125 6650 3050
$Comp
L Power_Protection:SP0502BAHT D7
U 1 1 5AD76474
P 7850 3350
F 0 "D7" H 8055 3396 50  0000 L CNN
F 1 "PESD1CAN" H 8055 3305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70_Handsoldering" H 8075 3300 50  0001 L CNN
F 3 "https://www.digikey.com/product-detail/en/nexperia-usa-inc/PESD1CAN-UX/1727-1306-1-ND/4386316" H 7975 3475 50  0001 C CNN
F 4 "PESD1CAN-UX" H 7850 3350 50  0001 C CNN "Part Number"
	1    7850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3800 7100 3875
Wire Wire Line
	7100 2850 7100 3125
Wire Wire Line
	7950 2850 7950 3150
Wire Wire Line
	7750 3050 7750 3150
Wire Wire Line
	7750 3050 8275 3050
Connection ~ 7750 3050
Wire Wire Line
	7950 2850 8275 2850
Connection ~ 7950 2850
Wire Wire Line
	6650 3050 7750 3050
Wire Wire Line
	7100 2850 7950 2850
Wire Wire Line
	7100 2850 6325 2850
Connection ~ 7100 2850
Wire Wire Line
	6325 3050 6650 3050
Connection ~ 6650 3050
Wire Wire Line
	6650 3875 7100 3875
Connection ~ 7100 3875
Wire Wire Line
	7100 3875 7850 3875
Wire Wire Line
	7850 3875 7850 3550
$Comp
L open-automation:R_10k R19
U 1 1 5ADA3415
P 6650 3275
F 0 "R19" H 6720 3321 50  0000 L CNN
F 1 "100" H 6720 3230 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6580 3275 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-07100RL/311-100GRCT-ND/729644" V 6730 3275 50  0001 C CNN
F 4 "RC0603JR-07100RL" H 6650 3275 50  0001 C CNN "Part Number"
	1    6650 3275
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5ADA5772
P 7100 3650
F 0 "C17" H 6825 3700 50  0000 L CNN
F 1 "560pF" H 6775 3625 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7138 3500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B561KB8NNNC/1276-1278-1-ND/3889364" H 7100 3650 50  0001 C CNN
F 4 "CL10B561KB8NNNC" H 7100 3650 50  0001 C CNN "Part Number"
	1    7100 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5ADD74BB
P 5100 3600
F 0 "#PWR032" H 5100 3350 50  0001 C CNN
F 1 "GND" H 5105 3427 50  0000 C CNN
F 2 "" H 5100 3600 50  0001 C CNN
F 3 "" H 5100 3600 50  0001 C CNN
	1    5100 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5ADD757D
P 5825 3525
F 0 "#PWR034" H 5825 3275 50  0001 C CNN
F 1 "GND" H 5830 3352 50  0000 C CNN
F 2 "" H 5825 3525 50  0001 C CNN
F 3 "" H 5825 3525 50  0001 C CNN
	1    5825 3525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 5ADD7680
P 7100 3875
F 0 "#PWR035" H 7100 3625 50  0001 C CNN
F 1 "GND" H 7105 3702 50  0000 C CNN
F 2 "" H 7100 3875 50  0001 C CNN
F 3 "" H 7100 3875 50  0001 C CNN
	1    7100 3875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5ADD76B3
P 5650 2325
F 0 "#PWR033" H 5650 2075 50  0001 C CNN
F 1 "GND" H 5655 2152 50  0000 C CNN
F 2 "" H 5650 2325 50  0001 C CNN
F 3 "" H 5650 2325 50  0001 C CNN
	1    5650 2325
	1    0    0    -1  
$EndComp
Text HLabel 5250 2850 0    50   Input ~ 0
CAN_RX
Text HLabel 5255 2750 0    50   Input ~ 0
CAN_TX
Wire Wire Line
	5250 2850 5325 2850
Wire Wire Line
	5255 2750 5325 2750
Text HLabel 8275 3050 2    50   Input ~ 0
CAN-
Text HLabel 8275 2850 2    50   Input ~ 0
CAN+
$Comp
L open-automation:C_0.1uF C15
U 1 1 5B19B412
P 5650 2100
F 0 "C15" H 5765 2146 50  0000 L CNN
F 1 "C_0.1uF" H 5765 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 5750 2400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 5650 1850 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 5775 2300 60  0001 C CNN "Part Number"
	1    5650 2100
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_4K7 R18
U 1 1 5B29BD7E
P 5100 3400
F 0 "R18" V 5029 3470 50  0000 L CNN
F 1 "R_4K7" V 5120 3470 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 5075 3225 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-3GEYJ472V/P4.7KGCT-ND/135199" H 5100 3150 50  0001 C CNN
F 4 "ERJ-3GEYJ472V" H 5100 3475 60  0001 C CNN "Part Number"
	1    5100 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	5325 3150 5100 3150
Wire Wire Line
	5100 3150 5100 3225
Wire Wire Line
	5100 3525 5100 3600
$EndSCHEMATC
