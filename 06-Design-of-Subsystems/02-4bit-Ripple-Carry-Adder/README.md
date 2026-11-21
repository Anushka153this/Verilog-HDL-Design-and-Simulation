# 4-bit Ripple Carry Adder (post-lab comparison)

> **Topic 06: Design of Subsystems** · Author: Anushka Gope

## Purpose

4-bit ripple carry adder used for the post-lab area/power comparison against the carry look-ahead adder.

## Working Principle

Four `fulladder` instances are chained: the first has carry-in tied to `1'b0`, and each stage's carry-out feeds the next, ending at `Co`.

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `X` | 4 | Operand X |
| `Y` | 4 | Operand Y |

### Outputs

| Port | Width | Description |
|---|---|---|
| `S` | 4 | Sum |
| `Co` | 1 | Carry out |

## Source Files

**Origin key.** *Original*: extracted from the lab documents (formatting only). *Corrected (new)* and *Added (new)*: newly prepared files merged in later; they are not recovered originals and have not been simulated. *Added (reference implementation)*: newly written to stand in for missing source.

| Role | File | Top module | Origin | Note |
|---|---|---|---|---|
| Design | [`ripple_adder.v`](ripple_adder.v) | `ripple_adder` | Original | Unchanged |
| Testbench | [`ripple_adder_tb.v`](ripple_adder_tb.v) | `tb_rca_v` | Corrected (new) | Instantiates `ripple_adder(X, Y, S, Co)`; not simulated |

**Original files, kept unchanged** in [`Original-Source/`](Original-Source/) (see its [README](Original-Source/README.md)):

| Role | File | Top module | Why it is not the main file |
|---|---|---|---|
| Testbench | [`Original-Source/ripple_adder_tb.v`](Original-Source/ripple_adder_tb.v) | `tb_rca_v` | Instantiates `rca_4` with ports that do not exist |

**Dependencies**

- `fulladder` (added in the carry save adder folder): [`../01-4bit-Carry-Save-Adder/fulladder.v`](../01-4bit-Carry-Save-Adder/fulladder.v)

**Synthesis / tool reports**

- [`Synthesis-Reports/rca-area-power-report.txt`](Synthesis-Reports/rca-area-power-report.txt): Area and power report for the ripple carry adder, labelled `RCA` (as supplied)

## Simulation Results

No simulation waveform was supplied. Synthesis area and power reports (labelled `Design : RCA`) are reproduced in [`Synthesis-Reports/rca-area-power-report.txt`](Synthesis-Reports/rca-area-power-report.txt).

**Corrected testbench (`ripple_adder_tb.v`).** It instantiates `ripple_adder(.X, .Y, .S, .Co)` and applies five operand pairs (0+0, 3+5, 15+1, 10+5, 15+15) 10 ns apart. It is stimulus only: it has no self-check and no `$display`. Not simulated: no simulator was available, so no pass/fail result is claimed for the added files.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

**Resolved by the added / corrected files**

- Missing module: `fulladder` is now available (added in `../01-4bit-Carry-Save-Adder/fulladder.v`).
- Testbench connections: the corrected testbench instantiates `ripple_adder` with its real ports `X`, `Y`, `S`, `Co`. The original (instantiating `rca_4`) is kept in `Original-Source/`.

**Still open or worth knowing**

- The corrected testbench does not check the results.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Static port/name check of `fulladder.v`, `ripple_adder.v` and `ripple_adder_tb.v`: no problems found.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim ../01-4bit-Carry-Save-Adder/fulladder.v ripple_adder.v ripple_adder_tb.v
vvp sim
```

Do not mix the files in `Original-Source/` with the main files: several of them define the same module names.

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
