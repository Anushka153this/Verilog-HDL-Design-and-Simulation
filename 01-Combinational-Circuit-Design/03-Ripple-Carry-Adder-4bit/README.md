# 4-bit Ripple Carry Adder

> **Topic 01: Combinational Circuit Design** · Author: Anushka Gope

## Purpose

Implements a 4-bit ripple carry adder by chaining four full adders so that each stage's carry-out feeds the next stage's carry-in.

## Working Principle

Structural model with four `fa_ha` instances (FA1..FA4). The carry ripples from bit 0 to bit 3 through wires `w1`, `w2`, `w3`, and the final stage drives `cout`.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `a` | 4 | First addend |
| `b` | 4 | Second addend |
| `cin` | 1 | Carry in |

### Outputs

| Port | Width | Description |
|---|---|---|
| `s` | 4 | Sum |
| `cout` | 1 | Carry out |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`ripple_carry_adder_4bit.v`](ripple_carry_adder_4bit.v) | `RCA_SM` | Original |
| Testbench | [`ripple_carry_adder_4bit_tb.v`](ripple_carry_adder_4bit_tb.v) | `RCA_SM_Tb_v` | Original |

**Dependencies**

- `fa_ha` (full adder): [`../02-Full-Adder/full_adder.v`](../02-Full-Adder/full_adder.v)
- `ha_df` (half adder): [`../01-Half-Adder/half_adder.v`](../01-Half-Adder/half_adder.v)

## Simulation Results

**ModelSim waveform of `RCA_SM_Tb_v`**

![ModelSim waveform of `RCA_SM_Tb_v`](Simulation-Results/waveform.png)

Values read from the waveform for the four test vectors:

| Vector | a | b | cin | s | cout |
|---|---|---|---|---|---|
| 1 | 1100 | 1010 | 0 | 0110 | 1 |
| 2 | 0111 | 0000 | 1 | 1000 | 0 |
| 3 | 0101 | 0010 | 0 | 0111 | 0 |
| 4 | 1011 | 1000 | 1 | 0100 | 1 |

These are consistent with binary addition of the displayed operands. Note that the displayed `a` and `b` values differ from the literals written in the testbench (see Known issues).

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

- The testbench writes 4-bit values as bare decimal numbers (e.g. `a = 1100;`, `a = 1111;`), which Verilog reads as decimal and truncates to 4 bits. The waveform confirms this: the second `a` shows `0111`, not `1111`. The intent was probably binary literals (`4'b1111`). Left unchanged.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Requires `full_adder.v` and `half_adder.v` from the sibling folders.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim ../02-Full-Adder/full_adder.v ../01-Half-Adder/half_adder.v ripple_carry_adder_4bit.v ripple_carry_adder_4bit_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
