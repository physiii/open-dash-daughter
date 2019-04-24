EESchema Schematic File Version 5
LIBS:open-dash-daughterboard-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 3 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1350 1250 0    50   Input ~ 0
3V3
$Comp
L open-automation:GND #PWR060
U 1 1 5AE0458E
P 4650 3300
F 0 "#PWR060" H 4650 3050 50  0001 C CNN
F 1 "GND" H 4655 3127 50  0000 C CNN
F 2 "" H 4650 3300 50  0000 C CNN
F 3 "" H 4650 3300 50  0000 C CNN
	1    4650 3300
	1    0    0    -1  
$EndComp
Text HLabel 1350 1450 0    50   Input ~ 0
SDA
Text HLabel 1350 1350 0    50   Input ~ 0
SCL
Text Label 1400 1250 0    50   ~ 0
3V3
Wire Wire Line
	1350 1250 1400 1250
$Comp
L open-automation:AudioJack4_TTRS J2
U 1 1 5CC5FF37
P 4400 3050
F 0 "J2" H 4200 3250 50  0000 C CNN
F 1 "AudioJack4_TTRS" H 4350 2700 50  0001 C CNN
F 2 "open-automation:AudioConn-SJ1-2503A" H 4350 2500 50  0001 C CNN
F 3 "https://www.cui.com/product/resource/sj1-2503a.pdf" H 4400 3050 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 4050 2600 50  0001 C CNN "Website"
F 5 "SJ1-2503A" H 4300 2400 50  0001 C CNN "Part Number"
	1    4400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3300 4650 3250
Wire Wire Line
	4650 3250 4600 3250
Wire Wire Line
	4600 3050 4600 2950
Text Label 4650 2950 0    50   ~ 0
L_FM
Wire Wire Line
	4650 2950 4600 2950
Connection ~ 4600 2950
Text Label 4650 3150 0    50   ~ 0
R_FM
Wire Wire Line
	4650 3150 4600 3150
Text Label 1400 1350 0    50   ~ 0
SCL
Text Label 1400 1450 0    50   ~ 0
SDA
Wire Wire Line
	1400 1350 1350 1350
Wire Wire Line
	1350 1450 1400 1450
$Comp
L open-automation:GND #PWR0107
U 1 1 5CC65603
P 4650 4200
F 0 "#PWR0107" H 4650 3950 50  0001 C CNN
F 1 "GND" H 4655 4027 50  0000 C CNN
F 2 "" H 4650 4200 50  0000 C CNN
F 3 "" H 4650 4200 50  0000 C CNN
	1    4650 4200
	1    0    0    -1  
$EndComp
$Comp
L open-automation:AudioJack4_TTRS J3
U 1 1 5CC65617
P 4400 3950
F 0 "J3" H 4200 4150 50  0000 C CNN
F 1 "AudioJack4_TTRS" H 4350 3600 50  0001 C CNN
F 2 "open-automation:AudioConn-SJ1-2503A" H 4350 3400 50  0001 C CNN
F 3 "https://www.cui.com/product/resource/sj1-2503a.pdf" H 4400 3950 50  0001 C CNN
F 4 "https://www.digikey.com/product-detail/en/cui-inc/SJ1-2503A/CP1-2503A-ND/738680" H 4050 3500 50  0001 C CNN "Website"
F 5 "SJ1-2503A" H 4300 3300 50  0001 C CNN "Part Number"
	1    4400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4200 4650 4150
Wire Wire Line
	4650 4150 4600 4150
Wire Wire Line
	4600 3950 4600 3850
Wire Wire Line
	4650 4050 4600 4050
Wire Wire Line
	4650 4050 4650 4150
Connection ~ 4650 4150
Text Label 4650 3850 0    50   ~ 0
AMF_Antenna
Connection ~ 4600 3850
Wire Wire Line
	4650 3850 4600 3850
$Comp
L open-automation:RDA5807M U4
U 1 1 5CC6B0DA
P 5900 3250
F 0 "U4" H 6150 3275 50  0000 C CNN
F 1 "RDA5807M" H 6150 3184 50  0000 C CNN
F 2 "open-automation:RDA5807M" H 6150 3450 50  0001 C CNN
F 3 "http://cxem.net/tuner/files/tuner84_RDA5807M_datasheet_v1.pdf" H 5900 2450 50  0001 C CNN
F 4 "https://store.open-electronics.org/87.6-108-MHz-StereoFM-Radio-Module-RDA5807M" H 5950 3350 50  0001 C CNN "Website"
F 5 "RDA5807M" H 6150 3250 50  0001 C CNN "Part Number"
	1    5900 3250
	1    0    0    -1  
$EndComp
Text Label 6550 3550 0    50   ~ 0
SDA
Text Label 6550 3650 0    50   ~ 0
SCL
Text Label 6550 3450 0    50   ~ 0
3V3
Text Label 5750 3550 2    50   ~ 0
L_FM
Text Label 5750 3650 2    50   ~ 0
R_FM
$Comp
L open-automation:GND #PWR0108
U 1 1 5CC6BDF5
P 5750 3800
F 0 "#PWR0108" H 5750 3550 50  0001 C CNN
F 1 "GND" H 5755 3627 50  0000 C CNN
F 2 "" H 5750 3800 50  0000 C CNN
F 3 "" H 5750 3800 50  0000 C CNN
	1    5750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3800 5750 3750
Wire Wire Line
	5750 3750 5800 3750
Wire Wire Line
	5800 3650 5750 3650
Wire Wire Line
	5750 3550 5800 3550
Wire Wire Line
	6550 3650 6500 3650
Wire Wire Line
	6500 3550 6550 3550
Wire Wire Line
	6550 3450 6500 3450
Text Label 5750 3450 2    50   ~ 0
AMF_Antenna
Wire Wire Line
	5750 3450 5800 3450
$Comp
L open-automation:ANTENNA-COAX-AUTO U3
U 1 1 5CC7C70C
P 4550 5050
F 0 "U3" H 4325 5275 50  0000 C CNN
F 1 "ANTENNA-COAX-AUTO" H 4325 5184 50  0000 C CNN
F 2 "open-automation:ANTENNA-AUTO- 638817-4" H 4350 5250 50  0001 C CNN
F 3 "https://www.mouser.com/ProductDetail/TE-Connectivity/638817-4?qs=sGAEpiMZZMuLQf%252BEuFsOrg13rQmhiDiQDoRLLQMK5p8%3D" H 4550 5050 50  0001 C CNN
F 4 "638817-4" H 4350 5150 50  0001 C CNN "Part Number"
	1    4550 5050
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0109
U 1 1 5CC7CA63
P 3950 5400
F 0 "#PWR0109" H 3950 5150 50  0001 C CNN
F 1 "GND" H 3955 5227 50  0000 C CNN
F 2 "" H 3950 5400 50  0000 C CNN
F 3 "" H 3950 5400 50  0000 C CNN
	1    3950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5400 3950 5350
Wire Wire Line
	3950 5350 4000 5350
Wire Wire Line
	4000 5250 3950 5250
Wire Wire Line
	3950 5250 3950 5350
Connection ~ 3950 5350
Wire Wire Line
	4000 5150 3950 5150
Wire Wire Line
	3950 5150 3950 5250
Connection ~ 3950 5250
Wire Wire Line
	4000 5050 3950 5050
Wire Wire Line
	3950 5050 3950 5150
Connection ~ 3950 5150
Text Label 4700 5200 0    50   ~ 0
AMF_Antenna
Wire Wire Line
	4650 5200 4700 5200
$EndSCHEMATC
