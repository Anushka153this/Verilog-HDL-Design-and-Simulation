# Post-lab: "Expected Comparison" table (as supplied)

> **Caution.** This is the table exactly as it appears in the source. It is labelled *Expected*, and several entries do not agree with the actual reports in the other files of this folder (for example 40 and 42 BELs versus 100 and 25 in the reports). It is kept for completeness, not as measured data.

```text
# COMPARISON
## Carry Save Adder vs Carry Skip Adder — Expected Comparison
| Parameter | Carry Save Adder (CSA) | Carry Skip Adder (CSKA) |
| --- | --- | --- |
| Design Name | Carry Save Adder | Carry Skip Adder |
| Top Module | csa | carry_skip_adder |
| Target Technology | CoolRunner-II | CoolRunner-II |
| Optimization Goal | Speed | Speed |
| Keep Hierarchy | YES | YES |
| Number of I/Os | 14 | 14 |
| Number of XORs | 8 | 8 |
| 1-bit XOR2 | 8 | 8 |
| Total BELs (Area) | 40 | 42 |
| AND2 | 16 | 16 |
| OR2 | 8 | 8 |
| INV | 4 | 6 |
| XOR2 | 8 | 8 |
| IBUF | 9 | 9 |
| OBUF | 5 | 5 |
| Total I/O Buffers | 14 | 14 |
| VCC | 1.80 V | 1.80 V |
| Estimated Current | 21.000 µA | 21.000 µA |
| Estimated Power | 37.800 µW | 37.800 µW |
| Quiescent VCC Power | 37.800 µW | 37.800 µW |
| Global Resources Power | 0 µW | 0 µW |
| ZIA Power | 0 µW | 0 µW |
| Clock Power | 0 µW | 0 µW |
| Signal Power | 0 µW | 0 µW |
| Output Load Power | 0 µW | 0 µW |
| Input Power | 0 µW | 0 µW |
| Parameter | Carry Save Adder (CSA) | Carry Skip Adder (CSKA) |
| --- | --- | --- |
| Function Block Power | 0 µW | 0 µW |
| Delay | 13.400 ns | ~10–13 ns |
| Approx. Maximum Frequency | 74.63 MHz | ~77–100 MHz |

```
