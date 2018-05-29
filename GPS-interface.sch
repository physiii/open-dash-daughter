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
L Connector_Generic:Conn_01x04 J3
U 1 1 5AE2E72E
P 5350 3500
F 0 "J3" H 5430 3492 50  0000 L CNN
F 1 "Conn_01x04" H 5430 3401 50  0000 L CNN
F 2 "" H 5350 3500 50  0001 C CNN
F 3 "~" H 5350 3500 50  0001 C CNN
	1    5350 3500
	1    0    0    -1  
$EndComp
Text HLabel 3650 3400 0    50   Input ~ 0
3v3
Text HLabel 3650 3600 0    50   Input ~ 0
SDA
Text HLabel 3650 3500 0    50   Input ~ 0
SCL
$Comp
L open-automation:GND #PWR0137
U 1 1 5AE2E7DF
P 3550 3800
F 0 "#PWR0137" H 3550 3550 50  0001 C CNN
F 1 "GND" H 3555 3627 50  0000 C CNN
F 2 "" H 3550 3800 50  0000 C CNN
F 3 "" H 3550 3800 50  0000 C CNN
	1    3550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3400 5000 3400
Wire Wire Line
	5150 3500 4600 3500
Wire Wire Line
	3650 3600 4200 3600
Wire Wire Line
	5150 3700 3800 3700
Wire Wire Line
	3550 3700 3550 3800
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5AE2E8B5
P 6650 3500
F 0 "J4" H 6730 3492 50  0000 L CNN
F 1 "Conn_01x04" H 6730 3401 50  0000 L CNN
F 2 "" H 6650 3500 50  0001 C CNN
F 3 "~" H 6650 3500 50  0001 C CNN
	1    6650 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 3700 7200 3700
Text Label 7100 3400 2    50   ~ 0
3v3
Text Label 7100 3600 2    50   ~ 0
SDA
Text Label 7100 3500 2    50   ~ 0
SCL
$Comp
L open-automation:A2235-H-dk_RF-Receivers U12
U 1 1 5AE2F0AB
P 9150 3250
F 0 "U12" H 9250 4050 60  0000 C CNN
F 1 "A2235-H" H 9250 3944 60  0000 C CNN
F 2 "digikey-footprints:GSM_Module_17.8x16.5mm_A2235-H" H 9350 3450 60  0001 L CNN
F 3 "http://update.maestro-wireless.com/GNSS/A2235-H/Maestro_A2135_HA2235_H_v11.pdf" H 9350 3550 60  0001 L CNN
F 4 "1530-1011-1-ND" H 9350 3650 60  0001 L CNN "Digi-Key_PN"
F 5 "A2235-H" H 9350 3750 60  0001 L CNN "MPN"
F 6 "RF/IF and RFID" H 9350 3850 60  0001 L CNN "Category"
F 7 "RF Receivers" H 9350 3950 60  0001 L CNN "Family"
F 8 "http://update.maestro-wireless.com/GNSS/A2235-H/Maestro_A2135_HA2235_H_v11.pdf" H 9350 4050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/maestro-wireless-solutions/A2235-H/1530-1011-1-ND/4898055" H 9350 4150 60  0001 L CNN "DK_Detail_Page"
F 10 "MODULE GPS SIRFSTARIV" H 9350 4250 60  0001 L CNN "Description"
F 11 "Maestro Wireless Solutions" H 9350 4350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9350 4450 60  0001 L CNN "Status"
	1    9150 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7650 3400 7650 2350
Wire Wire Line
	7650 2350 7850 2350
Wire Wire Line
	9050 2350 9050 2650
Wire Wire Line
	6850 3400 7650 3400
Wire Wire Line
	7200 4750 8850 4750
Wire Wire Line
	8850 4750 8850 4450
Wire Wire Line
	7200 3700 7200 4750
Wire Wire Line
	8850 4750 8950 4750
Wire Wire Line
	8950 4750 8950 4450
Connection ~ 8850 4750
Wire Wire Line
	9050 4450 9050 4750
Wire Wire Line
	9050 4750 8950 4750
Connection ~ 8950 4750
Text Label 7600 4750 0    50   ~ 0
GND_Plane
Wire Wire Line
	8050 3500 8050 3350
Wire Wire Line
	8050 3350 8350 3350
Wire Wire Line
	6850 3500 8050 3500
Wire Wire Line
	8200 3600 8200 3450
Wire Wire Line
	8200 3450 8350 3450
Wire Wire Line
	6850 3600 8200 3600
Text HLabel 8050 3850 0    50   Input ~ 0
GPS_Antenna
Wire Wire Line
	8350 3850 8050 3850
Text Label 8050 3950 2    50   ~ 0
3v3
$Comp
L Device:R R33
U 1 1 5AEA67C5
P 5000 3050
F 0 "R33" H 5070 3096 50  0000 L CNN
F 1 "Jumper" H 5070 3005 50  0000 L CNN
F 2 "" V 4930 3050 50  0001 C CNN
F 3 "~" H 5000 3050 50  0001 C CNN
	1    5000 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 5AEA683D
P 4600 3050
F 0 "R32" H 4670 3096 50  0000 L CNN
F 1 "Jumper" H 4670 3005 50  0000 L CNN
F 2 "" V 4530 3050 50  0001 C CNN
F 3 "~" H 4600 3050 50  0001 C CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 5AEA685D
P 4200 3050
F 0 "R31" H 4270 3096 50  0000 L CNN
F 1 "Jumper" H 4270 3005 50  0000 L CNN
F 2 "" V 4130 3050 50  0001 C CNN
F 3 "~" H 4200 3050 50  0001 C CNN
	1    4200 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 5AEA687F
P 3800 3050
F 0 "R30" H 3870 3096 50  0000 L CNN
F 1 "Jumper" H 3870 3005 50  0000 L CNN
F 2 "" V 3730 3050 50  0001 C CNN
F 3 "~" H 3800 3050 50  0001 C CNN
	1    3800 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3200 3800 3700
Connection ~ 3800 3700
Wire Wire Line
	3800 3700 3550 3700
Wire Wire Line
	4200 3200 4200 3600
Connection ~ 4200 3600
Wire Wire Line
	4200 3600 5150 3600
Wire Wire Line
	4600 3200 4600 3500
Connection ~ 4600 3500
Wire Wire Line
	4600 3500 3650 3500
Wire Wire Line
	5000 3200 5000 3400
Connection ~ 5000 3400
Wire Wire Line
	5000 3400 5150 3400
Text Label 5000 2750 2    50   ~ 0
3v3
Text Label 4600 2750 2    50   ~ 0
SCL
Text Label 4200 2750 2    50   ~ 0
SDA
Text Label 3800 2750 2    50   ~ 0
GND_Plane
Wire Wire Line
	5000 2900 5000 2750
Wire Wire Line
	4600 2750 4600 2900
Wire Wire Line
	4200 2900 4200 2750
Wire Wire Line
	3800 2750 3800 2900
Wire Wire Line
	8050 3950 8350 3950
$Comp
L Device:C C41
U 1 1 5AEADD26
P 7850 2550
F 0 "C41" H 7965 2596 50  0000 L CNN
F 1 "C" H 7965 2505 50  0000 L CNN
F 2 "" H 7888 2400 50  0001 C CNN
F 3 "~" H 7850 2550 50  0001 C CNN
	1    7850 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C43
U 1 1 5AEADD96
P 8200 2550
F 0 "C43" H 8315 2596 50  0000 L CNN
F 1 "C" H 8315 2505 50  0000 L CNN
F 2 "" H 8238 2400 50  0001 C CNN
F 3 "~" H 8200 2550 50  0001 C CNN
	1    8200 2550
	1    0    0    -1  
$EndComp
Text Label 8350 2800 0    50   ~ 0
GND_Plane
Wire Wire Line
	8350 2800 8200 2800
Wire Wire Line
	8200 2800 8200 2700
Wire Wire Line
	8200 2400 8200 2350
Connection ~ 8200 2350
Wire Wire Line
	8200 2350 9050 2350
Wire Wire Line
	7850 2400 7850 2350
Connection ~ 7850 2350
Wire Wire Line
	7850 2350 8200 2350
Wire Wire Line
	7850 2700 7850 2800
Wire Wire Line
	7850 2800 8200 2800
Connection ~ 8200 2800
$Comp
L Device:C C44
U 1 1 5AEB1B71
P 10150 3350
F 0 "C44" V 9898 3350 50  0000 C CNN
F 1 "C" V 9989 3350 50  0000 C CNN
F 2 "" H 10188 3200 50  0001 C CNN
F 3 "~" H 10150 3350 50  0001 C CNN
	1    10150 3350
	0    1    1    0   
$EndComp
$Comp
L Device:C C42
U 1 1 5AEB1C00
P 8100 2950
F 0 "C42" V 7848 2950 50  0000 C CNN
F 1 "C" V 7939 2950 50  0000 C CNN
F 2 "" H 8138 2800 50  0001 C CNN
F 3 "~" H 8100 2950 50  0001 C CNN
	1    8100 2950
	0    1    1    0   
$EndComp
Text Notes 5250 1450 0    50   ~ 0
This block will be a piece that can be either left on the board and the antenna can be installed, or can be broken off and wired up to the bezel \n
Wire Notes Line
	6100 5750 10800 5750
Wire Notes Line
	10800 5750 10800 1550
Wire Notes Line
	10800 1550 6100 1550
Wire Notes Line
	6100 1550 6100 5750
$EndSCHEMATC
