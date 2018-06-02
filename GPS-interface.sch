EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 13
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
L open-automation:A2235-H-dk_RF-Receivers U13
U 1 1 5AE2F0AB
P 9150 3250
F 0 "U13" H 9250 4050 60  0000 C CNN
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
	7650 2350 7850 2350
Wire Wire Line
	9050 2350 9050 2650
Wire Wire Line
	8050 3500 8050 3350
Wire Wire Line
	8050 3350 8350 3350
Wire Wire Line
	8200 3600 8200 3450
Wire Wire Line
	8200 3450 8350 3450
Wire Wire Line
	8350 3850 8050 3850
Text Label 8050 3950 2    50   ~ 0
3v3
Wire Wire Line
	8050 3950 8350 3950
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
	7850 2800 8000 2800
$Comp
L open-automation:C_1uF C42
U 1 1 5B14A0F4
P 7850 2550
F 0 "C42" H 7750 2650 50  0000 L CNN
F 1 "C_1uF" H 7625 2450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7950 2850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/CC0603ZRY5V7BB105/311-1372-1-ND/2103156" H 7850 2300 50  0001 C CNN
F 4 "CC0603ZRY5V7BB105" H 7975 2750 60  0001 C CNN "Part Number"
	1    7850 2550
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_0.1uF C43
U 1 1 5B14A2C2
P 8200 2550
F 0 "C43" H 8225 2625 50  0000 L CNN
F 1 "C_0.1uF" H 8225 2450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8300 2850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 8200 2300 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 8325 2750 60  0001 C CNN "Part Number"
	1    8200 2550
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0109
U 1 1 5B14A58A
P 8000 2850
F 0 "#PWR0109" H 8000 2600 50  0001 C CNN
F 1 "GND" H 8005 2677 50  0000 C CNN
F 2 "" H 8000 2850 50  0000 C CNN
F 3 "" H 8000 2850 50  0000 C CNN
	1    8000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2850 8000 2800
Wire Wire Line
	8000 2800 8200 2800
Connection ~ 8000 2800
$Comp
L open-automation:GND #PWR0110
U 1 1 5B14BBD1
P 8950 4550
F 0 "#PWR0110" H 8950 4300 50  0001 C CNN
F 1 "GND" H 8955 4377 50  0000 C CNN
F 2 "" H 8950 4550 50  0000 C CNN
F 3 "" H 8950 4550 50  0000 C CNN
	1    8950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4450 8850 4500
Wire Wire Line
	8850 4500 8950 4500
Wire Wire Line
	9050 4500 9050 4450
Wire Wire Line
	8950 4450 8950 4500
Wire Wire Line
	8950 4500 9050 4500
Connection ~ 8950 4500
Wire Wire Line
	8950 4550 8950 4500
Text HLabel 7650 2350 0    50   Input ~ 0
3v3
$EndSCHEMATC
