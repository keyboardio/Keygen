EESchema Schematic File Version 5
LIBS:kicad-template-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 13
Title ""
Date ""
Rev ""
Comp ""
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
U 1 1 5680904E
P 4325 2975
F 0 "#FLG?" H 4325 3070 50  0001 C CNN
F 1 "PWR_FLAG" H 4325 3155 50  0000 C CNN
F 2 "" H 4325 2975 60  0000 C CNN
F 3 "" H 4325 2975 60  0001 C CNN
	1    4325 2975
	-1   0    0    1   
$EndComp
Wire Wire Line
	3825 3375 3825 3475
Text Notes 2200 2050 0    197  ~ 39
USB Micro B Connector
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5C73A20F
P 3825 3375
F 0 "#FLG?" H 3825 3450 50  0001 C CNN
F 1 "PWR_FLAG" H 3825 3548 50  0000 C CNN
F 2 "" H 3825 3375 50  0001 C CNN
F 3 "~" H 3825 3375 50  0001 C CNN
	1    3825 3375
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5B5FB0CB
P 3825 3475
F 0 "#PWR?" H 3825 3475 30  0001 C CNN
F 1 "VSS" H 3825 3405 30  0000 C CNN
F 2 "" H 3825 3475 60  0000 C CNN
F 3 "" H 3825 3475 60  0001 C CNN
	1    3825 3475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3775 3375 3825 3375
Connection ~ 3825 3375
Wire Wire Line
	3775 2975 4325 2975
$Comp
L OPL_Connector:MICRO-USB-SMD-B-_10118193-0001LF_ USB1
U 1 1 5CA578F9
P 3225 3175
F 0 "USB1" H 3250 3629 45  0000 C CNN
F 1 "MICRO-USB-SMD-B-_10118193-0001LF_" H 3250 3545 45  0000 C CNN
F 2 "OPL_Connector:MICRO-USB5+6P-SMD-0.65-B" H 3225 3175 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/18/10118193-1361773.pdf" H 3225 3175 50  0001 C CNN
F 4 "10118193-0001LF" H 3255 3325 20  0001 C CNN "MPN"
F 5 "320010003" H 3255 3325 20  0001 C CNN "SKU"
F 6 "Amphenol" H 3225 3175 50  0001 C CNN "Manufactuer"
F 7 "USB Connectors 5P MICRO USB TYPE B RECEPTACLE W/ PEGS" H 3225 3175 50  0001 C CNN "Description"
	1    3225 3175
	1    0    0    -1  
$EndComp
Wire Wire Line
	2725 3025 2725 3125
Wire Wire Line
	2725 3125 2725 3225
Connection ~ 2725 3125
Wire Wire Line
	2725 3225 2725 3325
Connection ~ 2725 3225
NoConn ~ 3775 3275
Text GLabel 4325 2975 2    50   Input ~ 0
USBVBUS
Text GLabel 3775 3175 2    50   Input ~ 0
USB_D+
Text GLabel 3775 3075 2    50   Input ~ 0
USB_D-
Text GLabel 2725 3025 0    50   Input ~ 0
USBSHIELD
$Sheet
S 8750 3100 500  150 
U 5CA5B11A
F0 "USB Support " 50
F1 "USB-Support.sch" 50
F2 "USBGND" I R 9250 3150 50 
$EndSheet
Text Label 9350 3150 0    50   ~ 0
USBGND
Wire Wire Line
	9250 3150 9350 3150
Text Label 3825 3475 3    50   ~ 0
USBGND
Text Notes 6725 2650 0    60   ~ 0
USB ESD Protection
$Comp
L Keyboard-symbols:Power_Protection_PRTR5V0U2X-prtr5v0u2x D?
U 1 1 5CAAB6BE
P 7100 3475
AR Path="/5CA54797/5CAAB6BE" Ref="D?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5CAAB6BE" Ref="D?"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5CAAB6BE" Ref="D?"  Part="1" 
AR Path="/5B90A59E/5CAAB6BE" Ref="ESD1"  Part="1" 
F 0 "ESD1" H 7641 3521 50  0000 L CNN
F 1 "PRTR5V0U2X" H 7275 3075 50  0000 L CNN
F 2 "Keyboardio:PRTR5V0U2X" H 7160 3475 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PRTR5V0U2X.pdf" H 7160 3475 50  0001 C CNN
F 4 "PRTR5V0U2X" H 7100 3475 50  0001 C CNN "MPN"
F 5 "TVS DIODE 5.5V SOT143B" H 2300 -1675 50  0001 C CNN "Description"
F 6 "1727-3884-2-ND" H 2300 -1675 50  0001 C CNN "DigiKey"
F 7 "Nexperia" H 2300 -1675 50  0001 C CNN "Manufacturer"
F 8 "PRTR5V0U2X,215	" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    7100 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2975 7100 2900
Wire Wire Line
	6575 3475 6600 3475
Wire Wire Line
	7600 3475 7900 3475
$Comp
L power:GND #PWR?
U 1 1 5CAAB6C7
P 7100 4200
AR Path="/5CA54797/5CAAB6C7" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5CAAB6C7" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5CAAB6C7" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59E/5CAAB6C7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7100 4200 30  0001 C CNN
F 1 "VSS" H 7100 4130 30  0000 C CNN
F 2 "" H 7100 4200 60  0000 C CNN
F 3 "" H 7100 4200 60  0001 C CNN
	1    7100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3975 7100 4200
Text GLabel 6575 3475 0    50   Input ~ 0
USB_D+
Text GLabel 7100 2900 0    50   Input ~ 0
USBVBUS
Text GLabel 7900 3475 2    50   Input ~ 0
USB_D-
Text Notes 6625 2125 0    197  ~ 39
USB Support Circuitry
$EndSCHEMATC
