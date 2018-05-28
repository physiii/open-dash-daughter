EESchema Schematic File Version 4
LIBS:open-dash-daughterboard-cache
EELAYER 26 0
EELAYER END
$Descr USLedger 17000 11000
encoding utf-8
Sheet 1 15
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
S 3775 1800 1300 1050
U 5A7BADB8
F0 "power" 50
F1 "power.sch" 50
F2 "8V" I R 5075 1900 50 
F3 "5V" I R 5075 2150 50 
F4 "BATTERY" I R 5075 2400 50 
F5 "3V3" I R 5075 2550 50 
F6 "V_MAIN" I R 5075 2700 50 
F7 "EN_5V_POWER" I R 5075 2250 50 
F8 "EN_8V_POWER" I R 5075 2000 50 
$EndSheet
$Sheet
S 5425 1900 1550 950 
U 5A7BADDB
F0 "microcontroller" 50
F1 "microcontroller.sch" 50
F2 "3V3" I L 5425 2100 50 
F3 "SCL" I R 6975 2050 50 
F4 "SDA" I R 6975 2150 50 
F5 "EN_5V_POWER" I L 5425 2200 50 
F6 "EN_8V_POWER" I L 5425 2300 50 
F7 "MUTE_AUDIO_AMP" I R 6975 2550 50 
F8 "STBY_AUDIO_AMP" I R 6975 2250 50 
F9 "IO2" I R 6975 2350 50 
F10 "PROG" I R 6975 2450 50 
F11 "PANEL_SW" I R 6975 2650 50 
F12 "POWER_EN" I R 6975 2750 50 
F13 "RXD" I R 6975 1950 50 
F14 "TXD" I L 5425 2750 50 
F15 "FACTORY" I L 5425 2650 50 
F16 "5V" I L 5425 2400 50 
F17 "ESP_EN" I L 5425 1950 50 
F18 "SOFT_POWER" O L 5425 2525 50 
$EndSheet
$Sheet
S 5425 6500 1550 900 
U 5A7BAF4B
F0 "audio mixer" 50
F1 "audio-mixer.sch" 50
$EndSheet
$Sheet
S 5425 7650 1550 950 
U 5A8CA1AF
F0 "canbus" 50
F1 "canbus.sch" 50
F2 "5V" I L 5425 7700 50 
F3 "MOSI" I R 6975 7700 50 
F4 "MISO" I R 6975 7800 50 
F5 "CAN_CS" I R 6975 7900 50 
F6 "SPI_SCK" I R 6975 8000 50 
F7 "CAN_RESET" I R 6975 8125 50 
F8 "CAN_INT" I R 6975 8225 50 
F9 "CAN_RX" I R 6975 8350 50 
F10 "CAN_TX" I R 6975 8450 50 
$EndSheet
$Sheet
S 5425 3050 1550 950 
U 5A8CA1FA
F0 "environment" 50
F1 "environment.sch" 50
F2 "3v3" I L 5425 3200 50 
F3 "SCL" I R 6975 3200 50 
F4 "SDA" I R 6975 3300 50 
F5 "BATTERY" I L 5425 3300 50 
F6 "V_MAIN" I L 5425 3400 50 
$EndSheet
$Sheet
S 5425 4250 1550 950 
U 5ABD1806
F0 "audio amplifier" 50
F1 "audio-amplifier.sch" 50
F2 "8V" I L 5425 4350 50 
F3 "L_AUDIO_IN" I R 6975 4450 50 
F4 "R_AUDIO_IN" I R 6975 4550 50 
F5 "MUTE_AUDIO_AMP" I R 6975 4350 50 
F6 "L_AUDIO_OUT+" I R 6975 4900 50 
F7 "R_AUDIO_OUT+" I R 6975 5000 50 
F8 "L_AUDIO_OUT-" I R 6975 4800 50 
F9 "R_AUDIO_OUT-" I R 6975 5100 50 
F10 "STBY_AUDIO_AMP" I R 6975 4650 50 
$EndSheet
$Sheet
S 10925 3800 1400 950 
U 5ABD1850
F0 "video mixer" 50
F1 "video-mixer.sch" 50
$EndSheet
$Sheet
S 8400 6475 1650 1900
U 5ABD187E
F0 "interface" 50
F1 "interface.sch" 50
F2 "AMF_Antenna" I L 8400 6525 50 
F3 "GPS_Antenna" I L 8400 6625 50 
F4 "can_+" I L 8400 6975 50 
F5 "aux_R" I L 8400 7375 50 
F6 "aux_ref" I L 8400 7475 50 
F7 "can_-" I L 8400 7075 50 
F8 "BL" I R 10050 6875 50 
F9 "Ground" I R 10050 6975 50 
F10 "Mic_-" I R 10050 7525 50 
F11 "Mic_+" I R 10050 7625 50 
F12 "CameraSignal" I R 10050 7725 50 
F13 "CameraShield" I R 10050 7425 50 
F14 "CameraReturn" I R 10050 8025 50 
F15 "12vAlwaysOn" I R 10050 6775 50 
F16 "rightRearSpeaker+" I R 10050 7925 50 
F17 "rightFrontSpeaker+" I R 10050 7225 50 
F18 "leftFrontSpeaker+" I L 8400 7625 50 
F19 "leftRearSpeaker+" I L 8400 7725 50 
F20 "rightRearSpeaker-" I R 10050 7825 50 
F21 "rightFrontSpeaker-" I R 10050 7325 50 
F22 "leftFrontSpeaker-" I L 8400 7825 50 
F23 "leftRearSpeaker-" I L 8400 7925 50 
F24 "auxDet" I L 8400 6775 50 
F25 "auxL" I L 8400 7275 50 
$EndSheet
$Sheet
S 5425 5400 1550 900 
U 5ABD18ED
F0 "FM Radio" 50
F1 "FM-radio.sch" 50
F2 "3v3" I L 5425 5550 50 
F3 "SCL" I R 6975 5600 50 
F4 "SDA" I R 6975 5700 50 
F5 "LOUT" I R 6975 5950 50 
F6 "ROUT" I R 6975 5850 50 
F7 "FM_INT" I R 6975 6050 50 
F8 "FM_RADIO_RST" I R 6975 5500 50 
$EndSheet
$Sheet
S 8575 5100 1400 950 
U 5ABE8D90
F0 "composite input" 50
F1 "composite-input.sch" 50
$EndSheet
Entry Wire Line
	5175 1900 5275 2000
Entry Wire Line
	5175 2000 5275 2100
Entry Wire Line
	5175 2150 5275 2250
Entry Wire Line
	5175 2250 5275 2350
Entry Wire Line
	5175 2400 5275 2500
Entry Wire Line
	5175 2550 5275 2650
Entry Wire Line
	5175 2700 5275 2800
Wire Wire Line
	5175 1900 5075 1900
Wire Wire Line
	5075 2000 5175 2000
Wire Wire Line
	5175 2150 5075 2150
Wire Wire Line
	5075 2250 5175 2250
Wire Wire Line
	5175 2400 5075 2400
Wire Wire Line
	5075 2550 5175 2550
Wire Wire Line
	5175 2700 5075 2700
Entry Wire Line
	5275 2100 5375 2200
Entry Wire Line
	5275 2200 5375 2300
Entry Wire Line
	5275 2000 5375 2100
Wire Wire Line
	5375 2100 5425 2100
Wire Wire Line
	5425 2200 5375 2200
Wire Wire Line
	5425 2300 5375 2300
Entry Wire Line
	5275 2300 5375 2400
Wire Wire Line
	5375 2400 5425 2400
Entry Wire Line
	5275 3100 5375 3200
Entry Wire Line
	5275 3200 5375 3300
Entry Wire Line
	5275 3300 5375 3400
Wire Wire Line
	5375 3200 5425 3200
Wire Wire Line
	5425 3300 5375 3300
Wire Wire Line
	5375 3400 5425 3400
Entry Wire Line
	5275 4250 5375 4350
Wire Wire Line
	5425 4350 5375 4350
$Sheet
S 5425 8850 1550 850 
U 5AD64A7B
F0 "switches" 50
F1 "switches.sch" 50
F2 "V_USB" I L 5425 9000 50 
F3 "TXD" I R 6975 9350 50 
F4 "RXD" I R 6975 9450 50 
F5 "FACTORY" I R 6975 9000 50 
F6 "EN" I R 6975 9100 50 
F7 "PROG" I R 6975 9200 50 
F8 "3V3" I L 5425 8900 50 
$EndSheet
Entry Wire Line
	5275 7600 5375 7700
Wire Wire Line
	5375 7700 5425 7700
Entry Wire Line
	5275 8800 5375 8900
Entry Wire Line
	5275 8900 5375 9000
Wire Wire Line
	5375 9000 5425 9000
Wire Wire Line
	5425 8900 5375 8900
Entry Wire Line
	7125 1950 7225 2050
Entry Wire Line
	7125 2050 7225 2150
Entry Wire Line
	7125 2150 7225 2250
Entry Wire Line
	7125 3200 7225 3300
Entry Wire Line
	7125 3300 7225 3400
Entry Wire Line
	7125 9200 7225 9300
Entry Wire Line
	7125 2450 7225 2550
Entry Wire Line
	7125 2750 7225 2850
Entry Wire Line
	7125 2650 7225 2750
Entry Wire Line
	7125 9350 7225 9450
Entry Wire Line
	7125 9450 7225 9550
Entry Wire Line
	7125 7700 7225 7800
Entry Wire Line
	7125 7800 7225 7900
Entry Wire Line
	7125 7900 7225 8000
Entry Wire Line
	7125 8000 7225 8100
Wire Wire Line
	6975 7700 7125 7700
Wire Wire Line
	7125 7800 6975 7800
Wire Wire Line
	6975 7900 7125 7900
Wire Wire Line
	7125 8000 6975 8000
Wire Wire Line
	7125 9200 6975 9200
Wire Wire Line
	7125 9350 6975 9350
Wire Wire Line
	6975 3200 7125 3200
Wire Wire Line
	6975 3300 7125 3300
Wire Wire Line
	7125 2650 6975 2650
Wire Wire Line
	6975 2750 7125 2750
Wire Wire Line
	7125 2450 6975 2450
Wire Wire Line
	7125 1950 6975 1950
Wire Wire Line
	7125 2050 6975 2050
Wire Wire Line
	6975 2150 7125 2150
Wire Wire Line
	6975 9450 7125 9450
Entry Wire Line
	5275 5450 5375 5550
Wire Wire Line
	5375 5550 5425 5550
Entry Wire Line
	7125 5600 7225 5700
Entry Wire Line
	7125 5700 7225 5800
Wire Wire Line
	6975 5600 7125 5600
Wire Wire Line
	7125 5700 6975 5700
$Sheet
S 8525 3800 1450 1000
U 5AE2E67D
F0 "GPS interface" 50
F1 "GPS-interface.sch" 50
F2 "3v3" I L 8525 3900 50 
F3 "SDA" I L 8525 4150 50 
F4 "SCL" I L 8525 4250 50 
F5 "GPS_Antenna" I L 8525 4400 50 
$EndSheet
$Sheet
S 8675 8950 1475 700 
U 5AE37EA7
F0 "audio-interface" 50
F1 "audio-interface.sch" 50
F2 "5v" I L 8675 9050 50 
F3 "usb_dm" B L 8675 9400 50 
F4 "usb_dp" B L 8675 9300 50 
F5 "3v3" I L 8675 9150 50 
F6 "audio_mute" I L 8675 9550 50 
F7 "audio_out_right" O R 10150 9050 50 
F8 "audio_out_left" O R 10150 9150 50 
F9 "dac_clk_out" O R 10150 9300 50 
F10 "dac_data_out" O R 10150 9600 50 
F11 "dac_left_l_r_clk_out" O R 10150 9400 50 
F12 "dac_serial_clk_out" O R 10150 9500 50 
$EndSheet
Entry Wire Line
	7125 8350 7225 8450
Entry Wire Line
	7125 8450 7225 8550
Wire Wire Line
	7125 8350 6975 8350
Wire Wire Line
	6975 8450 7125 8450
$Sheet
S 8500 2350 1450 1100
U 5AF5E3D2
F0 "mainboard-interface" 50
F1 "mainboard-interface.sch" 50
F2 "3V3" I L 8500 2475 50 
F3 "PROG" I L 8500 2825 50 
F4 "FACTORY" I L 8500 2750 50 
F5 "SCL" I R 9950 2750 50 
F6 "5V" I L 8500 2400 50 
F7 "TXD" I R 9950 2500 50 
F8 "RXD" I R 9950 2600 50 
F9 "SDA" I R 9950 2850 50 
F10 "SOFT_POWER" O L 8500 2950 50 
$EndSheet
Entry Wire Line
	10675 2500 10775 2600
Entry Wire Line
	10675 2600 10775 2700
Entry Wire Line
	10675 2750 10775 2850
Entry Wire Line
	10675 2850 10775 2950
Wire Wire Line
	10675 2500 9950 2500
Wire Wire Line
	10675 2600 9950 2600
Wire Wire Line
	10675 2750 9950 2750
Wire Wire Line
	10675 2850 9950 2850
Entry Wire Line
	5275 2425 5375 2525
Wire Wire Line
	5425 2525 5375 2525
Entry Wire Line
	7750 2850 7850 2950
Entry Wire Line
	5275 2550 5375 2650
Wire Wire Line
	5375 2650 5425 2650
Entry Wire Line
	7750 2725 7850 2825
Entry Bus Bus
	7125 1175 7225 1275
Entry Bus Bus
	7650 1175 7750 1275
Entry Wire Line
	7750 2650 7850 2750
Wire Wire Line
	7850 2750 8500 2750
Wire Wire Line
	7850 2825 8500 2825
Wire Wire Line
	7850 2950 8500 2950
Entry Wire Line
	7750 2375 7850 2475
Entry Wire Line
	7750 2300 7850 2400
Wire Wire Line
	7850 2400 8500 2400
Wire Wire Line
	7850 2475 8500 2475
Entry Wire Line
	7750 4150 7850 4250
Entry Wire Line
	7750 4050 7850 4150
Wire Wire Line
	7850 4150 8525 4150
Wire Wire Line
	7850 4250 8525 4250
Entry Wire Line
	7750 3800 7850 3900
Wire Wire Line
	7850 3900 8525 3900
Entry Wire Line
	7750 6525 7850 6625
Entry Wire Line
	7750 4300 7850 4400
Wire Wire Line
	7850 4400 8525 4400
Wire Wire Line
	7850 6625 8400 6625
Entry Bus Bus
	10675 1175 10775 1275
Entry Wire Line
	7750 8950 7850 9050
Entry Wire Line
	7750 9050 7850 9150
Wire Wire Line
	7850 9050 8675 9050
Wire Wire Line
	7850 9150 8675 9150
Wire Bus Line
	5275 1175 10675 1175
Wire Bus Line
	10775 1275 10775 9650
Wire Bus Line
	7750 1275 7750 9700
Wire Bus Line
	5275 1175 5275 9250
Wire Bus Line
	7225 1275 7225 9700
$EndSCHEMATC
