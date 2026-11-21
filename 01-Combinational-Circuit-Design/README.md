# 01. Combinational Circuit Design

> Part of [Verilog-HDL-Design-and-Simulation](../README.md) · Author: Anushka Gope

## Overview

Basic adders and decoders built from gate-level, dataflow and behavioural Verilog: half adder, full adder, 4-bit ripple carry adder, 3-to-8 decoder and 4-to-16 decoder.

## Designs

| # | Design | Design file | Testbench | Waveform | Reports |
|---|---|---|---|---|---|
| 01 | [Half Adder](01-Half-Adder/README.md) | Original | Original | Yes | - |
| 02 | [Full Adder (built from two half adders)](02-Full-Adder/README.md) | Original | Original | Yes | - |
| 03 | [4-bit Ripple Carry Adder](03-Ripple-Carry-Adder-4bit/README.md) | Original | Original | Yes | - |
| 04 | [3-to-8 Decoder with Enable](04-Decoder-3x8/README.md) | Original | Added | Yes | - |
| 05 | [4-to-16 Decoder (built from two 3x8 decoders)](05-Decoder-4x16/README.md) | Original | Original | Yes | - |

"Original" = extracted from the lab documents (formatting only). "Corrected" and "Added" = newly prepared files merged in later (not recovered originals, not simulated); replaced originals are kept in each design's `Original-Source/` folder. "Reference (new)" = newly written to stand in for missing source. "Pending" = not available. "Unverified" = image labels do not match the design.

## Folder Layout

```text
01-Combinational-Circuit-Design/
├── README.md
├── 01-Half-Adder/
├── 02-Full-Adder/
├── 03-Ripple-Carry-Adder-4bit/
├── 04-Decoder-3x8/
├── 05-Decoder-4x16/
```

Each design folder contains its own `README.md`, the Verilog source, the testbench and a `Simulation-Results/` folder.
