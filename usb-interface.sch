EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
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
$Comp
L open-automation:USB_A_2 P?
U 1 1 5B15E1FB
P 9100 2200
F 0 "P?" H 9350 2000 50  0000 C CNN
F 1 "USB_A_2" H 9050 2400 50  0000 C CNN
F 2 "open-automation:USB_A_2" V 9050 2100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/cnc-tech/1002-004-01010/1175-1018-ND/3064749" V 9050 2100 50  0001 C CNN
F 4 "1002-004-01010" H 9100 2200 60  0001 C CNN "Part Number"
	1    9100 2200
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5B15E1E9
P 9250 2600
F 0 "#PWR?" H 9250 2350 50  0001 C CNN
F 1 "GND" H 9250 2450 50  0000 C CNN
F 2 "" H 9250 2600 50  0000 C CNN
F 3 "" H 9250 2600 50  0000 C CNN
	1    9250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2500 9250 2550
Wire Wire Line
	9500 2100 9500 2550
Wire Wire Line
	9500 2550 9250 2550
Connection ~ 9250 2550
Wire Wire Line
	8650 2500 8650 2600
Wire Wire Line
	8650 2600 8600 2600
Wire Wire Line
	9250 2550 9250 2600
Text HLabel 8600 2600 0    60   Input ~ 0
5V
Text HLabel 8025 2125 2    60   Input ~ 0
5V
$Comp
L open-automation:GND #PWR?
U 1 1 5B117F4C
P 7600 2800
F 0 "#PWR?" H 7600 2550 50  0001 C CNN
F 1 "GND" H 7600 2650 50  0000 C CNN
F 2 "" H 7600 2800 50  0000 C CNN
F 3 "" H 7600 2800 50  0000 C CNN
	1    7600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2725 7550 2775
Wire Wire Line
	7550 2775 7600 2775
Wire Wire Line
	7650 2775 7650 2725
Wire Wire Line
	7600 2800 7600 2775
Connection ~ 7600 2775
Wire Wire Line
	7600 2775 7650 2775
Wire Wire Line
	7950 2125 8025 2125
Text HLabel 9250 4350 2    60   Input ~ 0
RXD
Text HLabel 8900 4450 2    60   Input ~ 0
TXD
Wire Wire Line
	8900 4450 8800 4450
Wire Wire Line
	8900 4350 8800 4350
$Comp
L open-automation:USB_IC-CP2104 U?
U 1 1 5B157129
P 8100 4450
F 0 "U?" H 8625 3475 50  0000 C CNN
F 1 "USB_IC-CP2104" H 7700 3500 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_3x3mm_P0.45mm_EP1.6x1.6mm" H 8250 3500 50  0001 L CNN
F 3 "https://www.digikey.com/product-detail/en/silicon-labs/CP2102N-A01-GQFN20/336-3692-ND/6012517" H 7550 5700 50  0001 C CNN
F 4 "CP2102N-A01-GQFN20" H 8100 3182 50  0001 C CNN "Part Number"
	1    8100 4450
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5B15ED00
P 8100 5500
F 0 "#PWR?" H 8100 5250 50  0001 C CNN
F 1 "GND" H 8100 5350 50  0000 C CNN
F 2 "" H 8100 5500 50  0000 C CNN
F 3 "" H 8100 5500 50  0000 C CNN
	1    8100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5450 8100 5500
Text HLabel 6250 3850 0    60   Input ~ 0
5V
$Comp
L open-automation:C_10uF C?
U 1 1 5B160737
P 6600 4000
F 0 "C?" H 6500 4075 50  0000 L CNN
F 1 "C_10uF" H 6325 3925 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6700 4300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/murata-electronics-north-america/GRM188R61A106ME69D/490-10475-1-ND/5026393" H 6600 3750 50  0001 C CNN
F 4 "GRM188R61A106ME69D" H 6725 4200 60  0001 C CNN "Part Number"
	1    6600 4000
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_0.1uF C?
U 1 1 5B1608B3
P 6825 4000
F 0 "C?" H 6940 4046 50  0000 L CNN
F 1 "C_0.1uF" H 6940 3955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6925 4300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 6825 3750 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 6950 4200 60  0001 C CNN "Part Number"
	1    6825 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3850 6600 3850
Wire Wire Line
	6600 3850 6825 3850
Connection ~ 6600 3850
Wire Wire Line
	6825 3850 7300 3850
Connection ~ 6825 3850
Wire Wire Line
	6825 4150 6825 4200
Wire Wire Line
	6825 4200 6725 4200
Wire Wire Line
	6600 4200 6600 4150
$Comp
L open-automation:GND #PWR?
U 1 1 5B1612EC
P 6725 4250
F 0 "#PWR?" H 6725 4000 50  0001 C CNN
F 1 "GND" H 6725 4100 50  0000 C CNN
F 2 "" H 6725 4250 50  0000 C CNN
F 3 "" H 6725 4250 50  0000 C CNN
	1    6725 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6725 4200 6725 4250
Connection ~ 6725 4200
Wire Wire Line
	6725 4200 6600 4200
Text Label 7225 4350 0    50   ~ 0
D_N
Text Label 7225 4450 0    50   ~ 0
D_P
Text Label 8000 2425 0    50   ~ 0
D_N
Text Label 8000 2325 0    50   ~ 0
D_P
Wire Wire Line
	8000 2325 7950 2325
Wire Wire Line
	7950 2425 8000 2425
$Comp
L open-automation:USB_B J?
U 1 1 5B117BDA
P 7650 2325
F 0 "J?" H 7705 2792 50  0000 C CNN
F 1 "USB_B" H 7705 2701 50  0000 C CNN
F 2 "open-automation:USB_B-B1HSB6" H 7550 3075 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/on-shore-technology-inc/USB-B1HSB6/ED2983-ND/2677744" H 7550 2975 50  0001 C CNN
F 4 "USB-B1HSB6" H 7550 2875 50  0001 C CNN "Part Number"
	1    7650 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	7225 4350 7400 4350
Wire Wire Line
	7400 4450 7225 4450
Wire Wire Line
	7400 4050 7300 4050
Wire Wire Line
	7300 4050 7300 3850
Connection ~ 7300 3850
Wire Wire Line
	7300 3850 7400 3850
Text Label 8850 4050 0    50   ~ 0
DTR
Text Label 8850 4650 0    50   ~ 0
RTS
Wire Wire Line
	8850 4650 8800 4650
Wire Wire Line
	8850 4050 8800 4050
$Comp
L open-automation:R_470 R?
U 1 1 5B166157
P 9050 4350
F 0 "R?" V 9050 4350 50  0000 C CNN
F 1 "R_470" V 8975 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8980 4350 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603FR-07470RL/311-470HRCT-ND/730203" V 9130 4350 50  0001 C CNN
F 4 "RC0603FR-07470RL" V 9230 4450 60  0001 C CNN "Part Number"
	1    9050 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 4350 9200 4350
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5B167526
P 9700 3700
F 0 "Q?" H 9891 3746 50  0000 L CNN
F 1 "Q_NPN_BCE" H 9891 3655 50  0000 L CNN
F 2 "" H 9900 3800 50  0001 C CNN
F 3 "~" H 9700 3700 50  0001 C CNN
	1    9700 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PNP_BEC Q?
U 1 1 5B16769F
P 10200 4225
F 0 "Q?" H 10391 4271 50  0000 L CNN
F 1 "Q_PNP_BCE" H 10391 4180 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10400 4325 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/micro-commercial-co/MMSS8550-L-TP/MMSS8550-L-TPMSCT-ND/2827205" H 10200 4225 50  0001 C CNN
F 4 "MMSS8550-L-TP" H 10200 4225 50  0001 C CNN "Part Number"
	1    10200 4225
	1    0    0    -1  
$EndComp
$EndSCHEMATC
