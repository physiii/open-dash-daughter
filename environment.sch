EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 6 11
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
L open-automation:GND #PWR026
U 1 1 59C50BD3
P 1850 1625
F 0 "#PWR026" H 1850 1375 50  0001 C CNN
F 1 "GND" H 1850 1475 50  0000 C CNN
F 2 "" H 1850 1625 50  0000 C CNN
F 3 "" H 1850 1625 50  0000 C CNN
	1    1850 1625
	1    0    0    -1  
$EndComp
$Comp
L open-automation:SI7020-A20 U5
U 1 1 59C50BD4
P 2350 1575
F 0 "U5" H 2550 1475 60  0000 C CNN
F 1 "SI7020-A20" H 2350 1775 60  0000 C CNN
F 2 "open-automation:SI7020-A20" H 2350 1275 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/silicon-labs/SI7020-A20-GM1R/336-3596-1-ND/5823452" H 2350 1375 60  0001 C CNN
F 4 "SI7020-A20-GM1R" H 2450 1375 60  0001 C CNN "Part Number"
	1    2350 1575
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_0.1uF C9
U 1 1 59C50BD5
P 1550 1675
F 0 "C9" H 1575 1775 50  0000 L CNN
F 1 "C_0.1uF" H 1250 1575 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1650 1975 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 1550 1425 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 1675 1875 60  0001 C CNN "Part Number"
	1    1550 1675
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR027
U 1 1 59C50BD6
P 1550 1875
F 0 "#PWR027" H 1550 1625 50  0001 C CNN
F 1 "GND" H 1550 1725 50  0000 C CNN
F 2 "" H 1550 1875 50  0000 C CNN
F 3 "" H 1550 1875 50  0000 C CNN
	1    1550 1875
	1    0    0    -1  
$EndComp
Text Label 2050 1250 0    60   ~ 0
Temp-Humidty
$Comp
L open-automation:C_0.1uF C11
U 1 1 5AC2BC67
P 4200 1675
F 0 "C11" V 4275 1725 50  0000 L CNN
F 1 "C_0.1uF" V 4350 1525 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4300 1975 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 4200 1425 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 4325 1875 60  0001 C CNN "Part Number"
	1    4200 1675
	-1   0    0    1   
$EndComp
$Comp
L open-automation:GND #PWR030
U 1 1 5AC2BC6E
P 4200 1875
F 0 "#PWR030" H 4200 1625 50  0001 C CNN
F 1 "GND" V 4275 1800 50  0000 C CNN
F 2 "" H 4200 1875 50  0000 C CNN
F 3 "" H 4200 1875 50  0000 C CNN
	1    4200 1875
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR031
U 1 1 5AC2BC85
P 5400 1750
F 0 "#PWR031" H 5400 1500 50  0001 C CNN
F 1 "GND" H 5400 1600 50  0000 C CNN
F 2 "" H 5400 1750 50  0000 C CNN
F 3 "" H 5400 1750 50  0000 C CNN
	1    5400 1750
	1    0    0    -1  
$EndComp
$Comp
L open-automation:Power-Monitor-INA219 U7
U 1 1 5AC2BC90
P 5925 1575
F 0 "U7" H 6125 1325 60  0000 C CNN
F 1 "Power-Monitor-INA219" H 5950 1875 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-8_Handsoldering" H 6025 1225 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/texas-instruments/INA219AIDCNR/296-23770-1-ND/1952550" H 6125 1325 60  0001 C CNN
F 4 "INA219AIDCNR" H 6225 1425 60  0001 C CNN "Part Number"
	1    5925 1575
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR032
U 1 1 5AC2BC97
P 6525 1400
F 0 "#PWR032" H 6525 1150 50  0001 C CNN
F 1 "GND" H 6425 1400 50  0000 C CNN
F 2 "" H 6525 1400 50  0000 C CNN
F 3 "" H 6525 1400 50  0000 C CNN
	1    6525 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 1475 1550 1475
Wire Wire Line
	1900 1575 1850 1575
Wire Wire Line
	2850 1575 2750 1575
Wire Wire Line
	2750 1475 2850 1475
Wire Wire Line
	1550 1525 1550 1475
Connection ~ 1550 1475
Wire Wire Line
	1550 1875 1550 1825
Wire Wire Line
	1850 1575 1850 1625
Wire Wire Line
	3925 1425 4200 1425
Wire Wire Line
	5075 1950 5075 1625
Wire Wire Line
	5400 1750 5400 1725
Wire Wire Line
	5400 1725 5450 1725
Wire Wire Line
	4825 1950 4900 1950
Wire Wire Line
	4900 1950 4900 1875
Connection ~ 4900 1950
Wire Wire Line
	4900 1575 4900 1525
Connection ~ 4900 1525
Connection ~ 4200 1425
Wire Wire Line
	4200 1875 4200 1825
Wire Wire Line
	6375 1425 6525 1425
Wire Wire Line
	6500 1625 6375 1625
Wire Wire Line
	6500 1725 6375 1725
Wire Wire Line
	6525 1425 6525 1400
Wire Wire Line
	4825 1525 4900 1525
Wire Wire Line
	6500 1525 6375 1525
Wire Wire Line
	4200 1425 4200 1525
Wire Wire Line
	5075 1625 5450 1625
$Comp
L open-automation:R_10m R13
U 1 1 5AC78E3A
P 4900 1750
F 0 "R13" H 4875 1750 50  0000 C CNN
F 1 "R_10m" H 4875 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_2512_HandSoldering" H 4875 1575 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/bourns-inc/CRA2512-FZ-R010ELF/CRA2512-FZ-R010ELFCT-ND/1775054" H 4900 1500 50  0001 C CNN
F 4 "CRA2512-FZ-R010ELF" H 4900 1825 60  0001 C CNN "Part Number"
	1    4900 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 1475 1900 1475
Wire Wire Line
	4900 1950 5075 1950
Wire Wire Line
	4900 1525 5450 1525
Wire Wire Line
	4200 1425 5450 1425
Text HLabel 1400 1475 0    60   Input ~ 0
3V3
Text HLabel 2850 1475 2    60   Input ~ 0
SCL
Text HLabel 2850 1575 2    60   Input ~ 0
SDA
Text HLabel 3925 1425 0    60   Input ~ 0
3V3
Text HLabel 4825 1525 0    60   Input ~ 0
BATTERY
Text HLabel 4825 1950 0    60   Input ~ 0
V_MAIN
Text HLabel 6500 1525 2    60   Input ~ 0
3V3
Text HLabel 6500 1625 2    60   Input ~ 0
SDA
Text HLabel 6500 1725 2    60   Input ~ 0
SCL
$EndSCHEMATC
