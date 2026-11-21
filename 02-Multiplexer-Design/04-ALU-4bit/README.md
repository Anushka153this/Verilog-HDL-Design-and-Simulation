# 4-bit ALU

> **Topic 02: Multiplexer Design** · Author: Anushka Gope

## Purpose

Implements a 4-bit arithmetic-logic unit with eight operations selected by a 3-bit opcode (post-lab exercise).

## Working Principle

Behavioural model: an `always @(*)` block with defaults of `Y = 0`, `Cout = 0`, then a `case` on `S`.

| S | Operation | Notes |
|---|---|---|
| 000 | A + B | `{Cout, Y}`, so Cout is the carry |
| 001 | A - B | Cout = (A < B), i.e. borrow |
| 010 | A AND B | |
| 011 | A OR B | |
| 100 | A XOR B | |
| 101 | NOT A | |
| 110 | A + 1 | `{Cout, Y}` |
| 111 | A - 1 | Cout stays 0 |

The testbench fixes A = 0101 and B = 0011 and steps through all eight opcodes, 10 ns each.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `A` | 4 | Operand A |
| `B` | 4 | Operand B |
| `S` | 3 | Operation select |

### Outputs

| Port | Width | Description |
|---|---|---|
| `Y` | 4 | Result (reg) |
| `Cout` | 1 | Carry / borrow (reg) |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`alu_4bit.v`](alu_4bit.v) | `alu_4bit` | Original |
| Testbench | [`alu_4bit_tb.v`](alu_4bit_tb.v) | `alu_4bit_tb` | Original |

## Simulation Results

**No genuine ALU waveform was supplied.** The image placed under the ALU heading in the source is a `mux_8x1_tb_v` waveform (a near-duplicate of the 8-to-1 multiplexer waveform), so it was not used here.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

- Waveform pending: the image supplied under the ALU heading belongs to the 8-to-1 multiplexer testbench.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Compiles on its own by static reading.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim alu_4bit.v alu_4bit_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
