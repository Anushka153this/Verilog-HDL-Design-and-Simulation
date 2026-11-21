# MOD-10 (Decade) Synchronous Counter

> **Topic 03: 4-bit Ripple Counter** · Author: Anushka Gope

## Purpose

Implements a MOD-10 (decade) synchronous counter that counts 0 to 9 and then returns to 0 (post-lab exercise).

## Working Principle

Four D flip-flops with next-state logic written as sum-of-products excitation equations (`d0`..`d3`) derived from a K-map (per the code comments). `carry_out` goes high when `q == 4'b1001` (count 9). The testbench applies reset, then prints 15 clock cycles with `$display` and dumps `mod10_counter.vcd`.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `clk` | 1 | Clock |
| `rst_n` | 1 | Asynchronous reset (active low) |

### Outputs

| Port | Width | Description |
|---|---|---|
| `q` | 4 | Counter value {Q3,Q2,Q1,Q0} |
| `carry_out` | 1 | High at count 9 |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`mod10_counter.v`](mod10_counter.v) | `mod10_counter` | Original |
| Testbench | [`mod10_counter_tb.v`](mod10_counter_tb.v) | `mod10_counter_tb` | Original |

**Dependencies**

- `dff`: [`../03-D-Flip-Flop/dff.v`](../03-D-Flip-Flop/dff.v)

## Simulation Results

**ModelSim waveform of `mod10_counter_tb`**

![ModelSim waveform of `mod10_counter_tb`](Simulation-Results/waveform.png)

The waveform shows the counter stepping through the binary values up to `1001` and then returning to `0000`. The `$display` console output was not supplied.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

None found by static review of the supplied code.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Requires `dff.v` from the sibling folder.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim ../03-D-Flip-Flop/dff.v mod10_counter.v mod10_counter_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
