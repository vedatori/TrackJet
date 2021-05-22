EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L 74xx:74HC595 U13
U 1 1 60222614
P 2600 1300
F 0 "U13" H 2400 2000 50  0000 C CNN
F 1 "74HC595" H 2350 1900 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2600 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2600 1300 50  0001 C CNN
F 4 "C5947" H 2600 1300 50  0001 C CNN "LCSC"
	1    2600 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0237
U 1 1 6022B3C3
P 2600 700
F 0 "#PWR0237" H 2600 550 50  0001 C CNN
F 1 "+3V3" H 2615 873 50  0000 C CNN
F 2 "" H 2600 700 50  0001 C CNN
F 3 "" H 2600 700 50  0001 C CNN
	1    2600 700 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0241
U 1 1 6022C2F9
P 2600 2000
F 0 "#PWR0241" H 2600 1750 50  0001 C CNN
F 1 "GND" H 2605 1827 50  0000 C CNN
F 2 "" H 2600 2000 50  0001 C CNN
F 3 "" H 2600 2000 50  0001 C CNN
	1    2600 2000
	1    0    0    -1  
$EndComp
Text HLabel 2200 900  0    50   Input ~ 0
REG_DAT
Text HLabel 2200 1100 0    50   Input ~ 0
REG_CLK
Text HLabel 2200 1500 0    50   Input ~ 0
REG_OE
Text HLabel 2200 1400 0    50   Input ~ 0
REG_LAT
$Comp
L power:+3V3 #PWR0239
U 1 1 6022D229
P 1750 1200
F 0 "#PWR0239" H 1750 1050 50  0001 C CNN
F 1 "+3V3" H 1765 1373 50  0000 C CNN
F 2 "" H 1750 1200 50  0001 C CNN
F 3 "" H 1750 1200 50  0001 C CNN
	1    1750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1200 1750 1200
$Comp
L 74xx:74HC595 U14
U 1 1 60230575
P 2600 3200
F 0 "U14" H 2400 3900 50  0000 C CNN
F 1 "74HC595" H 2350 3800 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2600 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2600 3200 50  0001 C CNN
F 4 "C5947" H 2600 3200 50  0001 C CNN "LCSC"
	1    2600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0242
U 1 1 6023057B
P 2600 2600
F 0 "#PWR0242" H 2600 2450 50  0001 C CNN
F 1 "+3V3" H 2615 2773 50  0000 C CNN
F 2 "" H 2600 2600 50  0001 C CNN
F 3 "" H 2600 2600 50  0001 C CNN
	1    2600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0252
U 1 1 60230581
P 2600 3900
F 0 "#PWR0252" H 2600 3650 50  0001 C CNN
F 1 "GND" H 2605 3727 50  0000 C CNN
F 2 "" H 2600 3900 50  0001 C CNN
F 3 "" H 2600 3900 50  0001 C CNN
	1    2600 3900
	1    0    0    -1  
$EndComp
Text HLabel 2200 3000 0    50   Input ~ 0
REG_CLK
Text HLabel 2200 3400 0    50   Input ~ 0
REG_OE
Text HLabel 2200 3300 0    50   Input ~ 0
REG_LAT
$Comp
L power:+3V3 #PWR0247
U 1 1 6023058B
P 1750 3100
F 0 "#PWR0247" H 1750 2950 50  0001 C CNN
F 1 "+3V3" H 1765 3273 50  0000 C CNN
F 2 "" H 1750 3100 50  0001 C CNN
F 3 "" H 1750 3100 50  0001 C CNN
	1    1750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3100 1750 3100
Wire Wire Line
	2200 2800 1950 2800
Wire Wire Line
	1950 2800 1950 2300
Wire Wire Line
	1950 2300 3000 2300
Wire Wire Line
	3000 2300 3000 1800
Text HLabel 3000 900  2    50   Input ~ 0
REG_OUT_1
Text HLabel 3000 1000 2    50   Input ~ 0
REG_OUT_2
Text HLabel 3000 1100 2    50   Input ~ 0
REG_OUT_3
Text HLabel 3000 1200 2    50   Input ~ 0
REG_OUT_4
Text HLabel 3000 1300 2    50   Input ~ 0
REG_OUT_5
Text HLabel 3000 1400 2    50   Input ~ 0
REG_OUT_6
Text HLabel 3000 1500 2    50   Input ~ 0
REG_OUT_7
Text HLabel 3000 1600 2    50   Input ~ 0
REG_OUT_8
Text HLabel 3000 2800 2    50   Input ~ 0
REG_OUT_9
Text HLabel 3000 2900 2    50   Input ~ 0
REG_OUT_10
NoConn ~ 3000 3700
$Comp
L Analog_Switch:CD4051B U15
U 1 1 6027581C
P 4250 3800
F 0 "U15" H 4150 4600 50  0000 C CNN
F 1 "CD4051B" H 4050 4500 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4400 3050 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 4230 3900 50  0001 C CNN
F 4 "C21379" H 4250 3800 50  0001 C CNN "LCSC"
	1    4250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3300 3000 3300
Wire Wire Line
	3000 3400 3750 3400
Wire Wire Line
	3750 3500 3000 3500
$Comp
L power:GND #PWR0255
U 1 1 6027D2B5
P 4250 4500
F 0 "#PWR0255" H 4250 4250 50  0001 C CNN
F 1 "GND" H 4255 4327 50  0000 C CNN
F 2 "" H 4250 4500 50  0001 C CNN
F 3 "" H 4250 4500 50  0001 C CNN
	1    4250 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0248
U 1 1 6027DE37
P 4350 3100
F 0 "#PWR0248" H 4350 2950 50  0001 C CNN
F 1 "+3V3" H 4365 3273 50  0000 C CNN
F 2 "" H 4350 3100 50  0001 C CNN
F 3 "" H 4350 3100 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0254
U 1 1 6027FEF8
P 4150 4500
F 0 "#PWR0254" H 4150 4250 50  0001 C CNN
F 1 "GND" H 4155 4327 50  0000 C CNN
F 2 "" H 4150 4500 50  0001 C CNN
F 3 "" H 4150 4500 50  0001 C CNN
	1    4150 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6028456C
P 600 3300
AR Path="/600F65F0/6028456C" Ref="C?"  Part="1" 
AR Path="/6028456C" Ref="C?"  Part="1" 
AR Path="/60221A9C/6028456C" Ref="C60"  Part="1" 
F 0 "C60" H 715 3346 50  0000 L CNN
F 1 "100n" H 715 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 638 3150 50  0001 C CNN
F 3 "~" H 600 3300 50  0001 C CNN
F 4 "C14663" H 600 3300 50  0001 C CNN "LCSC"
	1    600  3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  3150 600  2850
$Comp
L power:GND #PWR?
U 1 1 60284573
P 600 3700
AR Path="/600F65F0/60284573" Ref="#PWR?"  Part="1" 
AR Path="/60284573" Ref="#PWR?"  Part="1" 
AR Path="/60221A9C/60284573" Ref="#PWR0250"  Part="1" 
F 0 "#PWR0250" H 600 3450 50  0001 C CNN
F 1 "GND" H 605 3527 50  0000 C CNN
F 2 "" H 600 3700 50  0001 C CNN
F 3 "" H 600 3700 50  0001 C CNN
	1    600  3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  3450 600  3700
$Comp
L power:+3V3 #PWR?
U 1 1 6028457A
P 600 2850
AR Path="/6028457A" Ref="#PWR?"  Part="1" 
AR Path="/60221A9C/6028457A" Ref="#PWR0243"  Part="1" 
F 0 "#PWR0243" H 600 2700 50  0001 C CNN
F 1 "+3V3" H 615 3023 50  0000 C CNN
F 2 "" H 600 2850 50  0001 C CNN
F 3 "" H 600 2850 50  0001 C CNN
	1    600  2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60284F0D
P 600 1350
AR Path="/600F65F0/60284F0D" Ref="C?"  Part="1" 
AR Path="/60284F0D" Ref="C?"  Part="1" 
AR Path="/60221A9C/60284F0D" Ref="C59"  Part="1" 
F 0 "C59" H 715 1396 50  0000 L CNN
F 1 "100n" H 715 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 638 1200 50  0001 C CNN
F 3 "~" H 600 1350 50  0001 C CNN
F 4 "C14663" H 600 1350 50  0001 C CNN "LCSC"
	1    600  1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  1200 600  900 
$Comp
L power:GND #PWR?
U 1 1 60284F14
P 600 1750
AR Path="/600F65F0/60284F14" Ref="#PWR?"  Part="1" 
AR Path="/60284F14" Ref="#PWR?"  Part="1" 
AR Path="/60221A9C/60284F14" Ref="#PWR0240"  Part="1" 
F 0 "#PWR0240" H 600 1500 50  0001 C CNN
F 1 "GND" H 605 1577 50  0000 C CNN
F 2 "" H 600 1750 50  0001 C CNN
F 3 "" H 600 1750 50  0001 C CNN
	1    600  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  1500 600  1750
$Comp
L power:+3V3 #PWR?
U 1 1 60284F1B
P 600 900
AR Path="/60284F1B" Ref="#PWR?"  Part="1" 
AR Path="/60221A9C/60284F1B" Ref="#PWR0238"  Part="1" 
F 0 "#PWR0238" H 600 750 50  0001 C CNN
F 1 "+3V3" H 615 1073 50  0000 C CNN
F 2 "" H 600 900 50  0001 C CNN
F 3 "" H 600 900 50  0001 C CNN
	1    600  900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60285C09
P 1500 3900
AR Path="/600F65F0/60285C09" Ref="C?"  Part="1" 
AR Path="/60285C09" Ref="C?"  Part="1" 
AR Path="/60221A9C/60285C09" Ref="C61"  Part="1" 
F 0 "C61" H 1615 3946 50  0000 L CNN
F 1 "100n" H 1615 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1538 3750 50  0001 C CNN
F 3 "~" H 1500 3900 50  0001 C CNN
F 4 "C14663" H 1500 3900 50  0001 C CNN "LCSC"
	1    1500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3750 1500 3450
$Comp
L power:GND #PWR?
U 1 1 60285C10
P 1500 4300
AR Path="/600F65F0/60285C10" Ref="#PWR?"  Part="1" 
AR Path="/60285C10" Ref="#PWR?"  Part="1" 
AR Path="/60221A9C/60285C10" Ref="#PWR0253"  Part="1" 
F 0 "#PWR0253" H 1500 4050 50  0001 C CNN
F 1 "GND" H 1505 4127 50  0000 C CNN
F 2 "" H 1500 4300 50  0001 C CNN
F 3 "" H 1500 4300 50  0001 C CNN
	1    1500 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4050 1500 4300
$Comp
L power:+3V3 #PWR?
U 1 1 60285C17
P 1500 3450
AR Path="/60285C17" Ref="#PWR?"  Part="1" 
AR Path="/60221A9C/60285C17" Ref="#PWR0249"  Part="1" 
F 0 "#PWR0249" H 1500 3300 50  0001 C CNN
F 1 "+3V3" H 1515 3623 50  0000 C CNN
F 2 "" H 1500 3450 50  0001 C CNN
F 3 "" H 1500 3450 50  0001 C CNN
	1    1500 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0251
U 1 1 60288E83
P 3750 3800
F 0 "#PWR0251" H 3750 3550 50  0001 C CNN
F 1 "GND" H 3755 3627 50  0000 C CNN
F 2 "" H 3750 3800 50  0001 C CNN
F 3 "" H 3750 3800 50  0001 C CNN
	1    3750 3800
	1    0    0    -1  
$EndComp
Text HLabel 3750 3700 0    50   Input ~ 0
Analog_MUX
Text HLabel 4750 3600 2    50   Input ~ 0
Analog_IN_1
Text HLabel 4750 3700 2    50   Input ~ 0
Analog_IN_2
Text HLabel 4750 3800 2    50   Input ~ 0
Analog_IN_3
Text HLabel 4750 3900 2    50   Input ~ 0
Analog_IN_4
Text HLabel 4750 4000 2    50   Input ~ 0
Analog_IN_5
Text HLabel 4750 4100 2    50   Input ~ 0
Analog_IN_6
Text HLabel 4750 4200 2    50   Input ~ 0
Analog_IN_7
Text HLabel 4750 4300 2    50   Input ~ 0
Analog_IN_8
Wire Wire Line
	3000 3100 3650 3100
Wire Wire Line
	3650 3100 3650 2250
$Comp
L Device:R R42
U 1 1 6032512B
P 4200 2250
F 0 "R42" V 3993 2250 50  0000 C CNN
F 1 "220R" V 4084 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4130 2250 50  0001 C CNN
F 3 "~" H 4200 2250 50  0001 C CNN
	1    4200 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R43
U 1 1 603254F5
P 4200 2550
F 0 "R43" V 3993 2550 50  0000 C CNN
F 1 "220R" V 4084 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4130 2550 50  0001 C CNN
F 3 "~" H 4200 2550 50  0001 C CNN
	1    4200 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2250 3650 2250
Wire Wire Line
	4050 2550 3700 2550
Wire Wire Line
	3700 2550 3700 3200
Wire Wire Line
	3700 3200 3000 3200
$Comp
L Device:LED D?
U 1 1 60328E8A
P 4550 2700
AR Path="/600F65F0/60328E8A" Ref="D?"  Part="1" 
AR Path="/60221A9C/60328E8A" Ref="D32"  Part="1" 
F 0 "D32" H 4600 2600 50  0000 R CNN
F 1 "LED" H 4700 2500 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4550 2700 50  0001 C CNN
F 3 "~" H 4550 2700 50  0001 C CNN
	1    4550 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 603290F6
P 4900 2700
AR Path="/600F65F0/603290F6" Ref="D?"  Part="1" 
AR Path="/60221A9C/603290F6" Ref="D33"  Part="1" 
F 0 "D33" H 4950 2600 50  0000 R CNN
F 1 "LED" H 5050 2500 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4900 2700 50  0001 C CNN
F 3 "~" H 4900 2700 50  0001 C CNN
	1    4900 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0244
U 1 1 60329EF7
P 4550 2850
F 0 "#PWR0244" H 4550 2600 50  0001 C CNN
F 1 "GND" H 4555 2677 50  0000 C CNN
F 2 "" H 4550 2850 50  0001 C CNN
F 3 "" H 4550 2850 50  0001 C CNN
	1    4550 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0245
U 1 1 6032A44D
P 4900 2850
F 0 "#PWR0245" H 4900 2600 50  0001 C CNN
F 1 "GND" H 4905 2677 50  0000 C CNN
F 2 "" H 4900 2850 50  0001 C CNN
F 3 "" H 4900 2850 50  0001 C CNN
	1    4900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2550 4350 2550
Wire Wire Line
	4900 2250 4900 2550
Wire Wire Line
	4350 2250 4900 2250
Text HLabel 3000 3000 2    50   Input ~ 0
REG_OUT_11
$Comp
L Sergej_Library:KYX-1088AS D?
U 1 1 60487612
P 7000 3900
F 0 "D?" H 7675 5093 60  0000 C CNN
F 1 "KYX-1088AS" H 7675 4987 60  0000 C CNN
F 2 "Sergej_Library:KYX-1088AS" H 7675 4881 60  0000 C CNN
F 3 "" H 7100 3850 60  0000 C CNN
	1    7000 3900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 604897BD
P 2600 5100
F 0 "U?" H 2400 5800 50  0000 C CNN
F 1 "74HC595" H 2350 5700 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2600 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2600 5100 50  0001 C CNN
F 4 "C5947" H 2600 5100 50  0001 C CNN "LCSC"
	1    2600 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604897C3
P 2600 5800
F 0 "#PWR?" H 2600 5550 50  0001 C CNN
F 1 "GND" H 2605 5627 50  0000 C CNN
F 2 "" H 2600 5800 50  0001 C CNN
F 3 "" H 2600 5800 50  0001 C CNN
	1    2600 5800
	1    0    0    -1  
$EndComp
Text HLabel 2200 4900 0    50   Input ~ 0
REG_CLK
Text HLabel 2200 5300 0    50   Input ~ 0
REG_OE
Text HLabel 2200 5200 0    50   Input ~ 0
REG_LAT
Wire Wire Line
	2200 5000 1750 5000
Wire Wire Line
	2200 4700 1950 4700
Wire Wire Line
	1950 4700 1950 4200
$Comp
L 74xx:74HC595 U?
U 1 1 6048ADC7
P 2600 6850
F 0 "U?" H 2400 7550 50  0000 C CNN
F 1 "74HC595" H 2350 7450 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2600 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2600 6850 50  0001 C CNN
F 4 "C5947" H 2600 6850 50  0001 C CNN "LCSC"
	1    2600 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6048ADCD
P 2600 7550
F 0 "#PWR?" H 2600 7300 50  0001 C CNN
F 1 "GND" H 2605 7377 50  0000 C CNN
F 2 "" H 2600 7550 50  0001 C CNN
F 3 "" H 2600 7550 50  0001 C CNN
	1    2600 7550
	1    0    0    -1  
$EndComp
Text HLabel 2200 6650 0    50   Input ~ 0
REG_CLK
Text HLabel 2200 7050 0    50   Input ~ 0
REG_OE
Text HLabel 2200 6950 0    50   Input ~ 0
REG_LAT
Wire Wire Line
	2200 6750 1750 6750
Wire Wire Line
	2200 6450 1950 6450
$Comp
L power:+5V #PWR?
U 1 1 6048C608
P 2600 4500
F 0 "#PWR?" H 2600 4350 50  0001 C CNN
F 1 "+5V" H 2615 4673 50  0000 C CNN
F 2 "" H 2600 4500 50  0001 C CNN
F 3 "" H 2600 4500 50  0001 C CNN
	1    2600 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6048CAFA
P 2600 6250
F 0 "#PWR?" H 2600 6100 50  0001 C CNN
F 1 "+5V" H 2615 6423 50  0000 C CNN
F 2 "" H 2600 6250 50  0001 C CNN
F 3 "" H 2600 6250 50  0001 C CNN
	1    2600 6250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
