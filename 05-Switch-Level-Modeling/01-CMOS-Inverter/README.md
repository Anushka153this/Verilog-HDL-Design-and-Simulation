# CMOS Inverter

> **Topic 05: Switch-Level Modeling** · Author: Anushka Gope

## Purpose

Models a CMOS inverter at switch level using Verilog `pmos` and `nmos` primitives.

## Working Principle

One PMOS connects `out` to `vdd` and one NMOS connects `out` to `gnd`, both gated by `in`. A low input turns the PMOS on (output high); a high input turns the NMOS on (output low).

## Interface

### Inputs

| Port | Width | Description |
|---|---|---|
| `in` | 1 | Input |

### Outputs

| Port | Width | Description |
|---|---|---|
| `out` | 1 | Inverted output |

## Source Files

| Type | File | Top module | Origin |
|---|---|---|---|
| Design | [`cmos_inverter.v`](cmos_inverter.v) | `cmos_inverter` | Original |
| Testbench | [`cmos_inverter_tb.v`](cmos_inverter_tb.v) | `cmos_inverter_tb_v` | Original |

## Simulation Results

**ModelSim waveform of `cmos_inverter_tb_v`**

![ModelSim waveform of `cmos_inverter_tb_v`](Simulation-Results/waveform.png)

The waveform shows `in` and `out` over the 200 ns run.

See [`Simulation-Results/README.md`](Simulation-Results/README.md) for details.

## Known Issues and Resolutions

Original code is preserved exactly (in `Original-Source/` where a file was replaced). Problems are documented rather than silently corrected.

None found by static review of the supplied code.

All issues are collected in [`Known-Issues.md`](../../Known-Issues.md).

## Running the Simulation

**Compile status (static review):** Compiles on its own by static reading.

```bash
# Example with Icarus Verilog (indicative; not executed while preparing this repository)
iverilog -o sim cmos_inverter.v cmos_inverter_tb.v
vvp sim
```

The original results were produced with the tools used in the lab (ModelSim-style waveform windows and Synopsys / Xilinx report formats appear in the source). No simulation was re-run while preparing this portfolio.
