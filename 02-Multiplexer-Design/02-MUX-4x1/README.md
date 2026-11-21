# 4-to-1 Multiplexer

> **Topic 02: Multiplexer Design** · Author: Anushka Gope

## Purpose

Implements a 4-to-1 multiplexer.

## Working Principle

Behavioural model: an `always @(i, s)` block with a `case` on the 2-bit select chooses `i[0]`..`i[3]`. The testbench applies four data patterns (0000, 1010, 1100, 1111), sweeping `s` through 00..11 for each, with 10 ns per step.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `i` | 4 | Data inputs |
| `s` | 2 | Select |

### Outputs

| Port | Width | Description |
|---|---|---|
| `y` | 1 | Selected data bit (reg) |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`mux_4x1.v`](mux_4x1.v) | `mux_4x1` | Original |
| Testbench | [`mux_4x1_tb.v`](mux_4x1_tb.v) | `mux_4x1_tb_v` | Original |

## Simulation Results

**ModelSim waveform of `mux_4x1_tb_v`**

![ModelSim waveform of `mux_4x1_tb_v`](Simulation-Results/waveform.png)

The waveform shows `i`, `s` and `y` across the four data patterns.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

None found by static review of the supplied code.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Compiles on its own by static reading.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim mux_4x1.v mux_4x1_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
