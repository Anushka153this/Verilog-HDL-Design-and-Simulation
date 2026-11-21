# Post-lab: carry save adder versus carry skip adder reports

Reproduced from the source documents; markup artefacts removed, content unchanged. The report for the carry save adder was produced from a design whose code is **not** in the source documents.

```text
# POST LAB QUESTIONS:
## Compare the area, delay and power report of Carry skip adder and Carry save adder. Carry Save Adder:
Area Report:
=========================================================================
		*	Final Report	*
=========================================================================
Final Results
			RTL Top Level Output File Name		: carry_save_adder.ngr Top Level Output File Name	: carry_save_adder Output Format	: NGC
	Optimization Goal	: Speed
	Keep Hierarchy	: YES
	Target Technology	: acr2
	Macro Preserve	: YES
	XOR Preserve	: YES
	Clock Enable	: YES
	wysiwyg	: NO
Design Statistics
	# IOs	17
Macro Statistics :
	# Xors	17
		#	1-bit xor2	17
Cell Usage :
	# BELS	100
		#	AND2	41
		#	AND4	1
		#	INV	32
		#	OR2	18
		#	XOR2	8
	# IO Buffers	17
| # | IBUF | : 12 |
| --- | --- | --- |
| # | OBUF | : 5 |
CPU : 1.10 / 1.40 s | Elapsed : 1.00 / 2.00 s
## Delay Report:
Data Sheet Report
| Source Pad | Destination Pad | Delay |
| --- | --- | --- |
| A<0> | Sum<2> | 13.400 |
| A<0> | Sum<4> | 13.400 |
| A<1> | Sum<2> | 13.400 |
| A<1> | Sum<4> | 13.400 |
| A<2> | Sum<2> | 13.400 |
| A<2> | Sum<3> | 13.400 |
| A<2> | Sum<4> | 13.400 |
| B<0> | Sum<2> | 13.400 |
| B<0> | Sum<4> | 13.400 |
| B<1> | Sum<2> | 13.400 |
| B<1> | Sum<4> | 13.400 |
| B<2> | Sum<2> | 13.400 |
| B<2> | Sum<3> | 13.400 |
| B<2> | Sum<4> | 13.400 |
| C<0> | Sum<2> | 13.400 |
| C<0> | Sum<4> | 13.400 |
| A<0> | Sum<3> | 12.900 |
| A<1> | Sum<3> | 12.900 |
| B<0> | Sum<3> | 12.900 |
| B<1> | Sum<3> | 12.900 |
| C<0> | Sum<3> | 12.900 |
| --- | --- | --- |
| C<1> | Sum<2> | 12.900 |
| C<1> | Sum<4> | 12.900 |
| C<2> | Sum<2> | 12.900 |
| C<2> | Sum<3> | 12.900 |
| C<2> | Sum<4> | 12.900 |
| C<1> | Sum<3> | 12.400 |
| A<0> | Sum<1> | 9.700 |
| A<1> | Sum<1> | 9.700 |
| A<3> | Sum<3> | 9.700 |
| A<3> | Sum<4> | 9.700 |
| B<0> | Sum<1> | 9.700 |
| B<1> | Sum<1> | 9.700 |
| B<3> | Sum<3> | 9.700 |
| B<3> | Sum<4> | 9.700 |
| C<0> | Sum<1> | 9.700 |
| C<1> | Sum<1> | 9.200 |
| C<3> | Sum<3> | 9.200 |
| C<3> | Sum<4> | 9.200 |
| A<0> | Sum<0> | 6.000 |
| B<0> | Sum<0> | 6.000 |
| C<0> | Sum<0> | 5.500 |
# POWER REPORT
Release 7.1i - XPower SoftwareVersion:H.38
	Copyright (c) 1995-2005 Xilinx, Inc. All rights reserved. Design:	carry_save
	Part:	XC2C32A-4VQ44
	Vcc:	1.80V
	Default Ext. Load: 10.00pF Data version:	PREVIEW,1.0
XPower and Datasheet may have some Quiescent Current differences.
This is due to the fact that the quiescent numbers in XPower are based on measurements of real designs with active functional elements reflecting real world design scenarios.
		Power summary:	I(uA)	P(uW)
Total estimated power consumption:
		Vcc 1.80V:	21.000	37.800
---
		Global Resources:	0.000	0.000
| Zia: | 0.000 | 0.000 |
| --- | --- | --- |
| Clocks: | 0.000 | 0.000 |
| Signals: | 0.000 | 0.000 |
		Output Loads:	0.000	0.000
		Inputs:	0.000	0.000
		Function Blocks:	0.000	0.000
---
		Quiescent Vcc 1.80V:	21.000	37.800 Thermal summary:
Estimated junction temperature: 25.0C Ambient temp: 25.0C
Case temp: 25.0C Theta J-A: 0.0C/W
DataGATE and CoolCLOCK were not used in this design, see Xilinx Appnote XAPP377 to reduce power consumption!
Analysis completed: Mon Sep 28 15:35:04 2026
## Carry Skip Adder AREA REPORT
=========================================================================
		*	Final Report	*
=========================================================================
Final Results
			RTL Top Level Output File Name		: csa.ngr Top Level Output File Name	: csa Output Format	: NGC
	Optimization Goal	: Speed
	Keep Hierarchy	: YES
	Target Technology	: acr2
	Macro Preserve	: YES
	XOR Preserve	: YES
	Clock Enable	: YES
	wysiwyg	: NO
Design Statistics
	# IOs	14
Macro Statistics :
	# Xors	8
		#	1-bit xor2	8
Cell Usage :
	# BELS	25
		#	AND2	10
		#	AND4	1
		#	INV	1
		#	OR2	5
		#	XOR2	8
	# IO Buffers	14
		#	IBUF	9
		#	OBUF	5
=========================================================================
CPU : 1.31 / 2.29 s | Elapsed : 1.00 / 2.00 s Total memory usage is 154072 kilobytes Number of errors : 0 ( 0 filtered) Number of warnings : 3 ( 0 filtered) Number of infos : 0 ( 0 filtered)
## Delay Report:
| Source Pad | Destination Pad | Delay |
| --- | --- | --- |
| A<0> | Cout | 13.400 |
| A<0> | Sum<1> | 13.400 |
| A<0> | Sum<2> | 13.400 |
| A<0> | Sum<3> | 13.400 |
| A<1> | Cout | 13.400 |
| A<1> | Sum<2> | 13.400 |
| A<1> | Sum<3> | 13.400 |
| B<0> | Cout | 13.400 |
| B<0> | Sum<1> | 13.400 |
| B<0> | Sum<2> | 13.400 |
| B<0> | Sum<3> | 13.400 |
| B<1> | Cout | 13.400 |
| B<1> | Sum<2> | 13.400 |
| B<1> | Sum<3> | 13.400 |
| A<0> | Sum<0> | 9.700 |
| A<1> | Sum<1> | 9.700 |
| --- | --- | --- |
| A<2> | Cout | 9.700 |
| A<2> | Sum<2> | 9.700 |
| A<2> | Sum<3> | 9.700 |
| B<0> | Sum<0> | 9.700 |
| B<1> | Sum<1> | 9.700 |
| B<2> | Cout | 9.700 |
| B<2> | Sum<2> | 9.700 |
| B<2> | Sum<3> | 9.700 |
| Cin | Cout | 9.700 |
| Cin | Sum<1> | 9.700 |
| Cin | Sum<2> | 9.700 |
| Cin | Sum<3> | 9.700 |
| A<3> | Cout | 9.200 |
| A<3> | Sum<3> | 9.200 |
| B<3> | Cout | 9.200 |
| B<3> | Sum<3> | 9.200 |
| Cin | Sum<0> | 6.000 |
## Power Report:
Release 7.1i - XPower SoftwareVersion:H.38
	Copyright (c) 1995-2005 Xilinx, Inc. All rights reserved. Design:	carry_skip
	Part:	XC2C32A-4VQ44
	Vcc:	1.80V
Default Ext. Load: 10.00pF
	Data version:	PREVIEW,1.0
XPower and Datasheet may have some Quiescent Current differences.
This is due to the fact that the quiescent numbers in XPower are based on measurements of real designs with active functional elements reflecting real world design scenarios.
		Power summary:	I(uA)	P(uW)
Total estimated power consumption:
		Vcc 1.80V:	21.000	37.800
---
		Global Resources:	0.000	0.000
| Zia: | 0.000 | 0.000 |
| --- | --- | --- |
| Clocks: | 0.000 | 0.000 |
| Signals: | 0.000 | 0.000 |
		Output Loads:	0.000	0.000
		Inputs:	0.000	0.000
		Function Blocks:	0.000	0.000
---
		Quiescent Vcc 1.80V:	21.000	37.800 Thermal summary:
Estimated junction temperature: 25.0C Ambient temp: 25.0C
Case temp: 25.0C Theta J-A: 0.0C/W
DataGATE and CoolCLOCK were not used in this design, see Xilinx Appnote XAPP377 to reduce power consumption!
Analysis completed: Mon Sep 28 15:32:29 2026
```
