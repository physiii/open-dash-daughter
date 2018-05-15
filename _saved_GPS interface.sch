EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 14
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
L Connector_Generic:Conn_01x04 J?
U 1 1 5AE2E72E
P 2700 3650
F 0 "J?" H 2780 3642 50  0000 L CNN
F 1 "Conn_01x04" H 2780 3551 50  0000 L CNN
F 2 "" H 2700 3650 50  0001 C CNN
F 3 "~" H 2700 3650 50  0001 C CNN
	1    2700 3650
	1    0    0    -1  
$EndComp
Text HLabel 1000 3550 0    50   Input ~ 0
3v3
Text HLabel 1000 3750 0    50   Input ~ 0
SDA
Text HLabel 1000 3650 0    50   Input ~ 0
SCL
$Comp
L open-automation:GND #PWR?
U 1 1 5AE2E7DF
P 900 3950
F 0 "#PWR?" H 900 3700 50  0001 C CNN
F 1 "GND" H 905 3777 50  0000 C CNN
F 2 "" H 900 3950 50  0000 C CNN
F 3 "" H 900 3950 50  0000 C CNN
	1    900  3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3550 2350 3550
Wire Wire Line
	2500 3650 1950 3650
Wire Wire Line
	1000 3750 1550 3750
Wire Wire Line
	2500 3850 1150 3850
Wire Wire Line
	900  3850 900  3950
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5AE2E8B5
P 4000 3650
F 0 "J?" H 4080 3642 50  0000 L CNN
F 1 "Conn_01x04" H 4080 3551 50  0000 L CNN
F 2 "" H 4000 3650 50  0001 C CNN
F 3 "~" H 4000 3650 50  0001 C CNN
	1    4000 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4200 3850 4550 3850
Text Label 4450 3550 2    50   ~ 0
3v3
Text Label 4450 3750 2    50   ~ 0
SDA
Text Label 4450 3650 2    50   ~ 0
SCL
$Comp
L open-automation:A2235-H-dk_RF-Receivers U?
U 1 1 5AE2F0AB
P 6500 3400
F 0 "U?" H 6600 4200 60  0000 C CNN
F 1 "A2235-H" H 6600 4094 60  0000 C CNN
F 2 "digikey-footprints:GSM_Module_17.8x16.5mm_A2235-H" H 6700 3600 60  0001 L CNN
F 3 "http://update.maestro-wireless.com/GNSS/A2235-H/Maestro_A2135_HA2235_H_v11.pdf" H 6700 3700 60  0001 L CNN
F 4 "1530-1011-1-ND" H 6700 3800 60  0001 L CNN "Digi-Key_PN"
F 5 "A2235-H" H 6700 3900 60  0001 L CNN "MPN"
F 6 "RF/IF and RFID" H 6700 4000 60  0001 L CNN "Category"
F 7 "RF Receivers" H 6700 4100 60  0001 L CNN "Family"
F 8 "http://update.maestro-wireless.com/GNSS/A2235-H/Maestro_A2135_HA2235_H_v11.pdf" H 6700 4200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/maestro-wireless-solutions/A2235-H/1530-1011-1-ND/4898055" H 6700 4300 60  0001 L CNN "DK_Detail_Page"
F 10 "MODULE GPS SIRFSTARIV" H 6700 4400 60  0001 L CNN "Description"
F 11 "Maestro Wireless Solutions" H 6700 4500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6700 4600 60  0001 L CNN "Status"
	1    6500 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5000 3550 5000 2500
Wire Wire Line
	5000 2500 5200 2500
Wire Wire Line
	6400 2500 6400 2800
Wire Wire Line
	4200 3550 5000 3550
Wire Wire Line
	4550 4900 5100 4900
Wire Wire Line
	6200 4900 6200 4600
Wire Wire Line
	4550 3850 4550 4900
Wire Wire Line
	6200 4900 6300 4900
Wire Wire Line
	6300 4900 6300 4600
Connection ~ 6200 4900
Wire Wire Line
	6400 4600 6400 4900
Wire Wire Line
	6400 4900 6300 4900
Connection ~ 6300 4900
Text Label 5400 4900 0    50   ~ 0
GND_Plane
Wire Wire Line
	5400 3650 5400 3500
Wire Wire Line
	5400 3500 5700 3500
Wire Wire Line
	4200 3650 5400 3650
Wire Wire Line
	5550 3750 5550 3600
Wire Wire Line
	5550 3600 5700 3600
Wire Wire Line
	4200 3750 5550 3750
Text HLabel 4950 4000 0    50   Input ~ 0
GPS_Ant
Wire Wire Line
	5700 4000 5100 4000
Text Label 5400 4100 2    50   ~ 0
3v3
$Comp
L Device:R R?
U 1 1 5AEA67C5
P 2350 3200
F 0 "R?" H 2420 3246 50  0000 L CNN
F 1 "Jumper" H 2420 3155 50  0000 L CNN
F 2 "" V 2280 3200 50  0001 C CNN
F 3 "~" H 2350 3200 50  0001 C CNN
	1    2350 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5AEA683D
P 1950 3200
F 0 "R?" H 2020 3246 50  0000 L CNN
F 1 "Jumper" H 2020 3155 50  0000 L CNN
F 2 "" V 1880 3200 50  0001 C CNN
F 3 "~" H 1950 3200 50  0001 C CNN
	1    1950 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5AEA685D
P 1550 3200
F 0 "R?" H 1620 3246 50  0000 L CNN
F 1 "Jumper" H 1620 3155 50  0000 L CNN
F 2 "" V 1480 3200 50  0001 C CNN
F 3 "~" H 1550 3200 50  0001 C CNN
	1    1550 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5AEA687F
P 1150 3200
F 0 "R?" H 1220 3246 50  0000 L CNN
F 1 "Jumper" H 1220 3155 50  0000 L CNN
F 2 "" V 1080 3200 50  0001 C CNN
F 3 "~" H 1150 3200 50  0001 C CNN
	1    1150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3350 1150 3850
Connection ~ 1150 3850
Wire Wire Line
	1150 3850 900  3850
Wire Wire Line
	1550 3350 1550 3750
Connection ~ 1550 3750
Wire Wire Line
	1550 3750 2500 3750
Wire Wire Line
	1950 3350 1950 3650
Connection ~ 1950 3650
Wire Wire Line
	1950 3650 1000 3650
Wire Wire Line
	2350 3350 2350 3550
Connection ~ 2350 3550
Wire Wire Line
	2350 3550 2500 3550
Text Label 2350 2900 2    50   ~ 0
3v3
Text Label 1950 2900 2    50   ~ 0
SCL
Text Label 1550 2900 2    50   ~ 0
SDA
Text Label 1150 2900 2    50   ~ 0
GND_Plane
Wire Wire Line
	2350 3050 2350 2900
Wire Wire Line
	1950 2900 1950 3050
Wire Wire Line
	1550 3050 1550 2900
Wire Wire Line
	1150 2900 1150 3050
Wire Wire Line
	5400 4100 5700 4100
$Comp
L Device:C C?
U 1 1 5AEADD26
P 5200 2700
F 0 "C?" H 5315 2746 50  0000 L CNN
F 1 "C" H 5315 2655 50  0000 L CNN
F 2 "" H 5238 2550 50  0001 C CNN
F 3 "~" H 5200 2700 50  0001 C CNN
	1    5200 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5AEADD96
P 5550 2700
F 0 "C?" H 5665 2746 50  0000 L CNN
F 1 "C" H 5665 2655 50  0000 L CNN
F 2 "" H 5588 2550 50  0001 C CNN
F 3 "~" H 5550 2700 50  0001 C CNN
	1    5550 2700
	1    0    0    -1  
$EndComp
Text Label 5700 2950 0    50   ~ 0
GND_Plane
Wire Wire Line
	5700 2950 5550 2950
Wire Wire Line
	5550 2950 5550 2850
Wire Wire Line
	5550 2550 5550 2500
Connection ~ 5550 2500
Wire Wire Line
	5550 2500 6400 2500
Wire Wire Line
	5200 2550 5200 2500
Connection ~ 5200 2500
Wire Wire Line
	5200 2500 5550 2500
Wire Wire Line
	5200 2850 5200 2950
Wire Wire Line
	5200 2950 5550 2950
Connection ~ 5550 2950
$Comp
L Device:C C?
U 1 1 5AEB1B71
P 7500 3500
F 0 "C?" V 7248 3500 50  0000 C CNN
F 1 "C" V 7339 3500 50  0000 C CNN
F 2 "" H 7538 3350 50  0001 C CNN
F 3 "~" H 7500 3500 50  0001 C CNN
	1    7500 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5AEB1C00
P 5450 3100
F 0 "C?" V 5198 3100 50  0000 C CNN
F 1 "C" V 5289 3100 50  0000 C CNN
F 2 "" H 5488 2950 50  0001 C CNN
F 3 "~" H 5450 3100 50  0001 C CNN
	1    5450 3100
	0    1    1    0   
$EndComp
Text Notes 2600 1600 0    50   ~ 0
This block will be a piece that can be either left on the board and the antenna can be installed, or can be broken off and wired up to the bezel \n
Wire Notes Line
	9300 5900 9300 1700
Wire Notes Line
	3450 1700 3450 5900
$Comp
L Device:R R?
U 1 1 5AEBF5D9
P 5100 4250
F 0 "R?" H 5170 4296 50  0000 L CNN
F 1 "50ohm_NP" H 5170 4205 50  0000 L CNN
F 2 "" V 5030 4250 50  0001 C CNN
F 3 "~" H 5100 4250 50  0001 C CNN
	1    5100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4400 5100 4900
Connection ~ 5100 4900
Wire Wire Line
	5100 4900 6200 4900
Wire Wire Line
	5100 4100 5100 4000
Connection ~ 5100 4000
Wire Wire Line
	5100 4000 4950 4000
Wire Wire Line
	5300 3100 5200 3100
Wire Wire Line
	5200 3100 5200 2950
Connection ~ 5200 2950
Wire Wire Line
	5600 3100 5700 3100
Wire Wire Line
	5700 3300 4700 3300
Wire Wire Line
	4700 3300 4700 2200
Wire Wire Line
	4700 2200 7700 2200
Wire Wire Line
	7700 2200 7700 3800
Wire Wire Line
	7700 3800 7100 3800
Text Label 7750 3500 0    50   ~ 0
GND_Plane
Wire Wire Line
	7750 3500 7650 3500
Wire Wire Line
	7350 3500 7250 3500
$Comp
L Device:R R?
U 1 1 5AEC4901
P 7250 2850
F 0 "R?" H 7320 2896 50  0000 L CNN
F 1 "50ohm_NP" H 7320 2805 50  0000 L CNN
F 2 "" V 7180 2850 50  0001 C CNN
F 3 "~" H 7250 2850 50  0001 C CNN
	1    7250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3000 7250 3500
Connection ~ 7250 3500
Wire Wire Line
	7250 3500 7100 3500
Wire Wire Line
	6400 2500 7250 2500
Wire Wire Line
	7250 2500 7250 2700
Connection ~ 6400 2500
$Comp
L Power_Supervisor:MCP100-315D U?
U 1 1 5AEC9794
P 8400 3200
F 0 "U?" H 8170 3154 50  0000 R CNN
F 1 "MCP100-315D" H 8170 3245 50  0000 R CNN
F 2 "" H 8000 3350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/11187f.pdf" H 8100 3450 50  0001 C CNN
	1    8400 3200
	-1   0    0    1   
$EndComp
Wire Notes Line
	3450 1700 9300 1700
Wire Notes Line
	3450 5900 9300 5900
Wire Wire Line
	8100 3200 7100 3200
Text Label 8500 3950 0    50   ~ 0
GND_Plane
Wire Wire Line
	8500 3600 8500 3950
Text Label 8500 2500 2    50   ~ 0
3v3
Wire Wire Line
	8500 2800 8500 2500
$EndSCHEMATC
