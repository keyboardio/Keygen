EESchema Schematic File Version 5
LIBS:kicad-template-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 13
Title ""
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
L power:PWR_FLAG #FLG?
U 1 1 5CA6F860
P 1850 2800
AR Path="/5B90A59F/5CA6F860" Ref="#FLG?"  Part="1" 
AR Path="/5D950BDF/5CA6F860" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 1850 2895 50  0001 C CNN
F 1 "PWR_FLAG" V 1850 3100 50  0000 C CNN
F 2 "" H 1850 2800 60  0000 C CNN
F 3 "" H 1850 2800 60  0001 C CNN
	1    1850 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5B5FAE80
P 3900 5350
AR Path="/5B90A59F/5B5FAE80" Ref="R7"  Part="1" 
AR Path="/5D950BDF/5B5FAE80" Ref="R?"  Part="1" 
F 0 "R?" V 3980 5350 40  0000 C CNN
F 1 "5.1K" V 3907 5351 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3830 5350 30  0001 C CNN
F 3 "http://www.susumu.co.jp/common/pdf/n_catalog_partition05_en.pdf" H 3900 5350 30  0001 C CNN
F 4 "RR0816P-512-D" V 3900 5350 50  0001 C CNN "MPN"
F 5 "RES SMD 5.1K OHM 0.5% 1/16W 0603" H -5700 275 50  0001 C CNN "Description"
F 6 "RR08P5.1KDTR-ND" H -5700 275 50  0001 C CNN "DigiKey"
F 7 "Susumu" H -5700 275 50  0001 C CNN "Manufacturer"
F 8 "RT0603BRD075K1L	" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    3900 5350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B5FAEF5
P 3350 5075
F 0 "#PWR?" H 3350 5075 30  0001 C CNN
F 1 "VSS" H 3350 5005 30  0000 C CNN
F 2 "" H 3350 5075 60  0000 C CNN
F 3 "" H 3350 5075 60  0001 C CNN
	1    3350 5075
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 2700 2150 2700
Wire Wire Line
	1850 2700 1850 2800
Wire Wire Line
	2150 2800 1850 2800
Connection ~ 1850 2800
Wire Wire Line
	1850 2800 1850 2900
Wire Wire Line
	2150 2900 1850 2900
Connection ~ 1850 2900
Wire Wire Line
	1850 2900 1850 3000
Wire Wire Line
	2150 3000 1850 3000
Connection ~ 1850 3000
Wire Wire Line
	1850 3000 1850 3100
Wire Wire Line
	3950 3500 3950 3750
Wire Wire Line
	4050 3750 4050 3500
Wire Wire Line
	4250 3750 4250 3500
Wire Wire Line
	4150 3500 4150 3750
Connection ~ 4200 3750
Wire Wire Line
	4200 3750 4250 3750
Wire Wire Line
	4450 3500 4450 3550
Wire Wire Line
	4550 3500 4550 3550
NoConn ~ 2450 3500
NoConn ~ 2550 3500
NoConn ~ 2750 3500
NoConn ~ 2850 3500
NoConn ~ 3050 3500
NoConn ~ 3150 3500
NoConn ~ 3350 3500
NoConn ~ 3450 3500
NoConn ~ 3650 3500
NoConn ~ 3750 3500
$Comp
L Device:R R6
U 1 1 5B5FB101
P 3900 5100
AR Path="/5B90A59F/5B5FB101" Ref="R6"  Part="1" 
AR Path="/5D950BDF/5B5FB101" Ref="R?"  Part="1" 
F 0 "R?" V 3980 5100 40  0000 C CNN
F 1 "5.1K" V 3907 5101 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3830 5100 30  0001 C CNN
F 3 "http://www.susumu.co.jp/common/pdf/n_catalog_partition05_en.pdf" H 3900 5100 30  0001 C CNN
F 4 "RR0816P-512-D" V 3900 5100 50  0001 C CNN "MPN"
F 5 "RES SMD 5.1K OHM 0.5% 1/16W 0603" H -5450 25  50  0001 C CNN "Description"
F 6 "RR08P5.1KDTR-ND" H -5450 25  50  0001 C CNN "DigiKey"
F 7 "Susumu" H -5450 25  50  0001 C CNN "Manufacturer"
F 8 "RT0603BRD075K1L	" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    3900 5100
	0    -1   -1   0   
$EndComp
Text Notes 2200 2050 0    197  ~ 39
USB Type C Mid Connector
Connection ~ 3950 3750
Wire Wire Line
	3950 3750 4050 3750
Connection ~ 3350 5100
Wire Wire Line
	3350 5100 3350 5075
Wire Wire Line
	3350 5350 3350 5100
$Comp
L Keyboard-symbols:USB_C_Receptacle-usb_c_receptacle USB1
U 1 1 5B5FB0C4
P 3750 2900
AR Path="/5B90A59F/5B5FB0C4" Ref="USB1"  Part="1" 
AR Path="/5D950BDF/5B5FB0C4" Ref="USB?"  Part="1" 
F 0 "USB?" V 3809 4329 50  0000 L CNN
F 1 "USB_C_Receptacle" V 3900 4329 50  0000 L CNN
F 2 "Keyboardio:USB-TYPE-C-MIDMOUNT" H 3900 2900 50  0001 C CNN
F 3 "http://www.usb.org/developers/docs/usb_31_033017.zip" H 3900 2900 50  0001 C CNN
F 4 "DX07B024JJ2R1500 " V 3750 2900 50  0001 C CNN "MPN"
F 5 "Mid-mount USB C socket" H 0   0   50  0001 C CNN "Description"
F 6 "JAE" H 0   0   50  0001 C CNN "Manufacturer"
	1    3750 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 3550 4850 3550
Wire Wire Line
	5050 3500 5050 3550
Connection ~ 5050 3550
Wire Wire Line
	5050 3550 5175 3550
Wire Wire Line
	4950 3500 4950 3550
Connection ~ 4950 3550
Wire Wire Line
	4950 3550 5050 3550
Wire Wire Line
	4850 3500 4850 3550
Connection ~ 4850 3550
Wire Wire Line
	4850 3550 4950 3550
Text Label 4550 3550 3    50   ~ 0
CC1
Text Label 4450 3550 3    50   ~ 0
CC2
Text Label 4550 5350 0    50   ~ 0
CC1
Text Label 4550 5100 0    50   ~ 0
CC2
Wire Wire Line
	3950 3750 3950 3900
Wire Wire Line
	4200 3750 4200 3900
Wire Wire Line
	4150 3750 4200 3750
Wire Wire Line
	4750 3500 4750 3550
Wire Wire Line
	4550 5350 4050 5350
Wire Wire Line
	4550 5100 4050 5100
Wire Wire Line
	3750 5100 3350 5100
Wire Wire Line
	3750 5350 3350 5350
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5CA6F862
P 5175 3550
AR Path="/5B90A59F/5CA6F862" Ref="#FLG?"  Part="1" 
AR Path="/5D950BDF/5CA6F862" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 5175 3625 50  0001 C CNN
F 1 "PWR_FLAG" H 5175 3723 50  0000 C CNN
F 2 "" H 5175 3550 50  0001 C CNN
F 3 "~" H 5175 3550 50  0001 C CNN
	1    5175 3550
	-1   0    0    1   
$EndComp
Connection ~ 5175 3550
Wire Wire Line
	5175 3550 5225 3550
$Comp
L power:GND #PWR?
U 1 1 5CA6F861
P 1850 3100
F 0 "#PWR?" H 1850 3100 30  0001 C CNN
F 1 "VSS" H 1850 3030 30  0000 C CNN
F 2 "" H 1850 3100 60  0000 C CNN
F 3 "" H 1850 3100 60  0001 C CNN
	1    1850 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 2600 2150 2600
Text GLabel 5225 3550 2    50   Input ~ 0
USBVBUS
Text GLabel 2050 2600 0    50   Input ~ 0
USBSHIELD
Text GLabel 4200 3900 3    50   Input ~ 0
USB_D-
Text GLabel 3950 3900 3    50   Input ~ 0
USB_D+
$Sheet
S 8200 2475 500  150 
U 5CA5B290
F0 "USB Support" 50
F1 "USB-Support.sch" 50
F2 "USBGND" I R 8700 2550 50 
$EndSheet
Text Label 8800 2550 0    50   ~ 0
USBGND
Wire Wire Line
	8700 2550 8800 2550
Text Label 1850 3000 2    50   ~ 0
USBGND
Text Notes 1500 4200 0    60   ~ 0
USB ESD Protection
$Comp
L Keyboard-symbols:Power_Protection_PRTR5V0U2X-prtr5v0u2x D?
U 1 1 5CA6A217
P 1875 5025
AR Path="/5CA54797/5CA6A217" Ref="D?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5CA6A217" Ref="D?"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5CA6A217" Ref="D?"  Part="1" 
AR Path="/5B90A59E/5CA6A217" Ref="D?"  Part="1" 
AR Path="/5B90A59F/5CA6A217" Ref="ESD1"  Part="1" 
AR Path="/5D950BDF/5CA6A217" Ref="D?"  Part="1" 
F 0 "D?" H 2416 5071 50  0000 L CNN
F 1 "PRTR5V0U2X" H 2050 4625 50  0000 L CNN
F 2 "Keyboardio:PRTR5V0U2X" H 1935 5025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PRTR5V0U2X.pdf" H 1935 5025 50  0001 C CNN
F 4 "PRTR5V0U2X" H 1875 5025 50  0001 C CNN "MPN"
F 5 "TVS DIODE 5.5V SOT143B" H -2925 -125 50  0001 C CNN "Description"
F 6 "1727-3884-2-ND" H -2925 -125 50  0001 C CNN "DigiKey"
F 7 "Nexperia" H -2925 -125 50  0001 C CNN "Manufacturer"
F 8 "PRTR5V0U2X,215	" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    1875 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 4525 1875 4450
Wire Wire Line
	1350 5025 1375 5025
Wire Wire Line
	2375 5025 2675 5025
$Comp
L power:GND #PWR?
U 1 1 5CA6A220
P 1875 5750
AR Path="/5CA54797/5CA6A220" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5CA6A220" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5CA6A220" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59E/5CA6A220" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59F/5CA6A220" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1875 5750 30  0001 C CNN
F 1 "VSS" H 1875 5680 30  0000 C CNN
F 2 "" H 1875 5750 60  0000 C CNN
F 3 "" H 1875 5750 60  0001 C CNN
	1    1875 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 5525 1875 5750
Text GLabel 2675 5025 2    50   Input ~ 0
USB_D+
Text GLabel 1875 4450 0    50   Input ~ 0
USBVBUS
Text GLabel 1350 5025 0    50   Input ~ 0
USB_D-
Text Notes 7525 2050 0    197  ~ 39
USB Support Circuitry
$EndSCHEMATC
