EESchema Schematic File Version 5
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 13
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6425 4975 2    60   Input ~ 0
RXD
Text HLabel 6075 5075 2    60   Input ~ 0
TXD
Wire Wire Line
	6075 5075 5975 5075
Wire Wire Line
	6075 4975 5975 4975
$Comp
L open-automation:USB_IC-CP2104 U17
U 1 1 5B157129
P 5275 5075
F 0 "U17" H 5800 4100 50  0000 C CNN
F 1 "USB_IC-CP2104" H 4875 4125 50  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-24-1EP_3x3mm_Pitch0.4mm" H 5425 4125 50  0001 L CNN
F 3 "https://www.digikey.com/product-detail/en/silicon-labs/CP2102N-A01-GQFN20/336-3692-ND/6012517" H 4725 6325 50  0001 C CNN
F 4 "CP2102N-A01-GQFN20" H 5275 3807 50  0001 C CNN "Part Number"
	1    5275 5075
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0115
U 1 1 5B15ED00
P 5275 6125
F 0 "#PWR0115" H 5275 5875 50  0001 C CNN
F 1 "GND" H 5275 5975 50  0000 C CNN
F 2 "" H 5275 6125 50  0000 C CNN
F 3 "" H 5275 6125 50  0000 C CNN
	1    5275 6125
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 6075 5275 6125
Text HLabel 3425 4475 0    60   Input ~ 0
5V
$Comp
L open-automation:C_10uF C13
U 1 1 5B160737
P 3775 4625
F 0 "C13" H 3675 4700 50  0000 L CNN
F 1 "C_10uF" H 3500 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3875 4925 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/murata-electronics-north-america/GRM188R61A106ME69D/490-10475-1-ND/5026393" H 3775 4375 50  0001 C CNN
F 4 "GRM188R61A106ME69D" H 3900 4825 60  0001 C CNN "Part Number"
	1    3775 4625
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_0.1uF C14
U 1 1 5B1608B3
P 4000 4625
F 0 "C14" H 4115 4671 50  0000 L CNN
F 1 "C_0.1uF" H 4115 4580 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4100 4925 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 4000 4375 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 4125 4825 60  0001 C CNN "Part Number"
	1    4000 4625
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 4475 3775 4475
Wire Wire Line
	3775 4475 4000 4475
Connection ~ 3775 4475
Wire Wire Line
	4000 4475 4475 4475
Connection ~ 4000 4475
Wire Wire Line
	4000 4775 4000 4825
Wire Wire Line
	4000 4825 3900 4825
Wire Wire Line
	3775 4825 3775 4775
$Comp
L open-automation:GND #PWR0116
U 1 1 5B1612EC
P 3900 4875
F 0 "#PWR0116" H 3900 4625 50  0001 C CNN
F 1 "GND" H 3900 4725 50  0000 C CNN
F 2 "" H 3900 4875 50  0000 C CNN
F 3 "" H 3900 4875 50  0000 C CNN
	1    3900 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4825 3900 4875
Connection ~ 3900 4825
Wire Wire Line
	3900 4825 3775 4825
Text Label 4400 4975 0    50   ~ 0
D_N
Text Label 4400 5075 0    50   ~ 0
D_P
Wire Wire Line
	4400 4975 4575 4975
Wire Wire Line
	4575 5075 4400 5075
Wire Wire Line
	4575 4675 4475 4675
Wire Wire Line
	4475 4675 4475 4475
Connection ~ 4475 4475
Wire Wire Line
	4475 4475 4575 4475
Text Label 6025 4675 0    50   ~ 0
DTR
Text Label 6025 5275 0    50   ~ 0
RTS
Wire Wire Line
	6025 5275 5975 5275
Wire Wire Line
	6025 4675 5975 4675
$Comp
L open-automation:R_470 R37
U 1 1 5B166157
P 6225 4975
F 0 "R37" V 6225 4975 50  0000 C CNN
F 1 "R_470" V 6150 4975 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6155 4975 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603FR-07470RL/311-470HRCT-ND/730203" V 6305 4975 50  0001 C CNN
F 4 "RC0603FR-07470RL" V 6405 5075 60  0001 C CNN "Part Number"
	1    6225 4975
	0    1    1    0   
$EndComp
Wire Wire Line
	6425 4975 6375 4975
$Comp
L Device:Q_NPN_BCE Q4
U 1 1 5B167526
P 8025 3575
F 0 "Q4" H 8216 3621 50  0000 L CNN
F 1 "Q_NPN_BCE" H 8216 3530 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8225 3675 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/micro-commercial-co/MMSS8050-H-TP/MMSS8050-H-TPMSCT-ND/2825945" H 8025 3575 50  0001 C CNN
F 4 "MMSS8050-H-TP" H 8025 3575 50  0001 C CNN "Part Number"
	1    8025 3575
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PNP_BEC Q5
U 1 1 5B16769F
P 8025 4175
F 0 "Q5" H 8216 4221 50  0000 L CNN
F 1 "Q_PNP_BCE" H 8216 4130 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8225 4275 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/micro-commercial-co/MMSS8550-L-TP/MMSS8550-L-TPMSCT-ND/2827205" H 8025 4175 50  0001 C CNN
F 4 "MMSS8550-L-TP" H 8025 4175 50  0001 C CNN "Part Number"
	1    8025 4175
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even P4
U 1 1 5B1561A8
P 9050 2150
F 0 "P4" H 9100 2467 50  0000 C CNN
F 1 "CONN_01X04" H 9100 2376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 9127 2054 50  0001 L CNN
F 3 "https://www.digikey.com/products/en?keywords=88738-8000" H 9128 2054 50  0001 L CNN
F 4 "0887388000" H 9050 2150 50  0001 C CNN "Part Number"
	1    9050 2150
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0117
U 1 1 5B156693
P 8800 2400
F 0 "#PWR0117" H 8800 2150 50  0001 C CNN
F 1 "GND" H 8800 2250 50  0000 C CNN
F 2 "" H 8800 2400 50  0000 C CNN
F 3 "" H 8800 2400 50  0000 C CNN
	1    8800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2400 8800 2350
Wire Wire Line
	8800 2350 8850 2350
Text HLabel 8820 2010 1    60   Input ~ 0
5V
Text Label 8700 2150 0    50   ~ 0
D_N
Text Label 8700 2250 0    50   ~ 0
D_P
Wire Wire Line
	8820 2010 8820 2050
Wire Wire Line
	8820 2050 8850 2050
Wire Wire Line
	8700 2150 8850 2150
Wire Wire Line
	8850 2250 8700 2250
$Comp
L open-automation:R_12k R40
U 1 1 5B178943
P 7575 3575
F 0 "R40" V 7575 3575 50  0000 C CNN
F 1 "R_12k" V 7500 3575 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 7505 3575 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0712KL/311-12KGRCT-ND/729656" V 7655 3575 50  0001 C CNN
F 4 "RC0603JR-0712KL" V 7755 3675 60  0001 C CNN "Part Number"
	1    7575 3575
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_12k R41
U 1 1 5B178CF5
P 7575 4175
F 0 "R41" V 7575 4175 50  0000 C CNN
F 1 "R_12k" V 7500 4175 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 7505 4175 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0712KL/311-12KGRCT-ND/729656" V 7655 4175 50  0001 C CNN
F 4 "RC0603JR-0712KL" V 7755 4275 60  0001 C CNN "Part Number"
	1    7575 4175
	0    1    1    0   
$EndComp
Wire Wire Line
	7725 4175 7825 4175
Wire Wire Line
	7825 3575 7725 3575
Text HLabel 8150 3250 2    60   Input ~ 0
EN_ESP
Wire Wire Line
	8150 3250 8125 3250
Wire Wire Line
	8125 3250 8125 3375
Text HLabel 8150 4500 2    60   Input ~ 0
PROG
Wire Wire Line
	8150 4500 8125 4500
Wire Wire Line
	8125 4500 8125 4375
Text Label 7150 3575 0    50   ~ 0
DTR
Wire Wire Line
	7150 3575 7350 3575
Text Label 7150 4175 0    50   ~ 0
RTS
Wire Wire Line
	7150 4175 7400 4175
Wire Wire Line
	8125 3975 8125 3925
Wire Wire Line
	8125 3925 7350 3925
Wire Wire Line
	7350 3925 7350 3575
Connection ~ 7350 3575
Wire Wire Line
	7350 3575 7425 3575
Wire Wire Line
	8125 3775 8125 3825
Wire Wire Line
	8125 3825 7400 3825
Wire Wire Line
	7400 3825 7400 4175
Connection ~ 7400 4175
Wire Wire Line
	7400 4175 7425 4175
$Comp
L open-automation:C_1uF C46
U 1 1 5B17F58C
P 5275 3950
F 0 "C46" H 5300 4050 50  0000 L CNN
F 1 "C_1uF" H 5300 3850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5375 4250 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/CC0603ZRY5V7BB105/311-1372-1-ND/2103156" H 5275 3700 50  0001 C CNN
F 4 "CC0603ZRY5V7BB105" H 5400 4150 60  0001 C CNN "Part Number"
	1    5275 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 4100 5275 4175
$Comp
L open-automation:GND #PWR0111
U 1 1 5B180278
P 5275 3750
F 0 "#PWR0111" H 5275 3500 50  0001 C CNN
F 1 "GND" H 5275 3600 50  0000 C CNN
F 2 "" H 5275 3750 50  0000 C CNN
F 3 "" H 5275 3750 50  0000 C CNN
	1    5275 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5275 3750 5275 3800
Text Label 6025 4775 0    50   ~ 0
DSR
Wire Wire Line
	6025 4775 5975 4775
Text Label 6025 4575 0    50   ~ 0
DCD
Wire Wire Line
	6025 4575 5975 4575
Text Label 9400 2050 0    50   ~ 0
DCD
Text Label 9400 2150 0    50   ~ 0
DTR
Text Label 9400 2250 0    50   ~ 0
DSR
Wire Wire Line
	9400 2250 9350 2250
Wire Wire Line
	9400 2150 9350 2150
Wire Wire Line
	9400 2050 9350 2050
Text Label 9400 2350 0    50   ~ 0
RTS
Wire Wire Line
	9400 2350 9350 2350
$EndSCHEMATC
