EESchema Schematic File Version 5
LIBS:kicad-template-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 11
Title ""
Date "2016-05-06"
Rev ""
Comp "Keyboardio"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:L L?
U 1 1 54E4D3C3
P 2100 5000
AR Path="/5CA54797/54E4D3C3" Ref="L?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/54E4D3C3" Ref="L1"  Part="1" 
AR Path="/5B90A59F/5CA5B290/54E4D3C3" Ref="L1"  Part="1" 
F 0 "L1" V 2200 5025 50  0000 C CNN
F 1 "BLM31PG391SN1L" V 2025 5025 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 2100 5000 60  0001 C CNN
F 3 "http://search.murata.co.jp/Ceramy/image/img/PDF/ENG/L0110S0100BLM31P.pdf" H 2100 5000 60  0001 C CNN
F 4 "490-5229-2-ND" H 2100 5000 60  0001 C CNN "DigiKey"
F 5 "Murata" H 2100 5000 60  0001 C CNN "Manufacturer"
F 6 "FERRITE CHIP 390 OHM 2000MA 1206" H 2100 5000 60  0001 C CNN "Description"
F 7 "BLM31PG391SN1L" H 2100 5000 60  0001 C CNN "MPN"
F 8 "BLM31PG391SN1L" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    2100 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 562906B3
P 7025 4575
AR Path="/5CA54797/562906B3" Ref="R?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/562906B3" Ref="R4"  Part="1" 
AR Path="/5B90A59F/5CA5B290/562906B3" Ref="R53"  Part="1" 
F 0 "R4" V 6950 4525 40  0000 C CNN
F 1 "22R" V 7025 4575 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6925 4575 30  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_9.pdf" H 7005 4560 30  0001 C CNN
F 4 "311-22.0HRTR-ND" V 7025 4575 60  0001 C CNN "DigiKey"
F 5 "RC0603FR-0722RL" V 7025 4575 60  0001 C CNN "MPN"
F 6 "Yaego" V 7025 4575 60  0001 C CNN "Manufacturer"
F 7 "RES SMD 22 OHM 1% 1/10W 0603" V 7025 4575 60  0001 C CNN "Description"
F 8 "RC0603FR-0722RL	" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    7025 4575
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 56290BF3
P 7050 5200
AR Path="/5CA54797/56290BF3" Ref="R?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/56290BF3" Ref="R5"  Part="1" 
AR Path="/5B90A59F/5CA5B290/56290BF3" Ref="R54"  Part="1" 
F 0 "R5" V 6950 5150 40  0000 C CNN
F 1 "22R" V 7050 5200 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6950 5200 30  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_9.pdf" H 7050 5200 30  0001 C CNN
F 4 "RES SMD 22 OHM 1% 1/10W 0603" V 7050 5200 60  0001 C CNN "Description"
F 5 "Yaego" V 7050 5200 60  0001 C CNN "Manufacturer"
F 6 "RC0603FR-0722RL" V 7050 5200 60  0001 C CNN "MPN"
F 7 "311-22.0HRTR-ND" V 7050 5200 60  0001 C CNN "DigiKey"
F 8 "RC0603FR-0722RL	" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    7050 5200
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 566B7A90
P 2450 5300
AR Path="/5CA54797/566B7A90" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/566B7A90" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59F/5CA5B290/566B7A90" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2450 5300 30  0001 C CNN
F 1 "GND" H 2450 5250 30  0001 C CNN
F 2 "" H 2425 5295 60  0000 C CNN
F 3 "" H 2425 5295 60  0001 C CNN
	1    2450 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5667E4FB
P 1750 5300
AR Path="/5CA54797/5667E4FB" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5667E4FB" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5667E4FB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1750 5300 30  0001 C CNN
F 1 "GND" H 1750 5250 30  0001 C CNN
F 2 "" H 1740 5295 60  0000 C CNN
F 3 "" H 1740 5295 60  0001 C CNN
	1    1750 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 56760E65
P 3300 4750
AR Path="/5CA54797/56760E65" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/56760E65" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59F/5CA5B290/56760E65" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3300 4600 50  0001 C CNN
F 1 "+5V" H 3300 4890 50  0000 C CNN
F 2 "" H 3300 4750 60  0000 C CNN
F 3 "" H 3300 4750 60  0001 C CNN
	1    3300 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BAC53C8
P 2450 5150
AR Path="/5CA54797/5BAC53C8" Ref="C?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5BAC53C8" Ref="C10"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5BAC53C8" Ref="C10"  Part="1" 
F 0 "C10" H 2475 5200 50  0000 L CNN
F 1 "4.7uF 16V X7R" H 2500 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2450 5150 60  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 2450 5150 60  0001 C CNN
F 4 "311-1883-2-ND" H 2450 5150 60  0001 C CNN "DigiKey"
F 5 "CC0805KKX7R7BB475" H 2450 5150 60  0001 C CNN "MPN"
F 6 "Yaego" H 2450 5150 60  0001 C CNN "Manufacturer"
F 7 "CAP CER 4.7UF 16V X7R 0805" H -175 75  50  0001 C CNN "Description"
F 8 "CL21B475KOFNNNE" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    2450 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 568002EA
P 1750 5150
AR Path="/5CA54797/568002EA" Ref="C?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/568002EA" Ref="C9"  Part="1" 
AR Path="/5B90A59F/5CA5B290/568002EA" Ref="C9"  Part="1" 
F 0 "C9" H 1600 5225 50  0000 L CNN
F 1 "4.7uF 16V X7R" H 1150 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1750 5150 60  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-GPHC_X7R_6.3V-to-50V_18.pdf" H 1750 5150 60  0001 C CNN
F 4 "311-1883-2-ND" H 1750 5150 60  0001 C CNN "DigiKey"
F 5 "CC0805KKX7R7BB475" H 1750 5150 60  0001 C CNN "MPN"
F 6 "Yaego" H 1750 5150 60  0001 C CNN "Manufacturer"
F 7 "CAP CER 4.7UF 16V X7R 0805" H -875 -625 50  0001 C CNN "Description"
F 8 "CL21B475KOFNNNE" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    1750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5250 2450 5300
Wire Wire Line
	2450 5050 2450 5000
Connection ~ 1750 5000
Wire Wire Line
	1750 5300 1750 5250
Connection ~ 2450 5000
Wire Wire Line
	3300 5000 3300 4750
Text GLabel 7200 5200 2    60   Input ~ 0
R_D+
Text GLabel 7175 4575 2    60   Input ~ 0
R_D-
Wire Wire Line
	4125 6400 4125 6350
$Comp
L Device:C_Small C?
U 1 1 5FD0B112
P 6750 5300
AR Path="/5CA54797/5FD0B112" Ref="C?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5FD0B112" Ref="C13"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5FD0B112" Ref="C23"  Part="1" 
F 0 "C13" H 6775 5225 40  0000 L CNN
F 1 "27pF DNP" H 6425 5225 40  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6800 5350 30  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-GP_NP0_16V-to-50V_16.pdf" H 6750 5300 60  0001 C CNN
F 4 "CC0603JRNPO9BN270" H 6750 5300 50  0001 C CNN "MPN"
F 5 "CAP CER 27PF 50V C0G/NP0 0603" H 0   0   50  0001 C CNN "Description"
F 6 "311-1063-1-ND" H 0   0   50  0001 C CNN "DigiKey"
F 7 "Yaego" H 0   0   50  0001 C CNN "Manufacturer"
F 8 "CC0603JRNPO9BN270	" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    6750 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD0B119
P 6750 5450
AR Path="/5CA54797/5FD0B119" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5FD0B119" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5FD0B119" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6750 5450 30  0001 C CNN
F 1 "VSS" H 6750 5380 30  0000 C CNN
F 2 "" H 6750 5450 60  0000 C CNN
F 3 "" H 6750 5450 60  0001 C CNN
	1    6750 5450
	1    0    0    -1  
$EndComp
Text Notes 6875 5800 0    60   ~ 0
Optional slew rate limiting\ncapacitors if needed to pass\nEMI testing
Wire Wire Line
	4125 6900 4125 6700
Text Notes 1850 4750 0    50   ~ 0
Ferrite
Wire Wire Line
	1750 5000 1750 5050
Wire Wire Line
	6750 5400 6750 5450
$Comp
L power:GND #PWR?
U 1 1 5C679C8B
P 6750 4825
AR Path="/5CA54797/5C679C8B" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5C679C8B" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5C679C8B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6750 4825 30  0001 C CNN
F 1 "VSS" H 6750 4755 30  0000 C CNN
F 2 "" H 6750 4825 60  0000 C CNN
F 3 "" H 6750 4825 60  0001 C CNN
	1    6750 4825
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4775 6750 4825
Wire Wire Line
	3825 6600 3825 6900
Wire Wire Line
	3975 6900 3825 6900
Connection ~ 3975 6900
Wire Wire Line
	3975 7050 3975 6900
$Comp
L power:GND #PWR?
U 1 1 5B5FB123
P 3975 7050
AR Path="/5CA54797/5B5FB123" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5B5FB123" Ref="#PWR?"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5B5FB123" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3975 7050 30  0001 C CNN
F 1 "VSS" H 3975 6980 30  0000 C CNN
F 2 "" H 3975 7050 60  0000 C CNN
F 3 "" H 3975 7050 60  0001 C CNN
	1    3975 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 6900 3975 6900
Wire Wire Line
	4125 6350 3825 6350
Wire Wire Line
	3825 6350 3825 6400
$Comp
L Device:C_Small C?
U 1 1 5BAC53C6
P 3825 6500
AR Path="/5CA54797/5BAC53C6" Ref="C?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5BAC53C6" Ref="C11"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5BAC53C6" Ref="C21"  Part="1" 
F 0 "C11" H 3825 6400 50  0000 L CNN
F 1 "10nF 100V" H 3400 6425 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3863 6350 30  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-NP0X7R_MV_100-to-630V_21.pdf" H 3825 6500 60  0001 C CNN
F 4 "311-1475-1-ND" H 3825 6500 60  0001 C CNN "DigiKey"
F 5 "CC0805KRX7R0BB103" H 3825 6500 60  0001 C CNN "MPN"
F 6 "Yaego" H 3825 6500 60  0001 C CNN "Manufacturer"
F 7 "CAP CER 10000PF 100V X7R 0805" H 3825 6500 60  0001 C CNN "Description"
F 8 "GCM21BR72A104KA37L	" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    3825 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BAC53C5
P 4125 6550
AR Path="/5CA54797/5BAC53C5" Ref="R?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5BAC53C5" Ref="R3"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5BAC53C5" Ref="R52"  Part="1" 
F 0 "R3" H 4075 6400 40  0000 C CNN
F 1 "500K" V 4132 6551 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4055 6550 30  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_10.pdf" H 4125 6550 30  0001 C CNN
F 4 "RES SMD 499K OHM 1% 1/10W 0603" H 2625 3750 50  0001 C CNN "Description"
F 5 "311-499KHRTR-ND" H 2625 3750 50  0001 C CNN "DigiKey"
F 6 "RC0603FR-07499KL" H 2625 3750 50  0001 C CNN "MPN"
F 7 "Yaego" H 2625 3750 50  0001 C CNN "Manufacturer"
F 8 "RC0603FR-07499KL	" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    4125 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6265BA6E
P 6750 4675
AR Path="/5CA54797/6265BA6E" Ref="C?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/6265BA6E" Ref="C12"  Part="1" 
AR Path="/5B90A59F/5CA5B290/6265BA6E" Ref="C22"  Part="1" 
F 0 "C12" H 6775 4575 40  0000 L CNN
F 1 "27pF DNP" H 6375 4700 40  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6800 4725 30  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/UPY-GP_NP0_16V-to-50V_16.pdf" H 6750 4675 60  0001 C CNN
F 4 "CC0603JRNPO9BN270" H 6750 4675 50  0001 C CNN "MPN"
F 5 "CAP CER 27PF 50V C0G/NP0 0603" H -125 -250 50  0001 C CNN "Description"
F 6 "311-1063-1-ND" H -125 -250 50  0001 C CNN "DigiKey"
F 7 "Yaego" H -125 -250 50  0001 C CNN "Manufacturer"
F 8 "CC0603JRNPO9BN270	" H 0   0   50  0001 C CNN "Seeed Part Num"
	1    6750 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5000 2450 5000
Wire Wire Line
	1750 5000 1950 5000
Text Notes 1375 5650 0    50   ~ 0
USB Over-voltage protection
$Comp
L Device:Varistor RV?
U 1 1 5C88182E
P 2125 6125
AR Path="/5CA54797/5C88182E" Ref="RV?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5C88182E" Ref="RV1"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5C88182E" Ref="RV1"  Part="1" 
F 0 "RV1" V 1867 6125 50  0000 C CNN
F 1 "V5.5MLA0603NH" V 1958 6125 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2055 6125 50  0001 C CNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/varistors/littelfuse_varistor_mla_datasheet.pdf.pdf" H 2125 6125 50  0001 C CNN
F 4 "Littelfuse" V 2125 6125 50  0001 C CNN "Manufacturer"
F 5 "VARISTOR 8.2V 30A 0603" V 2125 6125 50  0001 C CNN "Description"
F 6 "F3363CT-ND" H 0   0   50  0001 C CNN "DigiKey"
F 7 "V5.5MLA0603NH" H 0   0   50  0001 C CNN "MPN"
	1    2125 6125
	0    1    1    0   
$EndComp
$Comp
L Device:Varistor RV?
U 1 1 5C8898BA
P 2125 6600
AR Path="/5CA54797/5C8898BA" Ref="RV?"  Part="1" 
AR Path="/5B90A59E/5CA5B11A/5C8898BA" Ref="RV2"  Part="1" 
AR Path="/5B90A59F/5CA5B290/5C8898BA" Ref="RV2"  Part="1" 
F 0 "RV2" V 1867 6600 50  0000 C CNN
F 1 "V5.5MLA0603NH" V 1958 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2055 6600 50  0001 C CNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/varistors/littelfuse_varistor_mla_datasheet.pdf.pdf" H 2125 6600 50  0001 C CNN
F 4 "Littelfuse" V 2125 6600 50  0001 C CNN "Manufacturer"
F 5 "VARISTOR 8.2V 30A 0603" V 2125 6600 50  0001 C CNN "Description"
F 6 "F3363CT-ND" H 0   0   50  0001 C CNN "DigiKey"
F 7 "V5.5MLA0603NH" H 0   0   50  0001 C CNN "MPN"
	1    2125 6600
	0    1    1    0   
$EndComp
Text Notes 3250 6150 0    50   ~ 0
RC filter, so the cable doesn't become an antenna\n
Text GLabel 3825 6350 0    50   Input ~ 0
USBSHIELD
Text GLabel 1975 6600 0    50   Input ~ 0
USBVBUS
Text GLabel 2275 6600 2    50   Input ~ 0
USBSHIELD
Text GLabel 2275 6125 2    50   Input ~ 0
USBSHIELD
Text GLabel 1100 5000 0    50   Input ~ 0
USBVBUS
Text Notes 1875 2075 0    157  ~ 0
General purpose USB protection & support circuitry
Wire Wire Line
	1100 5000 1750 5000
Wire Wire Line
	2450 5000 3300 5000
Wire Wire Line
	6400 4575 6750 4575
Wire Wire Line
	6500 5200 6750 5200
Text HLabel 1975 6125 0    50   Input ~ 0
USBGND
Connection ~ 6750 4575
Wire Wire Line
	6750 4575 6875 4575
Connection ~ 6750 5200
Wire Wire Line
	6750 5200 6900 5200
Text GLabel 6500 5200 0    50   Input ~ 0
USB_D+
Text GLabel 6400 4575 0    50   Input ~ 0
USB_D-
$EndSCHEMATC
