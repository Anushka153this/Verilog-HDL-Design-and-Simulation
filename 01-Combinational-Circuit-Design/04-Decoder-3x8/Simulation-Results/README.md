# Simulation Results: 3-to-8 Decoder with Enable

> Topic 01: Combinational Circuit Design · Author: Anushka Gope

The images below were extracted from the original lab documents. They are genuine captures, not regenerated.

### `waveform.png`

ModelSim waveform of `decoder3x8_tb` (its testbench code was not in the source).

![ModelSim waveform of `decoder3x8_tb` (its testbench code was not in the source)](waveform.png)

## What the images show

**Waveform (original lab capture).** The supplied waveform is from a testbench named `decoder3x8_tb` whose code was not in the source documents. It shows `E`, `A2`, `A1`, `A0` and `Y[7:0]` over a 90 ns run. The added testbench below has the same module name and signal set and also ends at 90 ns (10 ns disabled, then 8 x 10 ns), so the picture looks consistent with it, but it is **not** claimed to be the output of the added file.

**Added testbench (`decoder3x8_tb.v`).** With `E = 0` it checks that `Y` is zero; with `E = 1` it steps through all eight address codes and compares `Y` with `8'b00000001 << i`, printing a `PASS` or `FAIL` line per case. Not simulated: no simulator was available, so no pass/fail result is claimed for the added files.

## Not provided in the source

- `simulation-output.png` (console / transcript output): the source documents contain no console captures, so this file has intentionally not been created.

## Notes

- The original 3x8 testbench code was never recovered. `decoder3x8_tb.v` is a newly written replacement, not the original.
