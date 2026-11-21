# Mealy FSM Sequence Detector

> **Topic 04: Finite State Machine** · Author: Anushka Gope

## Purpose

Implements a Mealy-type sequence detector (post-lab exercise).

## Working Principle

Four states S0..S3 (the state encodes how much of the pattern has matched: none, `1`, `10`, `101`). In S3 an input of 1 sets `y = 1` during that transition and returns to S1; an input of 0 goes to S2. The output therefore depends on both the state and the current input (hence Mealy) and appears one state earlier than in the Moore version. The same ten-bit stimulus is used as for the Moore machine.

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
| Design | [`mealy_fsm.v`](mealy_fsm.v) | `Mealy_FSM` | Original |
| Testbench | [`mealy_fsm_tb.v`](mealy_fsm_tb.v) | `Mealy_FSM_TB` | Original |

## Simulation Results

**Image supplied under the Mealy heading; its signals are labelled `Moore_FSM_TB`**

![Image supplied under the Mealy heading; its signals are labelled `Moore_FSM_TB`](Simulation-Results/waveform-unverified.png)

**The image supplied under the Mealy heading cannot be confirmed as a Mealy result.** Its signal names read `/Moore_FSM_TB/...`, i.e. it appears to be a Moore testbench capture. It is kept as `waveform-unverified.png` for completeness only.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

- The source code had lost its line breaks. They were restored without changing any token.
- Waveform pending: the supplied image is labelled `Moore_FSM_TB`.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Compiles on its own by static reading.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim mealy_fsm.v mealy_fsm_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
