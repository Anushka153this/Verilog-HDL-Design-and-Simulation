# 07. Carry Skip Adder

> Part of [Verilog-HDL-Design-and-Simulation](../README.md) · Author: Anushka Gope

## Overview

A 4-bit carry skip adder with area, delay and power reports and a post-lab comparison with a carry save adder.

## Designs

| # | Design | Design file | Testbench | Waveform | Reports |
|---|---|---|---|---|---|
| 01 | [4-bit Carry Skip Adder](01-4bit-Carry-Skip-Adder/README.md) | Corrected | Corrected | Yes | Yes |

"Original" = extracted from the lab documents (formatting only). "Corrected" and "Added" = newly prepared files merged in later (not recovered originals, not simulated); replaced originals are kept in each design's `Original-Source/` folder. "Reference (new)" = newly written to stand in for missing source. "Pending" = not available. "Unverified" = image labels do not match the design.

## Post-Lab Reports

The post-lab compares area, delay and power of the carry skip adder with a carry save adder. The raw reports are in the design's [`Synthesis-Reports/`](01-4bit-Carry-Skip-Adder/Synthesis-Reports/) folder. From the actual reports:

| Metric | Carry skip adder (`csa` in the source) | Carry save adder (report in source) |
|---|---|---|
| I/Os | 14 | 17 |
| BELS (cells) | 25 | 100 |
| Estimated power (1.80 V) | 37.800 uW | 37.800 uW |
| Longest pad-to-pad delay | 13.400 ns | 13.400 ns |

The code of the carry save adder behind the second report is not in the source documents. The separate "Expected Comparison" table in the source disagrees with these reports and is kept in its own file with a caution.

## Folder Layout

```text
07-Carry-Skip-Adder/
├── README.md
├── 01-4bit-Carry-Skip-Adder/
```

Each design folder contains its own `README.md`, the Verilog source, the testbench and a `Simulation-Results/` folder.
