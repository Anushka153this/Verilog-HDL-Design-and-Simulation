# Moore FSM Sequence Detector

> **Topic 04: Finite State Machine** · Author: Anushka Gope

## Purpose

Implements a Moore-type sequence detector (post-lab exercise).

## Working Principle

Five states S0..S4. From the transitions as coded, the machine reaches S4 after the input sequence 1, 0, 1, 1 and the output `y` is high only while in S4 (an output that depends on the state alone, hence Moore). From S4 a 0 returns to S0 and a 1 returns to S1, so overlapping detections are partly supported. The testbench applies the input stream 1,0,1,1,0,0,1,0,1,1 at 10 ns per bit after a 10 ns reset.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `clk` | 1 | Clock |
| `rst` | 1 | Asynchronous reset (active high) |
| `x` | 1 | Serial input |

### Outputs

| Port | Width | Description |
|---|---|---|
| `y` | 1 | Detection output (reg) |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`moore_fsm.v`](moore_fsm.v) | `Moore_FSM` | Original |
| Testbench | [`moore_fsm_tb.v`](moore_fsm_tb.v) | `Moore_FSM_TB` | Original |

## Simulation Results

**ModelSim waveform of `Moore_FSM_TB`**

![ModelSim waveform of `Moore_FSM_TB`](Simulation-Results/waveform.png)

The waveform shows `clk`, `rst`, `x` and `y`.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

- The source code had lost its line breaks. They were restored without changing any token.
- The detected pattern (1011) is derived here from the state transitions; the source does not state it.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Compiles on its own by static reading.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim moore_fsm.v moore_fsm_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
