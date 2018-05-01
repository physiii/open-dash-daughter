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
P 5350 3500
F 0 "J?" H 5430 3492 50  0000 L CNN
F 1 "Conn_01x04" H 5430 3401 50  0000 L CNN
F 2 "" H 5350 3500 50  0001 C CNN
F 3 "~" H 5350 3500 50  0001 C CNN
	1    5350 3500
	1    0    0    -1  
$EndComp
Text HLabel 4900 3400 0    50   Input ~ 0
3v3
Text HLabel 4900 3600 0    50   Input ~ 0
SDA
Text HLabel 4900 3500 0    50   Input ~ 0
SCL
$Comp
L open-automation:GND #PWR?
U 1 1 5AE2E7DF
P 4800 3800
F 0 "#PWR?" H 4800 3550 50  0001 C CNN
F 1 "GND" H 4805 3627 50  0000 C CNN
F 2 "" H 4800 3800 50  0000 C CNN
F 3 "" H 4800 3800 50  0000 C CNN
	1    4800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3400 5150 3400
Wire Wire Line
	5150 3500 4900 3500
Wire Wire Line
	4900 3600 5150 3600
Wire Wire Line
	5150 3700 4800 3700
Wire Wire Line
	4800 3700 4800 3800
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5AE2E8B5
P 6650 3500
F 0 "J?" H 6730 3492 50  0000 L CNN
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
L open-dash-daughterboard-rescue:A2235-H-dk_RF-Receivers U?
U 1 1 5AE2F0AB
P 9150 3250
F 0 "U?" H 9250 4050 60  0000 C CNN
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
	7650 2350 9050 2350
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
GPS_Ant
Wire Wire Line
	8350 3850 8050 3850
$EndSCHEMATC
