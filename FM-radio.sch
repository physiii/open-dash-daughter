EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 13
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
L open-automation:Si4740 U?
U 1 1 5ADA9622
P 7750 3300
F 0 "U?" H 7950 4050 50  0000 L CNN
F 1 "Si4741" H 7850 3900 50  0000 L CNN
F 2 "MODULE" H 7950 4050 50  0001 C CNN
F 3 "DOCUMENTATION" H 7950 3850 50  0001 C CNN
	1    7750 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 5ADAF1C6
P 2700 1250
F 0 "L?" H 2753 1296 50  0000 L CNN
F 1 "122nH" H 2753 1205 50  0000 L CNN
F 2 "Inductors_SMD:L_0603_HandSoldering" H 2700 1250 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/pulse-electronics-network/PE-0603CD121GTT/1840-1101-1-ND/8120509" H 2700 1250 50  0001 C CNN
F 4 "PE-0603CD121GTT" H 2700 1250 50  0001 C CNN "Part Number"
	1    2700 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 5ADAF260
P 2450 950
F 0 "L?" V 2600 950 50  0000 C CNN
F 1 "33nH" V 2525 950 50  0000 C CNN
F 2 "Inductors_SMD:L_0603_HandSoldering" H 2450 950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/bourns-inc/CW160808-33NJ/CW160808-33NJCT-ND/3767866" H 2450 950 50  0001 C CNN
F 4 "CW160808-33NJ" V 2450 950 50  0001 C CNN "Part Number"
	1    2450 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5ADAF321
P 2050 950
F 0 "C?" V 1798 950 50  0000 C CNN
F 1 "18pF" V 1889 950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2088 800 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-vitramon/VJ0603A180JXACW1BC/720-1524-1-ND/420985" H 2050 950 50  0001 C CNN
F 4 "VJ0603A180JXACW1BC" V 2050 950 50  0001 C CNN "Part Number"
	1    2050 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 950  2700 950 
Wire Wire Line
	2700 950  2700 1100
Connection ~ 2700 950 
Wire Wire Line
	2200 950  2300 950 
$Comp
L open-automation:GND #PWR0109
U 1 1 5ADAF4F6
P 2700 1550
F 0 "#PWR0109" H 2700 1300 50  0001 C CNN
F 1 "GND" H 2705 1377 50  0000 C CNN
F 2 "" H 2700 1550 50  0000 C CNN
F 3 "" H 2700 1550 50  0000 C CNN
	1    2700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1550 2700 1400
Text Label 1550 950  2    50   ~ 0
Antenna
Wire Wire Line
	1550 950  1750 950 
$Comp
L Device:L L?
U 1 1 5ADAF6D2
P 1750 3500
F 0 "L?" H 1803 3546 50  0000 L CNN
F 1 "6.8uH" H 1803 3455 50  0000 L CNN
F 2 "open-automation:Coilcraft_0805PS_Handsoldering" H 1750 3500 50  0001 C CNN
F 3 "https://www.mouser.com/ProductDetail/Coilcraft/0805PS-682KLB?qs=sGAEpiMZZMsg%252by3WlYCkU2kWFds1hA9DACZH0%2fCmx5U%3d" H 1750 3500 50  0001 C CNN
F 4 "Coilcraft" H 1750 3500 50  0001 C CNN "Manufacture"
F 5 "0805PS-682KLB" H 1750 3500 50  0001 C CNN "Part number"
	1    1750 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ADAF7B2
P 1750 4050
F 0 "C?" H 1865 4096 50  0000 L CNN
F 1 "3.9pF" H 1865 4005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1788 3900 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10C3R9CB8NNNC/1276-1146-1-ND/3889232" H 1750 4050 50  0001 C CNN
F 4 "CL10C3R9CB8NNNC" H 1750 4050 50  0001 C CNN "Part Number"
	1    1750 4050
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0110
U 1 1 5ADAF7FC
P 1750 4400
F 0 "#PWR0110" H 1750 4150 50  0001 C CNN
F 1 "GND" H 1755 4227 50  0000 C CNN
F 2 "" H 1750 4400 50  0000 C CNN
F 3 "" H 1750 4400 50  0000 C CNN
	1    1750 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ADAF887
P 2800 3800
F 0 "C?" V 2548 3800 50  0000 C CNN
F 1 "270pF" V 2639 3800 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2838 3650 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C271JAGAC7867/399-14973-1-ND/7382522" H 2800 3800 50  0001 C CNN
F 4 "C0603C271JAGAC7867" V 2800 3800 50  0001 C CNN "Part Number"
	1    2800 3800
	0    1    1    0   
$EndComp
Connection ~ 1750 950 
Wire Wire Line
	1750 950  1900 950 
Wire Wire Line
	1900 3800 1750 3800
Wire Wire Line
	1750 3650 1750 3800
Connection ~ 1750 3800
Wire Wire Line
	1750 3800 1750 3900
Wire Wire Line
	1750 4400 1750 4200
$Comp
L Device:Q_NJFET_SDG Q?
U 1 1 5ADB086B
P 5450 2750
F 0 "Q?" H 5650 2875 50  0000 L CNN
F 1 "Q_NJFET_DGS" H 5650 2800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5650 2850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/nxp-usa-inc/BF861C215/568-6169-1-ND/2531456" H 5450 2750 50  0001 C CNN
F 4 "BF861C,215" H 5450 2750 50  0001 C CNN "Part Number"
	1    5450 2750
	1    0    0    1   
$EndComp
$Comp
L Power_Protection:CM1213A-01SO D?
U 1 1 5ADB0B33
P 4575 4150
F 0 "D?" H 4525 3875 60  0000 R CNN
F 1 "D1213A-01SO-7" H 4525 3975 60  0000 R CNN
F 2 "digikey-footprints:SOT-23-3" H 4775 4350 60  0001 L CNN
F 3 "https://www.digikey.com/product-detail/en/diodes-incorporated/D1213A-01SO-7/D1213A-01SO-7DICT-ND/3340430" H 4775 4450 60  0001 L CNN
F 4 "D1213A-01SO-7" H 4775 4550 60  0001 L CNN "Part Number"
	1    4575 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5ADB0DC5
P 4725 3000
F 0 "C?" V 4473 3000 50  0000 C CNN
F 1 "0.47uF" V 4564 3000 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4763 2850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/CC0603ZRY5V7BB474/311-4116-1-ND/8025205" H 4725 3000 50  0001 C CNN
F 4 "CC0603ZRY5V7BB474" V 4725 3000 50  0001 C CNN "Part Number"
	1    4725 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5ADB0EB9
P 5075 2500
F 0 "R?" H 5145 2546 50  0000 L CNN
F 1 "249" H 5145 2455 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5005 2500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603FR-07249RL/311-249HRCT-ND/730032" H 5075 2500 50  0001 C CNN
F 4 "RC0603FR-07249RL" H 5075 2500 50  0001 C CNN "Part Number"
	1    5075 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5075 2850 5075 2650
Wire Wire Line
	5550 3600 5550 2950
$Comp
L Device:L L?
U 1 1 5ADB26F5
P 5550 4300
F 0 "L?" H 5603 4346 50  0000 L CNN
F 1 "1mH" H 5603 4255 50  0000 L CNN
F 2 "Inductors_SMD:L_7.3x7.3_H4.5" H 5550 4300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/bourns-inc/SRR0745A-102M/SRR0745A-102MCT-ND/5031149" H 5550 4300 50  0001 C CNN
F 4 "SRR0745A-102M" H 5550 4300 50  0001 C CNN "Part Number"
	1    5550 4300
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0114
U 1 1 5ADB27D1
P 5550 4600
F 0 "#PWR0114" H 5550 4350 50  0001 C CNN
F 1 "GND" H 5555 4427 50  0000 C CNN
F 2 "" H 5550 4600 50  0000 C CNN
F 3 "" H 5550 4600 50  0000 C CNN
	1    5550 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4150 5550 4050
Wire Wire Line
	5550 4600 5550 4450
$Comp
L Device:C C?
U 1 1 5ADB2D24
P 6300 4050
F 0 "C?" V 6048 4050 50  0000 C CNN
F 1 "18nF" V 6139 4050 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6338 3900 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B183JB8NNNC/1276-1977-1-ND/3890063" H 6300 4050 50  0001 C CNN
F 4 "CL10B183JB8NNNC" V 6300 4050 50  0001 C CNN "Part Number"
	1    6300 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 4050 5550 4050
Connection ~ 5550 4050
Wire Wire Line
	5550 4050 5550 4000
$Comp
L Device:L L?
U 1 1 5ADB30AA
P 6600 3800
F 0 "L?" H 6653 3846 50  0000 L CNN
F 1 "33uH" H 6653 3755 50  0000 L CNN
F 2 "Inductors_SMD:L_6.3x6.3_H3" H 6600 3800 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/bourns-inc/SRR0604-330KL/SRR0604-330KLCT-ND/2352994" H 6600 3800 50  0001 C CNN
F 4 "SRR0604-330KL" H 6600 3800 50  0001 C CNN "Part Number"
	1    6600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4050 6600 4050
Wire Wire Line
	6600 4050 6600 3950
$Comp
L Device:L L?
U 1 1 5ADB3533
P 5550 2150
F 0 "L?" H 5603 2196 50  0000 L CNN
F 1 "220uH" H 5603 2105 50  0000 L CNN
F 2 "open-automation:Coilcraft_1008PS_Handsoldering" H 5550 2150 50  0001 C CNN
F 3 "https://www.mouser.com/ProductDetail/Coilcraft/1008PS-224KLB?qs=zCSbvcPd3pbbzsho0wjAGQ%3D%3D" H 5550 2150 50  0001 C CNN
F 4 "1008PS-224KLB" H 5550 2150 50  0001 C CNN "Part Number"
	1    5550 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2450 5550 2450
Wire Wire Line
	5550 2450 5550 2550
Wire Wire Line
	5550 2300 5550 2450
Connection ~ 5550 2450
Wire Wire Line
	7000 2550 6600 2550
Wire Wire Line
	6600 2550 6600 3650
Wire Wire Line
	6150 2450 6400 2450
Wire Wire Line
	6400 2450 6400 2850
Wire Wire Line
	6400 2850 7000 2850
$Comp
L open-automation:GND #PWR0115
U 1 1 5ADB4CF2
P 6800 3000
F 0 "#PWR0115" H 6800 2750 50  0001 C CNN
F 1 "GND" H 6805 2827 50  0000 C CNN
F 2 "" H 6800 3000 50  0000 C CNN
F 3 "" H 6800 3000 50  0000 C CNN
	1    6800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3000 6800 2750
Wire Wire Line
	6800 2750 7000 2750
$Comp
L open-automation:GND #PWR0116
U 1 1 5ADB531F
P 6500 2600
F 0 "#PWR0116" H 6500 2350 50  0001 C CNN
F 1 "GND" H 6505 2427 50  0000 C CNN
F 2 "" H 6500 2600 50  0000 C CNN
F 3 "" H 6500 2600 50  0000 C CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2450 6500 2450
Wire Wire Line
	6500 2450 6500 2600
Wire Wire Line
	1750 950  1750 3350
Wire Wire Line
	7000 2350 6400 2350
Wire Wire Line
	6400 2350 6400 950 
Wire Wire Line
	6400 950  3800 950 
Wire Wire Line
	5550 2000 5550 1900
Wire Wire Line
	5550 1900 5650 1900
Wire Wire Line
	5550 1900 5550 1500
Wire Wire Line
	5550 1500 5650 1500
Connection ~ 5550 1900
$Comp
L open-automation:GND #PWR0119
U 1 1 5ADBBCBC
P 6200 1950
F 0 "#PWR0119" H 6200 1700 50  0001 C CNN
F 1 "GND" H 6205 1777 50  0000 C CNN
F 2 "" H 6200 1950 50  0000 C CNN
F 3 "" H 6200 1950 50  0000 C CNN
	1    6200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1900 6200 1900
Wire Wire Line
	6200 1900 6200 1950
Wire Wire Line
	5950 1500 6200 1500
Wire Wire Line
	6200 1500 6200 1900
Connection ~ 6200 1900
Text HLabel 4875 1500 0    50   Input ~ 0
3v3
$Comp
L Device:R R?
U 1 1 5ADBD513
P 5325 1500
F 0 "R?" H 5395 1546 50  0000 L CNN
F 1 "10" H 5395 1455 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5255 1500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603FR-0710RL/311-10.0HRDKR-ND/732773" H 5325 1500 50  0001 C CNN
F 4 "RC0603FR-0710RL" H 5325 1500 50  0001 C CNN "Part Number"
	1    5325 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 1500 5475 1500
Connection ~ 5550 1500
NoConn ~ 7000 2650
NoConn ~ 7750 1650
NoConn ~ 7850 1650
NoConn ~ 7950 1650
Text HLabel 10750 2350 2    50   Input ~ 0
3v3
$Comp
L open-automation:GND #PWR0120
U 1 1 5ADC27BB
P 10450 2850
F 0 "#PWR0120" H 10450 2600 50  0001 C CNN
F 1 "GND" H 10455 2677 50  0000 C CNN
F 2 "" H 10450 2850 50  0000 C CNN
F 3 "" H 10450 2850 50  0000 C CNN
	1    10450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2500 9650 2450
Wire Wire Line
	9650 2450 8950 2450
NoConn ~ 8950 2850
NoConn ~ 8950 2750
NoConn ~ 8250 1650
Wire Wire Line
	7850 3600 7850 3550
Text HLabel 7950 4300 3    50   Input ~ 0
SCL
Text HLabel 8175 4300 3    50   Input ~ 0
SDA
Text HLabel 9900 3600 2    50   Input ~ 0
LOUT
Text HLabel 9900 3200 2    50   Input ~ 0
ROUT
Text HLabel 8150 1500 1    50   Input ~ 0
FM_INT
Wire Wire Line
	8150 1650 8150 1500
Wire Wire Line
	10750 2350 10450 2350
Wire Wire Line
	10450 2350 10450 2450
Wire Wire Line
	10450 2750 10450 2850
$Comp
L open-automation:GND #PWR?
U 1 1 5ADEBD94
P 9650 2500
F 0 "#PWR?" H 9650 2250 50  0001 C CNN
F 1 "GND" H 9655 2327 50  0000 C CNN
F 2 "" H 9650 2500 50  0000 C CNN
F 3 "" H 9650 2500 50  0000 C CNN
	1    9650 2500
	1    0    0    -1  
$EndComp
Connection ~ 10450 2350
Wire Wire Line
	8950 2350 10000 2350
$Comp
L open-automation:GND #PWR?
U 1 1 5ADED5D4
P 10000 2850
F 0 "#PWR?" H 10000 2600 50  0001 C CNN
F 1 "GND" H 10005 2677 50  0000 C CNN
F 2 "" H 10000 2850 50  0000 C CNN
F 3 "" H 10000 2850 50  0000 C CNN
	1    10000 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5ADED5DA
P 10000 2600
F 0 "C?" H 9885 2554 50  0000 R CNN
F 1 "22nF" H 9885 2645 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10038 2450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B223KA8NNWC/1276-2000-1-ND/3890086" H 10000 2600 50  0001 C CNN
F 4 "CL10B223KA8NNWC" H 10000 2600 50  0001 C CNN "Part Number"
	1    10000 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 2750 10000 2850
Wire Wire Line
	10000 2450 10000 2350
Connection ~ 10000 2350
Wire Wire Line
	10000 2350 10450 2350
Wire Wire Line
	8050 3550 8050 3700
Wire Wire Line
	8050 3700 8175 3700
Wire Wire Line
	8175 4100 8175 4300
Wire Wire Line
	7950 4300 7950 4100
$Comp
L Device:C C?
U 1 1 5ADFB03B
P 9550 3200
F 0 "C?" V 9298 3200 50  0000 C CNN
F 1 "0.39uF" V 9389 3200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9588 3050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/murata-electronics-north-america/GRM188R71C394KA88D/490-6428-1-ND/3845625" H 9550 3200 50  0001 C CNN
F 4 "GRM188R71C394KA88D" V 9550 3200 50  0001 C CNN "Part Number"
	1    9550 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	9900 3200 9700 3200
Wire Wire Line
	9700 3600 9900 3600
Wire Wire Line
	9250 2550 9250 3200
Wire Wire Line
	9250 3200 9400 3200
Wire Wire Line
	8950 2550 9250 2550
Wire Wire Line
	9400 3600 9150 3600
Wire Wire Line
	9150 3600 9150 2650
Wire Wire Line
	8950 2650 9150 2650
Text Notes 1100 850  0    50   ~ 0
22pF Whip antenna\n
Wire Notes Line
	1450 3200 1450 4700
Wire Notes Line
	1450 4700 2200 4700
Wire Notes Line
	2200 4700 2200 3200
Wire Notes Line
	2200 3200 1450 3200
Text Notes 1450 3200 0    50   ~ 0
FM Intrusion FIlter\n
$Comp
L Device:C C?
U 1 1 5AE1B9E5
P 3825 4625
F 0 "C?" H 3710 4579 50  0000 R CNN
F 1 "1200pF" H 3710 4670 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3863 4475 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B122KB8NNNC/1276-1951-1-ND/3890037" H 3825 4625 50  0001 C CNN
F 4 "CL10B122KB8NNNC" H 3825 4625 50  0001 C CNN "Part Number"
	1    3825 4625
	-1   0    0    1   
$EndComp
Wire Wire Line
	3825 4475 3825 3800
Wire Wire Line
	7750 4100 7750 4300
Text HLabel 7750 4300 3    50   Input ~ 0
FM_RADIO_RST
Text Notes 7800 4600 0    50   ~ 0
i2c add: 0010001x
$Comp
L open-automation:GND #PWR?
U 1 1 5AE4AD4A
P 7850 3600
F 0 "#PWR?" H 7850 3350 50  0001 C CNN
F 1 "GND" H 7855 3427 50  0000 C CNN
F 2 "" H 7850 3600 50  0000 C CNN
F 3 "" H 7850 3600 50  0000 C CNN
	1    7850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3550 7750 3800
Wire Wire Line
	7950 3550 7950 3800
Wire Wire Line
	8175 3700 8175 3800
Text HLabel 9925 3875 2    50   Input ~ 0
3v3
$Comp
L open-automation:GND #PWR?
U 1 1 5AE0458E
P 9625 4375
F 0 "#PWR?" H 9625 4125 50  0001 C CNN
F 1 "GND" H 9630 4202 50  0000 C CNN
F 2 "" H 9625 4375 50  0000 C CNN
F 3 "" H 9625 4375 50  0000 C CNN
	1    9625 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	9925 3875 9625 3875
Wire Wire Line
	9625 3875 9625 3975
Wire Wire Line
	9625 4275 9625 4375
Connection ~ 9625 3875
$Comp
L open-automation:GND #PWR?
U 1 1 5AE045A0
P 9175 4375
F 0 "#PWR?" H 9175 4125 50  0001 C CNN
F 1 "GND" H 9180 4202 50  0000 C CNN
F 2 "" H 9175 4375 50  0000 C CNN
F 3 "" H 9175 4375 50  0000 C CNN
	1    9175 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	9175 4275 9175 4375
Wire Wire Line
	9175 3975 9175 3875
Wire Wire Line
	9175 3875 9625 3875
Wire Wire Line
	8250 3550 9025 3550
Wire Wire Line
	9025 3550 9025 3875
Wire Wire Line
	9025 3875 9175 3875
Connection ~ 9175 3875
Wire Wire Line
	8150 3550 8150 3625
Wire Wire Line
	8150 3625 8625 3625
Wire Wire Line
	8625 3625 8625 4150
Text Notes 8725 4000 3    50   ~ 0
TODO: 32.768kHZ oscillaotr if needed?
$Comp
L Device:R R?
U 1 1 5AE23446
P 3475 4200
F 0 "R?" H 3545 4246 50  0000 L CNN
F 1 "10M" H 3545 4155 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3405 4200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710ML/311-10MGRCT-ND/729648" H 3475 4200 50  0001 C CNN
F 4 "RC0603JR-0710ML" H 3475 4200 50  0001 C CNN "Part Number"
	1    3475 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3475 4050 3475 3800
Wire Wire Line
	3475 4350 3475 4475
$Comp
L open-automation:GND #PWR?
U 1 1 5AE2977B
P 3475 4475
F 0 "#PWR?" H 3475 4225 50  0001 C CNN
F 1 "GND" H 3480 4302 50  0000 C CNN
F 2 "" H 3475 4475 50  0000 C CNN
F 3 "" H 3475 4475 50  0000 C CNN
	1    3475 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1650 8050 1475
Text Label 8050 1475 1    50   ~ 0
am_passive_ant_en
Wire Wire Line
	2925 5850 2675 5850
Text Label 1375 5850 2    50   ~ 0
am_passive_ant_en
Wire Wire Line
	3825 6050 3825 6275
$Comp
L open-automation:GND #PWR?
U 1 1 5AE4F967
P 3825 6275
F 0 "#PWR?" H 3825 6025 50  0001 C CNN
F 1 "GND" H 3830 6102 50  0000 C CNN
F 2 "" H 3825 6275 50  0000 C CNN
F 3 "" H 3825 6275 50  0000 C CNN
	1    3825 6275
	1    0    0    -1  
$EndComp
Connection ~ 3825 3800
$Comp
L Device:R R?
U 1 1 5AE6355B
P 1650 5500
F 0 "R?" V 1443 5500 50  0000 C CNN
F 1 "4.7k" V 1534 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1580 5500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-074K7L/311-4.7KGRCT-ND/729732" H 1650 5500 50  0001 C CNN
F 4 "RC0603JR-074K7L" V 1650 5500 50  0001 C CNN "Part Number"
	1    1650 5500
	-1   0    0    -1  
$EndComp
Text HLabel 1650 5075 1    50   Input ~ 0
3v3
Wire Wire Line
	3825 4775 3825 5650
Wire Wire Line
	4875 1500 5075 1500
Wire Wire Line
	5075 1500 5075 2350
Connection ~ 5075 1500
Wire Wire Line
	5075 1500 5175 1500
Wire Wire Line
	4725 2850 4725 2750
Wire Wire Line
	4725 2750 5250 2750
Wire Wire Line
	4725 3150 4725 3250
Wire Wire Line
	4725 3250 5075 3250
Wire Wire Line
	5075 3150 5075 3250
$Comp
L open-automation:GND #PWR?
U 1 1 5AEDE11C
P 5075 3300
F 0 "#PWR?" H 5075 3050 50  0001 C CNN
F 1 "GND" H 5080 3127 50  0000 C CNN
F 2 "" H 5075 3300 50  0000 C CNN
F 3 "" H 5075 3300 50  0000 C CNN
	1    5075 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5075 3300 5075 3250
Connection ~ 5075 3250
$Comp
L Device:R R?
U 1 1 5AEE4932
P 5075 3000
F 0 "R?" H 5145 3046 50  0000 L CNN
F 1 "249" H 5145 2955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5005 3000 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603FR-07249RL/311-249HRCT-ND/730032" H 5075 3000 50  0001 C CNN
F 4 "RC0603FR-07249RL" H 5075 3000 50  0001 C CNN "Part Number"
	1    5075 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5AEE5173
P 7750 3950
F 0 "R?" H 7820 3996 50  0000 L CNN
F 1 "2k" H 7820 3905 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7680 3950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-072KL/311-2.0KGRCT-ND/729673" H 7750 3950 50  0001 C CNN
F 4 "RC0603JR-072KL" H 7750 3950 50  0001 C CNN "Part Number"
	1    7750 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5AEE8E2A
P 7950 3950
F 0 "R?" H 8020 3996 50  0000 L CNN
F 1 "2k" H 8020 3905 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7880 3950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-072KL/311-2.0KGRCT-ND/729673" H 7950 3950 50  0001 C CNN
F 4 "RC0603JR-072KL" H 7950 3950 50  0001 C CNN "Part Number"
	1    7950 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5AEE8E98
P 8175 3950
F 0 "R?" H 8245 3996 50  0000 L CNN
F 1 "2k" H 8245 3905 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8105 3950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-072KL/311-2.0KGRCT-ND/729673" H 8175 3950 50  0001 C CNN
F 4 "RC0603JR-072KL" H 8175 3950 50  0001 C CNN "Part Number"
	1    8175 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5AEE9D64
P 3075 5850
F 0 "R?" H 3145 5896 50  0000 L CNN
F 1 "249" H 3145 5805 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3005 5850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603FR-07249RL/311-249HRCT-ND/730032" H 3075 5850 50  0001 C CNN
F 4 "RC0603FR-07249RL" H 3075 5850 50  0001 C CNN "Part Number"
	1    3075 5850
	0    1    1    0   
$EndComp
Connection ~ 3475 3800
Wire Wire Line
	3475 3800 3825 3800
Wire Wire Line
	2950 3800 3475 3800
$Comp
L dk_Logic-Buffers-Drivers-Receivers-Transceivers:SN74LVC1G17DBVR U?
U 1 1 5AF11A0F
P 2275 5950
F 0 "U?" H 2400 5700 60  0000 L CNN
F 1 "74LVC1G17SE-7" H 2375 5600 60  0000 L CNN
F 2 "digikey-footprints:SOT-353" H 2475 6150 60  0001 L CNN
F 3 "https://www.digikey.com/product-detail/en/diodes-incorporated/74LVC1G17SE-7/74LVC1G17SE-7CT-ND/3829456" H 2475 6250 60  0001 L CNN
F 4 "74LVC1G17SE-7" H 2475 6350 60  0001 L CNN "Part Number"
	1    2275 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5650 1650 5850
Wire Wire Line
	1375 5850 1650 5850
Connection ~ 1650 5850
Wire Wire Line
	1650 5850 1875 5850
Connection ~ 1650 5175
Wire Wire Line
	1650 5175 1650 5075
Wire Wire Line
	2625 5200 2625 5175
Wire Wire Line
	1650 5175 2275 5175
Wire Wire Line
	1650 5175 1650 5350
Wire Wire Line
	2275 5175 2275 5450
Connection ~ 2275 5175
Wire Wire Line
	2275 5175 2625 5175
$Comp
L open-automation:GND #PWR?
U 1 1 5AF5212A
P 2625 5550
F 0 "#PWR?" H 2625 5300 50  0001 C CNN
F 1 "GND" H 2630 5377 50  0000 C CNN
F 2 "" H 2625 5550 50  0000 C CNN
F 3 "" H 2625 5550 50  0000 C CNN
	1    2625 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2625 5500 2625 5550
$Comp
L open-automation:GND #PWR?
U 1 1 5AF5FA7F
P 2275 6450
F 0 "#PWR?" H 2275 6200 50  0001 C CNN
F 1 "GND" H 2280 6277 50  0000 C CNN
F 2 "" H 2275 6450 50  0000 C CNN
F 3 "" H 2275 6450 50  0000 C CNN
	1    2275 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 6350 2275 6450
$Comp
L Device:C C?
U 1 1 5AF6FC78
P 10450 2600
F 0 "C?" H 10335 2554 50  0000 R CNN
F 1 "0.1uF" H 10335 2645 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10488 2450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 10450 2600 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 10450 2600 50  0001 C CNN "Part Number"
	1    10450 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5AF77332
P 6000 2450
F 0 "C?" V 5775 2450 50  0000 C CNN
F 1 "0.47uF" V 5850 2425 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6038 2300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/CC0603ZRY5V7BB474/311-4116-1-ND/8025205" H 6000 2450 50  0001 C CNN
F 4 "CC0603ZRY5V7BB474" V 6000 2450 50  0001 C CNN "Part Number"
	1    6000 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5AF778D9
P 5800 1900
F 0 "C?" V 6000 1900 50  0000 C CNN
F 1 "0.47uF" V 5925 1900 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5838 1750 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/CC0603ZRY5V7BB474/311-4116-1-ND/8025205" H 5800 1900 50  0001 C CNN
F 4 "CC0603ZRY5V7BB474" V 5800 1900 50  0001 C CNN "Part Number"
	1    5800 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C?
U 1 1 5AF78A50
P 5800 1500
F 0 "C?" V 6055 1500 50  0000 C CNN
F 1 "100uF" V 5964 1500 50  0000 C CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 5838 1350 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/ESK107M010AC3AA/399-6600-ND/3083015" H 5800 1500 50  0001 C CNN
F 4 "ESK107M010AC3AA" H 5800 1500 50  0001 C CNN "Part Number"
	1    5800 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5AF80160
P 9175 4125
F 0 "C?" H 9060 4079 50  0000 R CNN
F 1 "22nF" H 9060 4170 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9213 3975 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B223KA8NNWC/1276-2000-1-ND/3890086" H 9175 4125 50  0001 C CNN
F 4 "CL10B223KA8NNWC" H 9175 4125 50  0001 C CNN "Part Number"
	1    9175 4125
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5AF80E05
P 9550 3600
F 0 "C?" V 9298 3600 50  0000 C CNN
F 1 "0.39uF" V 9389 3600 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9588 3450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/murata-electronics-north-america/GRM188R71C394KA88D/490-6428-1-ND/3845625" H 9550 3600 50  0001 C CNN
F 4 "GRM188R71C394KA88D" V 9550 3600 50  0001 C CNN "Part Number"
	1    9550 3600
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5AF821A1
P 9625 4125
F 0 "C?" H 9510 4079 50  0000 R CNN
F 1 "0.1uF" H 9510 4170 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9663 3975 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 9625 4125 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 9625 4125 50  0001 C CNN "Part Number"
	1    9625 4125
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5AF8259A
P 2625 5350
F 0 "C?" H 2510 5304 50  0000 R CNN
F 1 "0.1uF" H 2510 5395 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2663 5200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 2625 5350 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 2625 5350 50  0001 C CNN "Part Number"
	1    2625 5350
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NJFET_SDG Q?
U 1 1 5AE312AC
P 5450 3800
F 0 "Q?" H 5650 3925 50  0000 L CNN
F 1 "Q_NJFET_DGS" H 5650 3850 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5650 3900 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/nxp-usa-inc/BF861C215/568-6169-1-ND/2531456" H 5450 3800 50  0001 C CNN
F 4 "BF861C,215" H 5450 3800 50  0001 C CNN "Part Number"
	1    5450 3800
	1    0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BEC Q?
U 1 1 5AE3496E
P 3725 5850
F 0 "Q?" H 3916 5896 50  0000 L CNN
F 1 "Q_NPN_BEC" H 3916 5805 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3925 5950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/on-semiconductor/KST10MTF/KST10MTFCT-ND/965649" H 3725 5850 50  0001 C CNN
F 4 "KST10MTF" H 3725 5850 50  0001 C CNN "Part Number"
	1    3725 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3225 5850 3525 5850
$Comp
L Device:L L?
U 1 1 5AE3A452
P 2050 3800
F 0 "L?" H 2103 3846 50  0000 L CNN
F 1 "6.8uH" H 2103 3755 50  0000 L CNN
F 2 "open-automation:Coilcraft_0805PS_Handsoldering" H 2050 3800 50  0001 C CNN
F 3 "https://www.mouser.com/ProductDetail/Coilcraft/0805PS-682KLB?qs=sGAEpiMZZMsg%252by3WlYCkU2kWFds1hA9DACZH0%2fCmx5U%3d" H 2050 3800 50  0001 C CNN
F 4 "Coilcraft" H 2050 3800 50  0001 C CNN "Manufacture"
F 5 "0805PS-682KLB" H 2050 3800 50  0001 C CNN "Part number"
	1    2050 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 3800 2650 3800
$Comp
L open-automation:GND #PWR?
U 1 1 5AE6504B
P 4575 4350
F 0 "#PWR?" H 4575 4100 50  0001 C CNN
F 1 "GND" H 4580 4177 50  0000 C CNN
F 2 "" H 4575 4350 50  0000 C CNN
F 3 "" H 4575 4350 50  0000 C CNN
	1    4575 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4375 4150 4325 4150
Wire Wire Line
	4325 4150 4325 4350
Wire Wire Line
	4325 4350 4575 4350
Wire Wire Line
	4775 4150 4850 4150
Wire Wire Line
	4850 4150 4850 4350
Wire Wire Line
	4850 4350 4575 4350
Connection ~ 4575 4350
Wire Wire Line
	4575 3950 4575 3800
Connection ~ 4575 3800
Wire Wire Line
	4575 3800 5250 3800
Wire Wire Line
	3825 3800 4575 3800
$Comp
L Power_Protection:CM1213A-01SO D?
U 1 1 5AEB1DC3
P 3800 1300
F 0 "D?" H 3750 1025 60  0000 R CNN
F 1 "D1213A-01SO-7" H 3750 1125 60  0000 R CNN
F 2 "digikey-footprints:SOT-23-3" H 4000 1500 60  0001 L CNN
F 3 "https://www.digikey.com/product-detail/en/diodes-incorporated/D1213A-01SO-7/D1213A-01SO-7DICT-ND/3340430" H 4000 1600 60  0001 L CNN
F 4 "D1213A-01SO-7" H 4000 1700 60  0001 L CNN "Part Number"
	1    3800 1300
	-1   0    0    1   
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5AEB1DCA
P 3800 1500
F 0 "#PWR?" H 3800 1250 50  0001 C CNN
F 1 "GND" H 3805 1327 50  0000 C CNN
F 2 "" H 3800 1500 50  0000 C CNN
F 3 "" H 3800 1500 50  0000 C CNN
	1    3800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1300 3550 1300
Wire Wire Line
	3550 1300 3550 1500
Wire Wire Line
	3550 1500 3800 1500
Wire Wire Line
	4000 1300 4050 1300
Wire Wire Line
	4050 1300 4050 1500
Wire Wire Line
	4050 1500 3800 1500
Connection ~ 3800 1500
Wire Wire Line
	3800 950  3800 1100
Connection ~ 3800 950 
Wire Wire Line
	2700 950  3800 950 
$EndSCHEMATC
