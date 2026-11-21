# Simulation Results: 4-bit Ripple Carry Adder (post-lab comparison)

> Topic 06: Design of Subsystems · Author: Anushka Gope

**No waveform image was supplied for this design.** None has been created or substituted.

## What the images show

No simulation waveform was supplied. Synthesis area and power reports (labelled `Design : RCA`) are reproduced in [`Synthesis-Reports/rca-area-power-report.txt`](../Synthesis-Reports/rca-area-power-report.txt).

**Corrected testbench (`ripple_adder_tb.v`).** It instantiates `ripple_adder(.X, .Y, .S, .Co)` and applies five operand pairs (0+0, 3+5, 15+1, 10+5, 15+15) 10 ns apart. It is stimulus only: it has no self-check and no `$display`. Not simulated: no simulator was available, so no pass/fail result is claimed for the added files.

## Not provided in the source

- `simulation-output.png` (console / transcript output): the source documents contain no console captures, so this file has intentionally not been created.
- `waveform.png`

## Notes

- The corrected testbench does not check the results.
