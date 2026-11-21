# D Flip-Flop

> **Topic 03: 4-bit Ripple Counter** · Author: Anushka Gope

## Purpose

Implements a positive-edge-triggered D flip-flop with asynchronous active-low reset (post-lab exercise). It is the storage element of the MOD-10 counter.

## Working Principle

An `always @(posedge clk or negedge rst_n)` block: when `rst_n = 0` the output is cleared; otherwise `q` captures `d` on the rising clock edge. The testbench is partly self-checking, printing each result with the expected value, and dumps `dff.vcd`.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `clk` | 1 | Clock (rising-edge triggered) |
| `rst_n` | 1 | Asynchronous reset (active low) |
| `d` | 1 | Data input |

### Outputs

| Port | Width | Description |
|---|---|---|
| `q` | 1 | Stored value (reg) |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`dff.v`](dff.v) | `dff` | Original |
| Testbench | [`dff_tb.v`](dff_tb.v) | `dff_tb` | Original |

## Simulation Results

**ModelSim waveform of `dff_tb`**

![ModelSim waveform of `dff_tb`](Simulation-Results/waveform.png)

The waveform shows `clk`, `rst_n`, `d` and `q`. The `$display` console output was not supplied.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

None found by static review of the supplied code.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Compiles on its own by static reading.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim dff.v dff_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
