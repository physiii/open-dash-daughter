EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
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
L open-automation:LM2576 U3
U 1 1 5936E607
P 8800 3675
F 0 "U3" H 9150 3875 60  0000 C CNN
F 1 "LM2576" H 8850 3475 60  0000 C CNN
F 2 "open-automation:Regulator-LM2576" H 9200 3625 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/texas-instruments/LM2576SX-5.0-NOPB/LM2576SX-5.0-NOPBCT-ND/3440106" H 9200 3625 60  0001 C CNN
F 4 "LM2576SX-5.0/NOPB" H 8800 3675 60  0001 C CNN "Part Number"
	1    8800 3675
	1    0    0    -1  
$EndComp
Text GLabel 8250 3375 1    60   Input ~ 0
V_MAIN
Text GLabel 9850 3425 1    60   Input ~ 0
V_USB
$Comp
L open-automation:C_100uF C1
U 1 1 593709F5
P 7900 3475
F 0 "C1" V 7950 3525 50  0000 L CNN
F 1 "100uF" V 7750 3375 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P3.50mm" H 7938 3325 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/nichicon/UVR1H101MPD/493-1107-ND/588848" H 7900 3475 50  0001 C CNN
F 4 "UVR1H101MPD" H 7900 3475 60  0001 C CNN "Part Number"
	1    7900 3475
	0    1    1    0   
$EndComp
$Comp
L open-automation:C_1000uF C2
U 1 1 5968D146
P 9900 3825
F 0 "C2" H 9925 3925 50  0000 L CNN
F 1 "1000uF" H 9925 3725 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P3.50mm" H 9938 3675 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/nichicon/UVR0J102MPD1TD/493-12738-1-ND/4328447" H 9900 3825 50  0001 C CNN
F 4 "UVR0J102MPD1TD" H 9900 3825 60  0001 C CNN "Part Number"
	1    9900 3825
	1    0    0    -1  
$EndComp
$Comp
L open-automation:L L1
U 1 1 5969017D
P 9650 3675
F 0 "L1" V 9600 3675 50  0001 C CNN
F 1 "47uH" V 9600 3675 50  0000 C CNN
F 2 "open-automation:L-RAD-7.4mm" H 9650 3675 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/abracon-llc/AIUR-06-470K/535-13031-ND/2343602" H 9650 3675 50  0001 C CNN
F 4 "AIUR-06-470K" V 9650 3675 10  0001 C CNN "Part Number"
	1    9650 3675
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:GND #PWR010
U 1 1 59690AC9
P 9900 4025
F 0 "#PWR010" H 9900 3775 50  0001 C CNN
F 1 "GND" H 9900 3875 50  0000 C CNN
F 2 "" H 9900 4025 50  0000 C CNN
F 3 "" H 9900 4025 50  0000 C CNN
	1    9900 4025
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR011
U 1 1 59690B3F
P 7700 3475
F 0 "#PWR011" H 7700 3225 50  0001 C CNN
F 1 "GND" V 7650 3300 50  0000 C CNN
F 2 "" H 7700 3475 50  0000 C CNN
F 3 "" H 7700 3475 50  0000 C CNN
	1    7700 3475
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR012
U 1 1 59690D86
P 9450 4075
F 0 "#PWR012" H 9450 3825 50  0001 C CNN
F 1 "GND" H 9450 3925 50  0000 C CNN
F 2 "" H 9450 4075 50  0000 C CNN
F 3 "" H 9450 4075 50  0000 C CNN
	1    9450 4075
	1    0    0    -1  
$EndComp
$Comp
L open-automation:D_Schottky D1
U 1 1 59690FC6
P 9450 3875
F 0 "D1" H 9450 3975 50  0000 C CNN
F 1 "D_Schottky" H 9450 3775 50  0001 C CNN
F 2 "Diodes_SMD:D_SMA" H 9450 3875 50  0001 C CNN
F 3 "http://www.digikey.com/scripts/DkSearch/dksus.dll?Detail&itemSeq=233263850&uq=636356340886764109" H 9450 3875 50  0001 C CNN
F 4 "B330A-13-F" H 9450 3875 60  0001 C CNN "Part Number"
	1    9450 3875
	0    1    1    0   
$EndComp
Text GLabel 4075 4525 0    60   Input ~ 0
BATTERY
Text GLabel 4075 4950 0    60   Input ~ 0
V_MAIN
$Comp
L open-automation:CONN_01X02 BATTERY1
U 1 1 597573B9
P 5625 5775
AR Path="/597573B9" Ref="BATTERY1"  Part="1" 
AR Path="/5936D89B/597573B9" Ref="BATTERY1"  Part="1" 
F 0 "BATTERY1" H 5703 5816 50  0000 L CNN
F 1 "CONN_01X02" H 5703 5725 50  0000 L CNN
F 2 "open-automation:XT60" H 5625 5775 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/phoenix-contact/1934861/277-1607-ND/568644" H 5625 5775 50  0001 C CNN
	1    5625 5775
	1    0    0    -1  
$EndComp
Text GLabel 5325 5725 0    60   Input ~ 0
BATTERY
$Comp
L open-automation:GND #PWR013
U 1 1 59757643
P 5375 5875
F 0 "#PWR013" H 5375 5625 50  0001 C CNN
F 1 "GND" H 5375 5725 50  0000 C CNN
F 2 "" H 5375 5875 50  0000 C CNN
F 3 "" H 5375 5875 50  0000 C CNN
	1    5375 5875
	1    0    0    -1  
$EndComp
Text GLabel 9425 4850 1    60   Input ~ 0
3V3
$Comp
L open-automation:GND #PWR014
U 1 1 598E598C
P 8250 3825
F 0 "#PWR014" H 8250 3575 50  0001 C CNN
F 1 "GND" H 8250 3675 50  0000 C CNN
F 2 "" H 8250 3825 50  0000 C CNN
F 3 "" H 8250 3825 50  0000 C CNN
	1    8250 3825
	1    0    0    -1  
$EndComp
Text GLabel 7750 3675 0    60   Input ~ 0
power_EN
$Comp
L open-automation:GND #PWR015
U 1 1 598F6B7D
P 8225 5100
F 0 "#PWR015" H 8225 4850 50  0001 C CNN
F 1 "GND" H 8225 4950 50  0000 C CNN
F 2 "" H 8225 5100 50  0000 C CNN
F 3 "" H 8225 5100 50  0000 C CNN
	1    8225 5100
	1    0    0    -1  
$EndComp
Text GLabel 8175 4850 0    60   Input ~ 0
V_MAIN
$Comp
L open-automation:C C3
U 1 1 598F70D3
P 9125 5150
F 0 "C3" H 9150 5250 50  0000 L CNN
F 1 "4.7uF" H 9150 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9163 5000 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics-america-inc/CL10B475KQ8NQNC/1276-2087-1-ND/3890173" H 9125 5150 50  0001 C CNN
F 4 "CL10B475KQ8NQNC" H 9125 5150 60  0001 C CNN "Part Number"
	1    9125 5150
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR016
U 1 1 598F7252
P 9125 5400
F 0 "#PWR016" H 9125 5150 50  0001 C CNN
F 1 "GND" H 9125 5250 50  0000 C CNN
F 2 "" H 9125 5400 50  0000 C CNN
F 3 "" H 9125 5400 50  0000 C CNN
	1    9125 5400
	1    0    0    -1  
$EndComp
$Comp
L open-automation:LED D4
U 1 1 598F7872
P 9525 5200
F 0 "D4" H 9525 5300 50  0000 C CNN
F 1 "LED" H 9525 5100 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 9525 5200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/rohm-semiconductor/SML-D12M8WT86/511-1578-1-ND/1641810" H 9525 5200 50  0001 C CNN
F 4 "SML-D12M8WT86" H 9525 5200 60  0001 C CNN "Part Number"
	1    9525 5200
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:GND #PWR017
U 1 1 598F7A99
P 9525 5750
F 0 "#PWR017" H 9525 5500 50  0001 C CNN
F 1 "GND" H 9525 5600 50  0000 C CNN
F 2 "" H 9525 5750 50  0000 C CNN
F 3 "" H 9525 5750 50  0000 C CNN
	1    9525 5750
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR018
U 1 1 59A20D2D
P 8000 4075
F 0 "#PWR018" H 8000 3825 50  0001 C CNN
F 1 "GND" H 8000 3925 50  0000 C CNN
F 2 "" H 8000 4075 50  0000 C CNN
F 3 "" H 8000 4075 50  0000 C CNN
	1    8000 4075
	1    0    0    -1  
$EndComp
Text GLabel 4500 4275 2    60   Input ~ 0
3V3
$Comp
L open-automation:C_0.1uF C8
U 1 1 59C52B59
P 4275 4275
F 0 "C8" V 4350 4325 50  0000 L CNN
F 1 "C_0.1uF" V 4425 4125 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4375 4575 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/kemet/C0603C104K5RACTU/399-5089-1-ND/1465623" H 4275 4025 50  0001 C CNN
F 4 "C0603C104K5RACTU" H 4400 4475 60  0001 C CNN "Part Number"
	1    4275 4275
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:GND #PWR019
U 1 1 59C53560
P 4075 4275
F 0 "#PWR019" H 4075 4025 50  0001 C CNN
F 1 "GND" V 4150 4200 50  0000 C CNN
F 2 "" H 4075 4275 50  0000 C CNN
F 3 "" H 4075 4275 50  0000 C CNN
	1    4075 4275
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 4025 8000 4075
Connection ~ 9425 4950
Wire Wire Line
	9425 4850 9425 4950
Wire Wire Line
	9525 5700 9525 5750
Wire Wire Line
	9525 5350 9525 5400
Wire Wire Line
	9525 4950 9525 5050
Wire Wire Line
	9125 5400 9125 5300
Connection ~ 9125 4950
Wire Wire Line
	9125 5000 9125 4950
Wire Wire Line
	8175 4850 8275 4850
Wire Wire Line
	8225 5050 8275 5050
Wire Wire Line
	8225 5100 8225 5050
Wire Wire Line
	9025 4950 9125 4950
Wire Wire Line
	9450 3725 9450 3675
Connection ~ 9450 3675
Wire Wire Line
	9450 4075 9450 4025
Connection ~ 9850 3575
Wire Wire Line
	9900 4025 9900 3975
Connection ~ 9850 3675
Wire Wire Line
	9850 3425 9850 3575
Wire Wire Line
	9800 3675 9850 3675
Wire Wire Line
	9400 3675 9450 3675
Wire Wire Line
	9400 3575 9850 3575
Wire Wire Line
	8050 3475 8250 3475
Wire Wire Line
	8250 3575 8300 3575
Connection ~ 8250 3475
Wire Wire Line
	8250 3375 8250 3475
Wire Wire Line
	7700 3475 7750 3475
Wire Wire Line
	8250 3825 8250 3775
Wire Wire Line
	8250 3775 8300 3775
Wire Wire Line
	7750 3675 8000 3675
Wire Wire Line
	5375 5875 5375 5825
Wire Wire Line
	5375 5825 5425 5825
Wire Wire Line
	5325 5725 5425 5725
Wire Wire Line
	8000 3725 8000 3675
Connection ~ 8000 3675
Wire Wire Line
	4450 4275 4450 4575
Wire Wire Line
	4450 4575 4625 4575
Wire Wire Line
	4625 4675 4325 4675
Wire Wire Line
	4325 4675 4325 4525
Wire Wire Line
	4625 4775 4325 4775
Wire Wire Line
	4325 4775 4325 4950
Wire Wire Line
	4575 4900 4575 4875
Wire Wire Line
	4575 4875 4625 4875
Wire Wire Line
	4325 4950 4150 4950
Wire Wire Line
	4150 4950 4150 4875
Connection ~ 4150 4950
Wire Wire Line
	4150 4575 4150 4525
Connection ~ 4150 4525
Wire Wire Line
	4500 4275 4450 4275
Connection ~ 4450 4275
Wire Wire Line
	4075 4275 4125 4275
Wire Wire Line
	5550 4575 5700 4575
$Comp
L open-automation:GND #PWR020
U 1 1 59C52714
P 4575 4900
F 0 "#PWR020" H 4575 4650 50  0001 C CNN
F 1 "GND" H 4575 4750 50  0000 C CNN
F 2 "" H 4575 4900 50  0000 C CNN
F 3 "" H 4575 4900 50  0000 C CNN
	1    4575 4900
	1    0    0    -1  
$EndComp
Text GLabel 5675 4775 2    60   Input ~ 0
SDA
Text GLabel 5675 4875 2    60   Input ~ 0
SCL
Wire Wire Line
	5675 4775 5550 4775
Wire Wire Line
	5675 4875 5550 4875
Text GLabel 4525 3275 0    60   Input ~ 0
V_PANEL
Text GLabel 5200 3275 2    60   Input ~ 0
V_MAIN
$Comp
L open-automation:CONN_01X02 PANEL1
U 1 1 59C5AB51
P 5650 6275
AR Path="/59C5AB51" Ref="PANEL1"  Part="1" 
AR Path="/5936D89B/59C5AB51" Ref="PANEL1"  Part="1" 
F 0 "PANEL1" H 5728 6316 50  0000 L CNN
F 1 "CONN_01X02" H 5728 6225 50  0000 L CNN
F 2 "open-automation:XT60" H 5650 6275 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/phoenix-contact/1934861/277-1607-ND/568644" H 5650 6275 50  0001 C CNN
	1    5650 6275
	1    0    0    -1  
$EndComp
Text GLabel 5350 6225 0    60   Input ~ 0
V_PANEL
$Comp
L open-automation:GND #PWR021
U 1 1 59C5AB58
P 5400 6375
F 0 "#PWR021" H 5400 6125 50  0001 C CNN
F 1 "GND" H 5400 6225 50  0000 C CNN
F 2 "" H 5400 6375 50  0000 C CNN
F 3 "" H 5400 6375 50  0000 C CNN
	1    5400 6375
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6375 5400 6325
Wire Wire Line
	5400 6325 5450 6325
Wire Wire Line
	5350 6225 5450 6225
$Comp
L open-automation:Power-Monitor-INA219 U5
U 1 1 59C5E21B
P 5100 4725
F 0 "U5" H 5300 4475 60  0000 C CNN
F 1 "Power-Monitor-INA219" H 5125 5025 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-8_Handsoldering" H 5200 4375 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/texas-instruments/INA219AIDCNR/296-23770-1-ND/1952550" H 5300 4475 60  0001 C CNN
F 4 "INA219AIDCNR" H 5400 4575 60  0001 C CNN "Part Number"
	1    5100 4725
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_10k R8
U 1 1 59C5FC56
P 8000 3875
F 0 "R8" V 8000 3875 50  0000 C CNN
F 1 "R_10k" H 8025 3725 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7930 3875 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 8080 3875 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 8180 3975 60  0001 C CNN "Part Number"
	1    8000 3875
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR022
U 1 1 59C6263F
P 5700 4550
F 0 "#PWR022" H 5700 4300 50  0001 C CNN
F 1 "GND" H 5600 4550 50  0000 C CNN
F 2 "" H 5700 4550 50  0000 C CNN
F 3 "" H 5700 4550 50  0000 C CNN
	1    5700 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 4575 5700 4550
Wire Wire Line
	4525 3275 4675 3275
$Comp
L open-automation:R R7
U 1 1 59E3D0E8
P 4875 2725
F 0 "R7" H 4925 2575 50  0000 C CNN
F 1 "1K" V 4875 2725 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4805 2725 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-071KL/311-1.0KGRTR-ND/726677" H 4875 2725 50  0001 C CNN
F 4 "RC0603JR-071KL" V 4875 2725 60  0001 C CNN "Part Number"
	1    4875 2725
	1    0    0    -1  
$EndComp
Text GLabel 4875 2475 1    60   Input ~ 0
3V3
Wire Wire Line
	4875 2475 4875 2575
Wire Wire Line
	4875 2875 4875 2925
Text GLabel 4725 2925 0    60   Input ~ 0
PANEL_SW
Wire Wire Line
	4725 2925 4875 2925
Connection ~ 4875 2925
Wire Wire Line
	4325 4525 4150 4525
Wire Wire Line
	5200 3275 5075 3275
$Comp
L open-automation:R_10k R11
U 1 1 59E4131F
P 9525 5550
F 0 "R11" V 9525 5550 50  0000 C CNN
F 1 "R_10k" V 9450 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9455 5550 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 9605 5550 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 9705 5650 60  0001 C CNN "Part Number"
	1    9525 5550
	1    0    0    -1  
$EndComp
Text GLabel 5675 4675 2    60   Input ~ 0
3V3
Wire Wire Line
	5675 4675 5550 4675
$Comp
L open-automation:NCP1117LPST33T3G U11
U 1 1 5A105FD6
P 8675 4950
F 0 "U11" H 8800 4750 50  0000 C CNN
F 1 "NCP1117LPST33T3G" H 8675 5200 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 8625 4675 50  0001 C CIN
F 3 "https://www.digikey.com/product-detail/en/on-semiconductor/NCP1117LPST33T3G/NCP1117LPST33T3GOSCT-ND/3462387" H 8650 4600 50  0001 C CNN
F 4 "NCP1117LPST33T3G" H 8700 5275 60  0001 C CNN "Part Number"
	1    8675 4950
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_10m R1
U 1 1 5A108421
P 4150 4750
F 0 "R1" H 4125 4750 50  0000 C CNN
F 1 "R_10m" H 4125 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_2512_HandSoldering" H 4125 4575 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/bourns-inc/CRA2512-FZ-R010ELF/CRA2512-FZ-R010ELFCT-ND/1775054" H 4150 4500 50  0001 C CNN
F 4 "CRA2512-FZ-R010ELF" H 4150 4825 60  0001 C CNN "Part Number"
	1    4150 4750
	0    1    1    0   
$EndComp
$Comp
L open-automation:Q_NMOS_GSD_AOD4184A Q1
U 1 1 5A109055
P 4800 3250
F 0 "Q1" V 4650 3225 50  0000 L CNN
F 1 "Q_NMOS_GSD_AOD4184A" V 4950 2825 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2_Rectifier" H 4850 2950 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=785-1221-1-ND" H 4850 3025 50  0001 C CNN
F 4 "AOD4184A" H 4850 2875 60  0001 C CNN "Part Number"
	1    4800 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	9425 4950 9525 4950
Wire Wire Line
	9125 4950 9425 4950
Wire Wire Line
	9450 3675 9500 3675
Wire Wire Line
	9850 3575 9850 3675
Wire Wire Line
	9850 3675 9900 3675
Wire Wire Line
	8250 3475 8250 3575
Wire Wire Line
	8000 3675 8300 3675
Wire Wire Line
	4150 4950 4075 4950
Wire Wire Line
	4150 4525 4075 4525
Wire Wire Line
	4450 4275 4425 4275
Wire Wire Line
	4875 2925 4875 2975
$EndSCHEMATC
