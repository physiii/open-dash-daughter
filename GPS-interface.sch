EESchema Schematic File Version 5
EELAYER 29 0
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
P 7025 3150
F 0 "U13" H 7550 3600 60  0000 C CNN
F 1 "A2235-H" H 6825 3600 60  0000 C CNN
F 2 "digikey-footprints:GSM_Module_17.8x16.5mm_A2235-H" H 7225 3350 60  0001 L CNN
F 3 "http://update.maestro-wireless.com/GNSS/A2235-H/Maestro_A2135_HA2235_H_v11.pdf" H 7225 3450 60  0001 L CNN
F 4 "1530-1011-1-ND" H 7225 3550 60  0001 L CNN "Digi-Key_PN"
F 5 "A2235-H" H 7225 3650 60  0001 L CNN "MPN"
F 6 "RF/IF and RFID" H 7225 3750 60  0001 L CNN "Category"
F 7 "RF Receivers" H 7225 3850 60  0001 L CNN "Family"
F 8 "http://update.maestro-wireless.com/GNSS/A2235-H/Maestro_A2135_HA2235_H_v11.pdf" H 7225 3950 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/maestro-wireless-solutions/A2235-H/1530-1011-1-ND/4898055" H 7225 4050 60  0001 L CNN "DK_Detail_Page"
F 10 "MODULE GPS SIRFSTARIV" H 7225 4150 60  0001 L CNN "Description"
F 11 "Maestro Wireless Solutions" H 7225 4250 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7225 4350 60  0001 L CNN "Status"
	1    7025 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6225 3750 5925 3750
Wire Wire Line
	3475 2750 3475 2700
Wire Wire Line
	3475 2700 3650 2700
Wire Wire Line
	3475 3050 3475 3150
Wire Wire Line
	3475 3150 3625 3150
$Comp
L open-automation:C_1uF C42
U 1 1 5B14A0F4
P 3475 2900
F 0 "C42" H 3375 3000 50  0000 L CNN
F 1 "C_1uF" H 3250 2800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3575 3200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/CC0603ZRY5V7BB105/311-1372-1-ND/2103156" H 3475 2650 50  0001 C CNN
F 4 "CC0603ZRY5V7BB105" H 3600 3100 60  0001 C CNN "Part Number"
	1    3475 2900
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_0.1uF C43
U 1 1 5B14A2C2
P 3825 2900
F 0 "C43" H 3850 2975 50  0000 L CNN
F 1 "C_0.1uF" H 3850 2800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3925 3200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 3825 2650 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 3950 3100 60  0001 C CNN "Part Number"
	1    3825 2900
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0109
U 1 1 5B14A58A
P 3625 3200
F 0 "#PWR0109" H 3625 2950 50  0001 C CNN
F 1 "GND" H 3630 3027 50  0000 C CNN
F 2 "" H 3625 3200 50  0000 C CNN
F 3 "" H 3625 3200 50  0000 C CNN
	1    3625 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3625 3200 3625 3150
Wire Wire Line
	3625 3150 3825 3150
Connection ~ 3625 3150
$Comp
L open-automation:GND #PWR0110
U 1 1 5B14BBD1
P 6825 4450
F 0 "#PWR0110" H 6825 4200 50  0001 C CNN
F 1 "GND" H 6830 4277 50  0000 C CNN
F 2 "" H 6825 4450 50  0000 C CNN
F 3 "" H 6825 4450 50  0000 C CNN
	1    6825 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6725 4350 6725 4400
Wire Wire Line
	6725 4400 6825 4400
Wire Wire Line
	6925 4400 6925 4350
Wire Wire Line
	6825 4350 6825 4400
Wire Wire Line
	6825 4400 6925 4400
Connection ~ 6825 4400
Wire Wire Line
	6825 4450 6825 4400
Text HLabel 6925 2475 1    50   Input ~ 0
3V3
Text HLabel 1650 5075 1    50   Input ~ 0
3V3
$EndSCHEMATC
