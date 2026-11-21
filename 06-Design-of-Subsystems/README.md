# 06. Design of Subsystems

> Part of [Verilog-HDL-Design-and-Simulation](../README.md) · Author: Anushka Gope

## Overview

Arithmetic subsystems built hierarchically: a 4-bit carry save adder, plus ripple carry and carry look-ahead adders compared by synthesis area and power.

## Designs

| # | Design | Design file | Testbench | Waveform | Reports |
|---|---|---|---|---|---|
| 01 | [4-bit Carry Save Adder](01-4bit-Carry-Save-Adder/README.md) | Corrected | Corrected | Pending | - |
| 02 | [4-bit Ripple Carry Adder (post-lab comparison)](02-4bit-Ripple-Carry-Adder/README.md) | Original | Corrected | Pending | Yes |
| 03 | [4-bit Carry Look-Ahead Adder (post-lab comparison)](03-4bit-Carry-Look-Ahead-Adder/README.md) | Original | Original | Pending | Yes |

"Original" = extracted from the lab documents (formatting only). "Corrected" and "Added" = newly prepared files merged in later (not recovered originals, not simulated); replaced originals are kept in each design's `Original-Source/` folder. "Reference (new)" = newly written to stand in for missing source. "Pending" = not available. "Unverified" = image labels do not match the design.

## Post-Lab: Ripple Carry Adder versus Carry Look-Ahead Adder

The post-lab question asks for a comparison of the area and power reports of the two adders. The figures below are copied from the supplied reports (target: a CoolRunner-II style CPLD; supply 1.80 V). Full reports are in each design's `Synthesis-Reports/` folder.

| Metric | Ripple carry adder (`RCA`) | Carry look-ahead adder (`cla_4`) |
|---|---|---|
| Ports | 14 | 14 |
| Nets | 26 | 25 |
| Macrocells used | 8 / 32 (25%) | 8 / 32 (25%) |
| Product terms used | 26 / 112 (23%) | 25 / 112 (22%) |
| Function block inputs used | 12 / 80 (15%) | 12 / 80 (15%) |
| I/O pins used | 14 / 33 (42%) | 14 / 33 (42%) |
| Total on-chip power | 36.000 uW | 36.000 uW |

The only differences in the supplied reports are one net and one product term (the look-ahead adder uses one fewer of each). Area in macrocells and total power are identical. The source does not give a written conclusion.

## Folder Layout

```text
06-Design-of-Subsystems/
├── README.md
├── 01-4bit-Carry-Save-Adder/
├── 02-4bit-Ripple-Carry-Adder/
├── 03-4bit-Carry-Look-Ahead-Adder/
```

Each design folder contains its own `README.md`, the Verilog source, the testbench and a `Simulation-Results/` folder.
