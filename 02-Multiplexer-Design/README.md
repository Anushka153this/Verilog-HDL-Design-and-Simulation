# 02. Multiplexer Design

> Part of [Verilog-HDL-Design-and-Simulation](../README.md) · Author: Anushka Gope

## Overview

2-to-1, 4-to-1 and 8-to-1 multiplexers (the 8-to-1 is built hierarchically) and a 4-bit ALU with eight operations.

## Designs

| # | Design | Design file | Testbench | Waveform | Reports |
|---|---|---|---|---|---|
| 01 | [2-to-1 Multiplexer](01-MUX-2x1/README.md) | Original | Original | Yes | - |
| 02 | [4-to-1 Multiplexer](02-MUX-4x1/README.md) | Original | Original | Yes | - |
| 03 | [8-to-1 Multiplexer (from two 4x1 and one 2x1)](03-MUX-8x1/README.md) | Original | Original | Yes | - |
| 04 | [4-bit ALU](04-ALU-4bit/README.md) | Original | Original | Pending | - |

"Original" = extracted from the lab documents (formatting only). "Corrected" and "Added" = newly prepared files merged in later (not recovered originals, not simulated); replaced originals are kept in each design's `Original-Source/` folder. "Reference (new)" = newly written to stand in for missing source. "Pending" = not available. "Unverified" = image labels do not match the design.

## Folder Layout

```text
02-Multiplexer-Design/
├── README.md
├── 01-MUX-2x1/
├── 02-MUX-4x1/
├── 03-MUX-8x1/
├── 04-ALU-4bit/
```

Each design folder contains its own `README.md`, the Verilog source, the testbench and a `Simulation-Results/` folder.
