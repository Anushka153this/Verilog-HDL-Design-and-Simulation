# 8-to-1 Multiplexer (from two 4x1 and one 2x1)

> **Topic 02: Multiplexer Design** · Author: Anushka Gope

## Purpose

Implements an 8-to-1 multiplexer hierarchically from two 4-to-1 multiplexers and one 2-to-1 multiplexer.

## Working Principle

`m1` selects among `i[3:0]` and `m2` among `i[7:4]`, both using `s[1:0]`. The 2-to-1 multiplexer `m3` then picks between their outputs using `s[2]`. The testbench applies four data patterns (00000000, 10101010, 11001100, 11110000), sweeping all eight select values for each.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `i` | 8 | Data inputs |
| `s` | 3 | Select |

### Outputs

| Port | Width | Description |
|---|---|---|
| `y` | 1 | Selected data bit |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`mux_8x1.v`](mux_8x1.v) | `mux_8x1` | Original |
| Testbench | [`mux_8x1_tb.v`](mux_8x1_tb.v) | `mux_8x1_tb_v` | Original |

**Dependencies**

- `mux_4x1`: [`../02-MUX-4x1/mux_4x1.v`](../02-MUX-4x1/mux_4x1.v)
- `mux_2x1`: [`../01-MUX-2x1/mux_2x1.v`](../01-MUX-2x1/mux_2x1.v)

## Simulation Results

**ModelSim waveform of `mux_8x1_tb_v`**

![ModelSim waveform of `mux_8x1_tb_v`](Simulation-Results/waveform.png)

The waveform shows `i`, `s` and `y` across the four data patterns.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

None found by static review of the supplied code.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Requires `mux_4x1.v` and `mux_2x1.v` from the sibling folders.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim ../02-MUX-4x1/mux_4x1.v ../01-MUX-2x1/mux_2x1.v mux_8x1.v mux_8x1_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
