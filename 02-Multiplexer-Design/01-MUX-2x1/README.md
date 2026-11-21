# 2-to-1 Multiplexer

> **Topic 02: Multiplexer Design** · Author: Anushka Gope

## Purpose

Implements a 2-to-1 multiplexer that selects one of two data inputs.

## Working Principle

Dataflow model using the conditional operator: `y = s ? b : a`. The testbench applies all eight (s, a, b) combinations for 10 ns each and finishes with `$stop`.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `s` | 1 | Select |
| `a` | 1 | Data input selected when s = 0 |
| `b` | 1 | Data input selected when s = 1 |

### Outputs

| Port | Width | Description |
|---|---|---|
| `y` | 1 | Selected output |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`mux_2x1.v`](mux_2x1.v) | `mux_2x1` | Original |
| Testbench | [`mux_2x1_tb.v`](mux_2x1_tb.v) | `mux_2x1_tb` | Original |

## Simulation Results

**ModelSim waveform of `mux_2x1_tb`**

![ModelSim waveform of `mux_2x1_tb`](Simulation-Results/waveform.png)

The waveform shows `s`, `a`, `b` and `y` over the eight test cases.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

- In the testbench, "Test Case 7" ends with `#10` without a semicolon. As supplied this is a syntax error; left unchanged.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Compiles on its own. The testbench has the syntax error described under Known issues.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim mux_2x1.v mux_2x1_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
