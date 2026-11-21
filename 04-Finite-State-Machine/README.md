# 04. Finite State Machine

> Part of [Verilog-HDL-Design-and-Simulation](../README.md) · Author: Anushka Gope

## Overview

Finite state machines: a coin-operated vending machine, and Moore and Mealy sequence detectors.

## Designs

| # | Design | Design file | Testbench | Waveform | Reports |
|---|---|---|---|---|---|
| 01 | [Vending Machine FSM (Moore)](01-Vending-Machine/README.md) | Original | Original | Yes | - |
| 02 | [Moore FSM Sequence Detector](02-Moore-Sequence-Detector/README.md) | Original | Original | Yes | - |
| 03 | [Mealy FSM Sequence Detector](03-Mealy-Sequence-Detector/README.md) | Original | Original | Unverified | - |

"Original" = extracted from the lab documents (formatting only). "Corrected" and "Added" = newly prepared files merged in later (not recovered originals, not simulated); replaced originals are kept in each design's `Original-Source/` folder. "Reference (new)" = newly written to stand in for missing source. "Pending" = not available. "Unverified" = image labels do not match the design.

## Folder Layout

```text
04-Finite-State-Machine/
├── README.md
├── 01-Vending-Machine/
├── 02-Moore-Sequence-Detector/
├── 03-Mealy-Sequence-Detector/
```

Each design folder contains its own `README.md`, the Verilog source, the testbench and a `Simulation-Results/` folder.
