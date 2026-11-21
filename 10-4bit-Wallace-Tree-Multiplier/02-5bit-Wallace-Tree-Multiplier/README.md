# 5-bit Wallace Tree Multiplier (post-lab)

> **Topic 10: 4-bit Wallace Tree Multiplier** · Author: Anushka Gope

## Purpose

Post-lab exercise: a 5-bit x 5-bit Wallace-tree style multiplier producing a 10-bit product.

## Working Principle

Partial-product rows `p0`..`p4` are generated and then reduced in three stages of half and full adders (the code is organised as "Stage 1", "Stage 2" and "Stage 3" instantiations), after which a final carry-propagate addition with the `+` operator produces `P`. Some intermediate bits are noted in the code comments as left uncompressed in a stage. The testbench applies six (A, B) pairs.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `A` | 5 | Multiplicand |
| `B` | 5 | Multiplier |

### Outputs

| Port | Width | Description |
|---|---|---|
| `P` | 10 | Product |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`wallace_5bit.v`](wallace_5bit.v) | `wallace_5x5` | Original |
| Testbench | [`wallace_5bit_tb.v`](wallace_5bit_tb.v) | `wallace_5x5_tb_v` | Original |

## Simulation Results

**ModelSim waveform of `wallace_5x5_tb_v`**

![ModelSim waveform of `wallace_5x5_tb_v`](Simulation-Results/waveform.png)

Values (decimal) read from the waveform:

| A | B | P |
|---|---|---|
| 15 | 15 | 225 |
| 23 | 7 | 161 |
| 10 | 20 | 200 |
| 18 | 13 | 234 |
| 27 | 14 | 378 |
| 31 | 31 | 961 |

All six products equal A x B, including the maximum case 31 x 31.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

- The file defines its own `half_adder` and `full_adder` modules whose carry output is named `cout`, whereas the 4-bit design uses `carry`. The two files must not be compiled together.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Compiles on its own by static reading (do not combine with the 4-bit design file).

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim wallace_5bit.v wallace_5bit_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
