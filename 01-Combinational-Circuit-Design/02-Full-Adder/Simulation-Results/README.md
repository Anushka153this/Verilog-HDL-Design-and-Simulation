# Simulation Results: Full Adder (built from two half adders)

> Topic 01: Combinational Circuit Design · Author: Anushka Gope

The images below were extracted from the original lab documents. They are genuine captures, not regenerated.

### `waveform.png`

ModelSim waveform of `ha_ha_tb_v`.

![ModelSim waveform of `ha_ha_tb_v`](waveform.png)

## What the images show

The waveform covers the eight input combinations, with `sum` and `carry` plotted against `a`, `b` and `cin`.

## Not provided in the source

- `simulation-output.png` (console / transcript output): the source documents contain no console captures, so this file has intentionally not been created.

## Notes

- The testbench is missing a semicolon after `cin = 0` in the third stimulus block (a = 0, b = 1). As supplied this is a syntax error; it was left unchanged. The waveform in the source was nevertheless captured, so the original testbench was presumably run in a corrected form.
