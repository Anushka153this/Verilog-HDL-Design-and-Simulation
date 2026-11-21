# 4-bit Asynchronous Ripple Counter

> **Topic 03: 4-bit Ripple Counter** · Author: Anushka Gope

## Purpose

Implements a 4-bit asynchronous (ripple) up-counter from four T flip-flops.

## Working Principle

All four T inputs are tied to 1, so each stage toggles on every falling edge of its own clock. Stage 0 is clocked by `clk`; each later stage is clocked by the previous stage's output (`q[0]` -> `q[1]` -> `q[2]` -> `q[3]`). This makes the count ripple through the chain. The testbench releases reset after 10 ns and runs for a further 180 ns, printing with `$monitor`.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `clk` | 1 | Clock |
| `rst` | 1 | Asynchronous reset (active high) |

### Outputs

| Port | Width | Description |
|---|---|---|
| `q` | 4 | Counter value |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`ripple_counter.v`](ripple_counter.v) | `rc` | Original |
| Testbench | [`ripple_counter_tb.v`](ripple_counter_tb.v) | `rc_tb` | Original |

**Dependencies**

- `tff`: [`../01-T-Flip-Flop/tff.v`](../01-T-Flip-Flop/tff.v)

## Simulation Results

**ModelSim waveform of `rc_tb`**

![ModelSim waveform of `rc_tb`](Simulation-Results/waveform.png)

The waveform shows `clk`, `rst` and `q[3:0]` counting up from `0000` through `1111` and wrapping back to `0000`.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

None found by static review of the supplied code.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Requires `tff.v` from the sibling folder.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim ../01-T-Flip-Flop/tff.v ripple_counter.v ripple_counter_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
