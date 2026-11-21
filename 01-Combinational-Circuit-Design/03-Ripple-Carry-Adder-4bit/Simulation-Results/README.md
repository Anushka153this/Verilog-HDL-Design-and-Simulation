# Simulation Results: 4-bit Ripple Carry Adder

> Topic 01: Combinational Circuit Design · Author: Anushka Gope

The images below were extracted from the original lab documents. They are genuine captures, not regenerated.

### `waveform.png`

ModelSim waveform of `RCA_SM_Tb_v`.

![ModelSim waveform of `RCA_SM_Tb_v`](waveform.png)

## What the images show

Values read from the waveform for the four test vectors:

| Vector | a | b | cin | s | cout |
|---|---|---|---|---|---|
| 1 | 1100 | 1010 | 0 | 0110 | 1 |
| 2 | 0111 | 0000 | 1 | 1000 | 0 |
| 3 | 0101 | 0010 | 0 | 0111 | 0 |
| 4 | 1011 | 1000 | 1 | 0100 | 1 |

These are consistent with binary addition of the displayed operands. Note that the displayed `a` and `b` values differ from the literals written in the testbench (see Known issues).

## Not provided in the source

- `simulation-output.png` (console / transcript output): the source documents contain no console captures, so this file has intentionally not been created.

## Notes

- The testbench writes 4-bit values as bare decimal numbers (e.g. `a = 1100;`, `a = 1111;`), which Verilog reads as decimal and truncates to 4 bits. The waveform confirms this: the second `a` shows `0111`, not `1111`. The intent was probably binary literals (`4'b1111`). Left unchanged.
