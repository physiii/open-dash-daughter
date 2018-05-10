EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 14 14
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
L open-automation:CM108AH U?
U 1 1 5AE40241
P 5575 3675
F 0 "U?" H 5600 5490 50  0000 C CNN
F 1 "CM108AH" H 5600 5399 50  0000 C CNN
F 2 "" H 5575 3675 50  0001 C CNN
F 3 "" H 5575 3675 50  0001 C CNN
	1    5575 3675
	1    0    0    -1  
$EndComp
Text HLabel 3950 2000 0    50   Input ~ 0
5v
$Comp
L Device:C_Small C?
U 1 1 5AE44C69
P 4075 2150
F 0 "C?" H 4167 2196 50  0000 L CNN
F 1 "4.7uF" H 4167 2105 50  0000 L CNN
F 2 "" H 4075 2150 50  0001 C CNN
F 3 "" H 4075 2150 50  0001 C CNN
	1    4075 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 2050 4075 2000
Connection ~ 4075 2000
Wire Wire Line
	4075 2000 3950 2000
Wire Wire Line
	4075 2250 4075 2300
$Comp
L open-automation:GND #PWR?
U 1 1 5AE44DC5
P 4075 2350
F 0 "#PWR?" H 4075 2100 50  0001 C CNN
F 1 "GND" H 4200 2275 50  0000 C CNN
F 2 "" H 4075 2350 50  0000 C CNN
F 3 "" H 4075 2350 50  0000 C CNN
	1    4075 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 2000 4500 2000
Connection ~ 4075 2300
Wire Wire Line
	4075 2300 4075 2350
Wire Wire Line
	4075 2300 4500 2300
$Comp
L Device:C_Small C?
U 1 1 5AE457CC
P 4500 2150
F 0 "C?" H 4592 2196 50  0000 L CNN
F 1 "0.1uF" H 4592 2105 50  0000 L CNN
F 2 "" H 4500 2150 50  0001 C CNN
F 3 "" H 4500 2150 50  0001 C CNN
	1    4500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2050 4500 2000
Wire Wire Line
	4500 2250 4500 2300
Text HLabel 2950 2525 0    50   Input ~ 0
5v
$Comp
L Device:C_Small C?
U 1 1 5AE45EF6
P 3075 2675
F 0 "C?" H 3167 2721 50  0000 L CNN
F 1 "4.7uF" H 3167 2630 50  0000 L CNN
F 2 "" H 3075 2675 50  0001 C CNN
F 3 "" H 3075 2675 50  0001 C CNN
	1    3075 2675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3075 2575 3075 2525
Connection ~ 3075 2525
Wire Wire Line
	3075 2525 2950 2525
Wire Wire Line
	3075 2775 3075 2825
Wire Wire Line
	3075 2525 3500 2525
Connection ~ 3075 2825
Wire Wire Line
	3075 2825 3075 2875
Wire Wire Line
	3075 2825 3500 2825
$Comp
L Device:C_Small C?
U 1 1 5AE45F0B
P 3500 2675
F 0 "C?" H 3592 2721 50  0000 L CNN
F 1 "0.1uF" H 3592 2630 50  0000 L CNN
F 2 "" H 3500 2675 50  0001 C CNN
F 3 "" H 3500 2675 50  0001 C CNN
	1    3500 2675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2575 3500 2525
Connection ~ 3500 2525
Wire Wire Line
	3500 2775 3500 2825
Wire Wire Line
	4975 2425 4875 2425
Wire Wire Line
	4875 2425 4875 2525
Wire Wire Line
	4975 2525 4875 2525
Wire Wire Line
	4875 2625 4875 2725
$Comp
L Device:C_Small C?
U 1 1 5AE48B66
P 3700 2975
F 0 "C?" H 3775 3050 50  0000 L CNN
F 1 "4.7uF" H 3775 2975 50  0000 L CNN
F 2 "" H 3700 2975 50  0001 C CNN
F 3 "" H 3700 2975 50  0001 C CNN
	1    3700 2975
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5AE48D0C
P 4800 2325
F 0 "#PWR?" H 4800 2075 50  0001 C CNN
F 1 "GND" V 4900 2275 50  0000 C CNN
F 2 "" H 4800 2325 50  0000 C CNN
F 3 "" H 4800 2325 50  0000 C CNN
	1    4800 2325
	0    1    1    0   
$EndComp
$Comp
L open-automation:AGND #PWR?
U 1 1 5AE49217
P 4825 2625
F 0 "#PWR?" H 4825 2375 50  0001 C CNN
F 1 "AGND" V 4925 2650 50  0000 R CNN
F 2 "" H 4825 2625 50  0000 C CNN
F 3 "" H 4825 2625 50  0000 C CNN
	1    4825 2625
	0    1    1    0   
$EndComp
Wire Wire Line
	4825 2625 4875 2625
Connection ~ 4875 2625
Wire Wire Line
	4975 2625 4875 2625
Wire Wire Line
	4975 2725 4875 2725
Wire Wire Line
	3700 2875 3700 2825
$Comp
L open-automation:AGND #PWR?
U 1 1 5AE4B09D
P 3075 2875
F 0 "#PWR?" H 3075 2625 50  0001 C CNN
F 1 "AGND" H 3325 2800 50  0000 R CNN
F 2 "" H 3075 2875 50  0000 C CNN
F 3 "" H 3075 2875 50  0000 C CNN
	1    3075 2875
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5AE4B108
P 3700 3225
F 0 "#PWR?" H 3700 2975 50  0001 C CNN
F 1 "GND" H 3825 3150 50  0000 C CNN
F 2 "" H 3700 3225 50  0000 C CNN
F 3 "" H 3700 3225 50  0000 C CNN
	1    3700 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3225 3700 3075
$Comp
L Device:C_Small C?
U 1 1 5AE4B5C6
P 4025 3050
F 0 "C?" H 4100 3100 50  0000 L CNN
F 1 "4.7uF" H 4100 3000 50  0000 L CNN
F 2 "" H 4025 3050 50  0001 C CNN
F 3 "" H 4025 3050 50  0001 C CNN
	1    4025 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y?
U 1 1 5AE4DDD9
P 4750 3125
F 0 "Y?" V 4800 3075 50  0000 R CNN
F 1 "12MHz" V 4700 3075 50  0000 R CNN
F 2 "" H 4750 3125 50  0001 C CNN
F 3 "" H 4750 3125 50  0001 C CNN
	1    4750 3125
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5AE4EE03
P 4550 3225
F 0 "C?" V 4500 3125 50  0000 C CNN
F 1 "?" V 4600 3100 50  0000 C CNN
F 2 "" H 4550 3225 50  0001 C CNN
F 3 "" H 4550 3225 50  0001 C CNN
	1    4550 3225
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5AE50258
P 4550 3000
F 0 "C?" V 4500 2925 50  0000 C CNN
F 1 "?" V 4600 2925 50  0000 C CNN
F 2 "" H 4550 3000 50  0001 C CNN
F 3 "" H 4550 3000 50  0001 C CNN
	1    4550 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 3000 4750 3000
Wire Wire Line
	4750 3025 4750 3000
Connection ~ 4750 3000
Wire Wire Line
	4650 3225 4750 3225
Connection ~ 4750 3225
Wire Wire Line
	4450 3000 4325 3000
Wire Wire Line
	4325 3000 4325 3225
Wire Wire Line
	4325 3225 4450 3225
Connection ~ 3700 3225
Wire Wire Line
	4975 3000 4975 3125
Wire Wire Line
	3700 2825 4975 2825
Wire Wire Line
	4750 3000 4975 3000
Wire Wire Line
	4750 3225 4975 3225
Wire Wire Line
	4025 2950 4025 2925
Wire Wire Line
	4025 2925 4975 2925
Wire Wire Line
	4025 3150 4025 3225
Connection ~ 4025 3225
Wire Wire Line
	3700 3225 4025 3225
Wire Wire Line
	4025 3225 4325 3225
Connection ~ 4325 3225
Wire Wire Line
	4975 2125 4975 2000
Connection ~ 4500 2000
Wire Wire Line
	4800 2325 4875 2325
Wire Wire Line
	4975 2225 4875 2225
Wire Wire Line
	4875 2225 4875 2325
Connection ~ 4875 2325
Wire Wire Line
	4875 2325 4975 2325
Wire Wire Line
	4975 2000 4500 2000
$Comp
L Device:R_Small R?
U 1 1 5AE684BB
P 4500 3425
F 0 "R?" V 4425 3425 50  0000 C CNN
F 1 "22" V 4575 3425 50  0000 C CNN
F 2 "" V 4430 3425 50  0001 C CNN
F 3 "" H 4500 3425 50  0001 C CNN
	1    4500 3425
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 3425 4975 3425
$Comp
L Device:R_Small R?
U 1 1 5AE6995C
P 4275 3525
F 0 "R?" V 4200 3525 50  0000 C CNN
F 1 "22" V 4350 3525 50  0000 C CNN
F 2 "" V 4205 3525 50  0001 C CNN
F 3 "" H 4275 3525 50  0001 C CNN
	1    4275 3525
	0    1    1    0   
$EndComp
Wire Wire Line
	4975 3525 4375 3525
Text HLabel 2475 3425 0    50   BiDi ~ 0
usb_dm
Text HLabel 2475 3525 0    50   BiDi ~ 0
usb_dp
Wire Wire Line
	2475 3525 2650 3525
$Comp
L Device:C_Small C?
U 1 1 5AE6F10A
P 3375 3675
F 0 "C?" H 3450 3725 50  0000 L CNN
F 1 "47pF" H 3450 3625 50  0000 L CNN
F 2 "" H 3375 3675 50  0001 C CNN
F 3 "" H 3375 3675 50  0001 C CNN
	1    3375 3675
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5AE6F180
P 3650 3675
F 0 "C?" H 3725 3725 50  0000 L CNN
F 1 "47pF" H 3725 3625 50  0000 L CNN
F 2 "" H 3650 3675 50  0001 C CNN
F 3 "" H 3650 3675 50  0001 C CNN
	1    3650 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 3575 3375 3525
Connection ~ 3375 3525
Wire Wire Line
	3650 3575 3650 3425
Wire Wire Line
	2475 3425 3025 3425
Connection ~ 3650 3425
Wire Wire Line
	3650 3425 4400 3425
$Comp
L open-automation:GND #PWR?
U 1 1 5AE70A91
P 3375 3850
F 0 "#PWR?" H 3375 3600 50  0001 C CNN
F 1 "GND" H 3500 3775 50  0000 C CNN
F 2 "" H 3375 3850 50  0000 C CNN
F 3 "" H 3375 3850 50  0000 C CNN
	1    3375 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3775 3650 3850
Wire Wire Line
	3650 3850 3375 3850
$Comp
L Device:R_Small R?
U 1 1 5AE72A98
P 3225 3225
F 0 "R?" V 3150 3225 50  0000 C CNN
F 1 "1k5" V 3300 3225 50  0000 C CNN
F 2 "" V 3155 3225 50  0001 C CNN
F 3 "" H 3225 3225 50  0001 C CNN
	1    3225 3225
	0    1    1    0   
$EndComp
Wire Wire Line
	3325 3225 3375 3225
Wire Wire Line
	3375 3225 3375 3525
Wire Wire Line
	3125 3225 3000 3225
Text HLabel 3000 3225 0    50   Input ~ 0
3v3
Wire Wire Line
	3375 3525 4175 3525
Connection ~ 3375 3850
NoConn ~ 4975 3725
NoConn ~ 4975 3825
Wire Wire Line
	3500 2525 4875 2525
Connection ~ 4875 2525
NoConn ~ 6225 4625
NoConn ~ 6225 4725
NoConn ~ 6225 4825
Text Notes 6350 2275 0    50   ~ 0
EEPROM Connections
Wire Wire Line
	4975 4025 4650 4025
Text HLabel 4650 4025 0    50   Input ~ 0
audio_mute
$Comp
L open-automation:GND #PWR?
U 1 1 5AE90C70
P 4875 4325
F 0 "#PWR?" H 4875 4075 50  0001 C CNN
F 1 "GND" H 5000 4250 50  0000 C CNN
F 2 "" H 4875 4325 50  0000 C CNN
F 3 "" H 4875 4325 50  0000 C CNN
	1    4875 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4875 4125 4875 4225
Connection ~ 4875 4325
Connection ~ 4875 4225
Wire Wire Line
	4875 4225 4875 4325
Wire Wire Line
	4975 4625 4875 4625
Wire Wire Line
	4875 4625 4875 4525
Wire Wire Line
	4875 4525 4975 4525
Wire Wire Line
	4875 4525 4650 4525
Connection ~ 4875 4525
Text HLabel 4650 4525 0    50   Input ~ 0
3v3
Wire Wire Line
	4975 4725 4875 4725
Wire Wire Line
	4875 4725 4875 4825
Wire Wire Line
	4875 4925 4975 4925
Wire Wire Line
	4975 4825 4875 4825
Connection ~ 4875 4825
Wire Wire Line
	4875 4825 4875 4925
$Comp
L open-automation:GND #PWR?
U 1 1 5AEA5FA4
P 4875 4925
F 0 "#PWR?" H 4875 4675 50  0001 C CNN
F 1 "GND" H 5000 4850 50  0000 C CNN
F 2 "" H 4875 4925 50  0000 C CNN
F 3 "" H 4875 4925 50  0000 C CNN
	1    4875 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 4125 4875 4125
Wire Wire Line
	4975 4225 4875 4225
Wire Wire Line
	4975 4325 4875 4325
Connection ~ 4875 4925
NoConn ~ 6225 2125
NoConn ~ 6225 2225
NoConn ~ 6225 2325
NoConn ~ 6225 2425
NoConn ~ 6225 3125
$Comp
L Device:CP_Small C?
U 1 1 5AEB573A
P 6575 3225
F 0 "C?" V 6625 3125 50  0000 C CNN
F 1 "470uF" V 6525 3075 50  0000 C CNN
F 2 "" H 6575 3225 50  0001 C CNN
F 3 "" H 6575 3225 50  0001 C CNN
	1    6575 3225
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6225 3225 6475 3225
$Comp
L Device:CP_Small C?
U 1 1 5AEBA252
P 6875 3325
F 0 "C?" V 6925 3225 50  0000 C CNN
F 1 "470uF" V 6825 3150 50  0000 C CNN
F 2 "" H 6875 3325 50  0001 C CNN
F 3 "" H 6875 3325 50  0001 C CNN
	1    6875 3325
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6225 3325 6775 3325
Wire Wire Line
	6675 3225 7275 3225
Wire Wire Line
	6975 3325 7275 3325
Text HLabel 7275 3225 2    50   Output ~ 0
audio_out_right
Text HLabel 7275 3325 2    50   Output ~ 0
audio_out_left
NoConn ~ 6225 3525
NoConn ~ 6225 2625
NoConn ~ 6225 2725
NoConn ~ 6225 2825
NoConn ~ 6225 2925
NoConn ~ 6225 4225
NoConn ~ 6225 4425
$Comp
L Device:R_Small R?
U 1 1 5AED144E
P 6475 4325
F 0 "R?" V 6400 4325 50  0000 C CNN
F 1 "?" V 6550 4325 50  0000 C CNN
F 2 "" V 6405 4325 50  0001 C CNN
F 3 "" H 6475 4325 50  0001 C CNN
	1    6475 4325
	0    1    1    0   
$EndComp
Wire Wire Line
	6225 4325 6375 4325
$Comp
L open-automation:LED D?
U 1 1 5AED9DFE
P 6825 4325
F 0 "D?" H 6825 4125 50  0000 C CNN
F 1 "LED" H 6825 4200 50  0000 C CNN
F 2 "" H 6825 4325 50  0000 C CNN
F 3 "" H 6825 4325 50  0000 C CNN
	1    6825 4325
	-1   0    0    1   
$EndComp
Wire Wire Line
	6675 4325 6575 4325
Wire Wire Line
	6975 4325 7100 4325
Wire Wire Line
	7100 4325 7100 4400
$Comp
L open-automation:GND #PWR?
U 1 1 5AEDD835
P 7100 4400
F 0 "#PWR?" H 7100 4150 50  0001 C CNN
F 1 "GND" H 7225 4325 50  0000 C CNN
F 2 "" H 7100 4400 50  0000 C CNN
F 3 "" H 7100 4400 50  0000 C CNN
	1    7100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 3725 6700 3725
Wire Wire Line
	6225 3825 6700 3825
Wire Wire Line
	6225 3925 6700 3925
Wire Wire Line
	6225 4025 6700 4025
Text HLabel 6700 3725 2    50   Output ~ 0
dac_clk_out
Text HLabel 6700 3825 2    50   Output ~ 0
dac_left_l_r_clk_out
Text HLabel 6700 3925 2    50   Output ~ 0
dac_serial_clk_out
Text HLabel 6700 4025 2    50   Output ~ 0
dac_data_out
$Comp
L Device:D_TVS_ALT D?
U 1 1 5AEF3F02
P 3025 3700
F 0 "D?" V 2979 3779 50  0000 L CNN
F 1 "D_TVS" V 3070 3779 50  0000 L CNN
F 2 "" H 3025 3700 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Transient-voltage-suppression_diode" H 3025 3700 50  0001 C CNN
	1    3025 3700
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS_ALT D?
U 1 1 5AEF3F99
P 2650 3700
F 0 "D?" V 2604 3779 50  0000 L CNN
F 1 "D_TVS" V 2695 3779 50  0000 L CNN
F 2 "" H 2650 3700 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Transient-voltage-suppression_diode" H 2650 3700 50  0001 C CNN
	1    2650 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 3850 3025 3850
Wire Wire Line
	3025 3850 3375 3850
Connection ~ 3025 3850
Wire Wire Line
	3025 3550 3025 3425
Connection ~ 3025 3425
Wire Wire Line
	3025 3425 3650 3425
Wire Wire Line
	2650 3525 2650 3550
Wire Wire Line
	3375 3825 3375 3850
Wire Wire Line
	3375 3775 3375 3850
Connection ~ 2650 3525
Wire Wire Line
	2650 3525 3375 3525
$EndSCHEMATC