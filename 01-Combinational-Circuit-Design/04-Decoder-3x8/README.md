# 3-to-8 Decoder with Enable

> **Topic 01: Combinational Circuit Design** · Author: Anushka Gope

## Purpose

Implements a 3-to-8 line decoder with an active-high enable. It is used as the building block of the 4-to-16 decoder.

## Working Principle

Behavioural model using an `always @(*)` block and a `case` on `{A2, A1, A0}`. When `E = 0` all outputs are 0; when `E = 1` exactly one output bit `Y[n]` is set, where `n` is the binary value of the address inputs.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `E` | 1 | Enable (active high) |
| `A2` | 1 | Address bit 2 (MSB) |
| `A1` | 1 | Address bit 1 |
| `A0` | 1 | Address bit 0 (LSB) |

### Outputs

| Port | Width | Description |
|---|---|---|
| `Y` | 8 | One-hot decoded output (reg) |

## Source Files

**Origin key.** *Original*: extracted from the lab documents (formatting only). *Corrected (new)* and *Added (new)*: newly prepared files merged in later; they are not recovered originals and have not been simulated. *Added (reference implementation)*: newly written to stand in for missing source.

| Role | File | Top module | Origin | Note |
|---|---|---|---|---|
| Design | [`decoder3x8.v`](decoder3x8.v) | `decoder3x8` | Original |  |
| Testbench | [`decoder3x8_tb.v`](decoder3x8_tb.v) | `decoder3x8_tb` | Added (new) | Fills the missing testbench; not simulated |

## Simulation Results

**ModelSim waveform of `decoder3x8_tb` (its testbench code was not in the source)**

![ModelSim waveform of `decoder3x8_tb` (its testbench code was not in the source)](Simulation-Results/waveform.png)

**Waveform (original lab capture).** The supplied waveform is from a testbench named `decoder3x8_tb` whose code was not in the source documents. It shows `E`, `A2`, `A1`, `A0` and `Y[7:0]` over a 90 ns run. The added testbench below has the same module name and signal set and also ends at 90 ns (10 ns disabled, then 8 x 10 ns), so the picture looks consistent with it, but it is **not** claimed to be the output of the added file.

**Added testbench (`decoder3x8_tb.v`).** With `E = 0` it checks that `Y` is zero; with `E = 1` it steps through all eight address codes and compares `Y` with `8'b00000001 << i`, printing a `PASS` or `FAIL` line per case. Not simulated: no simulator was available, so no pass/fail result is claimed for the added files.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

**Resolved by the added / corrected files**

- Missing testbench: `decoder3x8_tb.v` was added (newly written, not recovered).

**Still open or worth knowing**

- The original 3x8 testbench code was never recovered. `decoder3x8_tb.v` is a newly written replacement, not the original.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Static port/name check of `decoder3x8.v` with `decoder3x8_tb.v`: no problems found.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim decoder3x8.v decoder3x8_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
