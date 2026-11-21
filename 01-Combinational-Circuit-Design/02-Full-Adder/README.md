# Full Adder (built from two half adders)

> **Topic 01: Combinational Circuit Design** · Author: Anushka Gope

## Purpose

Implements a one-bit full adder by cascading two half adders and an OR gate. It adds two input bits and a carry-in.

## Working Principle

Structural model: the first half adder adds `a` and `b` (partial sum `w1`, carry `w2`); the second adds `w1` and `cin` (final `sum`, carry `w3`). The carry-out is `w2 | w3`, produced by an `or` gate primitive. The testbench applies all eight (a, b, cin) combinations, each held for 100 ns.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `a` | 1 | First addend bit |
| `b` | 1 | Second addend bit |
| `cin` | 1 | Carry in |

### Outputs

| Port | Width | Description |
|---|---|---|
| `sum` | 1 | a XOR b XOR cin |
| `carry` | 1 | Carry out |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`full_adder.v`](full_adder.v) | `fa_ha` | Original |
| Testbench | [`full_adder_tb.v`](full_adder_tb.v) | `ha_ha_tb_v` | Original |

**Dependencies**

- `ha_df` (half adder): [`../01-Half-Adder/half_adder.v`](../01-Half-Adder/half_adder.v)

## Simulation Results

**ModelSim waveform of `ha_ha_tb_v`**

![ModelSim waveform of `ha_ha_tb_v`](Simulation-Results/waveform.png)

The waveform covers the eight input combinations, with `sum` and `carry` plotted against `a`, `b` and `cin`.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

- The testbench is missing a semicolon after `cin = 0` in the third stimulus block (a = 0, b = 1). As supplied this is a syntax error; it was left unchanged. The waveform in the source was nevertheless captured, so the original testbench was presumably run in a corrected form.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Requires `half_adder.v`. The testbench has the syntax error described under Known issues.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim ../01-Half-Adder/half_adder.v full_adder.v full_adder_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
