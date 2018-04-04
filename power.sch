EESchema Schematic File Version 2
LIBS:device
LIBS:open-dash-daughterboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 11
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2650 975  0    60   Input ~ 0
V_MAIN
$Comp
L CP C1
U 1 1 593709F5
P 2900 1325
F 0 "C1" V 2950 1375 50  0000 L CNN
F 1 "100uF" V 2750 1225 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P3.50mm" H 2938 1175 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/nichicon/UVR1H101MPD/493-1107-ND/588848" H 2900 1325 50  0001 C CNN
F 4 "UVR1H101MPD" H 2900 1325 60  0001 C CNN "Part Number"
	1    2900 1325
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 5968D146
P 5025 1225
F 0 "C2" H 5050 1325 50  0000 L CNN
F 1 "1000uF" H 5050 1125 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P3.50mm" H 5063 1075 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/nichicon/UVR0J102MPD1TD/493-12738-1-ND/4328447" H 5025 1225 50  0001 C CNN
F 4 "UVR0J102MPD1TD" H 5025 1225 60  0001 C CNN "Part Number"
	1    5025 1225
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 5969017D
P 4575 1075
F 0 "L1" V 4525 1075 50  0001 C CNN
F 1 "68uH" V 4525 1075 50  0000 C CNN
F 2 "" H 4575 1075 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/wurth-electronics-inc/7447709680/732-1247-2-ND/1638652" H 4575 1075 50  0001 C CNN
F 4 "Wurth 7447709680" V 4575 1075 10  0001 C CNN "Part Number"
	1    4575 1075
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR01
U 1 1 59690AC9
P 5025 1425
F 0 "#PWR01" H 5025 1175 50  0001 C CNN
F 1 "GND" H 5025 1275 50  0000 C CNN
F 2 "" H 5025 1425 50  0000 C CNN
F 3 "" H 5025 1425 50  0000 C CNN
	1    5025 1425
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59690B3F
P 2900 1575
F 0 "#PWR02" H 2900 1325 50  0001 C CNN
F 1 "GND" V 2850 1400 50  0000 C CNN
F 2 "" H 2900 1575 50  0000 C CNN
F 3 "" H 2900 1575 50  0000 C CNN
	1    2900 1575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 59690D86
P 4375 1475
F 0 "#PWR03" H 4375 1225 50  0001 C CNN
F 1 "GND" H 4375 1325 50  0000 C CNN
F 2 "" H 4375 1475 50  0000 C CNN
F 3 "" H 4375 1475 50  0000 C CNN
	1    4375 1475
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D1
U 1 1 59690FC6
P 4375 1275
F 0 "D1" H 4375 1375 50  0000 C CNN
F 1 "D_Schottky" H 4375 1175 50  0001 C CNN
F 2 "Diodes_SMD:D_SMA" H 4375 1275 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/diodes-incorporated/B330A-13-F/B330A-FDICT-ND/815332" H 4375 1275 50  0001 C CNN
F 4 "B330A-13-F" H 4375 1275 60  0001 C CNN "Part Number"
	1    4375 1275
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 BATTERY1
U 1 1 597573B9
P 1150 1050
F 0 "BATTERY1" H 1228 1091 50  0000 L CNN
F 1 "CONN_01X02" H 1228 1000 50  0000 L CNN
F 2 "open-automation:XT60" H 1150 1050 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/phoenix-contact/1934861/277-1607-ND/568644" H 1150 1050 50  0001 C CNN
	1    1150 1050
	-1   0    0    -1  
$EndComp
Text GLabel 1450 1000 2    60   Input ~ 0
BATTERY
$Comp
L GND #PWR04
U 1 1 59757643
P 1400 1150
F 0 "#PWR04" H 1400 900 50  0001 C CNN
F 1 "GND" H 1400 1000 50  0000 C CNN
F 2 "" H 1400 1150 50  0000 C CNN
F 3 "" H 1400 1150 50  0000 C CNN
	1    1400 1150
	-1   0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 598F7872
P 5500 1200
F 0 "D4" H 5500 1300 50  0000 C CNN
F 1 "LED" H 5500 1100 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 5500 1200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rohm-semiconductor/SML-D12M8WT86/511-1578-1-ND/1641810" H 5500 1200 50  0001 C CNN
F 4 "SML-D12M8WT86" H 5500 1200 60  0001 C CNN "Part Number"
	1    5500 1200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 598F7A99
P 5500 1750
F 0 "#PWR08" H 5500 1500 50  0001 C CNN
F 1 "GND" H 5500 1600 50  0000 C CNN
F 2 "" H 5500 1750 50  0000 C CNN
F 3 "" H 5500 1750 50  0000 C CNN
	1    5500 1750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 12V_Out1
U 1 1 59C5AB51
P 9375 1025
F 0 "12V_Out1" H 9453 1066 50  0000 L CNN
F 1 "CONN_01X02" H 9453 975 50  0000 L CNN
F 2 "open-automation:XT60" H 9375 1025 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/phoenix-contact/1934861/277-1607-ND/568644" H 9375 1025 50  0001 C CNN
	1    9375 1025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 59C5AB58
P 9125 1125
F 0 "#PWR010" H 9125 875 50  0001 C CNN
F 1 "GND" H 9125 975 50  0000 C CNN
F 2 "" H 9125 1125 50  0000 C CNN
F 3 "" H 9125 1125 50  0000 C CNN
	1    9125 1125
	1    0    0    -1  
$EndComp
$Comp
L R_10k R11
U 1 1 59E4131F
P 5500 1550
F 0 "R11" V 5500 1550 50  0000 C CNN
F 1 "R_1k4" V 5425 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5430 1550 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603FR-071K4L/311-1.40KHRCT-ND/729808" V 5580 1550 50  0001 C CNN
F 4 "RC0603FR-071K4L" V 5680 1650 60  0001 C CNN "Part Number"
	1    5500 1550
	1    0    0    -1  
$EndComp
Text Notes 9125 800  0    60   ~ 0
Main Board Power Output
Text Notes 775  825  0    60   ~ 0
12V Battery Input
Text Notes 2300 825  0    60   ~ 0
V_MAIN is after the current sense resistor.
Text GLabel 5900 975  2    60   Input ~ 0
3V3
Text GLabel 8850 975  0    60   Input ~ 0
12V
$Comp
L LM2576SX-3.3 U?
U 1 1 5AC3E9C2
P 3725 1075
F 0 "U?" H 4075 1275 60  0000 C CNN
F 1 "LM2576SX-3.3" H 3775 875 60  0000 C CNN
F 2 "open-automation:Regulator-LM2576" H 3625 675 60  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=LM2576SX-3.3%2FNOPBCT-ND" H 3675 775 60  0001 C CNN
F 4 "LM2576SX-3.3/NOPB" H 3725 1075 60  0001 C CNN "Part Number"
	1    3725 1075
	1    0    0    -1  
$EndComp
Text GLabel 2650 2200 0    60   Input ~ 0
V_MAIN
$Comp
L CP C?
U 1 1 5AC4139B
P 2900 2550
F 0 "C?" V 2950 2600 50  0000 L CNN
F 1 "100uF" V 2750 2450 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P3.50mm" H 2938 2400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/nichicon/UVR1H101MPD/493-1107-ND/588848" H 2900 2550 50  0001 C CNN
F 4 "UVR1H101MPD" H 2900 2550 60  0001 C CNN "Part Number"
	1    2900 2550
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 5AC413A2
P 5775 2450
F 0 "C?" H 5800 2550 50  0000 L CNN
F 1 "1000uF" H 5800 2350 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P3.50mm" H 5813 2300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/nichicon/UVR0J102MPD1TD/493-12738-1-ND/4328447" H 5775 2450 50  0001 C CNN
F 4 "UVR0J102MPD1TD" H 5775 2450 60  0001 C CNN "Part Number"
	1    5775 2450
	1    0    0    -1  
$EndComp
$Comp
L L L?
U 1 1 5AC413A9
P 5325 2300
F 0 "L?" V 5275 2300 50  0001 C CNN
F 1 "47uH" V 5275 2300 50  0000 C CNN
F 2 "open-automation:L-RAD-7.4mm" H 5325 2300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/abracon-llc/AIUR-06-470K/535-13031-ND/2343602" H 5325 2300 50  0001 C CNN
F 4 "AIUR-06-470K" V 5325 2300 10  0001 C CNN "Part Number"
	1    5325 2300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5AC413AF
P 5775 2650
F 0 "#PWR?" H 5775 2400 50  0001 C CNN
F 1 "GND" H 5775 2500 50  0000 C CNN
F 2 "" H 5775 2650 50  0000 C CNN
F 3 "" H 5775 2650 50  0000 C CNN
	1    5775 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AC413B5
P 2900 2800
F 0 "#PWR?" H 2900 2550 50  0001 C CNN
F 1 "GND" V 2850 2625 50  0000 C CNN
F 2 "" H 2900 2800 50  0000 C CNN
F 3 "" H 2900 2800 50  0000 C CNN
	1    2900 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AC413BB
P 5125 2700
F 0 "#PWR?" H 5125 2450 50  0001 C CNN
F 1 "GND" H 5125 2550 50  0000 C CNN
F 2 "" H 5125 2700 50  0000 C CNN
F 3 "" H 5125 2700 50  0000 C CNN
	1    5125 2700
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D?
U 1 1 5AC413C2
P 5125 2500
F 0 "D?" H 5125 2600 50  0000 C CNN
F 1 "D_Schottky" H 5125 2400 50  0001 C CNN
F 2 "Diodes_SMD:D_SMA" H 5125 2500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/diodes-incorporated/B330A-13-F/B330A-FDICT-ND/815332" H 5125 2500 50  0001 C CNN
F 4 "B330A-13-F" H 5125 2500 60  0001 C CNN "Part Number"
	1    5125 2500
	0    1    1    0   
$EndComp
Text Notes 2275 2075 0    60   ~ 0
V_MAIN is after the current sense resistor.
Text GLabel 6075 2200 2    60   Input ~ 0
5V
$Comp
L LM2576SX-3.3 U?
U 1 1 5AC413CA
P 4475 2300
F 0 "U?" H 4825 2500 60  0000 C CNN
F 1 "LM2576SX-5.0" H 4525 2100 60  0000 C CNN
F 2 "open-automation:Regulator-LM2576" H 4375 1900 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/texas-instruments/LM2576SX-5.0-NOPB/LM2576SX-5.0-NOPBCT-ND/3440106" H 4425 2000 60  0001 C CNN
F 4 "LM2576SX-5.0/NOPB" H 4475 2300 60  0001 C CNN "Part Number"
	1    4475 2300
	1    0    0    -1  
$EndComp
Text GLabel 3700 2300 0    60   Input ~ 0
EN_5V_POWER
Wire Wire Line
	5500 1700 5500 1750
Wire Wire Line
	5500 1350 5500 1400
Wire Wire Line
	5500 975  5500 1050
Wire Wire Line
	4375 1125 4375 1075
Connection ~ 4375 1075
Wire Wire Line
	4375 1475 4375 1425
Wire Wire Line
	5025 1425 5025 1375
Wire Wire Line
	4725 1075 4775 1075
Wire Wire Line
	4325 1075 4425 1075
Wire Wire Line
	4325 975  5900 975 
Wire Wire Line
	8850 975  9175 975 
Wire Wire Line
	2900 1175 2900 975 
Connection ~ 2900 975 
Wire Wire Line
	2900 1475 2900 1575
Wire Wire Line
	3175 1075 3175 1525
Wire Wire Line
	3175 1175 3225 1175
Wire Wire Line
	1400 1150 1400 1100
Wire Wire Line
	1400 1100 1350 1100
Wire Wire Line
	1450 1000 1350 1000
Wire Wire Line
	9125 1125 9125 1075
Wire Wire Line
	9125 1075 9175 1075
Connection ~ 4775 975 
Wire Wire Line
	4775 975  4775 975 
Wire Wire Line
	4775 1075 4775 975 
Wire Wire Line
	5025 1075 5025 975 
Connection ~ 5025 975 
Wire Wire Line
	3225 1075 3175 1075
Connection ~ 3175 1175
Wire Wire Line
	2650 975  3225 975 
Wire Wire Line
	3175 1525 2900 1525
Connection ~ 2900 1525
Wire Wire Line
	5125 2350 5125 2300
Connection ~ 5125 2300
Wire Wire Line
	5125 2700 5125 2650
Wire Wire Line
	5775 2650 5775 2600
Wire Wire Line
	5475 2300 5525 2300
Wire Wire Line
	5075 2300 5175 2300
Wire Wire Line
	5075 2200 6075 2200
Wire Wire Line
	2900 2400 2900 2200
Connection ~ 2900 2200
Wire Wire Line
	2900 2700 2900 2800
Wire Wire Line
	3925 2400 3975 2400
Connection ~ 5525 2200
Wire Wire Line
	5525 2200 5525 2200
Wire Wire Line
	5525 2300 5525 2200
Wire Wire Line
	5775 2300 5775 2200
Connection ~ 5775 2200
Wire Wire Line
	2650 2200 3975 2200
Wire Wire Line
	2900 2750 3925 2750
Connection ~ 2900 2750
Wire Wire Line
	3925 2750 3925 2400
Wire Wire Line
	3700 2300 3975 2300
$Comp
L R_10k R?
U 1 1 5AC421CC
P 3775 2550
F 0 "R?" V 3775 2550 50  0000 C CNN
F 1 "R_10k" V 3700 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3705 2550 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 3855 2550 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 3955 2650 60  0001 C CNN "Part Number"
	1    3775 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 2400 3775 2300
Connection ~ 3775 2300
Wire Wire Line
	3775 2700 3775 2750
Connection ~ 3775 2750
Text Notes 5575 1575 0    60   ~ 0
1mA current through LED
$EndSCHEMATC
