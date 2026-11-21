# Half Adder

> **Topic 01: Combinational Circuit Design** · Author: Anushka Gope

## Purpose

Implements the half adder, the basic building block for binary addition. It adds two single-bit inputs and produces a sum bit and a carry bit.

## Working Principle

Dataflow model using continuous assignments: `sum = a ^ b` (XOR) and `carry = a & b` (AND). The testbench holds each of the four input combinations (00, 01, 10, 11) for 100 ns.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `a` | 1 | First addend bit |
| `b` | 1 | Second addend bit |

### Outputs

| Port | Width | Description |
|---|---|---|
| `sum` | 1 | a XOR b |
| `carry` | 1 | a AND b |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`half_adder.v`](half_adder.v) | `ha_df` | Original |
| Testbench | [`half_adder_tb.v`](half_adder_tb.v) | `ha_df_tb_v` | Original |

## Simulation Results

**ModelSim waveform of `ha_df_tb_v`**

![ModelSim waveform of `ha_df_tb_v`](Simulation-Results/waveform.png)

The waveform shows `a`, `b`, `sum` and `carry` for the four input combinations. `sum` is high for the two single-input cases and `carry` is high only when both inputs are 1.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

None found by static review of the supplied code.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** No problems found by static reading.

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
