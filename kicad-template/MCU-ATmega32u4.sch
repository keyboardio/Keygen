EESchema Schematic File Version 5
LIBS:kicad-template-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 13
Title "MCU"
Date "2016-05-06"
Rev ""
Comp "Keyboardio"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 545C2700
P 3400 4250
F 0 "#PWR?" H 3400 4250 30  0001 C CNN
F 1 "GND" H 3400 4200 30  0001 C CNN
F 2 "" H 3395 4265 60  0000 C CNN
F 3 "" H 3395 4265 60  0001 C CNN
	1    3400 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 545C2707
P 2750 5300
F 0 "C5" H 2750 5350 50  0000 L CNN
F 1 "27pF" H 2750 5250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2750 5300 60  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-GP_NP0_16V-to-50V_16.pdf" H 2750 5300 60  0001 C CNN
F 4 "CC0603JRNPO9BN270" H 2750 5300 60  0001 C CNN "MPN"
F 5 "311-1063-1-ND" H 2750 5300 60  0001 C CNN "DigiKey"
F 6 "Yaego" H 2750 5300 60  0001 C CNN "Manufacturer"
F 7 "CAP CER 27PF 50V C0G/NP0 0603" H 2750 5300 60  0001 C CNN "Description"
F 8 "CC0603JRNPO9BN270	" H 0   0   50  0001 C CNN "Seeed Part Num"
F 9 "C107045" H 2750 5300 50  0001 C CNN "LCSC"
	1    2750 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 545C2708
P 2750 5425
F 0 "#PWR?" H 2750 5425 30  0001 C CNN
F 1 "GND" H 2750 5325 30  0001 C CNN
F 2 "" H 2740 5420 60  0000 C CNN
F 3 "" H 2740 5420 60  0001 C CNN
	1    2750 5425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 545C2709
P 3500 5450
F 0 "#PWR?" H 3500 5450 30  0001 C CNN
F 1 "GND" H 3500 5350 30  0001 C CNN
F 2 "" H 3500 5440 60  0000 C CNN
F 3 "" H 3500 5440 60  0001 C CNN
	1    3500 5450
	1    0    0    -1  
$EndComp
$Comp
L legacy:ATMEGA32U4 U1
U 1 1 545C2711
P 4900 4600
F 0 "U1" H 4000 6300 60  0000 C CNN
F 1 "ATMEGA32U4-MU" H 4250 3050 60  0000 C CNN
F 2 "Package_DFN_QFN:QFN-44-1EP_7x7mm_P0.5mm_EP5.15x5.15mm_ThermalVias" H 6100 5700 60  0001 C CNN
F 3 "http://www.atmel.com/images/atmel-7766-8-bit-avr-atmega16u4-32u4_datasheet.pdf" H 6100 5700 60  0001 C CNN
F 4 "Atmel" H 4900 4600 60  0001 C CNN "Manufacturer"
F 5 "ATMEGA32U4-MU" H 4900 4600 60  0001 C CNN "MPN"
F 6 "ATMega32U4 - VQFN preferred, but TQFP Acceptable" H 4900 4600 60  0001 C CNN "Description"
F 7 "ATMEGA32U4-MU-ND" H 0   0   50  0001 C CNN "DigiKey"
F 8 "ATMEGA32U4-MU	" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    4900 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 545C2713
P 3600 4250
F 0 "#PWR?" H 3600 4250 30  0001 C CNN
F 1 "GND" H 3600 4150 30  0001 C CNN
F 2 "" H 3620 4240 60  0000 C CNN
F 3 "" H 3620 4240 60  0001 C CNN
	1    3600 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 545C2715
P 3550 6050
F 0 "#PWR?" H 3550 6050 30  0001 C CNN
F 1 "GND" H 3550 5950 30  0001 C CNN
F 2 "" H 3570 6040 60  0000 C CNN
F 3 "" H 3570 6040 60  0001 C CNN
	1    3550 6050
	1    0    0    -1  
$EndComp
Text Label 8650 4350 0    60   ~ 0
MISO
Text Label 8650 4450 0    60   ~ 0
SCK
Text Label 10150 4450 2    60   ~ 0
MOSI
Text Label 8650 4550 0    60   ~ 0
RESET_MCU
Text Label 6100 3150 0    60   ~ 0
SCK
Text Label 6075 3250 0    60   ~ 0
MOSI
Text Label 6100 3350 0    60   ~ 0
MISO
$Comp
L Switch:SW_Push SW1
U 1 1 54E65667
P 9150 3650
F 0 "SW1" H 9300 3750 50  0000 C CNN
F 1 "SW_PUSH" H 9150 3550 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 9150 3650 60  0001 C CNN
F 3 "https://www.e-switch.com/system/asset/product_line/data_sheet/165/TL3342.pdf" H 9150 3650 60  0001 C CNN
F 4 "SWITCH TACTILE SPST-NO 0.05A 12V" H 9150 3650 60  0001 C CNN "Description"
F 5 "EG2531TR-ND" H -3975 -100 50  0001 C CNN "DigiKey"
F 6 "TL3342F160QG/TR" H -3975 -100 50  0001 C CNN "MPN"
F 7 "E-Switch" H -3975 -100 50  0001 C CNN "Manufacturer"
	1    9150 3650
	-1   0    0    -1  
$EndComp
Text Label 9150 3400 0    60   ~ 0
RESET_MCU
$Comp
L power:+5V #PWR?
U 1 1 562CDF1F
P 8550 2800
F 0 "#PWR?" H 8550 2650 50  0001 C CNN
F 1 "+5V" H 8550 2940 50  0000 C CNN
F 2 "" H 8550 2800 60  0000 C CNN
F 3 "" H 8550 2800 60  0001 C CNN
	1    8550 2800
	1    0    0    -1  
$EndComp
Text Label 3650 4450 2    60   ~ 0
RESET_MCU
Text Notes 7700 2550 0    197  Italic 39
MCU Programming
Text Notes 3165 2325 0    197  Italic 39
Primary Microcontroller
$Comp
L Device:R R1
U 1 1 56330D02
P 8400 3100
F 0 "R1" V 8300 3100 40  0000 C CNN
F 1 "10K" V 8400 3100 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8300 3100 30  0001 C CNN
F 3 "http://www.susumu.co.jp/common/pdf/n_catalog_partition05_en.pdf" H 8400 3100 30  0001 C CNN
F 4 "RR08P10.0KDTR-ND" V 8400 3100 60  0001 C CNN "DigiKey"
F 5 "Susumu" V 8400 3100 60  0001 C CNN "Manufacturer"
F 6 "RR0816P-103-D" V 8400 3100 60  0001 C CNN "MPN"
F 7 "RES SMD 10K OHM 0.5% 1/16W 0603" V 8400 3100 60  0001 C CNN "Description"
F 8 "RK73H1JTTD1002F" H 0   0   50  0001 C CNN "Seeed Part Num"
F 9 "C130232" V 8400 3100 50  0001 C CNN "LCSC"
	1    8400 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 564DCAD4
P 9800 4550
F 0 "#PWR?" H 9800 4550 30  0001 C CNN
F 1 "GND" H 9800 4500 30  0001 C CNN
F 2 "" H 9815 4575 60  0000 C CNN
F 3 "" H 9815 4575 60  0001 C CNN
	1    9800 4550
	0    -1   1    0   
$EndComp
$Comp
L legacy:TST UVCC1
U 1 1 565A556A
P 3600 3050
F 0 "UVCC1" H 3650 3300 50  0000 C BNN
F 1 "TST" V 3600 3300 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" V 3600 3050 60  0001 C CNN
F 3 "" H 3620 3035 60  0001 C CNN
	1    3600 3050
	-1   0    0    -1  
$EndComp
$Comp
L legacy:TST AREF1
U 1 1 565A5F06
P 3600 3450
F 0 "AREF1" V 3700 3500 50  0000 C BNN
F 1 "TST" V 3650 3700 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" V 3600 3450 60  0001 C CNN
F 3 "" H 3625 3440 60  0001 C CNN
	1    3600 3450
	0    -1   1    0   
$EndComp
$Comp
L legacy:TST UCAP1
U 1 1 565A618E
P 3350 4050
F 0 "UCAP1" V 3375 4375 50  0000 C BNN
F 1 "TST" V 3400 4300 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" V 3350 4050 60  0001 C CNN
F 3 "" H 3370 4040 60  0001 C CNN
	1    3350 4050
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 565C32BB
P 8650 4050
F 0 "#PWR?" H 8650 4050 30  0001 C CNN
F 1 "GND" H 8650 3950 30  0001 C CNN
F 2 "" H 8670 4035 60  0000 C CNN
F 3 "" H 8670 4035 60  0001 C CNN
	1    8650 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 56863F4E
P 3500 5300
F 0 "C7" H 3500 5350 50  0000 L CNN
F 1 "27pF" H 3500 5250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3500 5300 60  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-GP_NP0_16V-to-50V_16.pdf" H 3500 5300 60  0001 C CNN
F 4 "CC0603JRNPO9BN270" H 3500 5300 60  0001 C CNN "MPN"
F 5 "311-1063-1-ND" H 3500 5300 60  0001 C CNN "DigiKey"
F 6 "Yaego" H 3500 5300 60  0001 C CNN "Manufacturer"
F 7 "CAP CER 27PF 50V C0G/NP0 0603" H 3500 5300 60  0001 C CNN "Description"
F 8 "CC0603JRNPO9BN270	" H 0   0   50  0001 C CNN "Seeed Part Num"
F 9 "C107045" H 3500 5300 50  0001 C CNN "LCSC"
	1    3500 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 567D8C34
P 1800 3675
F 0 "C2" H 1700 3725 50  0000 L CNN
F 1 "1uF 10V X5R 10%" V 1950 3425 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1800 3675 60  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-GPHC_X5R_4V-to-50V_25.pdf" H 1800 3675 60  0001 C CNN
F 4 "CAP CER 1UF 10V X5R 0603" H 1800 3675 60  0001 C CNN "Description"
F 5 "311-1443-2-ND	" H 1800 3675 60  0001 C CNN "DigiKey"
F 6 "Yageo" H 1800 3675 60  0001 C CNN "Manufacturer"
F 7 "CC0603KRX5R6BB105" H 1800 3675 60  0001 C CNN "MPN"
F 8 "GRM188R61A105KA61D	" H 0   0   50  0001 C CNN "Seeed Part Num"
F 9 "C106214" H 1800 3675 50  0001 C CNN "LCSC"
	1    1800 3675
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 567DA590
P 1800 3325
F 0 "C3" H 1700 3375 50  0000 L CNN
F 1 "1uF 10V X5R 10%" V 1950 3075 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1800 3325 60  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-GPHC_X5R_4V-to-50V_25.pdf" H 1800 3325 60  0001 C CNN
F 4 "CAP CER 1UF 10V X5R 0603" H 1800 3325 60  0001 C CNN "Description"
F 5 "311-1443-2-ND	" H 1800 3325 60  0001 C CNN "DigiKey"
F 6 "Yageo" H 1800 3325 60  0001 C CNN "Manufacturer"
F 7 "CC0603KRX5R6BB105" H 1800 3325 60  0001 C CNN "MPN"
F 8 "GRM188R61A105KA61D	" H 0   0   50  0001 C CNN "Seeed Part Num"
F 9 "C106214" H 1800 3325 50  0001 C CNN "LCSC"
	1    1800 3325
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 567DA9AF
P 3400 4150
F 0 "C6" H 3400 4200 50  0000 L CNN
F 1 "1uF 10V X5R 10%" H 3400 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3400 4150 60  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-GPHC_X5R_4V-to-50V_25.pdf" H 3400 4150 60  0001 C CNN
F 4 "CAP CER 1UF 10V X5R 0603" H 3400 4150 60  0001 C CNN "Description"
F 5 "311-1443-2-ND	" H 3400 4150 60  0001 C CNN "DigiKey"
F 6 "Yageo" H 3400 4150 60  0001 C CNN "Manufacturer"
F 7 "CC0603KRX5R6BB105" H 3400 4150 60  0001 C CNN "MPN"
F 8 "GRM188R61A105KA61D	" H 0   0   50  0001 C CNN "Seeed Part Num"
F 9 "C106214" H 3400 4150 50  0001 C CNN "LCSC"
	1    3400 4150
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 567E2413
P 8650 3550
F 0 "C8" H 8650 3600 50  0000 L CNN
F 1 "1uF 10V X5R 10%" H 8650 3500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8650 3550 60  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-GPHC_X5R_4V-to-50V_25.pdf" H 8650 3550 60  0001 C CNN
F 4 "CAP CER 1UF 10V X5R 0603" H 8650 3550 60  0001 C CNN "Description"
F 5 "311-1443-2-ND	" H 8650 3550 60  0001 C CNN "DigiKey"
F 6 "Yageo" H 8650 3550 60  0001 C CNN "Manufacturer"
F 7 "CC0603KRX5R6BB105" H 8650 3550 60  0001 C CNN "MPN"
F 8 "GRM188R61A105KA61D	" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    8650 3550
	-1   0    0    -1  
$EndComp
$Comp
L 1N4148:D D2
U 1 1 567D8B7A
P 8700 3050
F 0 "D2" H 8700 3150 40  0000 C CNN
F 1 "1N4148" H 8700 2950 40  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 6950 1250 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 6950 1250 60  0001 C CNN
F 4 "1N4148W-FDITR-ND" H 6950 1250 60  0001 C CNN "DigiKey"
F 5 "Diodes Inc" H 6950 1250 60  0001 C CNN "Manufacturer"
F 6 "1N4148W-7-F" H 6950 1250 60  0001 C CNN "MPN"
F 7 "DIODE GEN PURP 100V 300MA SOD123" H 6950 1250 60  0001 C CNN "Description"
F 8 "C83528" H 8700 3050 50  0001 C CNN "LCSC"
	1    8700 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 567E74CE
P 9200 4000
F 0 "R2" V 9200 4000 40  0000 C CNN
F 1 "330R 5%" V 9100 4000 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9130 4000 30  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_10.pdf" H 9200 4000 30  0001 C CNN
F 4 "RES SMD 330 OHM 5% 1/10W 0603" H -3975 -100 50  0001 C CNN "Description"
F 5 "311-330GRTR-ND" H -3975 -100 50  0001 C CNN "DigiKey"
F 6 "311-330GRTR-ND" H -3975 -100 50  0001 C CNN "MPN"
F 7 "Yaego" H -3975 -100 50  0001 C CNN "Manufacturer"
F 8 "RC0603JR-07330RL" H 0   0   50  0001 C CNN "Seeed Part Num"
F 9 "C105879" V 9200 4000 50  0001 C CNN "LCSC"
	1    9200 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 567DA26A
P 1800 2975
F 0 "C4" H 1700 3025 50  0000 L CNN
F 1 "1uF 10V X5R 10%" V 1950 2725 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1800 2975 60  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-GPHC_X5R_4V-to-50V_25.pdf" H 1800 2975 60  0001 C CNN
F 4 "CAP CER 1UF 10V X5R 0603" H 1800 2975 60  0001 C CNN "Description"
F 5 "311-1443-2-ND	" H 1800 2975 60  0001 C CNN "DigiKey"
F 6 "Yageo" H 1800 2975 60  0001 C CNN "Manufacturer"
F 7 "CC0603KRX5R6BB105" H 1800 2975 60  0001 C CNN "MPN"
F 8 "GRM188R61A105KA61D	" H 0   0   50  0001 C CNN "Seeed Part Num"
F 9 "C106214" H 1800 2975 50  0001 C CNN "LCSC"
	1    1800 2975
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 545C270B
P 1800 4025
F 0 "C1" H 1700 4075 50  0000 L CNN
F 1 "1uF 10V X5R 10%" V 1950 3775 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1800 4025 60  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-GPHC_X5R_4V-to-50V_25.pdf" H 1800 4025 60  0001 C CNN
F 4 "CAP CER 1UF 10V X5R 0603" H 1800 4025 60  0001 C CNN "Description"
F 5 "311-1443-2-ND	" H 1800 4025 60  0001 C CNN "DigiKey"
F 6 "Yageo" H 1800 4025 60  0001 C CNN "Manufacturer"
F 7 "CC0603KRX5R6BB105" H 1800 4025 60  0001 C CNN "MPN"
F 8 "GRM188R61A105KA61D	" H 0   0   50  0001 C CNN "Seeed Part Num"
F 9 "C106214" H 1800 4025 50  0001 C CNN "LCSC"
	1    1800 4025
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 568014B9
P 2150 4025
F 0 "#PWR?" H 2150 4025 30  0001 C CNN
F 1 "GND" H 2150 3955 30  0001 C CNN
F 2 "" H 2150 4025 60  0000 C CNN
F 3 "" H 2150 4025 60  0001 C CNN
	1    2150 4025
	0    -1   -1   0   
$EndComp
Text Notes 2225 2700 2    60   ~ 0
Place close to 2xVCC,\n2x AVCC pins.
$Comp
L legacy:TST XTAL1
U 1 1 568B2F7F
P 2750 5050
F 0 "XTAL1" V 2675 5175 50  0000 C BNN
F 1 "TST" V 2800 5300 50  0001 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" V 2750 5050 60  0001 C CNN
F 3 "" H 2770 5040 60  0001 C CNN
	1    2750 5050
	0    -1   1    0   
$EndComp
Wire Wire Line
	3650 3850 3300 3850
Wire Wire Line
	3650 3950 3300 3950
Wire Wire Line
	3650 4150 3600 4150
Wire Wire Line
	3600 4150 3600 4250
Wire Wire Line
	3550 5950 3650 5950
Wire Wire Line
	3550 5550 3550 5650
Wire Wire Line
	3550 5850 3650 5850
Connection ~ 3550 5950
Wire Wire Line
	3550 5750 3650 5750
Connection ~ 3550 5850
Wire Wire Line
	3550 5650 3650 5650
Connection ~ 3550 5750
Wire Wire Line
	9150 4350 8650 4350
Wire Wire Line
	9650 4450 10150 4450
Wire Wire Line
	9150 4550 8650 4550
Wire Wire Line
	9150 4450 8650 4450
Wire Wire Line
	9650 4550 9800 4550
Wire Wire Line
	10600 4350 9650 4350
Wire Wire Line
	3300 3750 3650 3750
Connection ~ 8700 3400
Wire Wire Line
	8650 3450 8650 3400
Connection ~ 8650 3400
Wire Wire Line
	8650 3650 8650 4000
Wire Wire Line
	3300 3150 3650 3150
Wire Wire Line
	3500 5150 3500 5200
Connection ~ 3500 5150
Wire Wire Line
	3500 5400 3500 5450
Wire Wire Line
	2750 5400 2750 5425
Wire Wire Line
	3300 3000 3300 3050
Wire Wire Line
	3600 3450 3650 3450
Connection ~ 8650 4000
Wire Wire Line
	8400 2800 8400 2950
Wire Wire Line
	8400 3250 8400 3400
Wire Wire Line
	8650 4000 9050 4000
Wire Wire Line
	8400 3400 8650 3400
Connection ~ 8850 3400
Wire Wire Line
	8850 3400 8850 3650
Wire Wire Line
	9550 4000 9550 3650
Wire Wire Line
	3300 3250 3650 3250
Wire Wire Line
	3300 3350 3650 3350
Wire Wire Line
	3300 3550 3650 3550
Connection ~ 3300 3350
Connection ~ 3300 3250
Connection ~ 3300 3150
Connection ~ 3300 3050
Connection ~ 3300 3550
Wire Wire Line
	1450 4025 1550 4025
Wire Wire Line
	1550 4025 1550 3675
Wire Wire Line
	1550 2975 1700 2975
Wire Wire Line
	1550 3325 1700 3325
Connection ~ 1550 3325
Wire Wire Line
	1550 3675 1700 3675
Connection ~ 1550 3675
Wire Wire Line
	1900 4025 2050 4025
Wire Wire Line
	2050 4025 2050 3675
Wire Wire Line
	1900 3675 2050 3675
Wire Wire Line
	1900 3325 2050 3325
Connection ~ 2050 3675
Wire Wire Line
	2050 2975 1900 2975
Connection ~ 2050 3325
Connection ~ 1550 4025
Connection ~ 2050 4025
Wire Wire Line
	9350 4000 9550 4000
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 56965A45
P 9450 4450
F 0 "J1" H 9450 4650 50  0000 C CNN
F 1 "ICSP" H 9400 4250 50  0000 C CNN
F 2 "Keyboardio:Model_01_ICSP_cutout_pins" H 9450 3250 60  0001 C CNN
F 3 "https://cdn.harwin.com/pdfs/C001XX_M20_Series_Connectors.pdf" H 9450 3250 60  0001 C CNN
F 4 "952-1922-ND" H 9450 4450 60  0001 C CNN "DigiKey"
F 5 "Harwin" H 9450 4450 60  0001 C CNN "Manufacturer"
F 6 "M20-8760342" H 9450 4450 60  0001 C CNN "MPN"
F 7 "2X3POS DIL VERTICAL SMT HEADER" H 9450 4450 60  0001 C CNN "Description"
	1    9450 4450
	-1   0    0    1   
$EndComp
Text Label 8650 4850 0    50   ~ 0
MISO
Text Label 8650 4950 0    50   ~ 0
SCK
Text Label 10150 4950 2    50   ~ 0
MOSI
Text Label 8650 5050 0    50   ~ 0
RESET_MCU
$Comp
L power:GND #PWR?
U 1 1 574762FC
P 9800 5050
F 0 "#PWR?" H 9800 5050 30  0001 C CNN
F 1 "GND" H 9800 5000 30  0001 C CNN
F 2 "" H 9815 5075 60  0000 C CNN
F 3 "" H 9815 5075 60  0001 C CNN
	1    9800 5050
	0    -1   1    0   
$EndComp
Wire Wire Line
	9150 4850 8650 4850
Wire Wire Line
	9650 4950 10150 4950
Wire Wire Line
	9150 5050 8650 5050
Wire Wire Line
	9150 4950 8650 4950
Wire Wire Line
	9650 5050 9800 5050
Wire Wire Line
	10600 4850 9650 4850
$Comp
L Connector_Generic:Conn_02x03_Odd_Even T5
U 1 1 5747630D
P 9450 4950
F 0 "T5" H 9450 5150 50  0000 C CNN
F 1 "ICSP_Test" H 9400 4750 50  0000 C CNN
F 2 "Keyboardio:Six_Pin_Test_Point" H 9450 3750 60  0001 C CNN
F 3 "" H 9450 3750 60  0001 C CNN
F 4 "ICSP Test Points" H 9450 4950 60  0001 C CNN "Description"
	1    9450 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 5550 3550 5550
Connection ~ 3550 5650
Wire Wire Line
	3550 5950 3550 6050
Wire Wire Line
	3550 5850 3550 5950
Wire Wire Line
	3550 5750 3550 5850
Wire Wire Line
	8700 3400 8850 3400
Wire Wire Line
	8650 3400 8700 3400
Wire Wire Line
	3500 5150 3650 5150
Wire Wire Line
	8650 4000 8650 4050
Wire Wire Line
	8850 3400 9650 3400
Wire Wire Line
	3300 3350 3300 3550
Wire Wire Line
	3300 3250 3300 3350
Wire Wire Line
	3300 3150 3300 3250
Wire Wire Line
	3300 3050 3300 3150
Wire Wire Line
	3300 3550 3300 3750
Wire Wire Line
	1550 3325 1550 2975
Wire Wire Line
	1550 3675 1550 3325
Wire Wire Line
	2050 3675 2050 3325
Wire Wire Line
	2050 3325 2050 2975
Wire Wire Line
	1550 4025 1700 4025
Wire Wire Line
	2050 4025 2150 4025
Wire Wire Line
	3550 5650 3550 5750
Wire Wire Line
	3350 4050 3400 4050
Wire Wire Line
	8400 2800 8550 2800
Wire Wire Line
	3300 3050 3600 3050
Connection ~ 2750 5050
Connection ~ 3400 4050
Wire Wire Line
	3400 4050 3650 4050
Connection ~ 3600 3050
Wire Wire Line
	3600 3050 3650 3050
Connection ~ 8550 2800
Wire Wire Line
	8550 2800 8700 2800
Text GLabel 6100 3550 2    50   Input ~ 0
COL5
Text GLabel 6100 3650 2    50   Input ~ 0
COL4
Text GLabel 6900 3350 2    50   Input ~ 0
LED_DRIVER_INTB
Text GLabel 6100 4050 2    50   Input ~ 0
COL2
Text GLabel 6375 3250 2    50   Input ~ 0
COL14
Text GLabel 6100 3750 2    50   Input ~ 0
COL13
Text GLabel 6100 4450 2    50   Input ~ 0
COL12
Text GLabel 6100 4550 2    50   Input ~ 0
COL11
Text GLabel 6100 4750 2    50   Input ~ 0
COL10
Text GLabel 6100 4650 2    50   Input ~ 0
COL9
Text GLabel 6100 4950 2    50   Input ~ 0
COL7
Text GLabel 6100 3450 2    50   Input ~ 0
COL6
Text GLabel 3300 3850 0    50   Input ~ 0
R_D+
Text GLabel 3300 3950 0    50   Input ~ 0
R_D-
$Comp
L power:+5V #PWR?
U 1 1 5BADE9CF
P 1675 1375
F 0 "#PWR?" H 1675 1225 50  0001 C CNN
F 1 "+5V" H 1690 1548 50  0000 C CNN
F 2 "" H 1675 1375 50  0001 C CNN
F 3 "" H 1675 1375 50  0001 C CNN
	1    1675 1375
	0    -1   -1   0   
$EndComp
Text Label 10600 4350 0    50   ~ 0
MCU_VCC
Text Label 3300 3000 2    50   ~ 0
MCU_VCC
Text Label 10600 4850 0    50   ~ 0
MCU_VCC
Text Label 1450 4025 2    50   ~ 0
MCU_VCC
Text GLabel 6800 4250 2    50   Input ~ 0
SCL
Text GLabel 6800 4350 2    50   Input ~ 0
SDA
Text GLabel 6875 3050 2    50   Input ~ 0
LED_DRIVER_SDB
Wire Wire Line
	6100 3050 6750 3050
Wire Wire Line
	6075 3250 6100 3250
Connection ~ 6100 3250
$Comp
L legacy:TST XTAL2
U 1 1 5C6393CF
P 3500 5150
F 0 "XTAL2" H 3275 5200 50  0000 L CNN
F 1 "TST" H 3578 5197 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 3500 5150 60  0001 C CNN
F 3 "" H 3500 5150 60  0000 C CNN
	1    3500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5050 3650 4575
Wire Wire Line
	3650 4575 2750 4575
Wire Wire Line
	2750 4575 2750 5050
Text GLabel 6100 5250 2    50   Input ~ 0
COL16
Wire Wire Line
	6100 3250 6375 3250
Text GLabel 6100 5150 2    50   Input ~ 0
COL1
Wire Wire Line
	1800 1375 1675 1375
Text Label 1800 1375 0    50   ~ 0
MCU_VCC
Text Notes 2050 1000 2    157  Italic 31
Input
$Comp
L legacy:TST SCL1
U 1 1 5C81BF34
P 6600 4250
F 0 "SCL1" H 6400 4300 50  0000 L CNN
F 1 "TST" H 6625 4300 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6600 4250 60  0001 C CNN
F 3 "" H 6600 4250 60  0000 C CNN
	1    6600 4250
	1    0    0    -1  
$EndComp
$Comp
L legacy:TST SDA1
U 1 1 5C81CB6F
P 6600 4350
F 0 "SDA1" H 6800 4400 50  0000 R CNN
F 1 "TST" H 6575 4400 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6600 4350 60  0001 C CNN
F 3 "" H 6600 4350 60  0000 C CNN
	1    6600 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 4250 6600 4250
Wire Wire Line
	6600 4250 6100 4250
Connection ~ 6600 4250
Wire Wire Line
	6100 4350 6600 4350
Wire Wire Line
	6600 4350 6800 4350
Connection ~ 6600 4350
Wire Wire Line
	6900 3350 6750 3350
$Comp
L legacy:TST LED_DRIVER_SDB1
U 1 1 5C83C9DF
P 6750 3050
F 0 "LED_DRIVER_SDB1" H 6700 3350 50  0000 L CNN
F 1 "TST" H 6828 3097 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6750 3050 60  0001 C CNN
F 3 "" H 6750 3050 60  0000 C CNN
	1    6750 3050
	1    0    0    -1  
$EndComp
Connection ~ 6750 3050
Wire Wire Line
	6750 3050 6875 3050
$Comp
L legacy:TST LED_DRIVER_INTB1
U 1 1 5C83CF46
P 6750 3350
F 0 "LED_DRIVER_INTB1" H 6800 3600 50  0000 R CNN
F 1 "TST" H 6672 3487 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6750 3350 60  0001 C CNN
F 3 "" H 6750 3350 60  0000 C CNN
	1    6750 3350
	-1   0    0    1   
$EndComp
Connection ~ 6750 3350
Wire Wire Line
	6750 3350 6100 3350
Wire Wire Line
	9350 3650 9550 3650
Wire Wire Line
	8850 3650 8950 3650
$Comp
L Device:Crystal_GND24 X1
U 1 1 545C2706
P 3050 5150
F 0 "X1" H 2875 5250 60  0000 C CNN
F 1 "16Mhz-18pF" H 2975 4950 60  0000 C CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_TSX3225-4Pin_3.2x2.5mm" H 3050 5150 60  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?dl=brief_TSX-3225&lang=en" H 3050 5150 60  0001 C CNN
F 4 "Seiko-Epson" H 3050 5150 60  0001 C CNN "Manufacturer"
F 5 "X1E000021069600" H 3050 5150 60  0001 C CNN "MPN"
F 6 "TSX-322516.0000MF20G-C-ND" H 3050 5150 60  0001 C CNN "DigiKey"
F 7 "SMD Crystal Resonators 16MHz ±10ppm TSX-3225 RoHS 18pf" H 3050 5150 50  0001 C CNN "Description"
F 8 "C255907" H 3050 5150 50  0001 C CNN "LCSC"
	1    3050 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 5150 3500 5150
Wire Wire Line
	2900 5150 2750 5150
Wire Wire Line
	2750 5050 2750 5150
Wire Wire Line
	2750 5150 2750 5200
Connection ~ 2750 5150
Wire Wire Line
	8700 2800 8700 2900
Wire Wire Line
	8700 3200 8700 3400
Wire Wire Line
	6100 3150 6350 3150
Text GLabel 6350 3150 2    50   Input ~ 0
COL15
Text GLabel 6100 5450 2    50   Input ~ 0
ROW4
Text GLabel 6100 5550 2    50   Input ~ 0
ROW3
Text GLabel 6100 5650 2    50   Input ~ 0
ROW2
Text GLabel 6100 5750 2    50   Input ~ 0
ROW1
Text GLabel 6100 5850 2    50   Input ~ 0
ROW0
Text GLabel 6100 5950 2    50   Input ~ 0
COL0
Text GLabel 6100 3950 2    50   Input ~ 0
COL3
Text GLabel 6100 4850 2    50   Input ~ 0
COL8
$Comp
L Keyboard-symbols:GND #PWR?
U 1 1 5D998C9C
P 3050 5400
F 0 "#PWR?" H 3050 5150 50  0001 C CNN
F 1 "GND" H 3055 5227 50  0000 C CNN
F 2 "" H 3050 5400 50  0000 C CNN
F 3 "" H 3050 5400 50  0000 C CNN
	1    3050 5400
	1    0    0    -1  
$EndComp
$Comp
L Keyboard-symbols:GND #PWR?
U 1 1 5D9999E0
P 3050 4875
F 0 "#PWR?" H 3050 4625 50  0001 C CNN
F 1 "GND" H 3055 4702 50  0000 C CNN
F 2 "" H 3050 4875 50  0000 C CNN
F 3 "" H 3050 4875 50  0000 C CNN
	1    3050 4875
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 4875 3050 4950
Wire Wire Line
	3050 5400 3050 5350
$EndSCHEMATC
