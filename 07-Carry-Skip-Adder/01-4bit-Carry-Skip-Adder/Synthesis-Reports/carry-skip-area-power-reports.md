# Carry skip adder: area and power reports (main lab)

Reproduced from the source documents; markup artefacts removed, content unchanged.

```text
# AREA REPORT
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
| # IOs Macro Statistics : | : 14 |
| --- | --- |
| # Xors | : 8 |
| # 1-bit xor2 | : 8 |
| Cell Usage : |  |
| # BELS | : 25 |
| # AND2 | : 10 |
| # AND4 | : 1 |
| # INV | : 1 |
| # OR2 | : 5 |
| # XOR2 | : 8 |
| # IO Buffers | : 14 |
| # IBUF | : 9 |
| # OBUF | : 5 |
=========================================================================
CPU : 1.31 / 2.29 s | Elapsed : 1.00 / 2.00 s Total memory usage is 154072 kilobytes Number of errors : 0 ( 0 filtered) Number of warnings : 3 ( 0 filtered) Number of infos : 0 ( 0 filtered)
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
