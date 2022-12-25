EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:AudioJack2 J2
U 1 1 5F82CE48
P 8400 2000
F 0 "J2" H 8220 1983 50  0000 R CNN
F 1 "AudioJack2" H 8220 2074 50  0000 R CNN
F 2 "" H 8400 2000 50  0001 C CNN
F 3 "~" H 8400 2000 50  0001 C CNN
	1    8400 2000
	-1   0    0    1   
$EndComp
Text Notes 8300 1850 0    50   ~ 0
CV 1
$Comp
L Connector:AudioJack2 J3
U 1 1 5F82E376
P 8400 2450
F 0 "J3" H 8220 2433 50  0000 R CNN
F 1 "AudioJack2" H 8220 2524 50  0000 R CNN
F 2 "" H 8400 2450 50  0001 C CNN
F 3 "~" H 8400 2450 50  0001 C CNN
	1    8400 2450
	-1   0    0    1   
$EndComp
Text Notes 8300 2300 0    50   ~ 0
Gate 1
$Comp
L Connector:AudioJack2 J4
U 1 1 5F82EBEA
P 8400 2900
F 0 "J4" H 8220 2883 50  0000 R CNN
F 1 "AudioJack2" H 8220 2974 50  0000 R CNN
F 2 "" H 8400 2900 50  0001 C CNN
F 3 "~" H 8400 2900 50  0001 C CNN
	1    8400 2900
	-1   0    0    1   
$EndComp
Text Notes 8300 2750 0    50   ~ 0
Trigger 1
$Comp
L Connector:USB_C_Plug_USB2.0 P1
U 1 1 5F82F6C3
P 1650 3750
F 0 "P1" H 1757 4617 50  0000 C CNN
F 1 "USB_C_Plug_USB2.0" H 1757 4526 50  0000 C CNN
F 2 "" H 1800 3750 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1800 3750 50  0001 C CNN
	1    1650 3750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Coded SW1
U 1 1 5F83CB52
P 4000 1500
F 0 "SW1" H 4132 1975 50  0000 C CNN
F 1 "SW_Coded" H 4132 1884 50  0000 C CNN
F 2 "" H 3975 1525 50  0001 C CNN
F 3 "~" H 3975 1525 50  0001 C CNN
	1    4000 1500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Coded SW2
U 1 1 5F83E8DD
P 5400 1500
F 0 "SW2" H 5532 1975 50  0000 C CNN
F 1 "SW_Coded" H 5532 1884 50  0000 C CNN
F 2 "" H 5375 1525 50  0001 C CNN
F 3 "~" H 5375 1525 50  0001 C CNN
	1    5400 1500
	1    0    0    -1  
$EndComp
Text Notes 3750 1850 0    50   ~ 0
MIDI ch A
Text Notes 5150 1850 0    50   ~ 0
MIDI ch B
$Comp
L Connector:DIN-5_180degree J1
U 1 1 5F83F7CD
P 2250 6750
F 0 "J1" H 2250 6475 50  0000 C CNN
F 1 "DIN-5_180degree" H 2250 6384 50  0000 C CNN
F 2 "" H 2250 6750 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 2250 6750 50  0001 C CNN
	1    2250 6750
	1    0    0    -1  
$EndComp
Text Notes 2100 7300 0    50   ~ 0
MIDI In
$Comp
L Connector:AudioJack2 J8
U 1 1 5F847D1D
P 9400 2000
F 0 "J8" H 9220 1983 50  0000 R CNN
F 1 "AudioJack2" H 9220 2074 50  0000 R CNN
F 2 "" H 9400 2000 50  0001 C CNN
F 3 "~" H 9400 2000 50  0001 C CNN
	1    9400 2000
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 J9
U 1 1 5F848051
P 9400 2450
F 0 "J9" H 9220 2433 50  0000 R CNN
F 1 "AudioJack2" H 9220 2524 50  0000 R CNN
F 2 "" H 9400 2450 50  0001 C CNN
F 3 "~" H 9400 2450 50  0001 C CNN
	1    9400 2450
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 J10
U 1 1 5F848751
P 9400 2850
F 0 "J10" H 9220 2833 50  0000 R CNN
F 1 "AudioJack2" H 9220 2924 50  0000 R CNN
F 2 "" H 9400 2850 50  0001 C CNN
F 3 "~" H 9400 2850 50  0001 C CNN
	1    9400 2850
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 J5
U 1 1 5F848F29
P 8450 3450
F 0 "J5" H 8270 3433 50  0000 R CNN
F 1 "AudioJack2" H 8270 3524 50  0000 R CNN
F 2 "" H 8450 3450 50  0001 C CNN
F 3 "~" H 8450 3450 50  0001 C CNN
	1    8450 3450
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 J6
U 1 1 5F849500
P 8450 3850
F 0 "J6" H 8270 3833 50  0000 R CNN
F 1 "AudioJack2" H 8270 3924 50  0000 R CNN
F 2 "" H 8450 3850 50  0001 C CNN
F 3 "~" H 8450 3850 50  0001 C CNN
	1    8450 3850
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 J7
U 1 1 5F849B5E
P 8450 4250
F 0 "J7" H 8270 4233 50  0000 R CNN
F 1 "AudioJack2" H 8270 4324 50  0000 R CNN
F 2 "" H 8450 4250 50  0001 C CNN
F 3 "~" H 8450 4250 50  0001 C CNN
	1    8450 4250
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 J11
U 1 1 5F84A0C9
P 9550 3450
F 0 "J11" H 9370 3433 50  0000 R CNN
F 1 "AudioJack2" H 9370 3524 50  0000 R CNN
F 2 "" H 9550 3450 50  0001 C CNN
F 3 "~" H 9550 3450 50  0001 C CNN
	1    9550 3450
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 J12
U 1 1 5F84A541
P 9550 3850
F 0 "J12" H 9370 3833 50  0000 R CNN
F 1 "AudioJack2" H 9370 3924 50  0000 R CNN
F 2 "" H 9550 3850 50  0001 C CNN
F 3 "~" H 9550 3850 50  0001 C CNN
	1    9550 3850
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 J13
U 1 1 5F84AB69
P 9550 4250
F 0 "J13" H 9370 4233 50  0000 R CNN
F 1 "AudioJack2" H 9370 4324 50  0000 R CNN
F 2 "" H 9550 4250 50  0001 C CNN
F 3 "~" H 9550 4250 50  0001 C CNN
	1    9550 4250
	-1   0    0    1   
$EndComp
$Comp
L MCU_ST_STM32F0:STM32F030R8Tx U1
U 1 1 5F84B8FE
P 4950 4050
F 0 "U1" H 5450 2300 50  0000 C CNN
F 1 "STM32F030R8Tx" H 5450 2200 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 4450 2350 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 4950 4050 50  0001 C CNN
	1    4950 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5F852120
P 3750 3400
F 0 "Y1" V 3704 3531 50  0000 L CNN
F 1 "8 MHz" V 3795 3531 50  0000 L CNN
F 2 "" H 3750 3400 50  0001 C CNN
F 3 "~" H 3750 3400 50  0001 C CNN
	1    3750 3400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F85419C
P 3450 3250
F 0 "C2" V 3350 3250 50  0000 C CNN
F 1 "20p?" V 3550 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3450 3250 50  0001 C CNN
F 3 "~" H 3450 3250 50  0001 C CNN
	1    3450 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 3250 3550 3250
$Comp
L Device:C_Small C3
U 1 1 5F854CCF
P 3450 3550
F 0 "C3" V 3350 3550 50  0000 C CNN
F 1 "20p?" V 3550 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3450 3550 50  0001 C CNN
F 3 "~" H 3450 3550 50  0001 C CNN
	1    3450 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 3550 3750 3550
$Comp
L power:GND #PWR0101
U 1 1 5F85581A
P 3200 3750
F 0 "#PWR0101" H 3200 3500 50  0001 C CNN
F 1 "GND" H 3205 3577 50  0000 C CNN
F 2 "" H 3200 3750 50  0001 C CNN
F 3 "" H 3200 3750 50  0001 C CNN
	1    3200 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3550 3200 3550
Wire Wire Line
	3200 3550 3200 3750
Wire Wire Line
	3350 3250 3200 3250
Wire Wire Line
	3200 3250 3200 3550
Connection ~ 3200 3550
$Comp
L power:GND #PWR0102
U 1 1 5F858BA3
P 3200 2950
F 0 "#PWR0102" H 3200 2700 50  0001 C CNN
F 1 "GND" H 3205 2777 50  0000 C CNN
F 2 "" H 3200 2950 50  0001 C CNN
F 3 "" H 3200 2950 50  0001 C CNN
	1    3200 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F8590E9
P 3500 2850
F 0 "C1" V 3271 2850 50  0000 C CNN
F 1 "100n" V 3362 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3500 2850 50  0001 C CNN
F 3 "~" H 3500 2850 50  0001 C CNN
	1    3500 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 2450 3200 2550
Connection ~ 3200 2550
Wire Wire Line
	3200 2550 3200 2850
Wire Wire Line
	3400 2850 3200 2850
Connection ~ 3200 2850
Wire Wire Line
	3200 2850 3200 2950
Wire Wire Line
	3200 2550 3300 2550
Wire Wire Line
	3300 2450 3200 2450
$Comp
L Switch:SW_MEC_5E SW3
U 1 1 5F857609
P 3500 2550
F 0 "SW3" H 3500 2935 50  0000 C CNN
F 1 "SW_MEC_5E" H 3500 2844 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_MEC_5GSH9" H 3500 2850 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 3500 2850 50  0001 C CNN
	1    3500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2450 3800 2550
Connection ~ 3800 2450
Wire Wire Line
	3800 2450 3700 2450
Wire Wire Line
	3600 2850 3800 2850
Wire Wire Line
	3700 2550 3800 2550
Connection ~ 3800 2550
Wire Wire Line
	3800 2550 3800 2850
$Comp
L power:GND #PWR0103
U 1 1 5F85F3AA
P 4000 2750
F 0 "#PWR0103" H 4000 2500 50  0001 C CNN
F 1 "GND" H 4005 2577 50  0000 C CNN
F 2 "" H 4000 2750 50  0001 C CNN
F 3 "" H 4000 2750 50  0001 C CNN
	1    4000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2650 4350 2650
$Comp
L power:GNDA #PWR0104
U 1 1 5F860DD2
P 5050 6050
F 0 "#PWR0104" H 5050 5800 50  0001 C CNN
F 1 "GNDA" H 5055 5877 50  0000 C CNN
F 2 "" H 5050 6050 50  0001 C CNN
F 3 "" H 5050 6050 50  0001 C CNN
	1    5050 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5850 5050 6050
$Comp
L power:GND #PWR0105
U 1 1 5F86214C
P 4850 6050
F 0 "#PWR0105" H 4850 5800 50  0001 C CNN
F 1 "GND" H 4855 5877 50  0000 C CNN
F 2 "" H 4850 6050 50  0001 C CNN
F 3 "" H 4850 6050 50  0001 C CNN
	1    4850 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5850 4950 5950
$Comp
L power:+3V3 #PWR0106
U 1 1 5F864BEB
P 4850 2100
F 0 "#PWR0106" H 4850 1950 50  0001 C CNN
F 1 "+3V3" H 4865 2273 50  0000 C CNN
F 2 "" H 4850 2100 50  0001 C CNN
F 3 "" H 4850 2100 50  0001 C CNN
	1    4850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2250 4850 2150
Wire Wire Line
	4850 2150 4950 2150
Wire Wire Line
	4950 2150 4950 2250
Connection ~ 4850 2150
Wire Wire Line
	4850 2150 4850 2100
Wire Wire Line
	4950 2150 5050 2150
Wire Wire Line
	5050 2150 5050 2250
Connection ~ 4950 2150
Wire Wire Line
	4850 5850 4850 5950
Wire Wire Line
	4950 5950 4850 5950
Connection ~ 4850 5950
Wire Wire Line
	4850 5950 4850 6050
$Comp
L power:VDDA #PWR0107
U 1 1 5F86B97A
P 5150 2100
F 0 "#PWR0107" H 5150 1950 50  0001 C CNN
F 1 "VDDA" H 5165 2273 50  0000 C CNN
F 2 "" H 5150 2100 50  0001 C CNN
F 3 "" H 5150 2100 50  0001 C CNN
	1    5150 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2250 5150 2100
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J14
U 1 1 5F86D64E
P 7900 5800
F 0 "J14" H 7950 6100 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 8150 5400 50  0001 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 7900 5800 50  0001 C CNN
F 3 "~" H 7900 5800 50  0001 C CNN
	1    7900 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 6000 8550 6000
Text Label 8250 6000 0    50   ~ 0
NRST
Wire Wire Line
	3800 2450 4350 2450
Text Label 4100 2450 0    50   ~ 0
NRST
$Comp
L power:GND #PWR0108
U 1 1 5F881A91
P 7600 6150
F 0 "#PWR0108" H 7600 5900 50  0001 C CNN
F 1 "GND" H 7605 5977 50  0000 C CNN
F 2 "" H 7600 6150 50  0001 C CNN
F 3 "" H 7600 6150 50  0001 C CNN
	1    7600 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5700 7600 5700
Wire Wire Line
	7600 5700 7600 5800
Wire Wire Line
	7600 6000 7700 6000
Connection ~ 7600 6000
Wire Wire Line
	7600 6000 7600 6150
NoConn ~ 7700 5900
NoConn ~ 8200 5800
NoConn ~ 8200 5900
Wire Wire Line
	7700 5800 7600 5800
Connection ~ 7600 5800
Wire Wire Line
	7600 5800 7600 6000
$Comp
L power:+3V3 #PWR0109
U 1 1 5F88550C
P 7600 5350
F 0 "#PWR0109" H 7600 5200 50  0001 C CNN
F 1 "+3V3" H 7615 5523 50  0000 C CNN
F 2 "" H 7600 5350 50  0001 C CNN
F 3 "" H 7600 5350 50  0001 C CNN
	1    7600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5600 7600 5600
Wire Wire Line
	7600 5600 7600 5350
Wire Wire Line
	8200 5700 8550 5700
Wire Wire Line
	8200 5600 8550 5600
Text Label 8250 5600 0    50   ~ 0
SWDIO
Text Label 8250 5700 0    50   ~ 0
SWCLK
Wire Wire Line
	5550 3750 6000 3750
Wire Wire Line
	5550 3850 6000 3850
Text Label 5600 3750 0    50   ~ 0
SWDIO
Text Label 5600 3850 0    50   ~ 0
SWCLK
Wire Wire Line
	4200 3550 4200 3350
Wire Wire Line
	4200 3350 4350 3350
Connection ~ 3750 3250
$Comp
L Device:R_Small R1
U 1 1 5F85EC8C
P 4200 2650
F 0 "R1" V 4100 2650 50  0000 C CNN
F 1 "R_Small" V 4300 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4200 2650 50  0001 C CNN
F 3 "~" H 4200 2650 50  0001 C CNN
	1    4200 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2750 4000 2650
Wire Wire Line
	4000 2650 4100 2650
Wire Wire Line
	3750 3250 4350 3250
$Comp
L Device:R_Small R2
U 1 1 5F8B02D5
P 4000 3550
F 0 "R2" V 3900 3550 50  0000 C CNN
F 1 "390?" V 3800 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4000 3550 50  0001 C CNN
F 3 "~" H 4000 3550 50  0001 C CNN
	1    4000 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 3550 4200 3550
Wire Wire Line
	3750 3550 3900 3550
Connection ~ 3750 3550
$Comp
L power:VDDA #PWR0110
U 1 1 5F8B63B8
P 5900 2500
F 0 "#PWR0110" H 5900 2350 50  0001 C CNN
F 1 "VDDA" H 5915 2673 50  0000 C CNN
F 2 "" H 5900 2500 50  0001 C CNN
F 3 "" H 5900 2500 50  0001 C CNN
	1    5900 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0111
U 1 1 5F8B6ACA
P 5900 2900
F 0 "#PWR0111" H 5900 2650 50  0001 C CNN
F 1 "GNDA" H 5905 2727 50  0000 C CNN
F 2 "" H 5900 2900 50  0001 C CNN
F 3 "" H 5900 2900 50  0001 C CNN
	1    5900 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F8B6D3F
P 5900 2700
F 0 "C4" H 5808 2654 50  0000 R CNN
F 1 "1u" H 5808 2745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5900 2700 50  0001 C CNN
F 3 "~" H 5900 2700 50  0001 C CNN
	1    5900 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 2500 5900 2550
Wire Wire Line
	5900 2800 5900 2850
$Comp
L Device:C_Small C5
U 1 1 5F8BAF13
P 6200 2700
F 0 "C5" H 6108 2654 50  0000 R CNN
F 1 "10n" H 6108 2745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6200 2700 50  0001 C CNN
F 3 "~" H 6200 2700 50  0001 C CNN
	1    6200 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 2550 6200 2550
Wire Wire Line
	6200 2550 6200 2600
Connection ~ 5900 2550
Wire Wire Line
	5900 2550 5900 2600
Wire Wire Line
	6200 2800 6200 2850
Wire Wire Line
	6200 2850 5900 2850
Connection ~ 5900 2850
Wire Wire Line
	5900 2850 5900 2900
$Comp
L power:+3V3 #PWR0112
U 1 1 5F8C0AAE
P 6600 2500
F 0 "#PWR0112" H 6600 2350 50  0001 C CNN
F 1 "+3V3" H 6615 2673 50  0000 C CNN
F 2 "" H 6600 2500 50  0001 C CNN
F 3 "" H 6600 2500 50  0001 C CNN
	1    6600 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F8C1703
P 6600 2900
F 0 "#PWR0113" H 6600 2650 50  0001 C CNN
F 1 "GND" H 6605 2727 50  0000 C CNN
F 2 "" H 6600 2900 50  0001 C CNN
F 3 "" H 6600 2900 50  0001 C CNN
	1    6600 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5F8C1CFD
P 6600 2700
F 0 "C6" H 6508 2654 50  0000 R CNN
F 1 "100n" H 6508 2745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6600 2700 50  0001 C CNN
F 3 "~" H 6600 2700 50  0001 C CNN
	1    6600 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5F8C2336
P 7000 2700
F 0 "C7" H 6908 2654 50  0000 R CNN
F 1 "100n" H 6908 2745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7000 2700 50  0001 C CNN
F 3 "~" H 7000 2700 50  0001 C CNN
	1    7000 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5F8C2A9A
P 7400 2700
F 0 "C8" H 7308 2654 50  0000 R CNN
F 1 "4.7u" H 7308 2745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7400 2700 50  0001 C CNN
F 3 "~" H 7400 2700 50  0001 C CNN
	1    7400 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 2500 6600 2550
Wire Wire Line
	6600 2800 6600 2850
Wire Wire Line
	6600 2850 7000 2850
Wire Wire Line
	7000 2850 7000 2800
Connection ~ 6600 2850
Wire Wire Line
	6600 2850 6600 2900
Wire Wire Line
	7000 2850 7400 2850
Wire Wire Line
	7400 2850 7400 2800
Connection ~ 7000 2850
Wire Wire Line
	6600 2550 7000 2550
Wire Wire Line
	7000 2550 7000 2600
Connection ~ 6600 2550
Wire Wire Line
	6600 2550 6600 2600
Wire Wire Line
	7000 2550 7400 2550
Wire Wire Line
	7400 2550 7400 2600
Connection ~ 7000 2550
Text Notes 12050 1150 0    50   ~ 0
References:\n\nhttp://midi-and-more.de/stm32-usbmidicom.htm
$EndSCHEMATC
