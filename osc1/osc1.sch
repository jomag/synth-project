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
L Audio:AS3340 U?
U 1 1 5DA8C9C1
P 5800 3500
F 0 "U?" H 5800 4381 50  0000 C CNN
F 1 "AS3340" H 5800 4290 50  0000 C CNN
F 2 "" H 6300 3200 50  0001 C CNN
F 3 "http://www.alfarzpp.lv/eng/sc/AS3340.pdf" H 6400 3050 50  0001 C CNN
	1    5800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DA8E02C
P 5000 2700
F 0 "R?" V 4793 2700 50  0000 C CNN
F 1 "24k" V 4884 2700 50  0000 C CNN
F 2 "" V 4930 2700 50  0001 C CNN
F 3 "~" H 5000 2700 50  0001 C CNN
	1    5000 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5DA8F27C
P 4600 2700
F 0 "RV?" V 4393 2700 50  0000 C CNN
F 1 "10k" V 4484 2700 50  0000 C CNN
F 2 "" H 4600 2700 50  0001 C CNN
F 3 "~" H 4600 2700 50  0001 C CNN
	1    4600 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 2700 4850 2700
Wire Wire Line
	5150 2700 5300 3000
Wire Wire Line
	4600 2850 4600 2900
Wire Wire Line
	4600 2900 4350 2900
Wire Wire Line
	4350 2900 4350 2700
Wire Wire Line
	4350 2700 4450 2700
$Comp
L Device:R R?
U 1 1 5DA91362
P 5000 3000
F 0 "R?" V 4793 3000 50  0000 C CNN
F 1 "5.6k" V 4884 3000 50  0000 C CNN
F 2 "" V 4930 3000 50  0001 C CNN
F 3 "~" H 5000 3000 50  0001 C CNN
	1    5000 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 2900 4350 3000
Wire Wire Line
	4350 3000 4850 3000
Connection ~ 4350 2900
Wire Wire Line
	5150 3000 5200 3000
Wire Wire Line
	5200 3000 5300 3100
$Comp
L Device:R R?
U 1 1 5DA94743
P 5800 4450
F 0 "R?" H 5870 4496 50  0000 L CNN
F 1 "820" H 5870 4405 50  0000 L CNN
F 2 "" V 5730 4450 50  0001 C CNN
F 3 "~" H 5800 4450 50  0001 C CNN
	1    5800 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4200 5800 4250
Wire Wire Line
	4350 4250 5800 4250
Connection ~ 4350 3000
Connection ~ 5800 4250
Wire Wire Line
	5800 4250 5800 4300
$Comp
L power:-12V #PWR?
U 1 1 5DA95585
P 5800 4750
F 0 "#PWR?" H 5800 4850 50  0001 C CNN
F 1 "-12V" H 5815 4923 50  0000 C CNN
F 2 "" H 5800 4750 50  0001 C CNN
F 3 "" H 5800 4750 50  0001 C CNN
	1    5800 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 4600 5800 4750
Text GLabel 4150 3200 0    50   Input ~ 0
PWMCTL
Text GLabel 4150 3300 0    50   Input ~ 0
HARDSYNC
Wire Wire Line
	3650 3400 5300 3400
$Comp
L Device:C C?
U 1 1 5DA9DC7A
P 4650 3500
F 0 "C?" V 4398 3500 50  0000 C CNN
F 1 "1n" V 4489 3500 50  0000 C CNN
F 2 "" H 4688 3350 50  0001 C CNN
F 3 "~" H 4650 3500 50  0001 C CNN
	1    4650 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 3200 5300 3200
Wire Wire Line
	4800 3500 5300 3500
Text GLabel 4150 3500 0    50   Input ~ 0
SOFTSYNC
Wire Wire Line
	4150 3500 4500 3500
$Comp
L Device:R_POT RV?
U 1 1 5DAA09C7
P 3500 3400
F 0 "RV?" V 3293 3400 50  0000 C CNN
F 1 "20k" V 3384 3400 50  0000 C CNN
F 2 "" H 3500 3400 50  0001 C CNN
F 3 "~" H 3500 3400 50  0001 C CNN
	1    3500 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3000 4350 4250
Text GLabel 6650 3700 2    50   Output ~ 0
TRIOUT
Text GLabel 6650 3500 2    50   Output ~ 0
SAWOUT
Text GLabel 6650 3300 2    50   Output ~ 0
PULSOUT
Wire Wire Line
	6300 3500 6650 3500
Wire Wire Line
	6300 3700 6650 3700
$Comp
L power:GND #PWR?
U 1 1 5DAA4BD4
P 6650 3150
F 0 "#PWR?" H 6650 2900 50  0001 C CNN
F 1 "GND" V 6655 3022 50  0000 R CNN
F 2 "" H 6650 3150 50  0001 C CNN
F 3 "" H 6650 3150 50  0001 C CNN
	1    6650 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DAA563E
P 6450 3150
F 0 "R?" V 6243 3150 50  0000 C CNN
F 1 "51k" V 6334 3150 50  0000 C CNN
F 2 "" V 6380 3150 50  0001 C CNN
F 3 "~" H 6450 3150 50  0001 C CNN
	1    6450 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 3300 6300 3150
Wire Wire Line
	6600 3150 6650 3150
$Comp
L power:+12V #PWR?
U 1 1 5DAA66E2
P 5800 2450
F 0 "#PWR?" H 5800 2300 50  0001 C CNN
F 1 "+12V" H 5815 2623 50  0000 C CNN
F 2 "" H 5800 2450 50  0001 C CNN
F 3 "" H 5800 2450 50  0001 C CNN
	1    5800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2800 5800 2450
$Comp
L Device:C C?
U 1 1 5DAA6D61
P 4850 3900
F 0 "C?" V 4598 3900 50  0000 C CNN
F 1 "1n" V 4689 3900 50  0000 C CNN
F 2 "" H 4888 3750 50  0001 C CNN
F 3 "~" H 4850 3900 50  0001 C CNN
	1    4850 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 3900 5300 3900
$Comp
L power:GND #PWR?
U 1 1 5DAA75BA
P 4500 3900
F 0 "#PWR?" H 4500 3650 50  0001 C CNN
F 1 "GND" V 4505 3772 50  0000 R CNN
F 2 "" H 4500 3900 50  0001 C CNN
F 3 "" H 4500 3900 50  0001 C CNN
	1    4500 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3900 4600 3900
$Comp
L Device:R R?
U 1 1 5DAA82D5
P 5100 4000
F 0 "R?" V 4893 4000 50  0000 C CNN
F 1 "1k8" V 4984 4000 50  0000 C CNN
F 2 "" V 5030 4000 50  0001 C CNN
F 3 "~" H 5100 4000 50  0001 C CNN
	1    5100 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 4000 5300 4000
Wire Wire Line
	4950 4000 4600 4000
Wire Wire Line
	4600 4000 4600 3900
Connection ~ 4600 3900
Wire Wire Line
	4600 3900 4700 3900
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5DBB60E2
P 9100 2250
F 0 "U?" H 9100 1883 50  0000 C CNN
F 1 "TL072" H 9100 1974 50  0000 C CNN
F 2 "" H 9100 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9100 2250 50  0001 C CNN
	1    9100 2250
	1    0    0    1   
$EndComp
Wire Wire Line
	8700 2350 8800 2350
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5DBB7ED6
P 9100 3650
F 0 "U?" H 9100 3283 50  0000 C CNN
F 1 "TL072" H 9100 3374 50  0000 C CNN
F 2 "" H 9100 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9100 3650 50  0001 C CNN
	2    9100 3650
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5DBBD5E7
P 6550 7000
F 0 "U?" H 6508 7046 50  0000 L CNN
F 1 "TL072" H 6508 6955 50  0000 L CNN
F 2 "" H 6550 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6550 7000 50  0001 C CNN
	3    6550 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3750 8400 3750
$Comp
L Connector:AudioJack2 J?
U 1 1 5DBDD4C7
P 10500 5750
F 0 "J?" H 10320 5733 50  0000 R CNN
F 1 "Tri" H 10320 5824 50  0000 R CNN
F 2 "" H 10500 5750 50  0001 C CNN
F 3 "~" H 10500 5750 50  0001 C CNN
	1    10500 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	10150 5750 10300 5750
Wire Wire Line
	10250 5900 10250 5850
Wire Wire Line
	10250 5850 10300 5850
$Comp
L Device:R R?
U 1 1 5DBFBA8C
P 8550 3750
F 0 "R?" V 8343 3750 50  0000 C CNN
F 1 "10k" V 8434 3750 50  0000 C CNN
F 2 "" V 8480 3750 50  0001 C CNN
F 3 "~" H 8550 3750 50  0001 C CNN
	1    8550 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 3750 8800 3750
$Comp
L Device:R R?
U 1 1 5DBFC46B
P 8550 3050
F 0 "R?" V 8343 3050 50  0000 C CNN
F 1 "20k" V 8434 3050 50  0000 C CNN
F 2 "" V 8480 3050 50  0001 C CNN
F 3 "~" H 8550 3050 50  0001 C CNN
	1    8550 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DBFD6FB
P 9050 3050
F 0 "R?" V 8843 3050 50  0000 C CNN
F 1 "10k" V 8934 3050 50  0000 C CNN
F 2 "" V 8980 3050 50  0001 C CNN
F 3 "~" H 9050 3050 50  0001 C CNN
	1    9050 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 3550 8800 3050
Wire Wire Line
	8800 3050 8700 3050
Wire Wire Line
	8800 3050 8900 3050
Connection ~ 8800 3050
Wire Wire Line
	9200 3050 9500 3050
Wire Wire Line
	9500 3050 9500 3650
Wire Wire Line
	9500 3650 9400 3650
$Comp
L power:+12V #PWR?
U 1 1 5DC021AF
P 8300 2950
F 0 "#PWR?" H 8300 2800 50  0001 C CNN
F 1 "+12V" H 8315 3123 50  0000 C CNN
F 2 "" H 8300 2950 50  0001 C CNN
F 3 "" H 8300 2950 50  0001 C CNN
	1    8300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3050 8300 3050
Wire Wire Line
	8300 3050 8300 2950
$Comp
L Connector:AudioJack2 J?
U 1 1 5DC03C72
P 10700 3650
F 0 "J?" H 10520 3633 50  0000 R CNN
F 1 "Saw" H 10520 3724 50  0000 R CNN
F 2 "" H 10700 3650 50  0001 C CNN
F 3 "~" H 10700 3650 50  0001 C CNN
	1    10700 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DC04CEC
P 9750 3650
F 0 "R?" V 9543 3650 50  0000 C CNN
F 1 "1k5" V 9634 3650 50  0000 C CNN
F 2 "" V 9680 3650 50  0001 C CNN
F 3 "~" H 9750 3650 50  0001 C CNN
	1    9750 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DC0664E
P 10000 3900
F 0 "R?" V 9793 3900 50  0000 C CNN
F 1 "3k" V 9884 3900 50  0000 C CNN
F 2 "" V 9930 3900 50  0001 C CNN
F 3 "~" H 10000 3900 50  0001 C CNN
	1    10000 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 3750 10000 3650
Wire Wire Line
	10000 3650 9900 3650
Wire Wire Line
	10400 3650 10500 3650
Wire Wire Line
	9500 3650 9600 3650
Connection ~ 9500 3650
Wire Wire Line
	10000 4150 10000 4050
$Comp
L Device:R R?
U 1 1 5DC62FA4
P 8400 1650
F 0 "R?" V 8193 1650 50  0000 C CNN
F 1 "10k" V 8284 1650 50  0000 C CNN
F 2 "" V 8330 1650 50  0001 C CNN
F 3 "~" H 8400 1650 50  0001 C CNN
	1    8400 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DC62FAA
P 9100 1650
F 0 "R?" V 8893 1650 50  0000 C CNN
F 1 "10k" V 8984 1650 50  0000 C CNN
F 2 "" V 9030 1650 50  0001 C CNN
F 3 "~" H 9100 1650 50  0001 C CNN
	1    9100 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 2150 8750 1650
Wire Wire Line
	8750 1650 8550 1650
Wire Wire Line
	8750 1650 8950 1650
Connection ~ 8750 1650
Wire Wire Line
	9250 1650 9500 1650
Wire Wire Line
	9500 1650 9500 2250
$Comp
L power:+12V #PWR?
U 1 1 5DC62FB6
P 8150 1550
F 0 "#PWR?" H 8150 1400 50  0001 C CNN
F 1 "+12V" H 8165 1723 50  0000 C CNN
F 2 "" H 8150 1550 50  0001 C CNN
F 3 "" H 8150 1550 50  0001 C CNN
	1    8150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1650 8150 1650
Wire Wire Line
	8150 1650 8150 1550
Wire Wire Line
	9400 2250 9500 2250
Wire Wire Line
	8750 2150 8800 2150
$Comp
L Connector:AudioJack2 J?
U 1 1 5DC6B173
P 10700 2250
F 0 "J?" H 10520 2233 50  0000 R CNN
F 1 "Pulse" H 10520 2324 50  0000 R CNN
F 2 "" H 10700 2250 50  0001 C CNN
F 3 "~" H 10700 2250 50  0001 C CNN
	1    10700 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DC6B179
P 9750 2250
F 0 "R?" V 9543 2250 50  0000 C CNN
F 1 "3k" V 9634 2250 50  0000 C CNN
F 2 "" V 9680 2250 50  0001 C CNN
F 3 "~" H 9750 2250 50  0001 C CNN
	1    9750 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DC6B17F
P 10000 2500
F 0 "R?" V 9793 2500 50  0000 C CNN
F 1 "1k8" V 9884 2500 50  0000 C CNN
F 2 "" V 9930 2500 50  0001 C CNN
F 3 "~" H 10000 2500 50  0001 C CNN
	1    10000 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 2350 10000 2250
Wire Wire Line
	10000 2250 9900 2250
Wire Wire Line
	10000 2750 10000 2650
Wire Wire Line
	9600 2250 9500 2250
Connection ~ 9500 2250
Text GLabel 8300 3750 0    50   Input ~ 0
SAWOUT
Text GLabel 8700 2350 0    50   Input ~ 0
PULSOUT
$Comp
L Connector:AudioJack2 J?
U 1 1 5DC77B43
P 1200 2150
F 0 "J?" H 1021 2133 50  0000 R CNN
F 1 "1V/Oct" H 1021 2224 50  0000 R CNN
F 2 "" H 1200 2150 50  0001 C CNN
F 3 "~" H 1200 2150 50  0001 C CNN
	1    1200 2150
	1    0    0    1   
$EndComp
Wire Wire Line
	1500 2250 1400 2250
Wire Wire Line
	10450 2450 10450 2350
Wire Wire Line
	10450 2350 10500 2350
$Comp
L power:GND #PWR?
U 1 1 5DC07491
P 10250 5900
F 0 "#PWR?" H 10250 5650 50  0001 C CNN
F 1 "GND" V 10255 5772 50  0000 R CNN
F 2 "" H 10250 5900 50  0001 C CNN
F 3 "" H 10250 5900 50  0001 C CNN
	1    10250 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC08215
P 10450 3850
F 0 "#PWR?" H 10450 3600 50  0001 C CNN
F 1 "GND" V 10455 3722 50  0000 R CNN
F 2 "" H 10450 3850 50  0001 C CNN
F 3 "" H 10450 3850 50  0001 C CNN
	1    10450 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC0889D
P 10000 4150
F 0 "#PWR?" H 10000 3900 50  0001 C CNN
F 1 "GND" V 10005 4022 50  0000 R CNN
F 2 "" H 10000 4150 50  0001 C CNN
F 3 "" H 10000 4150 50  0001 C CNN
	1    10000 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC08CF4
P 10000 2750
F 0 "#PWR?" H 10000 2500 50  0001 C CNN
F 1 "GND" V 10005 2622 50  0000 R CNN
F 2 "" H 10000 2750 50  0001 C CNN
F 3 "" H 10000 2750 50  0001 C CNN
	1    10000 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC09BB8
P 10450 2450
F 0 "#PWR?" H 10450 2200 50  0001 C CNN
F 1 "GND" V 10455 2322 50  0000 R CNN
F 2 "" H 10450 2450 50  0001 C CNN
F 3 "" H 10450 2450 50  0001 C CNN
	1    10450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC0A130
P 6150 4400
F 0 "#PWR?" H 6150 4150 50  0001 C CNN
F 1 "GND" V 6155 4272 50  0000 R CNN
F 2 "" H 6150 4400 50  0001 C CNN
F 3 "" H 6150 4400 50  0001 C CNN
	1    6150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4200 5900 4250
Wire Wire Line
	5900 4250 6150 4250
Wire Wire Line
	6150 4250 6150 4400
$Comp
L Device:R R?
U 1 1 5DC0CF07
P 1800 2150
F 0 "R?" V 1593 2150 50  0000 C CNN
F 1 "100k" V 1684 2150 50  0000 C CNN
F 2 "" V 1730 2150 50  0001 C CNN
F 3 "~" H 1800 2150 50  0001 C CNN
	1    1800 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 2150 1650 2150
$Comp
L Device:R R?
U 1 1 5DC14A96
P 10250 2250
F 0 "R?" V 10043 2250 50  0000 C CNN
F 1 "0?" V 10134 2250 50  0000 C CNN
F 2 "" V 10180 2250 50  0001 C CNN
F 3 "~" H 10250 2250 50  0001 C CNN
	1    10250 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DC1B1FD
P 10250 3650
F 0 "R?" V 10043 3650 50  0000 C CNN
F 1 "0?" V 10134 3650 50  0000 C CNN
F 2 "" V 10180 3650 50  0001 C CNN
F 3 "~" H 10250 3650 50  0001 C CNN
	1    10250 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 3650 10000 3650
Connection ~ 10000 3650
$Comp
L Device:R R?
U 1 1 5DC2274B
P 10000 5750
F 0 "R?" V 9793 5750 50  0000 C CNN
F 1 "0?" V 9884 5750 50  0000 C CNN
F 2 "" V 9930 5750 50  0001 C CNN
F 3 "~" H 10000 5750 50  0001 C CNN
	1    10000 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 5750 9750 5750
$Comp
L power:GND #PWR?
U 1 1 5DC05D33
P 9750 6250
F 0 "#PWR?" H 9750 6000 50  0001 C CNN
F 1 "GND" V 9755 6122 50  0000 R CNN
F 2 "" H 9750 6250 50  0001 C CNN
F 3 "" H 9750 6250 50  0001 C CNN
	1    9750 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 6250 9750 6150
Wire Wire Line
	9750 5750 9750 5850
$Comp
L Device:R R?
U 1 1 5DBD6C61
P 9750 6000
F 0 "R?" V 9543 6000 50  0000 C CNN
F 1 "3k" V 9634 6000 50  0000 C CNN
F 2 "" V 9680 6000 50  0001 C CNN
F 3 "~" H 9750 6000 50  0001 C CNN
	1    9750 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DBD6730
P 9500 5750
F 0 "R?" V 9293 5750 50  0000 C CNN
F 1 "1k5" V 9384 5750 50  0000 C CNN
F 2 "" V 9430 5750 50  0001 C CNN
F 3 "~" H 9500 5750 50  0001 C CNN
	1    9500 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 5000 9250 5750
Wire Wire Line
	9000 5000 9250 5000
Wire Wire Line
	8550 5000 8700 5000
Connection ~ 8550 5000
Wire Wire Line
	8550 5650 8550 5000
Wire Wire Line
	8250 5000 8250 5050
Connection ~ 8250 5000
Wire Wire Line
	8250 5000 8550 5000
$Comp
L Device:R R?
U 1 1 5DBD2C69
P 8850 5000
F 0 "R?" V 8643 5000 50  0000 C CNN
F 1 "15k" V 8734 5000 50  0000 C CNN
F 2 "" V 8780 5000 50  0001 C CNN
F 3 "~" H 8850 5000 50  0001 C CNN
	1    8850 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 5350 8250 5400
Wire Wire Line
	8250 4950 8250 5000
Wire Wire Line
	8250 4650 8250 4550
$Comp
L power:+12V #PWR?
U 1 1 5DBD069C
P 8250 4550
F 0 "#PWR?" H 8250 4400 50  0001 C CNN
F 1 "+12V" H 8265 4723 50  0000 C CNN
F 2 "" H 8250 4550 50  0001 C CNN
F 3 "" H 8250 4550 50  0001 C CNN
	1    8250 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DBCF038
P 8250 4800
F 0 "R?" V 8043 4800 50  0000 C CNN
F 1 "30k" V 8134 4800 50  0000 C CNN
F 2 "" V 8180 4800 50  0001 C CNN
F 3 "~" H 8250 4800 50  0001 C CNN
	1    8250 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DBCDF42
P 8250 5200
F 0 "R?" V 8043 5200 50  0000 C CNN
F 1 "10k" V 8134 5200 50  0000 C CNN
F 2 "" V 8180 5200 50  0001 C CNN
F 3 "~" H 8250 5200 50  0001 C CNN
	1    8250 5200
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5DBC1A03
P 8850 5750
F 0 "U?" H 8850 5383 50  0000 C CNN
F 1 "TL072" H 8850 5474 50  0000 C CNN
F 2 "" H 8850 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8850 5750 50  0001 C CNN
	1    8850 5750
	1    0    0    1   
$EndComp
Wire Wire Line
	9750 5750 9850 5750
Connection ~ 9750 5750
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 5DC60E70
P 4950 1350
F 0 "J?" H 5000 1867 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 5000 1776 50  0000 C CNN
F 2 "" H 4950 1350 50  0001 C CNN
F 3 "~" H 4950 1350 50  0001 C CNN
	1    4950 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5DC62BF4
P 5600 850
F 0 "#PWR?" H 5600 700 50  0001 C CNN
F 1 "+12V" H 5615 1023 50  0000 C CNN
F 2 "" H 5600 850 50  0001 C CNN
F 3 "" H 5600 850 50  0001 C CNN
	1    5600 850 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 5DC631E2
P 5450 1850
F 0 "#PWR?" H 5450 1950 50  0001 C CNN
F 1 "-12V" H 5465 2023 50  0000 C CNN
F 2 "" H 5450 1850 50  0001 C CNN
F 3 "" H 5450 1850 50  0001 C CNN
	1    5450 1850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC63B56
P 5350 1800
F 0 "#PWR?" H 5350 1550 50  0001 C CNN
F 1 "GND" V 5355 1672 50  0000 R CNN
F 2 "" H 5350 1800 50  0001 C CNN
F 3 "" H 5350 1800 50  0001 C CNN
	1    5350 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC64E66
P 5850 850
F 0 "#PWR?" H 5850 700 50  0001 C CNN
F 1 "+5V" H 5865 1023 50  0000 C CNN
F 2 "" H 5850 850 50  0001 C CNN
F 3 "" H 5850 850 50  0001 C CNN
	1    5850 850 
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N914 D?
U 1 1 5DC664FA
P 1900 6150
F 0 "D?" V 1946 6071 50  0000 R CNN
F 1 "1N914" V 1855 6071 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1900 5975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85622/1n914.pdf" H 1900 6150 50  0001 C CNN
	1    1900 6150
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N914 D?
U 1 1 5DC68F1A
P 1900 6650
F 0 "D?" V 1946 6571 50  0000 R CNN
F 1 "1N914" V 1855 6571 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1900 6475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85622/1n914.pdf" H 1900 6650 50  0001 C CNN
	1    1900 6650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DC6A162
P 1900 5750
F 0 "R?" V 1693 5750 50  0000 C CNN
F 1 "10k" V 1784 5750 50  0000 C CNN
F 2 "" V 1830 5750 50  0001 C CNN
F 3 "~" H 1900 5750 50  0001 C CNN
	1    1900 5750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DC6A817
P 1900 7050
F 0 "R?" V 1693 7050 50  0000 C CNN
F 1 "10k" V 1784 7050 50  0000 C CNN
F 2 "" V 1830 7050 50  0001 C CNN
F 3 "~" H 1900 7050 50  0001 C CNN
	1    1900 7050
	-1   0    0    1   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 5DC7029F
P 1900 5500
F 0 "#PWR?" H 1900 5600 50  0001 C CNN
F 1 "-12V" H 1915 5673 50  0000 C CNN
F 2 "" H 1900 5500 50  0001 C CNN
F 3 "" H 1900 5500 50  0001 C CNN
	1    1900 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5600 1900 5500
$Comp
L power:GND #PWR?
U 1 1 5DC73710
P 1900 7250
F 0 "#PWR?" H 1900 7000 50  0001 C CNN
F 1 "GND" V 1905 7122 50  0000 R CNN
F 2 "" H 1900 7250 50  0001 C CNN
F 3 "" H 1900 7250 50  0001 C CNN
	1    1900 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 7250 1900 7200
Wire Wire Line
	1900 6500 1900 6400
Wire Wire Line
	1900 6400 2100 6400
Connection ~ 1900 6400
Wire Wire Line
	1900 6400 1900 6300
Text GLabel 2100 6400 2    50   Output ~ 0
HARDSYNC
Wire Wire Line
	1900 5900 1900 5950
$Comp
L Connector:AudioJack2 J?
U 1 1 5DC83019
P 1200 5950
F 0 "J?" H 1021 5933 50  0000 R CNN
F 1 "HARDSYNC+" H 1021 6024 50  0000 R CNN
F 2 "" H 1200 5950 50  0001 C CNN
F 3 "~" H 1200 5950 50  0001 C CNN
	1    1200 5950
	1    0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 J?
U 1 1 5DC83580
P 1200 6850
F 0 "J?" H 1021 6833 50  0000 R CNN
F 1 "HARDSYNC-" H 1021 6924 50  0000 R CNN
F 2 "" H 1200 6850 50  0001 C CNN
F 3 "~" H 1200 6850 50  0001 C CNN
	1    1200 6850
	1    0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5DC890AD
P 1650 5950
F 0 "C?" V 1398 5950 50  0000 C CNN
F 1 "1n" V 1489 5950 50  0000 C CNN
F 2 "" H 1688 5800 50  0001 C CNN
F 3 "~" H 1650 5950 50  0001 C CNN
	1    1650 5950
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DC893C1
P 1650 6850
F 0 "C?" V 1398 6850 50  0000 C CNN
F 1 "1n" V 1489 6850 50  0000 C CNN
F 2 "" H 1688 6700 50  0001 C CNN
F 3 "~" H 1650 6850 50  0001 C CNN
	1    1650 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 6800 1900 6850
Wire Wire Line
	1800 5950 1900 5950
Connection ~ 1900 5950
Wire Wire Line
	1900 5950 1900 6000
Wire Wire Line
	1800 6850 1900 6850
Connection ~ 1900 6850
Wire Wire Line
	1900 6850 1900 6900
Wire Wire Line
	1400 6850 1500 6850
Wire Wire Line
	1400 5950 1500 5950
$Comp
L power:GND #PWR?
U 1 1 5DCA8C0A
P 1450 7000
F 0 "#PWR?" H 1450 6750 50  0001 C CNN
F 1 "GND" V 1455 6872 50  0000 R CNN
F 2 "" H 1450 7000 50  0001 C CNN
F 3 "" H 1450 7000 50  0001 C CNN
	1    1450 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DCA8E52
P 1450 6100
F 0 "#PWR?" H 1450 5850 50  0001 C CNN
F 1 "GND" V 1455 5972 50  0000 R CNN
F 2 "" H 1450 6100 50  0001 C CNN
F 3 "" H 1450 6100 50  0001 C CNN
	1    1450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6050 1450 6050
Wire Wire Line
	1450 6050 1450 6100
Wire Wire Line
	1400 6950 1450 6950
Wire Wire Line
	1450 6950 1450 7000
Wire Wire Line
	4150 3300 5300 3300
$Comp
L Device:R_POT RV?
U 1 1 5DCC115F
P 850 4450
F 0 "RV?" V 643 4450 50  0000 C CNN
F 1 "100k?" V 734 4450 50  0000 C CNN
F 2 "" H 850 4450 50  0001 C CNN
F 3 "~" H 850 4450 50  0001 C CNN
	1    850  4450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5DCCB73D
P 850 3800
F 0 "#PWR?" H 850 3650 50  0001 C CNN
F 1 "+12V" H 865 3973 50  0000 C CNN
F 2 "" H 850 3800 50  0001 C CNN
F 3 "" H 850 3800 50  0001 C CNN
	1    850  3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DCCC2FE
P 850 4050
F 0 "R?" V 643 4050 50  0000 C CNN
F 1 "150k?" V 734 4050 50  0000 C CNN
F 2 "" V 780 4050 50  0001 C CNN
F 3 "~" H 850 4050 50  0001 C CNN
	1    850  4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  3900 850  3800
Wire Wire Line
	850  4200 850  4300
$Comp
L power:GND #PWR?
U 1 1 5DCD529A
P 850 4700
F 0 "#PWR?" H 850 4450 50  0001 C CNN
F 1 "GND" V 855 4572 50  0000 R CNN
F 2 "" H 850 4700 50  0001 C CNN
F 3 "" H 850 4700 50  0001 C CNN
	1    850  4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  4700 850  4600
$Comp
L Device:R R?
U 1 1 5DCD9BD4
P 1250 4450
F 0 "R?" V 1043 4450 50  0000 C CNN
F 1 "100k?" V 1134 4450 50  0000 C CNN
F 2 "" V 1180 4450 50  0001 C CNN
F 3 "~" H 1250 4450 50  0001 C CNN
	1    1250 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1000 4450 1100 4450
Wire Wire Line
	1400 4450 1500 4450
Text GLabel 1500 4450 2    50   Output ~ 0
PWMCTL
Text Notes 1200 3850 0    50   ~ 0
PWM control is 0 to +5VDC\nfor 0% to 100% pulse width
Text Notes 500  750  0    50   ~ 0
Considerations:\n- Is a voltage ref required for PWM control etc?\n- Decoupling capacitors for IC’s plus bigger caps at power input.
$Comp
L power:GND #PWR?
U 1 1 5DCF089B
P 8250 5400
F 0 "#PWR?" H 8250 5150 50  0001 C CNN
F 1 "GND" V 8255 5272 50  0000 R CNN
F 2 "" H 8250 5400 50  0001 C CNN
F 3 "" H 8250 5400 50  0001 C CNN
	1    8250 5400
	1    0    0    -1  
$EndComp
Connection ~ 6300 3300
Wire Wire Line
	6300 3300 6650 3300
Wire Wire Line
	10400 2250 10500 2250
Wire Wire Line
	10000 2250 10100 2250
Connection ~ 10000 2250
Wire Wire Line
	10500 3750 10450 3750
Wire Wire Line
	10450 3750 10450 3850
Wire Wire Line
	8450 5850 8550 5850
Text GLabel 8450 5850 0    50   Input ~ 0
TRIOUT
Wire Wire Line
	9150 5750 9250 5750
Connection ~ 9250 5750
Wire Wire Line
	9250 5750 9350 5750
$Comp
L Connector:AudioJack2 J?
U 1 1 5E2DA7FD
P 1050 2950
F 0 "J?" H 871 2933 50  0000 R CNN
F 1 "Lin FM" H 871 3024 50  0000 R CNN
F 2 "" H 1050 2950 50  0001 C CNN
F 3 "~" H 1050 2950 50  0001 C CNN
	1    1050 2950
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E2DBB68
P 1350 3150
F 0 "#PWR?" H 1350 2900 50  0001 C CNN
F 1 "GND" V 1355 3022 50  0000 R CNN
F 2 "" H 1350 3150 50  0001 C CNN
F 3 "" H 1350 3150 50  0001 C CNN
	1    1350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3050 1350 3050
Wire Wire Line
	1350 3050 1350 3150
$Comp
L Device:C C?
U 1 1 5E2E1B87
P 1600 2950
F 0 "C?" V 1348 2950 50  0000 C CNN
F 1 "0.1u" V 1439 2950 50  0000 C CNN
F 2 "" H 1638 2800 50  0001 C CNN
F 3 "~" H 1600 2950 50  0001 C CNN
	1    1600 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 2950 1250 2950
$Comp
L Device:R R?
U 1 1 5E2E72B1
P 2000 2950
F 0 "R?" V 1793 2950 50  0000 C CNN
F 1 "1M" V 1884 2950 50  0000 C CNN
F 2 "" V 1930 2950 50  0001 C CNN
F 3 "~" H 2000 2950 50  0001 C CNN
	1    2000 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 2950 1850 2950
Text GLabel 2250 2950 2    50   Output ~ 0
LINFM
Wire Wire Line
	2150 2950 2250 2950
Text GLabel 4150 3600 0    50   Input ~ 0
LINFM
Wire Wire Line
	4150 3600 5300 3600
$Comp
L power:GND #PWR?
U 1 1 5E30F273
P 3250 3400
F 0 "#PWR?" H 3250 3150 50  0001 C CNN
F 1 "GND" V 3255 3272 50  0000 R CNN
F 2 "" H 3250 3400 50  0001 C CNN
F 3 "" H 3250 3400 50  0001 C CNN
	1    3250 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 3400 3350 3400
Wire Wire Line
	3500 3550 3500 3700
Wire Wire Line
	3500 3700 3700 3700
$Comp
L power:GND #PWR?
U 1 1 5E32CDC5
P 3700 4600
F 0 "#PWR?" H 3700 4350 50  0001 C CNN
F 1 "GND" V 3705 4472 50  0000 R CNN
F 2 "" H 3700 4600 50  0001 C CNN
F 3 "" H 3700 4600 50  0001 C CNN
	1    3700 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E34B904
P 3700 4400
F 0 "C?" V 3448 4400 50  0000 C CNN
F 1 "10n" V 3539 4400 50  0000 C CNN
F 2 "" H 3738 4250 50  0001 C CNN
F 3 "~" H 3700 4400 50  0001 C CNN
	1    3700 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E34C5D4
P 3700 4050
F 0 "R?" H 3770 4096 50  0000 L CNN
F 1 "470" H 3770 4005 50  0000 L CNN
F 2 "" V 3630 4050 50  0001 C CNN
F 3 "~" H 3700 4050 50  0001 C CNN
	1    3700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4200 3700 4250
Wire Wire Line
	3700 4550 3700 4600
Wire Wire Line
	3700 3900 3700 3700
Connection ~ 3700 3700
Wire Wire Line
	3700 3700 5300 3700
Wire Wire Line
	2850 2150 2850 2650
Wire Wire Line
	2850 3700 3500 3700
Wire Wire Line
	1950 2150 2850 2150
Connection ~ 3500 3700
$Comp
L power:GND #PWR?
U 1 1 5E388EF6
P 1500 2400
F 0 "#PWR?" H 1500 2150 50  0001 C CNN
F 1 "GND" V 1505 2272 50  0000 R CNN
F 2 "" H 1500 2400 50  0001 C CNN
F 3 "" H 1500 2400 50  0001 C CNN
	1    1500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2250 1500 2400
$Comp
L Device:R_POT RV?
U 1 1 5E3B2A82
P 3200 1950
F 0 "RV?" V 2993 1950 50  0000 C CNN
F 1 "?" V 3084 1950 50  0000 C CNN
F 2 "" H 3200 1950 50  0001 C CNN
F 3 "~" H 3200 1950 50  0001 C CNN
	1    3200 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5E3B340D
P 3600 1950
F 0 "RV?" V 3393 1950 50  0000 C CNN
F 1 "?" V 3484 1950 50  0000 C CNN
F 2 "" H 3600 1950 50  0001 C CNN
F 3 "~" H 3600 1950 50  0001 C CNN
	1    3600 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E3B3E20
P 3200 2300
F 0 "R?" V 2993 2300 50  0000 C CNN
F 1 "?" V 3084 2300 50  0000 C CNN
F 2 "" V 3130 2300 50  0001 C CNN
F 3 "~" H 3200 2300 50  0001 C CNN
	1    3200 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E3B46EA
P 3600 2300
F 0 "R?" V 3393 2300 50  0000 C CNN
F 1 "?" V 3484 2300 50  0000 C CNN
F 2 "" V 3530 2300 50  0001 C CNN
F 3 "~" H 3600 2300 50  0001 C CNN
	1    3600 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 2150 3600 2100
Wire Wire Line
	3200 2150 3200 2100
$Comp
L power:+12V #PWR?
U 1 1 5E3C1A92
P 3600 1700
F 0 "#PWR?" H 3600 1550 50  0001 C CNN
F 1 "+12V" H 3615 1873 50  0000 C CNN
F 2 "" H 3600 1700 50  0001 C CNN
F 3 "" H 3600 1700 50  0001 C CNN
	1    3600 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E3C2323
P 3200 1700
F 0 "#PWR?" H 3200 1550 50  0001 C CNN
F 1 "+12V" H 3215 1873 50  0000 C CNN
F 2 "" H 3200 1700 50  0001 C CNN
F 3 "" H 3200 1700 50  0001 C CNN
	1    3200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1800 3200 1700
Wire Wire Line
	3600 1700 3600 1800
Connection ~ 2850 2650
Wire Wire Line
	2850 2650 2850 2850
$Comp
L power:GND #PWR?
U 1 1 5E3D4CCC
P 3200 2500
F 0 "#PWR?" H 3200 2250 50  0001 C CNN
F 1 "GND" V 3205 2372 50  0000 R CNN
F 2 "" H 3200 2500 50  0001 C CNN
F 3 "" H 3200 2500 50  0001 C CNN
	1    3200 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3D539A
P 3600 2500
F 0 "#PWR?" H 3600 2250 50  0001 C CNN
F 1 "GND" V 3605 2372 50  0000 R CNN
F 2 "" H 3600 2500 50  0001 C CNN
F 3 "" H 3600 2500 50  0001 C CNN
	1    3600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2500 3600 2450
Wire Wire Line
	3200 2450 3200 2500
Wire Wire Line
	3350 1950 3350 2650
Wire Wire Line
	2850 2650 3350 2650
Wire Wire Line
	3750 1950 3850 1950
Wire Wire Line
	3850 1950 3850 2850
Wire Wire Line
	3850 2850 2850 2850
Connection ~ 2850 2850
Wire Wire Line
	2850 2850 2850 3700
$Comp
L power:+12V #PWR?
U 1 1 5E3F107B
P 2850 1700
F 0 "#PWR?" H 2850 1550 50  0001 C CNN
F 1 "+12V" H 2865 1873 50  0000 C CNN
F 2 "" H 2850 1700 50  0001 C CNN
F 3 "" H 2850 1700 50  0001 C CNN
	1    2850 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E3F173B
P 2850 1950
F 0 "R?" V 2643 1950 50  0000 C CNN
F 1 "?" V 2734 1950 50  0000 C CNN
F 2 "" V 2780 1950 50  0001 C CNN
F 3 "~" H 2850 1950 50  0001 C CNN
	1    2850 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 1800 2850 1700
Wire Wire Line
	2850 2100 2850 2150
Connection ~ 2850 2150
$EndSCHEMATC
