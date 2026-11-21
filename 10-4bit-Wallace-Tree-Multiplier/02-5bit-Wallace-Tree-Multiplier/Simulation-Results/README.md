# Simulation Results: 5-bit Wallace Tree Multiplier (post-lab)

> Topic 10: 4-bit Wallace Tree Multiplier · Author: Anushka Gope

The images below were extracted from the original lab documents. They are genuine captures, not regenerated.

### `waveform.png`

ModelSim waveform of `wallace_5x5_tb_v`.

![ModelSim waveform of `wallace_5x5_tb_v`](waveform.png)

## What the images show

Values (decimal) read from the waveform:

| A | B | P |
|---|---|---|
| 15 | 15 | 225 |
| 23 | 7 | 161 |
| 10 | 20 | 200 |
| 18 | 13 | 234 |
| 27 | 14 | 378 |
| 31 | 31 | 961 |

All six products equal A x B, including the maximum case 31 x 31.

## Not provided in the source

- `simulation-output.png` (console / transcript output): the source documents contain no console captures, so this file has intentionally not been created.

## Notes

- The file defines its own `half_adder` and `full_adder` modules whose carry output is named `cout`, whereas the 4-bit design uses `carry`. The two files must not be compiled together.
