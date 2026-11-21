# T Flip-Flop

> **Topic 03: 4-bit Ripple Counter** · Author: Anushka Gope

## Purpose

Implements a T (toggle) flip-flop with asynchronous reset, the storage element of the ripple counter.

## Working Principle

An `always @(negedge clk or posedge rst)` block: `rst = 1` clears `q` immediately; otherwise on each **falling** clock edge `q` toggles when `t = 1` and holds when `t = 0`. The testbench uses a 10 ns clock and applies reset, hold, toggle, hold and a second reset.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `t` | 1 | Toggle enable |
| `clk` | 1 | Clock (falling-edge triggered) |
| `rst` | 1 | Asynchronous reset (active high) |

### Outputs

| Port | Width | Description |
|---|---|---|
| `q` | 1 | Flip-flop output (reg) |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`tff.v`](tff.v) | `tff` | Original |
| Testbench | [`tff_tb.v`](tff_tb.v) | `tff_tb` | Original |

## Simulation Results

**ModelSim waveform of `tff_tb`**

![ModelSim waveform of `tff_tb`](Simulation-Results/waveform.png)

The waveform shows `t`, `clk`, `rst` and `q` over the 130 ns run.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

None found by static review of the supplied code.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Compiles on its own by static reading.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim tff.v tff_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
