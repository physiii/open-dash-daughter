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
L Interface_CAN_LIN:MCP2551-I-SN U?
U 1 1 5AD6C5A2
P 5825 2950
F 0 "U?" H 5950 3375 50  0000 C CNN
F 1 "MCP2551-I_SN" H 6200 3300 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5825 2450 50  0001 C CIN
F 3 "https://www.digikey.com/product-detail/en/microchip-technology/MCP2551-I-SN/MCP2551-I-SN-ND/509452" H 5825 2950 50  0001 C CNN
F 4 "MCP2551-I/SN" H 5825 2950 50  0001 C CNN "Part Number"
	1    5825 2950
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2515-EST U?
U 1 1 5AD6C74D
P 3350 3450
F 0 "U?" H 3450 4300 50  0000 C CNN
F 1 "MCP2515-E_ST" H 3700 4225 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-20_4.4x6.5mm_Pitch0.65mm" H 3350 2550 50  0001 C CIN
F 3 "https://www.digikey.com/product-detail/en/microchip-technology/MCP2515-I-ST/MCP2515-I-ST-ND/593002" H 3450 2650 50  0001 C CNN
F 4 "MCP2515-I/ST" H 3350 3450 50  0001 C CNN "Part Number"
	1    3350 3450
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_10k R?
U 1 1 5AD70852
P 5100 3325
F 0 "R?" H 5170 3371 50  0000 L CNN
F 1 "4.7k" H 5170 3280 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 5030 3325 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-074K7L/311-4.7KGRCT-ND/729732" V 5180 3325 50  0001 C CNN
F 4 "RC0603JR-074K7L" H 5100 3325 50  0001 C CNN "Part Number"
	1    5100 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	5825 3350 5825 3525
Wire Wire Line
	5325 3150 5100 3150
Wire Wire Line
	5100 3150 5100 3175
Wire Wire Line
	5100 3475 5100 3525
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
L open-automation:R_10k R?
U 1 1 5AD72887
P 7100 3275
F 0 "R?" H 7170 3321 50  0000 L CNN
F 1 "100" H 7170 3230 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 7030 3275 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-07100RL/311-100GRCT-ND/729644" V 7180 3275 50  0001 C CNN
F 4 "RC0603JR-07100RL" H 7100 3275 50  0001 C CNN "Part Number"
	1    7100 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3500 7100 3425
$Comp
L Device:C C?
U 1 1 5AD73AF7
P 6650 3650
F 0 "C?" H 6375 3700 50  0000 L CNN
F 1 "560pF" H 6325 3625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6688 3500 50  0001 C CNN
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
L Power_Protection:SP0502BAHT D?
U 1 1 5AD76474
P 7850 3350
F 0 "D?" H 8055 3396 50  0000 L CNN
F 1 "PESD1CAN" H 8055 3305 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70" H 8075 3300 50  0001 L CNN
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
Text Label 8275 2850 0    50   ~ 0
CAN_H
Text Label 8275 3050 0    50   ~ 0
CAN_L
Wire Wire Line
	6650 3875 7100 3875
Connection ~ 7100 3875
Wire Wire Line
	7100 3875 7850 3875
Wire Wire Line
	7850 3875 7850 3550
NoConn ~ 2750 3850
NoConn ~ 3950 3550
NoConn ~ 3950 3650
NoConn ~ 3950 3750
NoConn ~ 3950 3850
NoConn ~ 3950 3950
Wire Wire Line
	3350 4250 3350 4350
$Comp
L power:GND #PWR0106
U 1 1 5AD7FB4B
P 3350 4350
F 0 "#PWR0106" H 3350 4100 50  0001 C CNN
F 1 "GND" H 3355 4177 50  0000 C CNN
F 2 "" H 3350 4350 50  0000 C CNN
F 3 "" H 3350 4350 50  0000 C CNN
	1    3350 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5AD7FDFC
P 3175 2200
F 0 "C?" H 2900 2250 50  0000 L CNN
F 1 "0.1uF" H 2875 2175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3213 2050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 3175 2200 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 3175 2200 50  0001 C CNN "Part Number"
	1    3175 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5AD7FE03
P 3175 2425
F 0 "#PWR0107" H 3175 2175 50  0001 C CNN
F 1 "GND" H 3180 2252 50  0000 C CNN
F 2 "" H 3175 2425 50  0000 C CNN
F 3 "" H 3175 2425 50  0000 C CNN
	1    3175 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 2050 3175 2000
Wire Wire Line
	3350 2000 3350 2650
Wire Wire Line
	2975 2000 3175 2000
Connection ~ 3175 2000
Text HLabel 2975 2000 0    50   Input ~ 0
5V
Wire Wire Line
	3175 2000 3350 2000
$Comp
L Device:Crystal_Small Y?
U 1 1 5AD8276F
P 2300 3650
F 0 "Y?" V 2254 3738 50  0000 L CNN
F 1 "16MHz" V 2345 3738 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_HC49-SD_HandSoldering" H 2300 3650 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/abracon-llc/ABLS-16.000MHZ-B4-T/535-10226-2-ND/2184169" H 2300 3650 50  0001 C CNN
F 4 "ABLS-16.000MHZ-B4-T" V 2300 3650 50  0001 C CNN "Part Number"
	1    2300 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 3650 2750 3650
$Comp
L Device:C C?
U 1 1 5AD85611
P 2000 3500
F 0 "C?" H 1725 3550 50  0000 L CNN
F 1 "22pF" H 1700 3475 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2038 3350 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10C220JB8NFNC/1276-2228-1-ND/3890314" H 2000 3500 50  0001 C CNN
F 4 "CL10C220JB8NFNC" H 2000 3500 50  0001 C CNN "Part Number"
	1    2000 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 3825 2300 3825
Wire Wire Line
	2300 3750 2300 3825
Wire Wire Line
	2150 3500 2300 3500
Wire Wire Line
	2650 3500 2650 3650
Wire Wire Line
	2300 3550 2300 3500
Connection ~ 2300 3500
Wire Wire Line
	2300 3500 2650 3500
Wire Wire Line
	2300 3825 2650 3825
Wire Wire Line
	2650 3825 2650 3750
Wire Wire Line
	2650 3750 2750 3750
Connection ~ 2300 3825
Wire Wire Line
	1850 3500 1725 3500
Wire Wire Line
	1725 3500 1725 3825
Wire Wire Line
	1850 3825 1725 3825
Connection ~ 1725 3825
Wire Wire Line
	1725 3825 1725 3925
Wire Wire Line
	3950 4050 4175 4050
Wire Wire Line
	2750 3150 2550 3150
Wire Wire Line
	2750 3050 2550 3050
Wire Wire Line
	2750 2950 2550 2950
Wire Wire Line
	2750 2850 2550 2850
Text HLabel 2550 2850 0    50   Input ~ 0
MOSI
Text HLabel 2550 2950 0    50   Input ~ 0
MISO
Text HLabel 2550 3050 0    50   Input ~ 0
CAN_CS
Text HLabel 2550 3150 0    50   Input ~ 0
SPI_SCK
Text HLabel 4175 4050 2    50   Input ~ 0
CAN_RESET
Wire Wire Line
	3950 3450 4175 3450
Text HLabel 4175 3450 2    50   Input ~ 0
CAN_INT
Wire Wire Line
	3950 2950 4625 2950
Wire Wire Line
	4625 2950 4625 2750
Wire Wire Line
	3950 2850 5325 2850
Wire Wire Line
	4625 2750 5325 2750
$Comp
L open-automation:R_10k R?
U 1 1 5ADA3415
P 6650 3275
F 0 "R?" H 6720 3321 50  0000 L CNN
F 1 "100" H 6720 3230 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 6580 3275 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-07100RL/311-100GRCT-ND/729644" V 6730 3275 50  0001 C CNN
F 4 "RC0603JR-07100RL" H 6650 3275 50  0001 C CNN "Part Number"
	1    6650 3275
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ADA50A9
P 5650 2100
F 0 "C?" H 5375 2150 50  0000 L CNN
F 1 "0.1uF" H 5350 2075 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5688 1950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 5650 2100 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 5650 2100 50  0001 C CNN "Part Number"
	1    5650 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ADA5772
P 7100 3650
F 0 "C?" H 6825 3700 50  0000 L CNN
F 1 "560pF" H 6775 3625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7138 3500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B561KB8NNNC/1276-1278-1-ND/3889364" H 7100 3650 50  0001 C CNN
F 4 "CL10B561KB8NNNC" H 7100 3650 50  0001 C CNN "Part Number"
	1    7100 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ADA6ADD
P 2000 3825
F 0 "C?" H 1725 3875 50  0000 L CNN
F 1 "22pF" H 1700 3800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2038 3675 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10C220JB8NFNC/1276-2228-1-ND/3890314" H 2000 3825 50  0001 C CNN
F 4 "CL10C220JB8NFNC" H 2000 3825 50  0001 C CNN "Part Number"
	1    2000 3825
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ADD5FFD
P 1725 3925
F 0 "#PWR?" H 1725 3675 50  0001 C CNN
F 1 "GND" H 1730 3752 50  0000 C CNN
F 2 "" H 1725 3925 50  0001 C CNN
F 3 "" H 1725 3925 50  0001 C CNN
	1    1725 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 2350 3175 2425
$Comp
L power:GND #PWR?
U 1 1 5ADD74BB
P 5100 3525
F 0 "#PWR?" H 5100 3275 50  0001 C CNN
F 1 "GND" H 5105 3352 50  0000 C CNN
F 2 "" H 5100 3525 50  0001 C CNN
F 3 "" H 5100 3525 50  0001 C CNN
	1    5100 3525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ADD757D
P 5825 3525
F 0 "#PWR?" H 5825 3275 50  0001 C CNN
F 1 "GND" H 5830 3352 50  0000 C CNN
F 2 "" H 5825 3525 50  0001 C CNN
F 3 "" H 5825 3525 50  0001 C CNN
	1    5825 3525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ADD7680
P 7100 3875
F 0 "#PWR?" H 7100 3625 50  0001 C CNN
F 1 "GND" H 7105 3702 50  0000 C CNN
F 2 "" H 7100 3875 50  0001 C CNN
F 3 "" H 7100 3875 50  0001 C CNN
	1    7100 3875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ADD76B3
P 5650 2325
F 0 "#PWR?" H 5650 2075 50  0001 C CNN
F 1 "GND" H 5655 2152 50  0000 C CNN
F 2 "" H 5650 2325 50  0001 C CNN
F 3 "" H 5650 2325 50  0001 C CNN
	1    5650 2325
	1    0    0    -1  
$EndComp
$EndSCHEMATC
