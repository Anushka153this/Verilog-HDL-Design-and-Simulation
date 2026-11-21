# 4-bit Carry Look-Ahead Adder (post-lab comparison)

> **Topic 06: Design of Subsystems** · Author: Anushka Gope

## Purpose

4-bit carry look-ahead adder used for the post-lab area/power comparison against the ripple carry adder.

## Working Principle

Generate and propagate signals `g = a & b` and `p = a ^ b` are formed for every bit. All carries `c[1]..c[4]` are then written directly as sum-of-products expressions of `g`, `p` and `cin`, so they do not wait for a ripple. The sum is `p ^ c[3:0]` and `cout = c[4]`.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `a` | 4 | Operand A |
| `b` | 4 | Operand B |
| `cin` | 1 | Carry in |

### Outputs

| Port | Width | Description |
|---|---|---|
| `sum` | 4 | Sum |
| `cout` | 1 | Carry out |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`cla_4bit.v`](cla_4bit.v) | `cla_4` | Original |
| Testbench | [`cla_4bit_tb.v`](cla_4bit_tb.v) | `tb_cla_v` | Original |

**Synthesis / tool reports**

- [`Synthesis-Reports/cla-area-power-report.txt`](Synthesis-Reports/cla-area-power-report.txt): Area and power report for `cla_4` (as supplied)

## Simulation Results

No simulation waveform was supplied. Synthesis area and power reports (`Design : cla_4`) are reproduced in [`Synthesis-Reports/cla-area-power-report.txt`](Synthesis-Reports/cla-area-power-report.txt).

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

None found by static review of the supplied code.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Compiles on its own by static reading.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim cla_4bit.v cla_4bit_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
