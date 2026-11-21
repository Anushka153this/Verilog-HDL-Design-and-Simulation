# 4-to-16 Decoder (built from two 3x8 decoders)

> **Topic 01: Combinational Circuit Design** · Author: Anushka Gope

## Purpose

Implements a 4-to-16 line decoder by combining two 3-to-8 decoders, demonstrating hierarchical design.

## Working Principle

The upper address bit `A3` selects which 3-to-8 decoder is enabled: `D0` is enabled by `~A3` and drives `Y[7:0]`; `D1` is enabled by `A3` and drives `Y[15:8]`. The remaining bits `A2..A0` go to both decoders. The testbench steps through all 16 input codes, 10 ns each, then calls `$stop`.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `A3` | 1 | Address bit 3 (MSB) |
| `A2` | 1 | Address bit 2 |
| `A1` | 1 | Address bit 1 |
| `A0` | 1 | Address bit 0 (LSB) |

### Outputs

| Port | Width | Description |
|---|---|---|
| `Y` | 16 | One-hot decoded output |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`decoder4x16.v`](decoder4x16.v) | `decoder4x16` | Original |
| Testbench | [`decoder4x16_tb.v`](decoder4x16_tb.v) | `decoder4x16_tb` | Original |

**Dependencies**

- `decoder3x8`: [`../04-Decoder-3x8/decoder3x8.v`](../04-Decoder-3x8/decoder3x8.v)

## Simulation Results

**ModelSim waveform of `decoder4x16_tb`**

![ModelSim waveform of `decoder4x16_tb`](Simulation-Results/waveform.png)

The waveform shows `A3..A0` counting through all 16 codes and `Y[15:0]` moving one hot bit per step.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

None found by static review of the supplied code.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Requires `decoder3x8.v` from the sibling folder.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim ../04-Decoder-3x8/decoder3x8.v decoder4x16.v decoder4x16_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
