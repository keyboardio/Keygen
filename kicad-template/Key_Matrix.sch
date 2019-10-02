EESchema Schematic File Version 5
LIBS:kicad-template-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 13
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
L Keyboard-symbols:Switch_SW_Push SW_7
U 1 1 00000016
P 100 700
F 0 "SW_7" H 100 880 60  0000 C CNN
F 1 "Q" H 100 600 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 100 700 60  0001 C CNN
F 3 "" H 100 700 60  0000 C CNN
	1    100  700 
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_7
U 1 1 00000017
P -150 850
F 0 "D_7" H -200 1000 60  0000 C CNN
F 1 "1N4148" H -150 850 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H -150 850 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H -150 850 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    -150 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	300  700  350  700 
Text GLabel 350  700  2    50   Input ~ 0
ROW1
Text GLabel -150 1000 2    50   Input ~ 0
COL0
Wire Wire Line
	-100 700  -150 700 
$Comp
L Keyboard-symbols:Switch_SW_Push SW_3
U 1 1 0000000A
P 1100 400
F 0 "SW_3" H 1100 580 60  0000 C CNN
F 1 "W" H 1100 300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 1100 400 60  0001 C CNN
F 3 "" H 1100 400 60  0000 C CNN
	1    1100 400 
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_3
U 1 1 0000000B
P 850 550
F 0 "D_3" H 800 700 60  0000 C CNN
F 1 "1N4148" H 850 550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 850 550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 850 550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    850  550 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 400  1350 400 
Text GLabel 1350 400  2    50   Input ~ 0
ROW1
Text GLabel 850  700  2    50   Input ~ 0
COL1
Wire Wire Line
	900  400  850  400 
$Comp
L Keyboard-symbols:Switch_SW_Push SW_1
U 1 1 00000004
P 2100 100
F 0 "SW_1" H 2100 280 60  0000 C CNN
F 1 "E" H 2100 0   60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 2100 100 60  0001 C CNN
F 3 "" H 2100 100 60  0000 C CNN
	1    2100 100 
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_1
U 1 1 00000005
P 1850 250
F 0 "D_1" H 1800 400 60  0000 C CNN
F 1 "1N4148" H 1850 250 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 1850 250 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 1850 250 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    1850 250 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 100  2350 100 
Text GLabel 2350 100  2    50   Input ~ 0
ROW1
Text GLabel 1850 400  2    50   Input ~ 0
COL2
Wire Wire Line
	1900 100  1850 100 
$Comp
L Keyboard-symbols:Switch_SW_Push SW_4
U 1 1 0000000D
P 3100 400
F 0 "SW_4" H 3100 580 60  0000 C CNN
F 1 "R" H 3100 300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 3100 400 60  0001 C CNN
F 3 "" H 3100 400 60  0000 C CNN
	1    3100 400 
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_4
U 1 1 0000000E
P 2850 550
F 0 "D_4" H 2800 700 60  0000 C CNN
F 1 "1N4148" H 2850 550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2850 550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 2850 550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    2850 550 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 400  3350 400 
Text GLabel 3350 400  2    50   Input ~ 0
ROW1
Text GLabel 2850 700  2    50   Input ~ 0
COL3
Wire Wire Line
	2900 400  2850 400 
$Comp
L Keyboard-symbols:Switch_SW_Push SW_9
U 1 1 0000001C
P 4100 800
F 0 "SW_9" H 4100 980 60  0000 C CNN
F 1 "T" H 4100 700 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 4100 800 60  0001 C CNN
F 3 "" H 4100 800 60  0000 C CNN
	1    4100 800 
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_9
U 1 1 0000001D
P 3850 950
F 0 "D_9" H 3800 1100 60  0000 C CNN
F 1 "1N4148" H 3850 950 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3850 950 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 3850 950 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    3850 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 800  4350 800 
Text GLabel 4350 800  2    50   Input ~ 0
ROW1
Text GLabel 3850 1100 2    50   Input ~ 0
COL4
Wire Wire Line
	3900 800  3850 800 
$Comp
L Keyboard-symbols:Switch_SW_Push SW_10
U 1 1 0000001F
P 8100 800
F 0 "SW_10" H 8100 980 60  0000 C CNN
F 1 "Y" H 8100 700 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 8100 800 60  0001 C CNN
F 3 "" H 8100 800 60  0000 C CNN
	1    8100 800 
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_10
U 1 1 00000020
P 7850 950
F 0 "D_10" H 7800 1100 60  0000 C CNN
F 1 "1N4148" H 7850 950 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 7850 950 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 7850 950 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    7850 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 800  8350 800 
Text GLabel 8350 800  2    50   Input ~ 0
ROW1
Text GLabel 7850 1100 2    50   Input ~ 0
COL8
Wire Wire Line
	7900 800  7850 800 
$Comp
L Keyboard-symbols:Switch_SW_Push SW_5
U 1 1 00000010
P 9100 400
F 0 "SW_5" H 9100 580 60  0000 C CNN
F 1 "U" H 9100 300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 9100 400 60  0001 C CNN
F 3 "" H 9100 400 60  0000 C CNN
	1    9100 400 
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_5
U 1 1 00000011
P 8850 550
F 0 "D_5" H 8800 700 60  0000 C CNN
F 1 "1N4148" H 8850 550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 8850 550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 8850 550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    8850 550 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 400  9350 400 
Text GLabel 9350 400  2    50   Input ~ 0
ROW1
Text GLabel 8850 700  2    50   Input ~ 0
COL9
Wire Wire Line
	8900 400  8850 400 
$Comp
L Keyboard-symbols:Switch_SW_Push SW_2
U 1 1 00000007
P 10100 100
F 0 "SW_2" H 10100 280 60  0000 C CNN
F 1 "I" H 10100 0   60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 10100 100 60  0001 C CNN
F 3 "" H 10100 100 60  0000 C CNN
	1    10100 100 
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_2
U 1 1 00000008
P 9850 250
F 0 "D_2" H 9800 400 60  0000 C CNN
F 1 "1N4148" H 9850 250 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 9850 250 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 9850 250 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    9850 250 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10300 100  10350 100 
Text GLabel 10350 100  2    50   Input ~ 0
ROW1
Text GLabel 9850 400  2    50   Input ~ 0
COL10
Wire Wire Line
	9900 100  9850 100 
$Comp
L Keyboard-symbols:Switch_SW_Push SW_6
U 1 1 00000013
P 11100 400
F 0 "SW_6" H 11100 580 60  0000 C CNN
F 1 "O" H 11100 300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 11100 400 60  0001 C CNN
F 3 "" H 11100 400 60  0000 C CNN
	1    11100 400 
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_6
U 1 1 00000014
P 10850 550
F 0 "D_6" H 10800 700 60  0000 C CNN
F 1 "1N4148" H 10850 550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 10850 550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 10850 550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    10850 550 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11300 400  11350 400 
Text GLabel 11350 400  2    50   Input ~ 0
ROW1
Text GLabel 10850 700  2    50   Input ~ 0
COL11
Wire Wire Line
	10900 400  10850 400 
$Comp
L Keyboard-symbols:Switch_SW_Push SW_8
U 1 1 00000019
P 12100 700
F 0 "SW_8" H 12100 880 60  0000 C CNN
F 1 "P" H 12100 600 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 12100 700 60  0001 C CNN
F 3 "" H 12100 700 60  0000 C CNN
	1    12100 700 
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_8
U 1 1 0000001A
P 11850 850
F 0 "D_8" H 11800 1000 60  0000 C CNN
F 1 "1N4148" H 11850 850 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 11850 850 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 11850 850 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    11850 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12300 700  12350 700 
Text GLabel 12350 700  2    50   Input ~ 0
ROW1
Text GLabel 11850 1000 2    50   Input ~ 0
COL12
Wire Wire Line
	11900 700  11850 700 
$Comp
L Keyboard-symbols:Switch_SW_Push SW_17
U 1 1 00000034
P 100 1700
F 0 "SW_17" H 100 1880 60  0000 C CNN
F 1 "A" H 100 1600 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 100 1700 60  0001 C CNN
F 3 "" H 100 1700 60  0000 C CNN
	1    100  1700
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_17
U 1 1 00000035
P -150 1850
F 0 "D_17" H -200 2000 60  0000 C CNN
F 1 "1N4148" H -150 1850 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H -150 1850 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H -150 1850 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    -150 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	300  1700 350  1700
Text GLabel 350  1700 2    50   Input ~ 0
ROW2
Text GLabel -150 2000 2    50   Input ~ 0
COL0
Wire Wire Line
	-100 1700 -150 1700
$Comp
L Keyboard-symbols:Switch_SW_Push SW_13
U 1 1 00000028
P 1100 1400
F 0 "SW_13" H 1100 1580 60  0000 C CNN
F 1 "S" H 1100 1300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 1100 1400 60  0001 C CNN
F 3 "" H 1100 1400 60  0000 C CNN
	1    1100 1400
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_13
U 1 1 00000029
P 850 1550
F 0 "D_13" H 800 1700 60  0000 C CNN
F 1 "1N4148" H 850 1550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 850 1550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 850 1550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    850  1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 1400 1350 1400
Text GLabel 1350 1400 2    50   Input ~ 0
ROW2
Text GLabel 850  1700 2    50   Input ~ 0
COL1
Wire Wire Line
	900  1400 850  1400
$Comp
L Keyboard-symbols:Switch_SW_Push SW_11
U 1 1 00000022
P 2100 1100
F 0 "SW_11" H 2100 1280 60  0000 C CNN
F 1 "D" H 2100 1000 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 2100 1100 60  0001 C CNN
F 3 "" H 2100 1100 60  0000 C CNN
	1    2100 1100
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_11
U 1 1 00000023
P 1850 1250
F 0 "D_11" H 1800 1400 60  0000 C CNN
F 1 "1N4148" H 1850 1250 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 1850 1250 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 1850 1250 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    1850 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 1100 2350 1100
Text GLabel 2350 1100 2    50   Input ~ 0
ROW2
Text GLabel 1850 1400 2    50   Input ~ 0
COL2
Wire Wire Line
	1900 1100 1850 1100
$Comp
L Keyboard-symbols:Switch_SW_Push SW_14
U 1 1 0000002B
P 3100 1400
F 0 "SW_14" H 3100 1580 60  0000 C CNN
F 1 "F" H 3100 1300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 3100 1400 60  0001 C CNN
F 3 "" H 3100 1400 60  0000 C CNN
	1    3100 1400
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_14
U 1 1 0000002C
P 2850 1550
F 0 "D_14" H 2800 1700 60  0000 C CNN
F 1 "1N4148" H 2850 1550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2850 1550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 2850 1550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    2850 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 1400 3350 1400
Text GLabel 3350 1400 2    50   Input ~ 0
ROW2
Text GLabel 2850 1700 2    50   Input ~ 0
COL3
Wire Wire Line
	2900 1400 2850 1400
$Comp
L Keyboard-symbols:Switch_SW_Push SW_19
U 1 1 0000003A
P 4100 1800
F 0 "SW_19" H 4100 1980 60  0000 C CNN
F 1 "G" H 4100 1700 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 4100 1800 60  0001 C CNN
F 3 "" H 4100 1800 60  0000 C CNN
	1    4100 1800
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_19
U 1 1 0000003B
P 3850 1950
F 0 "D_19" H 3800 2100 60  0000 C CNN
F 1 "1N4148" H 3850 1950 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3850 1950 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 3850 1950 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    3850 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 1800 4350 1800
Text GLabel 4350 1800 2    50   Input ~ 0
ROW2
Text GLabel 3850 2100 2    50   Input ~ 0
COL4
Wire Wire Line
	3900 1800 3850 1800
$Comp
L Keyboard-symbols:Switch_SW_Push SW_20
U 1 1 0000003D
P 8100 1800
F 0 "SW_20" H 8100 1980 60  0000 C CNN
F 1 "H" H 8100 1700 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 8100 1800 60  0001 C CNN
F 3 "" H 8100 1800 60  0000 C CNN
	1    8100 1800
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_20
U 1 1 0000003E
P 7850 1950
F 0 "D_20" H 7800 2100 60  0000 C CNN
F 1 "1N4148" H 7850 1950 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 7850 1950 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 7850 1950 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    7850 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 1800 8350 1800
Text GLabel 8350 1800 2    50   Input ~ 0
ROW2
Text GLabel 7850 2100 2    50   Input ~ 0
COL8
Wire Wire Line
	7900 1800 7850 1800
$Comp
L Keyboard-symbols:Switch_SW_Push SW_15
U 1 1 0000002E
P 9100 1400
F 0 "SW_15" H 9100 1580 60  0000 C CNN
F 1 "J" H 9100 1300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 9100 1400 60  0001 C CNN
F 3 "" H 9100 1400 60  0000 C CNN
	1    9100 1400
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_15
U 1 1 0000002F
P 8850 1550
F 0 "D_15" H 8800 1700 60  0000 C CNN
F 1 "1N4148" H 8850 1550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 8850 1550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 8850 1550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    8850 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 1400 9350 1400
Text GLabel 9350 1400 2    50   Input ~ 0
ROW2
Text GLabel 8850 1700 2    50   Input ~ 0
COL9
Wire Wire Line
	8900 1400 8850 1400
$Comp
L Keyboard-symbols:Switch_SW_Push SW_12
U 1 1 00000025
P 10100 1100
F 0 "SW_12" H 10100 1280 60  0000 C CNN
F 1 "K" H 10100 1000 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 10100 1100 60  0001 C CNN
F 3 "" H 10100 1100 60  0000 C CNN
	1    10100 1100
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_12
U 1 1 00000026
P 9850 1250
F 0 "D_12" H 9800 1400 60  0000 C CNN
F 1 "1N4148" H 9850 1250 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 9850 1250 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 9850 1250 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    9850 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10300 1100 10350 1100
Text GLabel 10350 1100 2    50   Input ~ 0
ROW2
Text GLabel 9850 1400 2    50   Input ~ 0
COL10
Wire Wire Line
	9900 1100 9850 1100
$Comp
L Keyboard-symbols:Switch_SW_Push SW_16
U 1 1 00000031
P 11100 1400
F 0 "SW_16" H 11100 1580 60  0000 C CNN
F 1 "L" H 11100 1300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 11100 1400 60  0001 C CNN
F 3 "" H 11100 1400 60  0000 C CNN
	1    11100 1400
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_16
U 1 1 00000032
P 10850 1550
F 0 "D_16" H 10800 1700 60  0000 C CNN
F 1 "1N4148" H 10850 1550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 10850 1550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 10850 1550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    10850 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11300 1400 11350 1400
Text GLabel 11350 1400 2    50   Input ~ 0
ROW2
Text GLabel 10850 1700 2    50   Input ~ 0
COL11
Wire Wire Line
	10900 1400 10850 1400
$Comp
L Keyboard-symbols:Switch_SW_Push SW_18
U 1 1 00000037
P 12100 1700
F 0 "SW_18" H 12100 1880 60  0000 C CNN
F 1 ":" H 12100 1600 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 12100 1700 60  0001 C CNN
F 3 "" H 12100 1700 60  0000 C CNN
	1    12100 1700
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_18
U 1 1 00000038
P 11850 1850
F 0 "D_18" H 11800 2000 60  0000 C CNN
F 1 "1N4148" H 11850 1850 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 11850 1850 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 11850 1850 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    11850 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12300 1700 12350 1700
Text GLabel 12350 1700 2    50   Input ~ 0
ROW2
Text GLabel 11850 2000 2    50   Input ~ 0
COL12
Wire Wire Line
	11900 1700 11850 1700
$Comp
L Keyboard-symbols:Switch_SW_Push SW_27
U 1 1 00000052
P 100 2700
F 0 "SW_27" H 100 2880 60  0000 C CNN
F 1 "Z" H 100 2600 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 100 2700 60  0001 C CNN
F 3 "" H 100 2700 60  0000 C CNN
	1    100  2700
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_27
U 1 1 00000053
P -150 2850
F 0 "D_27" H -200 3000 60  0000 C CNN
F 1 "1N4148" H -150 2850 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H -150 2850 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H -150 2850 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    -150 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	300  2700 350  2700
Text GLabel 350  2700 2    50   Input ~ 0
ROW3
Text GLabel -150 3000 2    50   Input ~ 0
COL0
Wire Wire Line
	-100 2700 -150 2700
$Comp
L Keyboard-symbols:Switch_SW_Push SW_23
U 1 1 00000046
P 1100 2400
F 0 "SW_23" H 1100 2580 60  0000 C CNN
F 1 "X" H 1100 2300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 1100 2400 60  0001 C CNN
F 3 "" H 1100 2400 60  0000 C CNN
	1    1100 2400
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_23
U 1 1 00000047
P 850 2550
F 0 "D_23" H 800 2700 60  0000 C CNN
F 1 "1N4148" H 850 2550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 850 2550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 850 2550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    850  2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 2400 1350 2400
Text GLabel 1350 2400 2    50   Input ~ 0
ROW3
Text GLabel 850  2700 2    50   Input ~ 0
COL1
Wire Wire Line
	900  2400 850  2400
$Comp
L Keyboard-symbols:Switch_SW_Push SW_21
U 1 1 00000040
P 2100 2100
F 0 "SW_21" H 2100 2280 60  0000 C CNN
F 1 "C" H 2100 2000 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 2100 2100 60  0001 C CNN
F 3 "" H 2100 2100 60  0000 C CNN
	1    2100 2100
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_21
U 1 1 00000041
P 1850 2250
F 0 "D_21" H 1800 2400 60  0000 C CNN
F 1 "1N4148" H 1850 2250 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 1850 2250 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 1850 2250 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    1850 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 2100 2350 2100
Text GLabel 2350 2100 2    50   Input ~ 0
ROW3
Text GLabel 1850 2400 2    50   Input ~ 0
COL2
Wire Wire Line
	1900 2100 1850 2100
$Comp
L Keyboard-symbols:Switch_SW_Push SW_24
U 1 1 00000049
P 3100 2400
F 0 "SW_24" H 3100 2580 60  0000 C CNN
F 1 "V" H 3100 2300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 3100 2400 60  0001 C CNN
F 3 "" H 3100 2400 60  0000 C CNN
	1    3100 2400
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_24
U 1 1 0000004A
P 2850 2550
F 0 "D_24" H 2800 2700 60  0000 C CNN
F 1 "1N4148" H 2850 2550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2850 2550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 2850 2550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    2850 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 2400 3350 2400
Text GLabel 3350 2400 2    50   Input ~ 0
ROW3
Text GLabel 2850 2700 2    50   Input ~ 0
COL3
Wire Wire Line
	2900 2400 2850 2400
$Comp
L Keyboard-symbols:Switch_SW_Push SW_29
U 1 1 00000058
P 4100 2800
F 0 "SW_29" H 4100 2980 60  0000 C CNN
F 1 "B" H 4100 2700 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 4100 2800 60  0001 C CNN
F 3 "" H 4100 2800 60  0000 C CNN
	1    4100 2800
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_29
U 1 1 00000059
P 3850 2950
F 0 "D_29" H 3800 3100 60  0000 C CNN
F 1 "1N4148" H 3850 2950 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3850 2950 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 3850 2950 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    3850 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 2800 4350 2800
Text GLabel 4350 2800 2    50   Input ~ 0
ROW3
Text GLabel 3850 3100 2    50   Input ~ 0
COL4
Wire Wire Line
	3900 2800 3850 2800
$Comp
L Keyboard-symbols:Switch_SW_Push SW_31
U 1 1 0000005E
P 5100 3300
F 0 "SW_31" H 5100 3480 60  0000 C CNN
F 1 "Ctrl" H 5100 3200 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 5100 3300 60  0001 C CNN
F 3 "" H 5100 3300 60  0000 C CNN
	1    5100 3300
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_31
U 1 1 0000005F
P 4850 3450
F 0 "D_31" H 4800 3600 60  0000 C CNN
F 1 "1N4148" H 4850 3450 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 4850 3450 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 4850 3450 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    4850 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 3300 5350 3300
Text GLabel 5350 3300 2    50   Input ~ 0
ROW3
Text GLabel 4850 3600 2    50   Input ~ 0
COL5
Wire Wire Line
	4900 3300 4850 3300
$Comp
L Keyboard-symbols:Switch_SW_Push SW_32
U 1 1 00000061
P 7100 3300
F 0 "SW_32" H 7100 3480 60  0000 C CNN
F 1 "Alt" H 7100 3200 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 7100 3300 60  0001 C CNN
F 3 "" H 7100 3300 60  0000 C CNN
	1    7100 3300
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_32
U 1 1 00000062
P 6850 3450
F 0 "D_32" H 6800 3600 60  0000 C CNN
F 1 "1N4148" H 6850 3450 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 6850 3450 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 6850 3450 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    6850 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 3300 7350 3300
Text GLabel 7350 3300 2    50   Input ~ 0
ROW3
Text GLabel 6850 3600 2    50   Input ~ 0
COL7
Wire Wire Line
	6900 3300 6850 3300
$Comp
L Keyboard-symbols:Switch_SW_Push SW_30
U 1 1 0000005B
P 8100 2800
F 0 "SW_30" H 8100 2980 60  0000 C CNN
F 1 "N" H 8100 2700 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 8100 2800 60  0001 C CNN
F 3 "" H 8100 2800 60  0000 C CNN
	1    8100 2800
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_30
U 1 1 0000005C
P 7850 2950
F 0 "D_30" H 7800 3100 60  0000 C CNN
F 1 "1N4148" H 7850 2950 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 7850 2950 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 7850 2950 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    7850 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 2800 8350 2800
Text GLabel 8350 2800 2    50   Input ~ 0
ROW3
Text GLabel 7850 3100 2    50   Input ~ 0
COL8
Wire Wire Line
	7900 2800 7850 2800
$Comp
L Keyboard-symbols:Switch_SW_Push SW_25
U 1 1 0000004C
P 9100 2400
F 0 "SW_25" H 9100 2580 60  0000 C CNN
F 1 "M" H 9100 2300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 9100 2400 60  0001 C CNN
F 3 "" H 9100 2400 60  0000 C CNN
	1    9100 2400
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_25
U 1 1 0000004D
P 8850 2550
F 0 "D_25" H 8800 2700 60  0000 C CNN
F 1 "1N4148" H 8850 2550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 8850 2550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 8850 2550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    8850 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 2400 9350 2400
Text GLabel 9350 2400 2    50   Input ~ 0
ROW3
Text GLabel 8850 2700 2    50   Input ~ 0
COL9
Wire Wire Line
	8900 2400 8850 2400
$Comp
L Keyboard-symbols:Switch_SW_Push SW_22
U 1 1 00000043
P 10100 2100
F 0 "SW_22" H 10100 2280 60  0000 C CNN
F 1 "< / ," H 10100 2000 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 10100 2100 60  0001 C CNN
F 3 "" H 10100 2100 60  0000 C CNN
	1    10100 2100
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_22
U 1 1 00000044
P 9850 2250
F 0 "D_22" H 9800 2400 60  0000 C CNN
F 1 "1N4148" H 9850 2250 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 9850 2250 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 9850 2250 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    9850 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10300 2100 10350 2100
Text GLabel 10350 2100 2    50   Input ~ 0
ROW3
Text GLabel 9850 2400 2    50   Input ~ 0
COL10
Wire Wire Line
	9900 2100 9850 2100
$Comp
L Keyboard-symbols:Switch_SW_Push SW_26
U 1 1 0000004F
P 11100 2400
F 0 "SW_26" H 11100 2580 60  0000 C CNN
F 1 "> / ," H 11100 2300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 11100 2400 60  0001 C CNN
F 3 "" H 11100 2400 60  0000 C CNN
	1    11100 2400
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_26
U 1 1 00000050
P 10850 2550
F 0 "D_26" H 10800 2700 60  0000 C CNN
F 1 "1N4148" H 10850 2550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 10850 2550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 10850 2550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    10850 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11300 2400 11350 2400
Text GLabel 11350 2400 2    50   Input ~ 0
ROW3
Text GLabel 10850 2700 2    50   Input ~ 0
COL11
Wire Wire Line
	10900 2400 10850 2400
$Comp
L Keyboard-symbols:Switch_SW_Push SW_28
U 1 1 00000055
P 12100 2700
F 0 "SW_28" H 12100 2880 60  0000 C CNN
F 1 "/" H 12100 2600 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 12100 2700 60  0001 C CNN
F 3 "" H 12100 2700 60  0000 C CNN
	1    12100 2700
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_28
U 1 1 00000056
P 11850 2850
F 0 "D_28" H 11800 3000 60  0000 C CNN
F 1 "1N4148" H 11850 2850 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 11850 2850 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 11850 2850 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    11850 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12300 2700 12350 2700
Text GLabel 12350 2700 2    50   Input ~ 0
ROW3
Text GLabel 11850 3000 2    50   Input ~ 0
COL12
Wire Wire Line
	11900 2700 11850 2700
$Comp
L Keyboard-symbols:Switch_SW_Push SW_39
U 1 1 00000076
P 100 3600
F 0 "SW_39" H 100 3780 60  0000 C CNN
F 1 "Esc" H 100 3500 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 100 3600 60  0001 C CNN
F 3 "" H 100 3600 60  0000 C CNN
	1    100  3600
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_39
U 1 1 00000077
P -150 3750
F 0 "D_39" H -200 3900 60  0000 C CNN
F 1 "1N4148" H -150 3750 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H -150 3750 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H -150 3750 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    -150 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	300  3600 350  3600
Text GLabel 350  3600 2    50   Input ~ 0
ROW4
Text GLabel -150 3900 2    50   Input ~ 0
COL0
Wire Wire Line
	-100 3600 -150 3600
$Comp
L Keyboard-symbols:Switch_SW_Push SW_35
U 1 1 0000006A
P 1100 3400
F 0 "SW_35" H 1100 3580 60  0000 C CNN
F 1 "Tab" H 1100 3300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 1100 3400 60  0001 C CNN
F 3 "" H 1100 3400 60  0000 C CNN
	1    1100 3400
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_35
U 1 1 0000006B
P 850 3550
F 0 "D_35" H 800 3700 60  0000 C CNN
F 1 "1N4148" H 850 3550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 850 3550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 850 3550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    850  3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 3400 1350 3400
Text GLabel 1350 3400 2    50   Input ~ 0
ROW4
Text GLabel 850  3700 2    50   Input ~ 0
COL1
Wire Wire Line
	900  3400 850  3400
$Comp
L Keyboard-symbols:Switch_SW_Push SW_33
U 1 1 00000064
P 2100 3100
F 0 "SW_33" H 2100 3280 60  0000 C CNN
F 1 "Super" H 2100 3000 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 2100 3100 60  0001 C CNN
F 3 "" H 2100 3100 60  0000 C CNN
	1    2100 3100
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_33
U 1 1 00000065
P 1850 3250
F 0 "D_33" H 1800 3400 60  0000 C CNN
F 1 "1N4148" H 1850 3250 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 1850 3250 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 1850 3250 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    1850 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 3100 2350 3100
Text GLabel 2350 3100 2    50   Input ~ 0
ROW4
Text GLabel 1850 3400 2    50   Input ~ 0
COL2
Wire Wire Line
	1900 3100 1850 3100
$Comp
L Keyboard-symbols:Switch_SW_Push SW_36
U 1 1 0000006D
P 3100 3400
F 0 "SW_36" H 3100 3580 60  0000 C CNN
F 1 "Shift" H 3100 3300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 3100 3400 60  0001 C CNN
F 3 "" H 3100 3400 60  0000 C CNN
	1    3100 3400
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_36
U 1 1 0000006E
P 2850 3550
F 0 "D_36" H 2800 3700 60  0000 C CNN
F 1 "1N4148" H 2850 3550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2850 3550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 2850 3550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    2850 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 3400 3350 3400
Text GLabel 3350 3400 2    50   Input ~ 0
ROW4
Text GLabel 2850 3700 2    50   Input ~ 0
COL3
Wire Wire Line
	2900 3400 2850 3400
$Comp
L Keyboard-symbols:Switch_SW_Push SW_41
U 1 1 0000007C
P 4100 3700
F 0 "SW_41" H 4100 3880 60  0000 C CNN
F 1 "Bksp" H 4100 3600 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 4100 3700 60  0001 C CNN
F 3 "" H 4100 3700 60  0000 C CNN
	1    4100 3700
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_41
U 1 1 0000007D
P 3850 3850
F 0 "D_41" H 3800 4000 60  0000 C CNN
F 1 "1N4148" H 3850 3850 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3850 3850 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 3850 3850 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    3850 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 3700 4350 3700
Text GLabel 4350 3700 2    50   Input ~ 0
ROW4
Text GLabel 3850 4000 2    50   Input ~ 0
COL4
Wire Wire Line
	3900 3700 3850 3700
$Comp
L Keyboard-symbols:Switch_SW_Push SW_42
U 1 1 0000007F
P 8100 3700
F 0 "SW_42" H 8100 3880 60  0000 C CNN
F 1 "Space" H 8100 3600 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 8100 3700 60  0001 C CNN
F 3 "" H 8100 3700 60  0000 C CNN
	1    8100 3700
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_42
U 1 1 00000080
P 7850 3850
F 0 "D_42" H 7800 4000 60  0000 C CNN
F 1 "1N4148" H 7850 3850 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 7850 3850 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 7850 3850 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    7850 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 3700 8350 3700
Text GLabel 8350 3700 2    50   Input ~ 0
ROW4
Text GLabel 7850 4000 2    50   Input ~ 0
COL8
Wire Wire Line
	7900 3700 7850 3700
$Comp
L Keyboard-symbols:Switch_SW_Push SW_37
U 1 1 00000070
P 9100 3400
F 0 "SW_37" H 9100 3580 60  0000 C CNN
F 1 "Fn" H 9100 3300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 9100 3400 60  0001 C CNN
F 3 "" H 9100 3400 60  0000 C CNN
	1    9100 3400
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_37
U 1 1 00000071
P 8850 3550
F 0 "D_37" H 8800 3700 60  0000 C CNN
F 1 "1N4148" H 8850 3550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 8850 3550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 8850 3550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    8850 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 3400 9350 3400
Text GLabel 9350 3400 2    50   Input ~ 0
ROW4
Text GLabel 8850 3700 2    50   Input ~ 0
COL9
Wire Wire Line
	8900 3400 8850 3400
$Comp
L Keyboard-symbols:Switch_SW_Push SW_34
U 1 1 00000067
P 10100 3100
F 0 "SW_34" H 10100 3280 60  0000 C CNN
F 1 "_ / -" H 10100 3000 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 10100 3100 60  0001 C CNN
F 3 "" H 10100 3100 60  0000 C CNN
	1    10100 3100
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_34
U 1 1 00000068
P 9850 3250
F 0 "D_34" H 9800 3400 60  0000 C CNN
F 1 "1N4148" H 9850 3250 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 9850 3250 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 9850 3250 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    9850 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10300 3100 10350 3100
Text GLabel 10350 3100 2    50   Input ~ 0
ROW4
Text GLabel 9850 3400 2    50   Input ~ 0
COL10
Wire Wire Line
	9900 3100 9850 3100
$Comp
L Keyboard-symbols:Switch_SW_Push SW_38
U 1 1 00000073
P 11100 3400
F 0 "SW_38" H 11100 3580 60  0000 C CNN
F 1 "'" H 11100 3300 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 11100 3400 60  0001 C CNN
F 3 "" H 11100 3400 60  0000 C CNN
	1    11100 3400
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_38
U 1 1 00000074
P 10850 3550
F 0 "D_38" H 10800 3700 60  0000 C CNN
F 1 "1N4148" H 10850 3550 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 10850 3550 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 10850 3550 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    10850 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11300 3400 11350 3400
Text GLabel 11350 3400 2    50   Input ~ 0
ROW4
Text GLabel 10850 3700 2    50   Input ~ 0
COL11
Wire Wire Line
	10900 3400 10850 3400
$Comp
L Keyboard-symbols:Switch_SW_Push SW_40
U 1 1 00000079
P 12100 3600
F 0 "SW_40" H 12100 3780 60  0000 C CNN
F 1 "Enter" H 12100 3500 60  0000 C CNN
F 2 "Keyboardio:MX-KailhClip-1.00u" H 12100 3600 60  0001 C CNN
F 3 "" H 12100 3600 60  0000 C CNN
	1    12100 3600
	-1   0    0    1   
$EndComp
$Comp
L Keyboard-symbols:Device_D D_40
U 1 1 0000007A
P 11850 3750
F 0 "D_40" H 11800 3900 60  0000 C CNN
F 1 "1N4148" H 11850 3750 60  0001 C CNN
F 2 "Diode_SMD:D_SOD-123" H 11850 3750 60  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30086.pdf" H 11850 3750 60  0000 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 0   0   50  0001 C CNN "Description"
F 5 "1N4148W-FDITR-ND" H 0   0   50  0001 C CNN "DigiKey"
F 6 "1N4148W-7-F" H 0   0   50  0001 C CNN "MPN"
F 7 "Diodes Inc" H 0   0   50  0001 C CNN "Manufacturer"
	1    11850 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12300 3600 12350 3600
Text GLabel 12350 3600 2    50   Input ~ 0
ROW4
Text GLabel 11850 3900 2    50   Input ~ 0
COL12
Wire Wire Line
	11900 3600 11850 3600
$EndSCHEMATC
