EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 9 13
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
L open-automation:2098978-1 P?
U 1 1 5ADA6B8C
P 3400 10600
F 0 "P?" H -2950 12965 50  0000 C CNN
F 1 "2098978-1" H -2950 12874 50  0000 C CNN
F 2 "" V -1900 12600 50  0001 C CNN
F 3 "" V -1900 12600 50  0001 C CNN
	1    3400 10600
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5AE24043
P 8200 1700
F 0 "J?" H 8280 1692 50  0000 L CNN
F 1 "Conn_01x02" H 8280 1601 50  0000 L CNN
F 2 "" H 8200 1700 50  0001 C CNN
F 3 "~" H 8200 1700 50  0001 C CNN
	1    8200 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5AE240A7
P 8250 2400
F 0 "J?" H 8330 2392 50  0000 L CNN
F 1 "Conn_01x02" H 8330 2301 50  0000 L CNN
F 2 "" H 8250 2400 50  0001 C CNN
F 3 "~" H 8250 2400 50  0001 C CNN
	1    8250 2400
	1    0    0    -1  
$EndComp
Text Notes 8000 1500 0    50   ~ 0
AM/FM Antenna
Text Notes 8000 2200 0    50   ~ 0
GPS Antenna
$Comp
L power:GNDA #PWR?
U 1 1 5AE24110
P 7800 1900
F 0 "#PWR?" H 7800 1650 50  0001 C CNN
F 1 "GNDA" H 7805 1727 50  0000 C CNN
F 2 "" H 7800 1900 50  0001 C CNN
F 3 "" H 7800 1900 50  0001 C CNN
	1    7800 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5AE24128
P 7900 2600
F 0 "#PWR?" H 7900 2350 50  0001 C CNN
F 1 "GNDA" H 7905 2427 50  0000 C CNN
F 2 "" H 7900 2600 50  0001 C CNN
F 3 "" H 7900 2600 50  0001 C CNN
	1    7900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1900 7800 1800
Wire Wire Line
	7800 1800 8000 1800
Wire Wire Line
	7900 2600 7900 2500
Wire Wire Line
	7900 2500 8050 2500
Text HLabel 7500 1700 0    50   Input ~ 0
AMF_Antenna
Text HLabel 7500 2400 0    50   Input ~ 0
GPS_Antenna
Wire Wire Line
	8000 1700 7500 1700
Wire Wire Line
	7500 2400 8050 2400
Text HLabel 4300 1150 0    50   Input ~ 0
can_+
Text HLabel 4300 1550 0    50   Input ~ 0
aux_R
Text HLabel 4300 1650 0    50   Input ~ 0
aux_ref
Text HLabel 4300 2300 0    50   Input ~ 0
can_-
Text HLabel 4300 2400 0    50   Input ~ 0
BL
Text HLabel 4300 2900 0    50   Input ~ 0
Ground
Text HLabel 4300 4150 0    50   Input ~ 0
Mic_-
Text HLabel 4300 4250 0    50   Input ~ 0
Mic_+
Text HLabel 4300 4450 0    50   Input ~ 0
CameraSignal
Text HLabel 4300 4550 0    50   Input ~ 0
CameraShield
Text HLabel 4300 4650 0    50   Input ~ 0
CameraReturn
Text HLabel 4300 5750 0    50   Input ~ 0
Ground
Text HLabel 4300 5850 0    50   Input ~ 0
12vAlwaysOn
Text HLabel 4300 6050 0    50   Input ~ 0
rightRearSpeaker+
Text HLabel 4300 6150 0    50   Input ~ 0
rightFrontSpeaker+
Text HLabel 4300 6250 0    50   Input ~ 0
leftFrontSpeaker+
Text HLabel 4300 6350 0    50   Input ~ 0
leftRearSpeaker+
Text HLabel 4300 6550 0    50   Input ~ 0
rightRearSpeaker-
Text HLabel 4300 6650 0    50   Input ~ 0
rightFrontSpeaker-
Text HLabel 4300 6750 0    50   Input ~ 0
leftFrontSpeaker-
Text HLabel 4300 6850 0    50   Input ~ 0
leftRearSpeaker-
Wire Wire Line
	4300 4150 4650 4150
Wire Wire Line
	4650 4250 4300 4250
Wire Wire Line
	4650 4450 4300 4450
Wire Wire Line
	4300 4550 4650 4550
Wire Wire Line
	4650 4650 4300 4650
Wire Wire Line
	4300 5750 4650 5750
Wire Wire Line
	4650 5850 4300 5850
Wire Wire Line
	4300 6050 4650 6050
Wire Wire Line
	4650 6150 4300 6150
Wire Wire Line
	4300 6250 4650 6250
Wire Wire Line
	4650 6350 4300 6350
Wire Wire Line
	4300 6550 4650 6550
Wire Wire Line
	4650 6650 4300 6650
Wire Wire Line
	4300 6750 4650 6750
Wire Wire Line
	4650 6850 4300 6850
Wire Wire Line
	4650 1550 4300 1550
Wire Wire Line
	4300 1650 4650 1650
Wire Wire Line
	4300 1150 4650 1150
Wire Wire Line
	4300 2300 4650 2300
Wire Wire Line
	4650 2400 4300 2400
Wire Wire Line
	4300 2900 4650 2900
Text HLabel 4300 2800 0    50   Input ~ 0
auxDet
Text HLabel 4300 2700 0    50   Input ~ 0
auxL
Wire Wire Line
	4650 2700 4300 2700
Wire Wire Line
	4300 2800 4650 2800
$EndSCHEMATC
