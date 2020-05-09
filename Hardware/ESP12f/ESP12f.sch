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
L Switch:SW_Push SW2
U 1 1 5E9DFAC2
P 5300 3450
F 0 "SW2" H 5300 3735 50  0000 C CNN
F 1 "Flash" H 5300 3644 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 5300 3650 50  0001 C CNN
F 3 "~" H 5300 3650 50  0001 C CNN
	1    5300 3450
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5E9E33EC
P 2800 3000
F 0 "SW1" H 2800 3285 50  0000 C CNN
F 1 "Reset" H 2800 3194 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 2800 3200 50  0001 C CNN
F 3 "~" H 2800 3200 50  0001 C CNN
	1    2800 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 2500 2800 2500
Wire Wire Line
	2800 2800 2800 2500
Connection ~ 2800 2500
$Comp
L power:+3.3V #PWR0101
U 1 1 5E9E5B06
P 3150 3200
F 0 "#PWR0101" H 3150 3050 50  0001 C CNN
F 1 "+3.3V" H 3165 3373 50  0000 C CNN
F 2 "" H 3150 3200 50  0001 C CNN
F 3 "" H 3150 3200 50  0001 C CNN
	1    3150 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 2500 2800 2300
Wire Wire Line
	2800 1800 2800 2000
$Comp
L Device:R R8
U 1 1 5E9E8B4D
P 5300 2150
F 0 "R8" H 5370 2196 50  0000 L CNN
F 1 "10K" H 5370 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5230 2150 50  0001 C CNN
F 3 "~" H 5300 2150 50  0001 C CNN
	1    5300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2900 5300 2300
$Comp
L power:+3.3V #PWR0102
U 1 1 5E9E99FC
P 4000 1800
F 0 "#PWR0102" H 4000 1650 50  0001 C CNN
F 1 "+3.3V" H 4015 1973 50  0000 C CNN
F 2 "" H 4000 1800 50  0001 C CNN
F 3 "" H 4000 1800 50  0001 C CNN
	1    4000 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1800 5300 2000
$Comp
L Connector:Conn_01x04_Female J6
U 1 1 5E9EAA00
P 6800 2600
F 0 "J6" H 6828 2576 50  0000 L CNN
F 1 "Conn_01x04_Female" H 6828 2485 50  0000 L CNN
F 2 "Connector_JST:JST_SH_BM04B-SRSS-TB_1x04-1MP_P1.00mm_Vertical" H 6800 2600 50  0001 C CNN
F 3 "~" H 6800 2600 50  0001 C CNN
	1    6800 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 5E9ED8B2
P 6400 2700
F 0 "#PWR0103" H 6400 2550 50  0001 C CNN
F 1 "+3.3V" H 6415 2873 50  0000 C CNN
F 2 "" H 6400 2700 50  0001 C CNN
F 3 "" H 6400 2700 50  0001 C CNN
	1    6400 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 2700 6600 2700
Wire Wire Line
	6600 2800 6500 2800
Wire Wire Line
	4950 2900 5300 2900
Wire Wire Line
	6600 2600 4950 2600
Wire Wire Line
	4950 2500 6600 2500
$Comp
L Device:R R3
U 1 1 5E9E5D8E
P 2800 2150
F 0 "R3" H 2870 2196 50  0000 L CNN
F 1 "10K" H 2870 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2730 2150 50  0001 C CNN
F 3 "~" H 2800 2150 50  0001 C CNN
	1    2800 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5E9EF22E
P 5050 2150
F 0 "R6" H 5120 2196 50  0000 L CNN
F 1 "10K" H 5120 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 2150 50  0001 C CNN
F 3 "~" H 5050 2150 50  0001 C CNN
	1    5050 2150
	1    0    0    -1  
$EndComp
$Comp
L ESP8266:ESP-12F U1
U 1 1 5E9DE562
P 4050 2800
F 0 "U1" H 4050 3565 50  0000 C CNN
F 1 "ESP-12F" H 4050 3474 50  0000 C CNN
F 2 "ESP8266:ESP-12E_SMD" H 4050 2800 50  0001 C CNN
F 3 "" H 4050 2800 50  0001 C CNN
	1    4050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2000 5050 1800
Wire Wire Line
	5050 1800 5300 1800
Wire Wire Line
	5050 2300 5050 3000
Wire Wire Line
	5050 3000 4950 3000
$Comp
L Device:R R7
U 1 1 5E9F2D7E
P 5050 3450
F 0 "R7" H 5120 3496 50  0000 L CNN
F 1 "10K" H 5120 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 3450 50  0001 C CNN
F 3 "~" H 5050 3450 50  0001 C CNN
	1    5050 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3100 5050 3100
Wire Wire Line
	5050 3100 5050 3300
$Comp
L power:GND #PWR0104
U 1 1 5E9E4603
P 3950 4250
F 0 "#PWR0104" H 3950 4000 50  0001 C CNN
F 1 "GND" H 3955 4077 50  0000 C CNN
F 2 "" H 3950 4250 50  0001 C CNN
F 3 "" H 3950 4250 50  0001 C CNN
	1    3950 4250
	1    0    0    -1  
$EndComp
Connection ~ 3950 4250
Wire Wire Line
	3950 4250 4950 4250
Wire Wire Line
	4950 3200 4950 4250
Connection ~ 4950 4250
Wire Wire Line
	4950 4250 5050 4250
Wire Wire Line
	5050 3600 5050 4250
Connection ~ 5050 4250
Wire Wire Line
	5050 4250 5300 4250
$Comp
L Device:R R4
U 1 1 5E9F7B15
P 2950 2800
F 0 "R4" H 3020 2846 50  0000 L CNN
F 1 "10K" H 3020 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2880 2800 50  0001 C CNN
F 3 "~" H 2950 2800 50  0001 C CNN
	1    2950 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 2800 3150 2800
Wire Wire Line
	5300 2900 5300 3250
Connection ~ 5300 2900
Wire Wire Line
	5300 3650 5300 4250
Connection ~ 5300 4250
Wire Wire Line
	6500 2800 6500 4250
Wire Wire Line
	5300 4250 6500 4250
Connection ~ 5050 1800
Wire Wire Line
	5050 1800 4000 1800
Connection ~ 4000 1800
Wire Wire Line
	4000 1800 3050 1800
Connection ~ 2800 2800
Wire Wire Line
	2800 3200 2800 4250
Wire Wire Line
	2800 4250 3950 4250
$Comp
L Device:R R5
U 1 1 5EA01679
P 3050 2150
F 0 "R5" H 3120 2196 50  0000 L CNN
F 1 "10K" H 3120 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2980 2150 50  0001 C CNN
F 3 "~" H 3050 2150 50  0001 C CNN
	1    3050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2700 3050 2700
Wire Wire Line
	3050 2700 3050 2300
Wire Wire Line
	3050 2000 3050 1800
Connection ~ 3050 1800
Wire Wire Line
	3050 1800 2800 1800
$Comp
L Device:R R1
U 1 1 5EA02B76
P 2100 2450
F 0 "R1" H 2170 2496 50  0000 L CNN
F 1 "1M" H 2170 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 2450 50  0001 C CNN
F 3 "~" H 2100 2450 50  0001 C CNN
	1    2100 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5EA03678
P 2100 2750
F 0 "R2" H 2170 2796 50  0000 L CNN
F 1 "100K" H 2170 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 2750 50  0001 C CNN
F 3 "~" H 2100 2750 50  0001 C CNN
	1    2100 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2600 2100 2600
Connection ~ 2100 2600
Wire Wire Line
	2100 2900 2100 4250
Wire Wire Line
	2100 4250 2800 4250
Connection ~ 2800 4250
Wire Wire Line
	2100 2300 2100 2100
$Comp
L power:+BATT #PWR0105
U 1 1 5EA08047
P 2100 1800
F 0 "#PWR0105" H 2100 1650 50  0001 C CNN
F 1 "+BATT" H 2100 1950 50  0000 C CNN
F 2 "" H 2100 1800 50  0001 C CNN
F 3 "" H 2100 1800 50  0001 C CNN
	1    2100 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5EA09928
P 1700 2750
F 0 "C2" H 1815 2796 50  0000 L CNN
F 1 "100pF" H 1815 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1738 2600 50  0001 C CNN
F 3 "~" H 1700 2750 50  0001 C CNN
	1    1700 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5EA0A6DF
P 1150 2750
F 0 "C1" H 1265 2796 50  0000 L CNN
F 1 "100pF" H 1265 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1188 2600 50  0001 C CNN
F 3 "~" H 1150 2750 50  0001 C CNN
	1    1150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2600 1700 2600
Wire Wire Line
	1700 2900 1700 4250
Wire Wire Line
	1700 4250 2100 4250
Connection ~ 2100 4250
Wire Wire Line
	1150 2900 1150 4250
Wire Wire Line
	1150 4250 1700 4250
Connection ~ 1700 4250
$Comp
L power:+3.3V #PWR0106
U 1 1 5EA12891
P 1150 2600
F 0 "#PWR0106" H 1150 2450 50  0001 C CNN
F 1 "+3.3V" H 1165 2773 50  0000 C CNN
F 2 "" H 1150 2600 50  0001 C CNN
F 3 "" H 1150 2600 50  0001 C CNN
	1    1150 2600
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:HT75xx-1-SOT89 U2
U 1 1 5EA13413
P 9400 1350
F 0 "U2" H 9400 1717 50  0000 C CNN
F 1 "HT75xx-1-SOT89" H 9400 1626 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 9400 1675 50  0001 C CIN
F 3 "https://www.holtek.com/documents/10179/116711/HT75xx-1v250.pdf" H 9400 1450 50  0001 C CNN
	1    9400 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5EA14775
P 8850 1500
F 0 "C3" H 8965 1546 50  0000 L CNN
F 1 "10uF" H 8965 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8888 1350 50  0001 C CNN
F 3 "~" H 8850 1500 50  0001 C CNN
	1    8850 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5EA16593
P 9950 1500
F 0 "C4" H 10065 1546 50  0000 L CNN
F 1 "10uF" H 10065 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9988 1350 50  0001 C CNN
F 3 "~" H 9950 1500 50  0001 C CNN
	1    9950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1250 8850 1250
Wire Wire Line
	8850 1250 8850 1350
Wire Wire Line
	8850 1650 8850 1700
Wire Wire Line
	8850 1700 9400 1700
Wire Wire Line
	9950 1700 9950 1650
Wire Wire Line
	9400 1550 9400 1700
Connection ~ 9400 1700
Wire Wire Line
	9400 1700 9950 1700
Wire Wire Line
	9950 1350 9950 1250
Wire Wire Line
	9950 1250 9700 1250
$Comp
L power:+BATT #PWR0107
U 1 1 5EA1B276
P 8850 1250
F 0 "#PWR0107" H 8850 1100 50  0001 C CNN
F 1 "+BATT" V 8865 1377 50  0000 L CNN
F 2 "" H 8850 1250 50  0001 C CNN
F 3 "" H 8850 1250 50  0001 C CNN
	1    8850 1250
	0    -1   -1   0   
$EndComp
Connection ~ 8850 1250
$Comp
L power:GND #PWR0108
U 1 1 5EA1C56D
P 9400 1700
F 0 "#PWR0108" H 9400 1450 50  0001 C CNN
F 1 "GND" H 9405 1527 50  0000 C CNN
F 2 "" H 9400 1700 50  0001 C CNN
F 3 "" H 9400 1700 50  0001 C CNN
	1    9400 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 5EA1D45F
P 9950 1250
F 0 "#PWR0109" H 9950 1100 50  0001 C CNN
F 1 "+3.3V" V 9965 1378 50  0000 L CNN
F 2 "" H 9950 1250 50  0001 C CNN
F 3 "" H 9950 1250 50  0001 C CNN
	1    9950 1250
	0    1    1    0   
$EndComp
Connection ~ 9950 1250
$Comp
L Device:R R10
U 1 1 5EA2084C
P 8400 3450
F 0 "R10" H 8470 3496 50  0000 L CNN
F 1 "10K" H 8470 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8330 3450 50  0001 C CNN
F 3 "~" H 8400 3450 50  0001 C CNN
	1    8400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2900 8850 2700
$Comp
L Device:R R9
U 1 1 5EA253F9
P 8150 3100
F 0 "R9" H 8220 3146 50  0000 L CNN
F 1 "1K" H 8220 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8080 3100 50  0001 C CNN
F 3 "~" H 8150 3100 50  0001 C CNN
	1    8150 3100
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 5EA25B73
P 8850 2700
F 0 "#PWR0110" H 8850 2550 50  0001 C CNN
F 1 "+3.3V" H 8865 2873 50  0000 C CNN
F 2 "" H 8850 2700 50  0001 C CNN
F 3 "" H 8850 2700 50  0001 C CNN
	1    8850 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5EA2672A
P 8600 4000
F 0 "#PWR0111" H 8600 3750 50  0001 C CNN
F 1 "GND" H 8605 3827 50  0000 C CNN
F 2 "" H 8600 4000 50  0001 C CNN
F 3 "" H 8600 4000 50  0001 C CNN
	1    8600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3100 8300 3100
Connection ~ 8400 3100
Text GLabel 8000 3100 0    50   Input ~ 0
ENABLE_SENSORS
Text GLabel 5400 2700 2    50   Output ~ 0
ENABLE_SENSORS
Wire Wire Line
	5400 2700 4950 2700
$Comp
L Device:R R11
U 1 1 5EA34F9E
P 8850 3450
F 0 "R11" H 8920 3496 50  0000 L CNN
F 1 "2K" H 8920 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8780 3450 50  0001 C CNN
F 3 "~" H 8850 3450 50  0001 C CNN
	1    8850 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5EA357F2
P 8850 3750
F 0 "D1" V 8889 3633 50  0000 R CNN
F 1 "SensorsEnabled" V 8798 3633 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8850 3750 50  0001 C CNN
F 3 "~" H 8850 3750 50  0001 C CNN
	1    8850 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 3900 8850 3950
Wire Wire Line
	8850 3950 8600 3950
Wire Wire Line
	8400 3950 8400 3600
Wire Wire Line
	8400 3100 8400 3300
Wire Wire Line
	8600 4000 8600 3950
Connection ~ 8600 3950
Wire Wire Line
	8600 3950 8400 3950
Wire Wire Line
	8850 3300 9100 3300
Text GLabel 9100 3300 2    50   Output ~ 0
SENSOR_POWER
Text GLabel 5300 5100 0    50   Input ~ 0
SENSOR_POWER
Text GLabel 4200 3700 3    50   BiDi ~ 0
MOSI
Text GLabel 3900 3700 3    50   BiDi ~ 0
MISO
Text GLabel 4300 3700 3    50   BiDi ~ 0
SCLK
Text GLabel 5300 4900 0    50   BiDi ~ 0
SCL
Text GLabel 5300 5000 0    50   BiDi ~ 0
SDA
Wire Wire Line
	5650 2900 5300 2900
Wire Wire Line
	5050 3000 5650 3000
Connection ~ 5050 3000
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 5EA4C8B7
P 5500 5000
F 0 "J3" H 5528 4976 50  0000 L CNN
F 1 "Conn_01x04_Female" H 5528 4885 50  0000 L CNN
F 2 "Connector_JST:JST_SH_BM04B-SRSS-TB_1x04-1MP_P1.00mm_Vertical" H 5500 5000 50  0001 C CNN
F 3 "~" H 5500 5000 50  0001 C CNN
	1    5500 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5EA5B45B
P 5300 5200
F 0 "#PWR0112" H 5300 4950 50  0001 C CNN
F 1 "GND" H 5305 5027 50  0000 C CNN
F 2 "" H 5300 5200 50  0001 C CNN
F 3 "" H 5300 5200 50  0001 C CNN
	1    5300 5200
	1    0    0    -1  
$EndComp
Text GLabel 3800 3700 3    50   BiDi ~ 0
CS
Text GLabel 3600 4900 0    50   BiDi ~ 0
SCLK
Text GLabel 3600 5000 0    50   BiDi ~ 0
MOSI
Text GLabel 3600 5100 0    50   BiDi ~ 0
MISO
Text GLabel 3600 5200 0    50   BiDi ~ 0
CS
Text GLabel 3600 5300 0    50   Input ~ 0
SENSOR_POWER
$Comp
L power:GND #PWR0113
U 1 1 5EA5EFF5
P 3600 5400
F 0 "#PWR0113" H 3600 5150 50  0001 C CNN
F 1 "GND" H 3605 5227 50  0000 C CNN
F 2 "" H 3600 5400 50  0001 C CNN
F 3 "" H 3600 5400 50  0001 C CNN
	1    3600 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J2
U 1 1 5EA5F980
P 3800 5100
F 0 "J2" H 3828 5076 50  0000 L CNN
F 1 "Conn_01x06_Female" H 3828 4985 50  0000 L CNN
F 2 "Connector_JST:JST_SH_BM06B-SRSS-TB_1x06-1MP_P1.00mm_Vertical" H 3800 5100 50  0001 C CNN
F 3 "~" H 3800 5100 50  0001 C CNN
	1    3800 5100
	1    0    0    -1  
$EndComp
Text GLabel 5300 5700 0    50   Input ~ 0
SENSOR_POWER
Text GLabel 5300 5500 0    50   BiDi ~ 0
SCL
Text GLabel 5300 5600 0    50   BiDi ~ 0
SDA
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5EA6840F
P 5500 5600
F 0 "J4" H 5528 5576 50  0000 L CNN
F 1 "Conn_01x04_Female" H 5528 5485 50  0000 L CNN
F 2 "Connector_JST:JST_SH_BM04B-SRSS-TB_1x04-1MP_P1.00mm_Vertical" H 5500 5600 50  0001 C CNN
F 3 "~" H 5500 5600 50  0001 C CNN
	1    5500 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5EA68415
P 5300 5800
F 0 "#PWR0114" H 5300 5550 50  0001 C CNN
F 1 "GND" H 5305 5627 50  0000 C CNN
F 2 "" H 5300 5800 50  0001 C CNN
F 3 "" H 5300 5800 50  0001 C CNN
	1    5300 5800
	1    0    0    -1  
$EndComp
Text GLabel 5300 6300 0    50   Input ~ 0
SENSOR_POWER
Text GLabel 5300 6100 0    50   BiDi ~ 0
SCL
Text GLabel 5300 6200 0    50   BiDi ~ 0
SDA
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5EA6C4F5
P 5500 6200
F 0 "J5" H 5528 6176 50  0000 L CNN
F 1 "Conn_01x04_Female" H 5528 6085 50  0000 L CNN
F 2 "Connector_JST:JST_SH_BM04B-SRSS-TB_1x04-1MP_P1.00mm_Vertical" H 5500 6200 50  0001 C CNN
F 3 "~" H 5500 6200 50  0001 C CNN
	1    5500 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5EA6C4FF
P 5300 6400
F 0 "#PWR0115" H 5300 6150 50  0001 C CNN
F 1 "GND" H 5305 6227 50  0000 C CNN
F 2 "" H 5300 6400 50  0001 C CNN
F 3 "" H 5300 6400 50  0001 C CNN
	1    5300 6400
	1    0    0    -1  
$EndComp
Text GLabel 3150 3100 0    50   BiDi ~ 0
GP0
Text GLabel 3150 3000 0    50   BiDi ~ 0
GP1
Text GLabel 3150 2900 0    50   BiDi ~ 0
GP2
Text GLabel 2150 5100 0    50   BiDi ~ 0
GP0
Text GLabel 2150 5000 0    50   BiDi ~ 0
GP1
Text GLabel 2150 4900 0    50   BiDi ~ 0
GP2
Text GLabel 2150 5200 0    50   Input ~ 0
SENSOR_POWER
$Comp
L power:GND #PWR0116
U 1 1 5EA734C3
P 2150 5300
F 0 "#PWR0116" H 2150 5050 50  0001 C CNN
F 1 "GND" H 2155 5127 50  0000 C CNN
F 2 "" H 2150 5300 50  0001 C CNN
F 3 "" H 2150 5300 50  0001 C CNN
	1    2150 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J1
U 1 1 5EA77B31
P 2350 5100
F 0 "J1" H 2378 5126 50  0000 L CNN
F 1 "Conn_01x05_Female" H 2378 5035 50  0000 L CNN
F 2 "Connector_JST:JST_SH_BM05B-SRSS-TB_1x05-1MP_P1.00mm_Vertical" H 2350 5100 50  0001 C CNN
F 3 "~" H 2350 5100 50  0001 C CNN
	1    2350 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5EA78846
P 7250 1250
F 0 "J7" H 7358 1431 50  0000 C CNN
F 1 "Conn_01x02_Male" H 7358 1340 50  0000 C CNN
F 2 "Connector_JST:JST_EH_S2B-EH_1x02_P2.50mm_Horizontal" H 7250 1250 50  0001 C CNN
F 3 "~" H 7250 1250 50  0001 C CNN
	1    7250 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0117
U 1 1 5EA85F8D
P 7450 1250
F 0 "#PWR0117" H 7450 1100 50  0001 C CNN
F 1 "+BATT" V 7465 1378 50  0000 L CNN
F 2 "" H 7450 1250 50  0001 C CNN
F 3 "" H 7450 1250 50  0001 C CNN
	1    7450 1250
	0    1    1    0   
$EndComp
$Comp
L power:-BATT #PWR0118
U 1 1 5EA8759A
P 7450 1350
F 0 "#PWR0118" H 7450 1200 50  0001 C CNN
F 1 "-BATT" V 7465 1478 50  0000 L CNN
F 2 "" H 7450 1350 50  0001 C CNN
F 3 "" H 7450 1350 50  0001 C CNN
	1    7450 1350
	0    1    1    0   
$EndComp
$Comp
L power:-BATT #PWR0119
U 1 1 5EA8A5C4
P 8850 1700
F 0 "#PWR0119" H 8850 1550 50  0001 C CNN
F 1 "-BATT" V 8865 1827 50  0000 L CNN
F 2 "" H 8850 1700 50  0001 C CNN
F 3 "" H 8850 1700 50  0001 C CNN
	1    8850 1700
	0    -1   -1   0   
$EndComp
Connection ~ 8850 1700
$Comp
L New_Library:FDN337N Q1
U 1 1 5EAB3B48
P 8800 3100
F 0 "Q1" H 8954 3146 50  0000 L CNN
F 1 "FDN337N" H 8954 3055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SuperSOT-3" H 8800 3100 50  0001 C CNN
F 3 "" H 8600 2950 50  0001 C CNN
	1    8800 3100
	1    0    0    -1  
$EndComp
Connection ~ 8850 3300
Wire Wire Line
	8400 3100 8600 3100
Text GLabel 5650 2900 2    50   BiDi ~ 0
SCL
Text GLabel 5650 3000 2    50   BiDi ~ 0
SDA
$Comp
L Jumper:SolderJumper_2_Bridged JP1
U 1 1 5EB4A71D
P 2100 1950
F 0 "JP1" V 2054 2018 50  0000 L CNN
F 1 "SolderJumper_2_Bridged" V 2145 2018 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 2100 1950 50  0001 C CNN
F 3 "~" H 2100 1950 50  0001 C CNN
	1    2100 1950
	0    1    1    0   
$EndComp
$EndSCHEMATC
