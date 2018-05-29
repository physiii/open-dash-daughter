EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 14
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
L Device:C C4
U 1 1 5968D146
P 5350 1325
F 0 "C4" H 5375 1425 50  0000 L CNN
F 1 "1000uF" H 5375 1225 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P5.00mm" H 5388 1175 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rubycon/25YXJ1000M10X20/1189-1241-ND/3134197" H 5350 1325 50  0001 C CNN
F 4 "25YXJ1000M10X20" H 5350 1325 60  0001 C CNN "Part Number"
	1    5350 1325
	1    0    0    -1  
$EndComp
$Comp
L open-automation:L L1
U 1 1 5969017D
P 5025 1075
F 0 "L1" V 4975 1075 50  0001 C CNN
F 1 "68uH" V 4975 1075 50  0000 C CNN
F 2 "Inductors_SMD:L_12x12mm_h8mm" H 5025 1075 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/wurth-electronics-inc/7447709680/732-1247-2-ND/1638652" H 5025 1075 50  0001 C CNN
F 4 "Wurth 7447709680" V 5025 1075 10  0001 C CNN "Part Number"
	1    5025 1075
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:GND #PWR01
U 1 1 59690AC9
P 5350 1525
F 0 "#PWR01" H 5350 1275 50  0001 C CNN
F 1 "GND" H 5350 1375 50  0000 C CNN
F 2 "" H 5350 1525 50  0000 C CNN
F 3 "" H 5350 1525 50  0000 C CNN
	1    5350 1525
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR02
U 1 1 59690B3F
P 3275 1575
F 0 "#PWR02" H 3275 1325 50  0001 C CNN
F 1 "GND" V 3225 1400 50  0000 C CNN
F 2 "" H 3275 1575 50  0000 C CNN
F 3 "" H 3275 1575 50  0000 C CNN
	1    3275 1575
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR03
U 1 1 59690D86
P 4750 1475
F 0 "#PWR03" H 4750 1225 50  0001 C CNN
F 1 "GND" H 4750 1325 50  0000 C CNN
F 2 "" H 4750 1475 50  0000 C CNN
F 3 "" H 4750 1475 50  0000 C CNN
	1    4750 1475
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR04
U 1 1 59757643
P 1250 1625
F 0 "#PWR04" H 1250 1375 50  0001 C CNN
F 1 "GND" H 1250 1475 50  0000 C CNN
F 2 "" H 1250 1625 50  0000 C CNN
F 3 "" H 1250 1625 50  0000 C CNN
	1    1250 1625
	-1   0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR05
U 1 1 598F7A99
P 6825 1850
F 0 "#PWR05" H 6825 1600 50  0001 C CNN
F 1 "GND" H 6825 1700 50  0000 C CNN
F 2 "" H 6825 1850 50  0000 C CNN
F 3 "" H 6825 1850 50  0000 C CNN
	1    6825 1850
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_10k R9
U 1 1 59E4131F
P 6825 1650
F 0 "R9" V 6825 1650 50  0000 C CNN
F 1 "R_1k4" V 6750 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6755 1650 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603FR-071K4L/311-1.40KHRCT-ND/729808" V 6905 1650 50  0001 C CNN
F 4 "RC0603FR-071K4L" V 7005 1750 60  0001 C CNN "Part Number"
	1    6825 1650
	1    0    0    -1  
$EndComp
Text Notes 2575 2525 0    60   ~ 0
V_MAIN is after the current sense resistor.
$Comp
L open-automation:L L2
U 1 1 5AC413A9
P 5900 2750
F 0 "L2" V 5850 2750 50  0001 C CNN
F 1 "100uH" V 5850 2750 50  0000 C CNN
F 2 "open-automation:L_Toroid_Horizontal_D21.8mm_P20.06mm_Bourns_2100" H 5900 2750 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/bourns-inc/2100HT-101-H-RC/M8921-ND/775460" H 5900 2750 50  0001 C CNN
F 4 "2100HT-101-H-RC" V 5900 2750 60  0001 C CNN "Part Number"
	1    5900 2750
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:GND #PWR07
U 1 1 5AC413AF
P 6175 3200
F 0 "#PWR07" H 6175 2950 50  0001 C CNN
F 1 "GND" H 6175 3050 50  0000 C CNN
F 2 "" H 6175 3200 50  0000 C CNN
F 3 "" H 6175 3200 50  0000 C CNN
	1    6175 3200
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR08
U 1 1 5AC413B5
P 3225 3175
F 0 "#PWR08" H 3225 2925 50  0001 C CNN
F 1 "GND" V 3175 3000 50  0000 C CNN
F 2 "" H 3225 3175 50  0000 C CNN
F 3 "" H 3225 3175 50  0000 C CNN
	1    3225 3175
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR09
U 1 1 5AC413BB
P 5650 3150
F 0 "#PWR09" H 5650 2900 50  0001 C CNN
F 1 "GND" H 5650 3000 50  0000 C CNN
F 2 "" H 5650 3150 50  0000 C CNN
F 3 "" H 5650 3150 50  0000 C CNN
	1    5650 3150
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_10k R1
U 1 1 5AC421CC
P 4025 3025
F 0 "R1" V 4025 3025 50  0000 C CNN
F 1 "R_10k" V 3950 3025 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3955 3025 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 4105 3025 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 4205 3125 60  0001 C CNN "Part Number"
	1    4025 3025
	0    -1   -1   0   
$EndComp
Text Notes 6900 1675 0    60   ~ 0
1mA current through LED
$Comp
L open-automation:GND #PWR011
U 1 1 5AC637C2
P 6325 4675
F 0 "#PWR011" H 6325 4425 50  0001 C CNN
F 1 "GND" H 6325 4525 50  0000 C CNN
F 2 "" H 6325 4675 50  0000 C CNN
F 3 "" H 6325 4675 50  0000 C CNN
	1    6325 4675
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR012
U 1 1 5AC637C8
P 3200 4650
F 0 "#PWR012" H 3200 4400 50  0001 C CNN
F 1 "GND" V 3150 4475 50  0000 C CNN
F 2 "" H 3200 4650 50  0000 C CNN
F 3 "" H 3200 4650 50  0000 C CNN
	1    3200 4650
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR013
U 1 1 5AC637CE
P 5675 4675
F 0 "#PWR013" H 5675 4425 50  0001 C CNN
F 1 "GND" H 5675 4525 50  0000 C CNN
F 2 "" H 5675 4675 50  0000 C CNN
F 3 "" H 5675 4675 50  0000 C CNN
	1    5675 4675
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_10k R8
U 1 1 5AC647A0
P 6800 4875
F 0 "R8" V 6800 4875 50  0000 C CNN
F 1 "R_1k3" V 6700 4875 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6730 4875 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603FR-071K3L/311-1.30KHRCT-ND/729805" V 6880 4875 50  0001 C CNN
F 4 "RC0603FR-071K3L" V 6980 4975 60  0001 C CNN "Part Number"
	1    6800 4875
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR014
U 1 1 5AC64EC6
P 6800 5125
F 0 "#PWR014" H 6800 4875 50  0001 C CNN
F 1 "GND" H 6800 4975 50  0000 C CNN
F 2 "" H 6800 5125 50  0000 C CNN
F 3 "" H 6800 5125 50  0000 C CNN
	1    6800 5125
	1    0    0    -1  
$EndComp
Text Label 6975 4675 0    60   ~ 0
8v_feedback
Text Label 5750 4125 0    60   ~ 0
8v_feedback
$Comp
L Device:C C2
U 1 1 5AC68E0B
P 3225 2925
F 0 "C2" V 3275 2975 50  0000 L CNN
F 1 "180uF" V 3075 2825 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 3263 2775 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/united-chemi-con/EKZN500ELL181MH20D/565-4066-ND/4843876" H 3225 2925 50  0001 C CNN
F 4 "EKZN500ELL181MH20D" H 3225 2925 60  0001 C CNN "Part Number"
	1    3225 2925
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5AC6900B
P 3200 4400
F 0 "C1" V 3250 4450 50  0000 L CNN
F 1 "180uF" V 3050 4300 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 3238 4250 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/united-chemi-con/EKZN500ELL181MH20D/565-4066-ND/4843876" H 3200 4400 50  0001 C CNN
F 4 "EKZN500ELL181MH20D" H 3200 4400 60  0001 C CNN "Part Number"
	1    3200 4400
	1    0    0    -1  
$EndComp
$Comp
L open-automation:L L3
U 1 1 5AC6A697
P 6000 4225
F 0 "L3" V 5950 4225 50  0001 C CNN
F 1 "100uH" V 5950 4225 50  0000 C CNN
F 2 "open-automation:L_Toroid_Horizontal_D21.8mm_P20.06mm_Bourns_2100" H 6000 4225 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/bourns-inc/2100HT-101-H-RC/M8921-ND/775460" H 6000 4225 50  0001 C CNN
F 4 "2100HT-101-H-RC" V 6000 4225 60  0001 C CNN "Part Number"
	1    6000 4225
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:D_Schottky D4
U 1 1 5AC6B09E
P 5675 4450
F 0 "D4" H 5675 4550 50  0000 C CNN
F 1 "D_Schottky" H 5675 4350 50  0001 C CNN
F 2 "Diodes_SMD:D_SMA" H 5675 4450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/comchip-technology/CDBA540-HF/641-1707-1-ND/5226090" H 5675 4450 50  0001 C CNN
F 4 "CDBA540-HF" H 5675 4450 60  0001 C CNN "Part Number"
	1    5675 4450
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5AC6CB1C
P 3275 1325
F 0 "C3" V 3325 1375 50  0000 L CNN
F 1 "180uF" V 3125 1225 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 3313 1175 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/united-chemi-con/EKZN500ELL181MH20D/565-4066-ND/4843876" H 3275 1325 50  0001 C CNN
F 4 "EKZN500ELL181MH20D" H 3275 1325 60  0001 C CNN "Part Number"
	1    3275 1325
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5AC6DA75
P 6175 3000
F 0 "C5" H 6200 3100 50  0000 L CNN
F 1 "1000uF" H 6200 2900 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P5.00mm" H 6213 2850 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rubycon/25YXJ1000M10X20/1189-1241-ND/3134197" H 6175 3000 50  0001 C CNN
F 4 "25YXJ1000M10X20" H 6175 3000 60  0001 C CNN "Part Number"
	1    6175 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5AC6DAE1
P 6325 4475
F 0 "C6" H 6350 4575 50  0000 L CNN
F 1 "1000uF" H 6350 4375 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P5.00mm" H 6363 4325 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rubycon/25YXJ1000M10X20/1189-1241-ND/3134197" H 6325 4475 50  0001 C CNN
F 4 "25YXJ1000M10X20" H 6325 4475 60  0001 C CNN "Part Number"
	1    6325 4475
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR015
U 1 1 5AC73772
P 4450 2950
F 0 "#PWR015" H 4450 2700 50  0001 C CNN
F 1 "GND" V 4400 2775 50  0000 C CNN
F 2 "" H 4450 2950 50  0000 C CNN
F 3 "" H 4450 2950 50  0000 C CNN
	1    4450 2950
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR016
U 1 1 5AC740CE
P 4475 4475
F 0 "#PWR016" H 4475 4225 50  0001 C CNN
F 1 "GND" V 4425 4300 50  0000 C CNN
F 2 "" H 4475 4475 50  0000 C CNN
F 3 "" H 4475 4475 50  0000 C CNN
	1    4475 4475
	1    0    0    -1  
$EndComp
$Comp
L open-automation:LM2576 U3
U 1 1 5AC686EE
P 5025 4225
F 0 "U3" H 5375 4425 60  0000 C CNN
F 1 "LM2576-ADJ" H 5075 4025 60  0000 C CNN
F 2 "open-automation:Regulator-LM2576" H 5425 4175 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/texas-instruments/LM2576SX-ADJ-NOPB/LM2576SX-ADJ-NOPBCT-ND/3440107" H 5425 4175 60  0001 C CNN
F 4 "LM2576SX-ADJ/NOPB" H 5025 4225 60  0001 C CNN "Part Number"
	1    5025 4225
	1    0    0    -1  
$EndComp
$Comp
L open-automation:LM2576 U2
U 1 1 5AC68B48
P 5000 2750
F 0 "U2" H 5350 2950 60  0000 C CNN
F 1 "LM2576-ADJ" H 5050 2550 60  0000 C CNN
F 2 "open-automation:Regulator-LM2576" H 5400 2700 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/texas-instruments/LM2576SX-ADJ-NOPB/LM2576SX-ADJ-NOPBCT-ND/3440107" H 5400 2700 60  0001 C CNN
F 4 "LM2576SX-ADJ/NOPB" H 5000 2750 60  0001 C CNN "Part Number"
	1    5000 2750
	1    0    0    -1  
$EndComp
$Comp
L open-automation:LM2576 U1
U 1 1 5AC68BC4
P 4100 1075
F 0 "U1" H 4450 1275 60  0000 C CNN
F 1 "LM2576-ADJ" H 4150 875 60  0000 C CNN
F 2 "open-automation:Regulator-LM2576" H 4500 1025 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/texas-instruments/LM2576SX-ADJ-NOPB/LM2576SX-ADJ-NOPBCT-ND/3440107" H 4500 1025 60  0001 C CNN
F 4 "LM2576SX-ADJ/NOPB" H 4100 1075 60  0001 C CNN "Part Number"
	1    4100 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	6825 1800 6825 1850
Wire Wire Line
	6825 1450 6825 1500
Wire Wire Line
	6825 1075 6825 1150
Wire Wire Line
	4750 1125 4750 1075
Connection ~ 4750 1075
Wire Wire Line
	4750 1475 4750 1425
Wire Wire Line
	5350 1525 5350 1475
Wire Wire Line
	4700 1075 4750 1075
Wire Wire Line
	5175 1075 5350 1075
Wire Wire Line
	3275 1175 3275 975 
Connection ~ 3275 975 
Wire Wire Line
	3275 1475 3275 1525
Wire Wire Line
	3550 1075 3550 1175
Wire Wire Line
	3550 1175 3600 1175
Wire Wire Line
	5350 1075 5350 1175
Connection ~ 5350 1075
Wire Wire Line
	3600 1075 3550 1075
Connection ~ 3550 1175
Wire Wire Line
	3025 975  3275 975 
Wire Wire Line
	3550 1525 3275 1525
Connection ~ 3275 1525
Wire Wire Line
	5650 2800 5650 2750
Connection ~ 5650 2750
Wire Wire Line
	5650 3150 5650 3100
Wire Wire Line
	6175 3200 6175 3150
Wire Wire Line
	5600 2750 5650 2750
Wire Wire Line
	6050 2750 6175 2750
Connection ~ 3225 2650
Wire Wire Line
	3225 3075 3225 3175
Wire Wire Line
	4450 2850 4500 2850
Wire Wire Line
	6175 2850 6175 2750
Connection ~ 6175 2750
Wire Wire Line
	2975 2650 3225 2650
Wire Wire Line
	4450 2950 4450 2850
Wire Wire Line
	5675 4300 5675 4225
Connection ~ 5675 4225
Wire Wire Line
	5675 4675 5675 4600
Wire Wire Line
	6325 4675 6325 4625
Wire Wire Line
	6150 4225 6325 4225
Wire Wire Line
	5625 4225 5675 4225
Connection ~ 3200 4125
Wire Wire Line
	3200 4550 3200 4650
Wire Wire Line
	4475 4325 4525 4325
Wire Wire Line
	6325 4225 6325 4325
Connection ~ 6325 4225
Wire Wire Line
	2950 4125 3200 4125
Wire Wire Line
	4475 4475 4475 4325
Wire Wire Line
	6800 5025 6800 5125
Wire Wire Line
	6800 4600 6800 4675
Wire Wire Line
	6800 4300 6800 4225
Connection ~ 6800 4225
Wire Wire Line
	6800 4675 6975 4675
Connection ~ 6800 4675
Wire Wire Line
	5625 4125 5750 4125
Connection ~ 6825 1075
Wire Wire Line
	4125 2750 4250 2750
Connection ~ 4250 2750
Wire Wire Line
	3700 3025 3875 3025
Wire Wire Line
	4175 3025 4250 3025
Wire Wire Line
	4250 3025 4250 2750
Wire Wire Line
	4200 4450 4300 4450
Wire Wire Line
	4300 4450 4300 4225
Wire Wire Line
	4125 4225 4300 4225
Connection ~ 4300 4225
Wire Wire Line
	3700 4450 3900 4450
Wire Wire Line
	3200 4125 3200 4250
Wire Wire Line
	3225 2650 3225 2775
$Comp
L open-automation:GND #PWR017
U 1 1 5AC69CE3
P 6650 3650
F 0 "#PWR017" H 6650 3400 50  0001 C CNN
F 1 "GND" H 6650 3500 50  0000 C CNN
F 2 "" H 6650 3650 50  0000 C CNN
F 3 "" H 6650 3650 50  0000 C CNN
	1    6650 3650
	1    0    0    -1  
$EndComp
Text Label 6825 3200 0    60   ~ 0
12v_feedback
Wire Wire Line
	6650 3550 6650 3650
Wire Wire Line
	6650 3125 6650 3200
Wire Wire Line
	6650 2825 6650 2750
Wire Wire Line
	6650 3200 6825 3200
Connection ~ 6650 3200
Connection ~ 6650 2750
Wire Wire Line
	5600 2650 5800 2650
Text Label 5800 2650 0    60   ~ 0
12v_feedback
$Comp
L open-automation:GND #PWR018
U 1 1 5AC6AB52
P 5900 1975
F 0 "#PWR018" H 5900 1725 50  0001 C CNN
F 1 "GND" H 5900 1825 50  0000 C CNN
F 2 "" H 5900 1975 50  0000 C CNN
F 3 "" H 5900 1975 50  0000 C CNN
	1    5900 1975
	1    0    0    -1  
$EndComp
Text Label 6000 1525 0    60   ~ 0
3v3_feedback
Wire Wire Line
	5900 1875 5900 1975
Wire Wire Line
	5900 1450 5900 1525
Wire Wire Line
	5900 1075 5900 1150
Wire Wire Line
	5900 1525 6000 1525
Connection ~ 5900 1525
Connection ~ 5900 1075
Wire Wire Line
	4700 975  4875 975 
Text Label 4875 975  0    60   ~ 0
3v3_feedback
$Comp
L open-automation:R_10k R7
U 1 1 5AC77A5F
P 6800 4450
F 0 "R7" V 6800 4450 50  0000 C CNN
F 1 "R_7k15" V 6700 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6730 4450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/vishay-dale/CRCW06037K15FKEA/541-7.15KHCT-ND/1179907" V 6880 4450 50  0001 C CNN
F 4 "CRCW06037K15FKEA" V 6980 4550 60  0001 C CNN "Part Number"
	1    6800 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1575 1250 1625
$Comp
L open-automation:AGND #PWR019
U 1 1 5AC7AABD
P 1800 1650
F 0 "#PWR019" H 1800 1400 50  0001 C CNN
F 1 "AGND" H 1800 1500 50  0000 C CNN
F 2 "" H 1800 1650 50  0000 C CNN
F 3 "" H 1800 1650 50  0000 C CNN
	1    1800 1650
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR020
U 1 1 5AC7ACFB
P 1550 1650
F 0 "#PWR020" H 1550 1400 50  0001 C CNN
F 1 "GND" H 1550 1500 50  0000 C CNN
F 2 "" H 1550 1650 50  0000 C CNN
F 3 "" H 1550 1650 50  0000 C CNN
	1    1550 1650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4750 1075 4875 1075
Wire Wire Line
	3275 975  3600 975 
Wire Wire Line
	5350 1075 5900 1075
Wire Wire Line
	3550 1175 3550 1525
Wire Wire Line
	3275 1525 3275 1575
Wire Wire Line
	5650 2750 5750 2750
Wire Wire Line
	3225 2650 4500 2650
Wire Wire Line
	6175 2750 6650 2750
Wire Wire Line
	5675 4225 5850 4225
Wire Wire Line
	3200 4125 4525 4125
Wire Wire Line
	6325 4225 6800 4225
Wire Wire Line
	6800 4225 7075 4225
Wire Wire Line
	6800 4675 6800 4725
Wire Wire Line
	6825 1075 7175 1075
Wire Wire Line
	4250 2750 4500 2750
Wire Wire Line
	4300 4225 4525 4225
Wire Wire Line
	6650 3200 6650 3250
Wire Wire Line
	6650 2750 6925 2750
Wire Wire Line
	5900 1525 5900 1575
Wire Wire Line
	5900 1075 6825 1075
Text HLabel 7075 4225 2    60   Input ~ 0
AUDIO_POWER
Text HLabel 6925 2750 2    60   Input ~ 0
MAIN_POWER
Text HLabel 7175 1075 2    60   Input ~ 0
3v3
Text HLabel 1200 1175 0    60   Input ~ 0
BATTERY
Text HLabel 2975 2650 0    60   Input ~ 0
V_MAIN
Text HLabel 4125 2750 0    60   Input ~ 0
EN_MAIN
Text HLabel 3700 3025 0    60   Input ~ 0
3v3
Text HLabel 4125 4225 0    60   Input ~ 0
EN_AUDIO
Text HLabel 3700 4450 0    60   Input ~ 0
3v3
Wire Wire Line
	1550 1500 1550 1650
Wire Wire Line
	1550 1500 1800 1500
Wire Wire Line
	1800 1500 1800 1650
$Comp
L Device:D_Zener D1
U 1 1 5AFA3889
P 1250 1425
F 0 "D1" H 1250 1525 50  0000 C CNN
F 1 "26V Zener" H 1250 1325 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB" H 1250 1425 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/smc-diode-solutions/SMBJ26CATR/1655-1628-1-ND/6023073" H 1250 1425 50  0001 C CNN
F 4 "SMBJ26CATR" H 1250 1425 60  0001 C CNN "Part Number"
	1    1250 1425
	0    1    1    0   
$EndComp
$Comp
L open-automation:D_Schottky D12
U 1 1 5AFA3A8A
P 4750 1275
F 0 "D12" H 4750 1375 50  0000 C CNN
F 1 "D_Schottky" H 4750 1175 50  0001 C CNN
F 2 "Diodes_SMD:D_SMA" H 4750 1275 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/comchip-technology/CDBA540-HF/641-1707-1-ND/5226090" H 4750 1275 50  0001 C CNN
F 4 "CDBA540-HF" H 4750 1275 60  0001 C CNN "Part Number"
	1    4750 1275
	0    1    1    0   
$EndComp
$Comp
L open-automation:R_10k R39
U 1 1 5AFA3C39
P 4050 4450
F 0 "R39" V 4050 4450 50  0000 C CNN
F 1 "R_10k" V 3975 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3980 4450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 4130 4450 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 4230 4550 60  0001 C CNN "Part Number"
	1    4050 4450
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_10k R40
U 1 1 5AFA4154
P 5900 1300
F 0 "R40" V 5900 1300 50  0000 C CNN
F 1 "R_3k92" V 5800 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5830 1300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603FR-073K92L/311-3.92KHRCT-ND/730085" V 5980 1300 50  0001 C CNN
F 4 "RC0603FR-073K92L" V 6080 1400 60  0001 C CNN "Part Number"
	1    5900 1300
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_10k R41
U 1 1 5AFA41C0
P 5900 1725
F 0 "R41" V 5900 1725 50  0000 C CNN
F 1 "R_2k32" V 5800 1725 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5830 1725 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603FR-072K32L/311-2.32KHRCT-ND/729968" V 5980 1725 50  0001 C CNN
F 4 "RC0603FR-072K32L" V 6080 1825 60  0001 C CNN "Part Number"
	1    5900 1725
	1    0    0    -1  
$EndComp
$Comp
L open-automation:D_Schottky D13
U 1 1 5AFA48DE
P 5650 2950
F 0 "D13" H 5650 3050 50  0000 C CNN
F 1 "D_Schottky" H 5650 2850 50  0001 C CNN
F 2 "Diodes_SMD:D_SMA" H 5650 2950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/comchip-technology/CDBA540-HF/641-1707-1-ND/5226090" H 5650 2950 50  0001 C CNN
F 4 "CDBA540-HF" H 5650 2950 60  0001 C CNN "Part Number"
	1    5650 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 1175 1250 1175
Wire Wire Line
	1250 1175 1250 1275
Text HLabel 3025 975  0    60   Input ~ 0
BATTERY
Text HLabel 2950 4125 0    60   Input ~ 0
BATTERY
Text Notes 950  925  0    60   ~ 0
12V Battery Protection
Text Notes 5575 950  0    60   ~ 0
output voltage = 1.23 (1 + R2/R1)\nR2 is on high side
$Comp
L open-automation:R_8k87 R5
U 1 1 5B0ECFEA
P 6650 2975
F 0 "R5" V 6650 2925 50  0000 L CNN
F 1 "R_8k87" V 6550 2850 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 6580 2975 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-2RKF8871X/P8.87KLCT-ND/194529" V 6730 2975 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 6830 3075 60  0001 C CNN "Part Number"
	1    6650 2975
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_1k R6
U 1 1 5B0ED412
P 6650 3400
F 0 "R6" V 6650 3350 50  0000 L CNN
F 1 "R_1k" V 6550 3325 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 6580 3400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-071KL/311-1.0KGRCT-ND/729624" V 6730 3400 50  0001 C CNN
F 4 "RC0603JR-071KL" V 6830 3500 60  0001 C CNN "Part Number"
	1    6650 3400
	1    0    0    -1  
$EndComp
$Comp
L open-automation:LED-0603-G D14
U 1 1 5B0C9F67
P 6825 1300
F 0 "D14" V 6863 1183 50  0000 R CNN
F 1 "LED-0603-G" V 6772 1183 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad0.82x1.00mm_HandSolder" H 6725 1300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rohm-semiconductor/SML-D12M8WT86/511-1578-1-ND/1641810" H 6825 1400 50  0001 C CNN
F 4 "SML-D12M8WT86" H 6925 1500 50  0001 C CNN "Part Number"
	1    6825 1300
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
