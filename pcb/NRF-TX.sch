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
L MCU_Microchip_ATmega:ATmega328-AU U3
U 1 1 5FFBC651
P 3450 3600
F 0 "U3" H 3450 2011 50  0000 C CNN
F 1 "ATmega328-AU" H 3450 1920 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 3450 3600 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 3450 3600 50  0001 C CNN
	1    3450 3600
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-5.0 U2
U 1 1 5FFCF0A2
P 2650 1250
F 0 "U2" H 2650 1492 50  0000 C CNN
F 1 "LM1117-5.0" H 2650 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 2650 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 2650 1250 50  0001 C CNN
	1    2650 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5FFD8ACF
P 2150 1400
F 0 "C2" H 2268 1446 50  0000 L CNN
F 1 "10uF" H 2268 1355 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 2188 1250 50  0001 C CNN
F 3 "~" H 2150 1400 50  0001 C CNN
	1    2150 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5FFD923D
P 3100 1400
F 0 "C4" H 3218 1446 50  0000 L CNN
F 1 "10uF" H 3218 1355 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 3138 1250 50  0001 C CNN
F 3 "~" H 3100 1400 50  0001 C CNN
	1    3100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1250 2350 1250
Wire Wire Line
	2950 1250 3100 1250
Wire Wire Line
	2150 1550 2650 1550
Wire Wire Line
	2650 1550 3100 1550
Connection ~ 2650 1550
Wire Wire Line
	3450 2100 3450 1950
Wire Wire Line
	3450 1950 3500 1950
Wire Wire Line
	3550 1950 3550 2100
$Comp
L power:GND #PWR0102
U 1 1 5FFEB472
P 3450 5400
F 0 "#PWR0102" H 3450 5150 50  0001 C CNN
F 1 "GND" H 3455 5227 50  0000 C CNN
F 2 "" H 3450 5400 50  0001 C CNN
F 3 "" H 3450 5400 50  0001 C CNN
	1    3450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5100 3450 5400
$Comp
L power:GND #PWR0103
U 1 1 5FFF7F09
P 2650 1700
F 0 "#PWR0103" H 2650 1450 50  0001 C CNN
F 1 "GND" H 2655 1527 50  0000 C CNN
F 2 "" H 2650 1700 50  0001 C CNN
F 3 "" H 2650 1700 50  0001 C CNN
	1    2650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1700 2650 1550
Wire Wire Line
	3100 1250 3500 1250
Wire Wire Line
	3500 1250 3500 1950
Connection ~ 3100 1250
Connection ~ 3500 1950
Wire Wire Line
	3500 1950 3550 1950
$Comp
L Regulator_Linear:LM1117-3.3 U1
U 1 1 60017BA7
P 1950 6450
F 0 "U1" H 1950 6692 50  0000 C CNN
F 1 "LM1117-3.3" H 1950 6601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 1950 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 1950 6450 50  0001 C CNN
	1    1950 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 60018CCA
P 1450 6600
F 0 "C1" H 1568 6646 50  0000 L CNN
F 1 "10uF" H 1568 6555 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 1488 6450 50  0001 C CNN
F 3 "~" H 1450 6600 50  0001 C CNN
	1    1450 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 60019463
P 2400 6600
F 0 "C3" H 2518 6646 50  0000 L CNN
F 1 "10uF" H 2518 6555 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 2438 6450 50  0001 C CNN
F 3 "~" H 2400 6600 50  0001 C CNN
	1    2400 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6450 2400 6450
Wire Wire Line
	2400 6450 3000 6450
Connection ~ 2400 6450
Wire Wire Line
	1450 6750 1950 6750
Wire Wire Line
	1950 6750 2400 6750
Connection ~ 1950 6750
$Comp
L power:GND #PWR0104
U 1 1 6001B4BB
P 2400 6750
F 0 "#PWR0104" H 2400 6500 50  0001 C CNN
F 1 "GND" H 2405 6577 50  0000 C CNN
F 2 "" H 2400 6750 50  0001 C CNN
F 3 "" H 2400 6750 50  0001 C CNN
	1    2400 6750
	1    0    0    -1  
$EndComp
Connection ~ 2400 6750
$Comp
L power:GND #PWR0105
U 1 1 6001BC77
P 3500 6450
F 0 "#PWR0105" H 3500 6200 50  0001 C CNN
F 1 "GND" H 3505 6277 50  0000 C CNN
F 2 "" H 3500 6450 50  0001 C CNN
F 3 "" H 3500 6450 50  0001 C CNN
	1    3500 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6250 1750 6250
Wire Wire Line
	1750 6250 1750 850 
Wire Wire Line
	1750 850  4450 850 
Wire Wire Line
	4450 2700 4050 2700
Wire Wire Line
	3000 6350 2700 6350
Wire Wire Line
	2700 6350 2700 5700
Wire Wire Line
	2700 5700 4250 5700
Wire Wire Line
	4250 5700 4250 4800
Wire Wire Line
	4250 4800 4050 4800
Wire Wire Line
	4350 6150 4350 2800
Wire Wire Line
	4350 2800 4050 2800
Wire Wire Line
	4350 6250 4350 6400
Wire Wire Line
	4350 6400 5750 6400
Wire Wire Line
	5750 6400 5750 2900
Wire Wire Line
	5750 2900 4050 2900
Wire Wire Line
	4200 6350 4200 6550
Wire Wire Line
	4200 6550 6050 6550
Wire Wire Line
	6050 6550 6050 2400
Wire Wire Line
	6050 2400 4050 2400
Wire Wire Line
	3500 1250 3500 700 
Wire Wire Line
	3500 700  1550 700 
Wire Wire Line
	1550 700  1550 6450
Wire Wire Line
	1450 6450 1550 6450
Connection ~ 3500 1250
Connection ~ 1550 6450
Wire Wire Line
	1550 6450 1650 6450
$Comp
L power:+5V #PWR0106
U 1 1 600014E5
P 2150 1150
F 0 "#PWR0106" H 2150 1000 50  0001 C CNN
F 1 "+5V" H 2165 1323 50  0000 C CNN
F 2 "" H 2150 1150 50  0001 C CNN
F 3 "" H 2150 1150 50  0001 C CNN
	1    2150 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 60002C08
P 5950 1600
F 0 "#PWR0107" H 5950 1450 50  0001 C CNN
F 1 "+5V" H 5965 1773 50  0000 C CNN
F 2 "" H 5950 1600 50  0001 C CNN
F 3 "" H 5950 1600 50  0001 C CNN
	1    5950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1250 2150 1150
Connection ~ 2150 1250
$Comp
L Device:R R1
U 1 1 60019AA6
P 7050 1950
F 0 "R1" V 6843 1950 50  0000 C CNN
F 1 "10k" V 6934 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6980 1950 50  0001 C CNN
F 3 "~" H 7050 1950 50  0001 C CNN
	1    7050 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 6002380D
P 6450 2100
F 0 "#PWR0108" H 6450 1850 50  0001 C CNN
F 1 "GND" H 6455 1927 50  0000 C CNN
F 2 "" H 6450 2100 50  0001 C CNN
F 3 "" H 6450 2100 50  0001 C CNN
	1    6450 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 60035038
P 6450 1850
F 0 "J5" H 6500 2167 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 6500 2076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Horizontal" H 6450 1850 50  0001 C CNN
F 3 "~" H 6450 1850 50  0001 C CNN
	1    6450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2100 6450 2100
Wire Wire Line
	6750 2100 6750 1950
Wire Wire Line
	4450 850  4450 2700
Connection ~ 6450 2100
Wire Wire Line
	6450 2100 6750 2100
Wire Wire Line
	5950 1750 5950 1600
$Comp
L Device:Crystal Y1
U 1 1 6007950A
P 4850 3650
F 0 "Y1" V 4804 3781 50  0000 L CNN
F 1 "Crystal" V 4895 3781 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 4850 3650 50  0001 C CNN
F 3 "~" H 4850 3650 50  0001 C CNN
	1    4850 3650
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 6007BB89
P 5100 3400
F 0 "C5" V 4848 3400 50  0000 C CNN
F 1 "16pF" V 4939 3400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5138 3250 50  0001 C CNN
F 3 "~" H 5100 3400 50  0001 C CNN
	1    5100 3400
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 6007E78E
P 5100 3950
F 0 "C6" V 4848 3950 50  0000 C CNN
F 1 "16pF" V 4939 3950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5138 3800 50  0001 C CNN
F 3 "~" H 5100 3950 50  0001 C CNN
	1    5100 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 3500 4850 3400
Wire Wire Line
	4850 3400 4950 3400
Wire Wire Line
	4850 3800 4850 3950
Wire Wire Line
	4850 3950 4950 3950
Wire Wire Line
	5250 3400 5250 3700
$Comp
L power:GND #PWR0101
U 1 1 60086C5B
P 5400 3850
F 0 "#PWR0101" H 5400 3600 50  0001 C CNN
F 1 "GND" H 5405 3677 50  0000 C CNN
F 2 "" H 5400 3850 50  0001 C CNN
F 3 "" H 5400 3850 50  0001 C CNN
	1    5400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3850 5400 3700
Wire Wire Line
	5400 3700 5250 3700
Connection ~ 5250 3700
Wire Wire Line
	5250 3700 5250 3950
Wire Wire Line
	4050 3000 4550 3000
Wire Wire Line
	4550 3000 4550 3400
Wire Wire Line
	4550 3400 4850 3400
Connection ~ 4850 3400
Wire Wire Line
	4050 3100 4500 3100
Wire Wire Line
	4500 3100 4500 3950
Wire Wire Line
	4500 3950 4850 3950
Connection ~ 4850 3950
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 6008EC02
P 3200 6250
F 0 "J1" H 3250 6567 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 3250 6476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 3200 6250 50  0001 C CNN
F 3 "~" H 3200 6250 50  0001 C CNN
	1    3200 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6150 4350 6150
Wire Wire Line
	3500 6250 4350 6250
Wire Wire Line
	3500 6350 4200 6350
Wire Wire Line
	7450 1850 7450 1250
Wire Wire Line
	3500 1250 7450 1250
Wire Wire Line
	6750 1850 7450 1850
Wire Wire Line
	5950 1750 6250 1750
Wire Wire Line
	6900 1950 6750 1950
Connection ~ 6750 1950
Wire Wire Line
	7200 1750 7200 1950
Wire Wire Line
	6750 1750 7200 1750
Wire Wire Line
	7200 1950 7200 3300
Wire Wire Line
	4050 3300 7200 3300
Connection ~ 7200 1950
Wire Wire Line
	4050 4400 5850 4400
Wire Wire Line
	6250 1950 6250 2100
Wire Wire Line
	6250 1850 5850 1850
Wire Wire Line
	5850 1850 5850 4400
$EndSCHEMATC