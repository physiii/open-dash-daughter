EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 13
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
L Interface_CAN_LIN:MCP2551-I-SN U?
U 1 1 5ACF8C2F
P 9700 1950
F 0 "U?" H 9700 2528 50  0000 C CNN
F 1 "MCP2551-I-SN" H 9700 2437 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9700 1450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 9700 1950 50  0001 C CNN
	1    9700 1950
	1    0    0    -1  
$EndComp
Text Label 8800 1850 0    50   ~ 0
CAN_RX
Text Label 8800 1750 0    50   ~ 0
CAN_TX
Wire Wire Line
	9200 1750 8800 1750
Wire Wire Line
	8800 1850 9200 1850
$EndSCHEMATC
