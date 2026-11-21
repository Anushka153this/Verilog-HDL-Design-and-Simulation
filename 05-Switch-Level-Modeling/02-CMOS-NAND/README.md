# CMOS NAND Gate

> **Topic 05: Switch-Level Modeling** · Author: Anushka Gope

## Purpose

Models a 2-input CMOS NAND gate at switch level.

## Working Principle

Pull-up network: two PMOS transistors in parallel from `vdd` to `out`. Pull-down network: two NMOS transistors in series from `out` through an internal node to `gnd`. The output is low only when both inputs are high.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `in_a` | 1 | Input A |
| `in_b` | 1 | Input B |

### Outputs

| Port | Width | Description |
|---|---|---|
| `out` | 1 | NAND output |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`cmos_nand.v`](cmos_nand.v) | `cmos_nand` | Original |
| Testbench | [`cmos_nand_tb.v`](cmos_nand_tb.v) | `cmos_nand_tb_v` | Original |

## Simulation Results

**ModelSim waveform of `cmos_nand_tb_v`**

![ModelSim waveform of `cmos_nand_tb_v`](Simulation-Results/waveform.png)

The waveform shows `in_a`, `in_b` and `out` over the 400 ns run.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

None found by static review of the supplied code.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Compiles on its own by static reading.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim cmos_nand.v cmos_nand_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
