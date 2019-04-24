EESchema Schematic File Version 5
LIBS:open-dash-daughterboard-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 6 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4200 1025 0    197  ~ 0
Microcontroller
$Comp
L open-automation:R_10k R15
U 1 1 59C609F8
P 6100 4950
F 0 "R15" V 6100 4950 50  0000 C CNN
F 1 "R_10k" V 6200 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6030 4950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 6180 4950 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 6280 5050 60  0001 C CNN "Part Number"
	1    6100 4950
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR028
U 1 1 5AF61DA0
P 6350 4950
F 0 "#PWR028" H 6350 4700 50  0001 C CNN
F 1 "GND" H 6350 4800 50  0000 C CNN
F 2 "" H 6350 4950 50  0000 C CNN
F 3 "" H 6350 4950 50  0000 C CNN
	1    6350 4950
	0    -1   -1   0   
$EndComp
$Comp
L open-automation:R_10k R14
U 1 1 59C83F25
P 4300 1800
F 0 "R14" V 4300 1800 50  0000 C CNN
F 1 "R_10k" V 4200 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 4230 1800 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 4380 1800 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 4480 1900 60  0001 C CNN "Part Number"
	1    4300 1800
	0    1    1    0   
$EndComp
Text HLabel 1600 1650 0    60   Input ~ 0
RXD
Text HLabel 1600 1550 0    60   Input ~ 0
TXD
Text HLabel 1600 2050 0    60   Input ~ 0
DISPLAY_EN
Text HLabel 1600 1250 0    60   Input ~ 0
CAN_TX
$Comp
L open-automation:C_10uF C10
U 1 1 5B2706A8
P 3100 1800
F 0 "C10" H 2850 1800 50  0000 L CNN
F 1 "C_10uF" H 2800 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3200 2100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10A106MP8NNNC/1276-1871-1-ND/3889957" H 3100 1550 50  0001 C CNN
F 4 "CL10A106MP8NNNC" H 3225 2000 60  0001 C CNN "Part Number"
	1    3100 1800
	1    0    0    -1  
$EndComp
$Comp
L open-automation:C_1uF C12
U 1 1 5B2CA474
P 3400 1800
F 0 "C12" H 3500 1800 50  0000 L CNN
F 1 "C_1uF" H 3400 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3500 2100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/CGA3E1X7R1C105M080AC/445-12540-1-ND/3954206" H 3400 1550 50  0001 C CNN
F 4 "CGA3E1X7R1C105M080AC" H 3525 2000 60  0001 C CNN "Part Number"
	1    3400 1800
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5CC80583
P 8100 4050
AR Path="/5A8CA1FA/5CC80583" Ref="#PWR?"  Part="1" 
AR Path="/5A7BADDB/5CC80583" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 8100 3800 50  0001 C CNN
F 1 "GND" H 8100 3900 50  0000 C CNN
F 2 "" H 8100 4050 50  0000 C CNN
F 3 "" H 8100 4050 50  0000 C CNN
	1    8100 4050
	1    0    0    -1  
$EndComp
$Comp
L open-automation:SI7020-A20 U?
U 1 1 5CC80592
P 8600 4000
AR Path="/5A8CA1FA/5CC80592" Ref="U?"  Part="1" 
AR Path="/5A7BADDB/5CC80592" Ref="U12"  Part="1" 
F 0 "U12" H 8800 3900 60  0000 C CNN
F 1 "SI7020-A20" H 8600 4200 60  0000 C CNN
F 2 "open-automation:SI7020-A20" H 8600 3700 60  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/silicon-labs/SI7020-A20-GM1R/336-3596-1-ND/5823452" H 8600 3800 60  0001 C CNN
F 4 "SI7020-A20-GM1R" H 8700 3800 60  0001 C CNN "Part Number"
	1    8600 4000
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR?
U 1 1 5CC8059A
P 7650 4050
AR Path="/5A8CA1FA/5CC8059A" Ref="#PWR?"  Part="1" 
AR Path="/5A7BADDB/5CC8059A" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 7650 3800 50  0001 C CNN
F 1 "GND" H 7650 3900 50  0000 C CNN
F 2 "" H 7650 4050 50  0000 C CNN
F 3 "" H 7650 4050 50  0000 C CNN
	1    7650 4050
	1    0    0    -1  
$EndComp
Text Label 8225 3675 0    60   ~ 0
Temp-Humidty
$Comp
L open-automation:C_0.1uF C?
U 1 1 5CC805AD
P 7650 3850
AR Path="/5A8CA1FA/5CC805AD" Ref="C?"  Part="1" 
AR Path="/5A7BADDB/5CC805AD" Ref="C20"  Part="1" 
F 0 "C20" H 7450 3850 50  0000 L CNN
F 1 "C_0.1uF" H 7350 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 7750 4150 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/tdk-corporation/C1608X8R1H104K080AB/445-8818-1-ND/3248223" H 7650 3600 50  0001 C CNN
F 4 "C1608X8R1H104K080AB" H 7775 4050 60  0001 C CNN "Part Number"
	1    7650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4000 7650 4050
$Comp
L open-automation:SW_PUSH SW?
U 1 1 5CC89C1F
P 2050 4300
AR Path="/5ABD187E/5CC89C1F" Ref="SW?"  Part="1" 
AR Path="/5A7BADDB/5CC89C1F" Ref="SW1"  Part="1" 
F 0 "SW1" H 2050 4475 50  0000 C CNN
F 1 "SW_PUSH" H 2025 4200 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_KMR2" H 2050 4300 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/60/KMR2_9aug12-25127.pdf" H 2050 4300 50  0001 C CNN
F 4 "KMR211NG LFS" H 2050 4300 60  0001 C CNN "Part Number"
	1    2050 4300
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR0145
U 1 1 5CC89C27
P 2050 4650
F 0 "#PWR0145" H 2050 4400 50  0001 C CNN
F 1 "GND" H 2050 4500 50  0000 C CNN
F 2 "" H 2050 4650 50  0000 C CNN
F 3 "" H 2050 4650 50  0000 C CNN
	1    2050 4650
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_10k R?
U 1 1 5CC89C33
P 2050 3700
AR Path="/5ABD187E/5CC89C33" Ref="R?"  Part="1" 
AR Path="/5A7BADDB/5CC89C33" Ref="R28"  Part="1" 
F 0 "R28" V 2050 3700 50  0000 C CNN
F 1 "R_10k" H 2250 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 1980 3700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 2130 3700 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 2230 3800 60  0001 C CNN "Part Number"
	1    2050 3700
	1    0    0    -1  
$EndComp
Text HLabel 1600 1050 0    60   Input ~ 0
3V3
Text Label 1650 1050 0    50   ~ 0
3V3
Wire Wire Line
	1650 1050 1600 1050
Text Label 4550 3150 2    50   ~ 0
3V3
Wire Wire Line
	4550 3150 4600 3150
Wire Wire Line
	4550 3000 4550 3050
Wire Wire Line
	4550 3050 4600 3050
Text Label 4550 3250 2    50   ~ 0
EN
Wire Wire Line
	4550 3250 4600 3250
Text Label 2050 3950 2    50   ~ 0
EN
$Comp
L open-dash-daughterboard-rescue:LED-open-automation D?
U 1 1 5CC89C14
P 2050 3300
AR Path="/5ABD187E/5CC89C14" Ref="D?"  Part="1" 
AR Path="/5A7BADDB/5CC89C14" Ref="D9"  Part="1" 
F 0 "D9" V 2050 3200 50  0000 C CNN
F 1 "LED" V 2150 3225 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad0.82x1.00mm_HandSolder" H 2050 3300 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic9/00128792_0.pdf" H 2050 3300 50  0001 C CNN
F 4 "475-2512-2-ND" H 2050 3300 60  0001 C CNN "Part Number"
	1    2050 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 4650 2050 4600
Wire Wire Line
	2050 3900 2050 4000
Text Label 2050 3100 2    50   ~ 0
3V3
Wire Wire Line
	2050 3100 2050 3150
Wire Wire Line
	2050 3500 2050 3450
$Comp
L open-automation:SW_PUSH SW?
U 1 1 5CC68117
P 2650 4300
AR Path="/5ABD187E/5CC68117" Ref="SW?"  Part="1" 
AR Path="/5A7BADDB/5CC68117" Ref="SW2"  Part="1" 
F 0 "SW2" H 2650 4475 50  0000 C CNN
F 1 "SW_PUSH" H 2625 4200 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_KMR2" H 2650 4300 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/60/KMR2_9aug12-25127.pdf" H 2650 4300 50  0001 C CNN
F 4 "KMR211NG LFS" H 2650 4300 60  0001 C CNN "Part Number"
	1    2650 4300
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR0146
U 1 1 5CC68123
P 2650 4650
F 0 "#PWR0146" H 2650 4400 50  0001 C CNN
F 1 "GND" H 2650 4500 50  0000 C CNN
F 2 "" H 2650 4650 50  0000 C CNN
F 3 "" H 2650 4650 50  0000 C CNN
	1    2650 4650
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_10k R?
U 1 1 5CC68136
P 2650 3700
AR Path="/5ABD187E/5CC68136" Ref="R?"  Part="1" 
AR Path="/5A7BADDB/5CC68136" Ref="R29"  Part="1" 
F 0 "R29" V 2650 3700 50  0000 C CNN
F 1 "R_10k" H 2850 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 2580 3700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 2730 3700 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 2830 3800 60  0001 C CNN "Part Number"
	1    2650 3700
	1    0    0    -1  
$EndComp
Text Label 2650 3950 2    50   ~ 0
PROG
$Comp
L open-dash-daughterboard-rescue:LED-open-automation D?
U 1 1 5CC68146
P 2650 3300
AR Path="/5ABD187E/5CC68146" Ref="D?"  Part="1" 
AR Path="/5A7BADDB/5CC68146" Ref="D10"  Part="1" 
F 0 "D10" V 2650 3200 50  0000 C CNN
F 1 "LED" V 2750 3225 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad0.82x1.00mm_HandSolder" H 2650 3300 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic9/00128792_0.pdf" H 2650 3300 50  0001 C CNN
F 4 "475-2512-2-ND" H 2650 3300 60  0001 C CNN "Part Number"
	1    2650 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 4650 2650 4600
Wire Wire Line
	2650 3900 2650 4000
Text Label 2650 3100 2    50   ~ 0
3V3
Wire Wire Line
	2650 3100 2650 3150
Wire Wire Line
	2650 3500 2650 3450
$Comp
L open-automation:SW_PUSH SW?
U 1 1 5CC69855
P 3200 4300
AR Path="/5ABD187E/5CC69855" Ref="SW?"  Part="1" 
AR Path="/5A7BADDB/5CC69855" Ref="SW3"  Part="1" 
F 0 "SW3" H 3200 4475 50  0000 C CNN
F 1 "SW_PUSH" H 3175 4200 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_KMR2" H 3200 4300 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/60/KMR2_9aug12-25127.pdf" H 3200 4300 50  0001 C CNN
F 4 "KMR211NG LFS" H 3200 4300 60  0001 C CNN "Part Number"
	1    3200 4300
	0    1    1    0   
$EndComp
$Comp
L open-automation:GND #PWR0147
U 1 1 5CC69861
P 3200 4650
F 0 "#PWR0147" H 3200 4400 50  0001 C CNN
F 1 "GND" H 3200 4500 50  0000 C CNN
F 2 "" H 3200 4650 50  0000 C CNN
F 3 "" H 3200 4650 50  0000 C CNN
	1    3200 4650
	1    0    0    -1  
$EndComp
$Comp
L open-automation:R_10k R?
U 1 1 5CC69874
P 3200 3700
AR Path="/5ABD187E/5CC69874" Ref="R?"  Part="1" 
AR Path="/5A7BADDB/5CC69874" Ref="R30"  Part="1" 
F 0 "R30" V 3200 3700 50  0000 C CNN
F 1 "R_10k" H 3400 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 3130 3700 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 3280 3700 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 3380 3800 60  0001 C CNN "Part Number"
	1    3200 3700
	1    0    0    -1  
$EndComp
Text Label 3200 3950 2    50   ~ 0
FACT
$Comp
L open-dash-daughterboard-rescue:LED-open-automation D?
U 1 1 5CC69884
P 3200 3300
AR Path="/5ABD187E/5CC69884" Ref="D?"  Part="1" 
AR Path="/5A7BADDB/5CC69884" Ref="D11"  Part="1" 
F 0 "D11" V 3200 3200 50  0000 C CNN
F 1 "LED" V 3300 3225 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad0.82x1.00mm_HandSolder" H 3200 3300 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic9/00128792_0.pdf" H 3200 3300 50  0001 C CNN
F 4 "475-2512-2-ND" H 3200 3300 60  0001 C CNN "Part Number"
	1    3200 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 4650 3200 4600
Wire Wire Line
	3200 3900 3200 4000
Text Label 3200 3100 2    50   ~ 0
3V3
Wire Wire Line
	3200 3100 3200 3150
Wire Wire Line
	3200 3500 3200 3450
Text Label 6400 4350 0    50   ~ 0
PROG
Wire Wire Line
	6400 4350 6350 4350
Text Label 4550 4350 2    50   ~ 0
FACT
Wire Wire Line
	4550 4350 4600 4350
Wire Wire Line
	6350 4950 6300 4950
Wire Wire Line
	5900 4950 5900 4900
Text Label 5800 4950 3    50   ~ 0
DISPLAY
Wire Wire Line
	5800 4900 5800 4950
Text Label 1650 2050 0    50   ~ 0
DISPLAY
Wire Wire Line
	1650 2050 1600 2050
Text HLabel 1600 1150 0    60   Input ~ 0
CAN_RX
Text Label 1650 1150 0    50   ~ 0
CAN_RX
Wire Wire Line
	1650 1150 1600 1150
Text Label 6400 4250 0    50   ~ 0
CAN_RX
Wire Wire Line
	6400 4250 6350 4250
Text HLabel 1600 1350 0    60   Input ~ 0
SCL
Text HLabel 1600 1450 0    60   Input ~ 0
SDA
Text Label 1650 1450 0    50   ~ 0
SDA
Wire Wire Line
	1650 1450 1600 1450
Text Label 1650 1350 0    50   ~ 0
SCL
Wire Wire Line
	1650 1350 1600 1350
Text Label 6400 3750 0    50   ~ 0
SDA
Text Label 6400 3650 0    50   ~ 0
SCL
Wire Wire Line
	6400 3650 6350 3650
Wire Wire Line
	6400 3750 6350 3750
Text Label 6400 4050 0    50   ~ 0
CAN_RX
Wire Wire Line
	6400 4050 6350 4050
Text Label 1650 1250 0    50   ~ 0
CAN_TX
Wire Wire Line
	1650 1250 1600 1250
$Comp
L open-automation:ESP-WROOM-32 U6
U 1 1 5AFA4EFB
P 5500 3700
F 0 "U6" H 6100 2650 60  0000 C CNN
F 1 "ESP-WROOM-32" H 5500 4500 60  0000 C CNN
F 2 "open-automation:ESP-WROOM-32" H 5150 4300 60  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp_wroom_32_datasheet_en.pdf" H 5150 4300 60  0001 C CNN
	1    5500 3700
	1    0    0    -1  
$EndComp
Text Label 6400 3950 0    50   ~ 0
CAN_TX
Wire Wire Line
	6400 3950 6350 3950
Text Label 1650 1650 0    50   ~ 0
RXD
Wire Wire Line
	1650 1650 1600 1650
Text Label 1650 1550 0    50   ~ 0
TXD
Wire Wire Line
	1650 1550 1600 1550
Text Label 6400 3300 0    50   ~ 0
RXD
Wire Wire Line
	6400 3300 6350 3300
Text Label 6400 3200 0    50   ~ 0
TXD
Wire Wire Line
	6400 3200 6350 3200
Text Label 4550 1950 0    50   ~ 0
SDA
Wire Wire Line
	4550 1950 4500 1950
Text Label 4550 1800 0    50   ~ 0
SCL
Text Label 3400 1600 0    50   ~ 0
3V3
Text Label 4050 1800 2    50   ~ 0
3V3
Wire Wire Line
	4550 1800 4500 1800
$Comp
L open-automation:R_10k R13
U 1 1 59C83F7C
P 4300 1950
F 0 "R13" V 4300 1950 50  0000 C CNN
F 1 "R_10k" V 4400 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 4230 1950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/yageo/RC0603JR-0710KL/311-10KGRCT-ND/729647" V 4380 1950 50  0001 C CNN
F 4 "RC0603JR-0710KL" V 4480 2050 60  0001 C CNN "Part Number"
	1    4300 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 1800 4100 1800
Wire Wire Line
	4050 1950 4100 1950
Text Label 3100 1600 2    50   ~ 0
3V3
$Comp
L open-automation:GND #PWR027
U 1 1 59097974
P 4550 3000
F 0 "#PWR027" H 4550 2750 50  0001 C CNN
F 1 "GND" H 4550 2850 50  0000 C CNN
F 2 "" H 4550 3000 50  0000 C CNN
F 3 "" H 4550 3000 50  0000 C CNN
	1    4550 3000
	-1   0    0    1   
$EndComp
$Comp
L open-automation:GND #PWR0148
U 1 1 5CC8C67A
P 3400 2000
F 0 "#PWR0148" H 3400 1750 50  0001 C CNN
F 1 "GND" H 3400 1850 50  0000 C CNN
F 2 "" H 3400 2000 50  0000 C CNN
F 3 "" H 3400 2000 50  0000 C CNN
	1    3400 2000
	1    0    0    -1  
$EndComp
$Comp
L open-automation:GND #PWR0149
U 1 1 5CC8CF13
P 3100 2000
F 0 "#PWR0149" H 3100 1750 50  0001 C CNN
F 1 "GND" H 3100 1850 50  0000 C CNN
F 2 "" H 3100 2000 50  0000 C CNN
F 3 "" H 3100 2000 50  0000 C CNN
	1    3100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2000 3100 1950
Wire Wire Line
	3100 1650 3100 1600
Wire Wire Line
	3400 1600 3400 1650
Wire Wire Line
	3400 1950 3400 2000
Text Label 4050 1950 2    50   ~ 0
3V3
Text Label 9050 4000 0    50   ~ 0
SDA
Wire Wire Line
	9050 4000 9000 4000
Text Label 9050 3900 0    50   ~ 0
SCL
Wire Wire Line
	9050 3900 9000 3900
Wire Wire Line
	8100 4050 8100 4000
Wire Wire Line
	8100 4000 8150 4000
Text Label 7650 3650 2    50   ~ 0
3V3
Wire Wire Line
	7650 3650 7650 3700
Text Label 8100 3900 2    50   ~ 0
3V3
Wire Wire Line
	8100 3900 8150 3900
Text HLabel 1600 1850 0    60   Input ~ 0
MUTE_AUDIO
Text HLabel 1600 1750 0    60   Input ~ 0
STBY_AUDIO
Text Label 4550 3950 2    50   ~ 0
MUTE
Wire Wire Line
	1650 1850 1600 1850
Text Label 4550 3850 2    50   ~ 0
STBY
Wire Wire Line
	1650 1750 1600 1750
Wire Wire Line
	4550 3850 4600 3850
Wire Wire Line
	4600 3950 4550 3950
Text Label 1650 1850 0    50   ~ 0
MUTE
Text Label 1650 1750 0    50   ~ 0
STBY
Text Label 4550 4450 2    50   ~ 0
SOFT_POWER
Wire Wire Line
	4600 4450 4550 4450
Text HLabel 1600 1950 0    60   Input ~ 0
MAIN_EN
Wire Wire Line
	1650 1950 1600 1950
Text Label 1650 1950 0    50   ~ 0
MAIN
Wire Wire Line
	6400 4150 6350 4150
Text Label 6400 4150 0    50   ~ 0
AUDIO
Wire Wire Line
	6400 3850 6350 3850
Text Label 6400 3850 0    50   ~ 0
MAIN
Text Label 6250 1650 2    50   ~ 0
SOFT_POWER
Wire Wire Line
	6800 1650 6850 1650
Text Label 6850 1750 0    50   ~ 0
TXD
Wire Wire Line
	6800 1750 6850 1750
Text Label 6850 1650 0    50   ~ 0
RXD
$Comp
L open-automation:Conn_02x05_Odd_Even J?
U 1 1 5CC0CE20
P 6500 1850
AR Path="/5CC0CE20" Ref="J?"  Part="1" 
AR Path="/5A7BADDB/5CC0CE20" Ref="J7"  Part="1" 
F 0 "J7" H 6550 2267 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 6550 2176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 6500 1850 50  0001 C CNN
F 3 "" H 6500 1850 50  0001 C CNN
	1    6500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1650 6250 1650
$Comp
L open-automation:GND #PWR?
U 1 1 5CC0CE28
P 6850 2100
AR Path="/5ABD187E/5CC0CE28" Ref="#PWR?"  Part="1" 
AR Path="/5CC0CE28" Ref="#PWR?"  Part="1" 
AR Path="/5A7BADDB/5CC0CE28" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 6850 1850 50  0001 C CNN
F 1 "GND" H 6850 1950 50  0000 C CNN
F 2 "" H 6850 2100 50  0000 C CNN
F 3 "" H 6850 2100 50  0000 C CNN
	1    6850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1850 6850 1850
Text Label 6850 1850 0    50   ~ 0
SCL
Text Label 6850 1950 0    50   ~ 0
SDA
Wire Wire Line
	6800 2050 6850 2050
Wire Wire Line
	6850 2050 6850 2100
Wire Wire Line
	6850 1950 6800 1950
$Comp
L open-automation:GND #PWR?
U 1 1 5CC0CE35
P 6250 2100
AR Path="/5ABD187E/5CC0CE35" Ref="#PWR?"  Part="1" 
AR Path="/5CC0CE35" Ref="#PWR?"  Part="1" 
AR Path="/5A7BADDB/5CC0CE35" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 6250 1850 50  0001 C CNN
F 1 "GND" H 6250 1950 50  0000 C CNN
F 2 "" H 6250 2100 50  0000 C CNN
F 3 "" H 6250 2100 50  0000 C CNN
	1    6250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2050 6250 2050
Wire Wire Line
	6250 2050 6250 2100
Text Label 6250 1750 2    50   ~ 0
PROG
Wire Wire Line
	6300 1750 6250 1750
Text Label 6250 1850 2    50   ~ 0
FACT
Text Label 6250 1950 2    50   ~ 0
ESP_EN
Wire Wire Line
	6300 1950 6250 1950
Wire Wire Line
	6250 1850 6300 1850
Text Label 1650 2150 0    50   ~ 0
ESP_EN
Text HLabel 1600 2150 0    60   Input ~ 0
ESP_EN
Wire Wire Line
	1650 2150 1600 2150
Text Label 1650 2250 0    50   ~ 0
PROG
Text HLabel 1600 2250 0    60   Input ~ 0
PROG
Wire Wire Line
	1650 2250 1600 2250
$EndSCHEMATC
