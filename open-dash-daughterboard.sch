EESchema Schematic File Version 2
LIBS:device
LIBS:open-automation
LIBS:open-dash-daughterboard-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 13
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1100 1900 1300 1050
U 5A7BADB8
F0 "power" 50
F1 "power.sch" 50
F2 "8V" I R 2400 2000 50 
F3 "5V" I R 2400 2250 50 
F4 "BATTERY" I R 2400 2500 50 
F5 "3V3" I R 2400 2650 50 
F6 "V_MAIN" I R 2400 2800 50 
F7 "EN_5V_POWER" I R 2400 2350 50 
F8 "EN_8V_POWER" I R 2400 2100 50 
$EndSheet
$Sheet
S 2750 2000 1550 950 
U 5A7BADDB
F0 "microcontroller" 50
F1 "microcontroller.sch" 50
F2 "3V3" I L 2750 2200 50 
F3 "SCL" I R 4300 2150 50 
F4 "SDA" I R 4300 2250 50 
F5 "EN_5V_POWER" I L 2750 2300 50 
F6 "EN_8V_POWER" I L 2750 2400 50 
F7 "MUTE_AUDIO_AMP" I R 4300 2650 50 
F8 "STBY_AUDIO_AMP" I R 4300 2350 50 
F9 "IO2" I R 4300 2450 50 
F10 "PROG" I R 4300 2550 50 
F11 "PANEL_SW" I R 4300 2750 50 
F12 "POWER_EN" I R 4300 2850 50 
F13 "RXD" I R 4300 2050 50 
F14 "TXD" I L 2750 2850 50 
F15 "FACTORY" I L 2750 2750 50 
F16 "5V" I L 2750 2500 50 
F17 "ESP_EN" I L 2750 2050 50 
$EndSheet
$Sheet
S 5300 4550 1350 900 
U 5A7BAF4B
F0 "audio mixer" 50
F1 "audio-mixer.sch" 50
$EndSheet
$Sheet
S 5250 1900 1550 950 
U 5A8CA1AF
F0 "canbus" 50
F1 "canbus.sch" 50
$EndSheet
$Sheet
S 2750 3150 1400 950 
U 5A8CA1FA
F0 "environment" 50
F1 "environment.sch" 50
F2 "3V3" I L 2750 3300 50 
F3 "SCL" I R 4150 3300 50 
F4 "SDA" I R 4150 3400 50 
F5 "BATTERY" I L 2750 3400 50 
F6 "V_MAIN" I L 2750 3500 50 
$EndSheet
$Sheet
S 2750 4350 1400 950 
U 5ABD1806
F0 "audio amplifier" 50
F1 "audio-amplifier.sch" 50
F2 "8V" I L 2750 4450 50 
F3 "L_AUDIO_IN" I R 4150 4550 50 
F4 "R_AUDIO_IN" I R 4150 4650 50 
F5 "MUTE_AUDIO_AMP" I L 2750 4600 50 
F6 "L_AUDIO_OUT+" I R 4150 5000 50 
F7 "R_AUDIO_OUT+" I R 4150 5100 50 
F8 "L_AUDIO_OUT-" I R 4150 4900 50 
F9 "R_AUDIO_OUT-" I R 4150 5200 50 
F10 "STBY_AUDIO_AMP" I L 2750 4700 50 
$EndSheet
$Sheet
S 9100 750  1400 950 
U 5ABD1850
F0 "video mixer" 50
F1 "video-mixer.sch" 50
$EndSheet
$Sheet
S 5250 3100 1400 950 
U 5ABD187E
F0 "interface" 50
F1 "interface.sch" 50
$EndSheet
$Sheet
S 7300 4550 1350 900 
U 5ABD18ED
F0 "FM Radio" 50
F1 "FM-radio.sch" 50
$EndSheet
$Sheet
S 7050 3100 1400 950 
U 5ABE8D90
F0 "composite input" 50
F1 "composite-input.sch" 50
$EndSheet
Entry Wire Line
	2500 2000 2600 2100
Entry Wire Line
	2500 2100 2600 2200
Entry Wire Line
	2500 2250 2600 2350
Entry Wire Line
	2500 2350 2600 2450
Entry Wire Line
	2500 2500 2600 2600
Entry Wire Line
	2500 2650 2600 2750
Entry Wire Line
	2500 2800 2600 2900
Wire Wire Line
	2500 2000 2400 2000
Wire Wire Line
	2400 2100 2500 2100
Wire Wire Line
	2500 2250 2400 2250
Wire Wire Line
	2400 2350 2500 2350
Wire Wire Line
	2500 2500 2400 2500
Wire Wire Line
	2400 2650 2500 2650
Wire Wire Line
	2500 2800 2400 2800
Entry Wire Line
	2600 2200 2700 2300
Entry Wire Line
	2600 2300 2700 2400
Entry Wire Line
	2600 2100 2700 2200
Wire Wire Line
	2700 2200 2750 2200
Wire Wire Line
	2750 2300 2700 2300
Wire Wire Line
	2750 2400 2700 2400
Entry Wire Line
	2600 2400 2700 2500
Wire Wire Line
	2700 2500 2750 2500
Entry Wire Line
	2600 3200 2700 3300
Entry Wire Line
	2600 3300 2700 3400
Entry Wire Line
	2600 3400 2700 3500
Wire Wire Line
	2700 3300 2750 3300
Wire Wire Line
	2750 3400 2700 3400
Wire Wire Line
	2700 3500 2750 3500
Entry Wire Line
	2600 4350 2700 4450
Wire Wire Line
	2750 4450 2700 4450
$Sheet
S 1000 4300 1400 850 
U 5AD64A7B
F0 "switches" 50
F1 "switches.sch" 50
F2 "V_USB" I R 2400 4450 50 
F3 "TXD" I R 2400 4800 50 
F4 "RXD" I R 2400 4900 50 
F5 "FACTORY" I L 1000 4450 50 
F6 "EN" I L 1000 4550 50 
F7 "PROG" I L 1000 4650 50 
F8 "3V3" I R 2400 4350 50 
$EndSheet
$Sheet
S 1150 3200 1250 850 
U 5AD64B22
F0 "thermometer" 50
F1 "thermometer.sch" 50
F2 "5V" I R 2400 3300 50 
F3 "IO17" I R 2400 3400 50 
$EndSheet
Entry Wire Line
	2500 3300 2600 3400
Entry Wire Line
	2500 4350 2600 4450
Entry Wire Line
	3050 3000 3150 3100
Wire Wire Line
	2400 3300 2500 3300
Wire Wire Line
	2400 4350 2500 4350
Wire Bus Line
	2600 2100 2600 4550
$EndSCHEMATC
