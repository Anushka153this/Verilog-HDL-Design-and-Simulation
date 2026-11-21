# Code Provenance

> Author: Anushka Gope

This file lists every file that was merged in from the Missing-Code Pack, what it relates to, and what happened to the original. Nothing here has been simulated.

## Labels

| Label | Meaning |
|---|---|
| Original | Extracted from the lab documents; only formatting and identity lines changed |
| Added (new) | Newly prepared file that fills a gap (missing module or testbench) |
| Corrected (new) | Newly prepared file that replaces an original with the same name; the original is kept in `Original-Source/` |
| Added (reference implementation) | Newly written stand-in for source code that is missing; **not** the original lab code |

## Merged files

| Topic / design | File | Origin | Note | Original kept as |
|---|---|---|---|---|
| 01 / 3-to-8 Decoder with Enable | [`decoder3x8_tb.v`](01-Combinational-Circuit-Design/04-Decoder-3x8/decoder3x8_tb.v) | Added (new) | Fills the missing testbench; not simulated | - |
| 06 / 4-bit Carry Save Adder | [`carry_save_adder_4bit.v`](06-Design-of-Subsystems/01-4bit-Carry-Save-Adder/carry_save_adder_4bit.v) | Corrected (new) | 6-bit result; replaces the original 5-bit version | [`Original-Source/carry_save_adder_4bit.v`](06-Design-of-Subsystems/01-4bit-Carry-Save-Adder/Original-Source/carry_save_adder_4bit.v) |
| 06 / 4-bit Carry Save Adder | [`carry_save_adder_4bit_tb.v`](06-Design-of-Subsystems/01-4bit-Carry-Save-Adder/carry_save_adder_4bit_tb.v) | Corrected (new) | Exhaustive 16 x 16 x 16 comparison; not simulated | [`Original-Source/carry_save_adder_4bit_tb.v`](06-Design-of-Subsystems/01-4bit-Carry-Save-Adder/Original-Source/carry_save_adder_4bit_tb.v) |
| 06 / 4-bit Carry Save Adder | [`fulladder.v`](06-Design-of-Subsystems/01-4bit-Carry-Save-Adder/fulladder.v) | Added (new) | The missing 1-bit full adder | - |
| 06 / 4-bit Ripple Carry Adder (post-lab comparison) | [`ripple_adder_tb.v`](06-Design-of-Subsystems/02-4bit-Ripple-Carry-Adder/ripple_adder_tb.v) | Corrected (new) | Instantiates `ripple_adder(X, Y, S, Co)`; not simulated | [`Original-Source/ripple_adder_tb.v`](06-Design-of-Subsystems/02-4bit-Ripple-Carry-Adder/Original-Source/ripple_adder_tb.v) |
| 07 / 4-bit Carry Skip Adder | [`carry_skip_adder.v`](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/carry_skip_adder.v) | Corrected (new) | Same structure as the original; `Endmodule` typo removed | [`Original-Source/carry_skip_adder.v`](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/Original-Source/carry_skip_adder.v) |
| 07 / 4-bit Carry Skip Adder | [`carry_skip_adder_tb.v`](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/carry_skip_adder_tb.v) | Corrected (new) | Exhaustive 16 x 16 x 2 comparison; not simulated | [`Original-Source/carry_skip_adder_tb.v`](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/Original-Source/carry_skip_adder_tb.v) |
| 07 / 4-bit Carry Skip Adder | [`rca.v`](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/rca.v) | Added (new) | The missing ripple-carry adder with propagate output | - |
| 07 / 4-bit Carry Skip Adder | [`mux_2to1.v`](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/mux_2to1.v) | Added (new) | The missing 2:1 multiplexer | - |
| 08 / 4-bit Braun Array Multiplier | [`braun_array_multiplier_4bit.v`](08-4bit-Braun-Array-Multiplier/01-4bit-Braun-Array-Multiplier/braun_array_multiplier_4bit.v) | Added (reference implementation) | Newly written; NOT the original lab code | - |
| 08 / 4-bit Braun Array Multiplier | [`braun_array_multiplier_4bit_tb.v`](08-4bit-Braun-Array-Multiplier/01-4bit-Braun-Array-Multiplier/braun_array_multiplier_4bit_tb.v) | Added (reference implementation) | Exhaustive 16 x 16 comparison; not simulated | - |
| 09 / 4-bit Booth Multiplier | [`booth_multiplier_tb.v`](09-4bit-Booth-Multiplier/01-4bit-Booth-Multiplier/booth_multiplier_tb.v) | Corrected (new) | Instantiates `booth_v(A, B, P)`; exhaustive 16 x 16; not simulated | [`Original-Source/booth_multiplier_tb.v`](09-4bit-Booth-Multiplier/01-4bit-Booth-Multiplier/Original-Source/booth_multiplier_tb.v) |
| 11 / 16 x 4 RAM | [`ram_16x4.v`](11-Memory-Design-RAM-and-ROM/01-RAM-16x4/ram_16x4.v) | Corrected (new) | Same behaviour as the original; module renamed from `full_adder` | [`Original-Source/ram_16x4.v`](11-Memory-Design-RAM-and-ROM/01-RAM-16x4/Original-Source/ram_16x4.v) |
| 11 / 16 x 4 RAM | [`ram_16x4_tb.v`](11-Memory-Design-RAM-and-ROM/01-RAM-16x4/ram_16x4_tb.v) | Corrected (new) | No include file and no `$fsdbDumpvars`; stimulus only; not simulated | [`Original-Source/ram_16x4_tb.v`](11-Memory-Design-RAM-and-ROM/01-RAM-16x4/Original-Source/ram_16x4_tb.v) |
| 11 / 16 x 4 ROM | [`rom_16x4.v`](11-Memory-Design-RAM-and-ROM/02-ROM-16x4/rom_16x4.v) | Corrected (new) | Same behaviour as the original table (address + 1); module renamed | [`Original-Source/rom_16x4.v`](11-Memory-Design-RAM-and-ROM/02-ROM-16x4/Original-Source/rom_16x4.v) |
| 11 / 16 x 4 ROM | [`rom_16x4_tb.v`](11-Memory-Design-RAM-and-ROM/02-ROM-16x4/rom_16x4_tb.v) | Corrected (new) | No include file and no `$fsdbDumpvars`; stimulus only; not simulated | [`Original-Source/rom_16x4_tb.v`](11-Memory-Design-RAM-and-ROM/02-ROM-16x4/Original-Source/rom_16x4_tb.v) |
| 11 / 64 x 8 RAM (post-lab) | [`ram_64x8.v`](11-Memory-Design-RAM-and-ROM/03-RAM-64x8/ram_64x8.v) | Corrected (new) | Same behaviour as the original; module renamed from `full_adder` | [`Original-Source/ram_64x8.v`](11-Memory-Design-RAM-and-ROM/03-RAM-64x8/Original-Source/ram_64x8.v) |
| 11 / 64 x 8 RAM (post-lab) | [`ram_64x8_tb.v`](11-Memory-Design-RAM-and-ROM/03-RAM-64x8/ram_64x8_tb.v) | Corrected (new) | No include file and no `$fsdbDumpvars`; stimulus only; not simulated | [`Original-Source/ram_64x8_tb.v`](11-Memory-Design-RAM-and-ROM/03-RAM-64x8/Original-Source/ram_64x8_tb.v) |

## Files moved to `Original-Source/` without a same-name replacement

- [`booth_postlab_tb.v`](09-4bit-Booth-Multiplier/01-4bit-Booth-Multiplier/Original-Source/booth_postlab_tb.v) (4-bit Booth Multiplier): Includes `booth.v` and instantiates `booth` with lower-case ports. Superseded by the exhaustive corrected testbench.

## Comparison notes

- **Carry save adder.** The corrected version is a replacement, not a drop-in fix: 6-bit result instead of 5-bit, `+` operator instead of the `ripple_adder` instance, and `carry_vec[3]` is now used. The schematic supplied with the lab material shows the original structure.
- **Carry skip adder.** The corrected top module has the same ports and the same two instances (`rca`, `mux_2to1`) as the original; a token-level comparison shows three differences only: the two input vectors are declared together (`input [3:0] A, B`), the block propagate uses `&P` instead of `P[0] & P[1] & P[2] & P[3]`, and the module ends with a correct `endmodule` instead of `Endmodule`.
- **ROM.** The original used a 16-entry `case` table whose every entry is `address + 1` (15 gives 0) with `default` 0 (checked entry by entry); the new module computes `address + 1` directly.
- **RAMs.** The original and new RAM modules have the same read/write logic; only the module name changed (`full_adder` to `ram_16x4` / `ram_64x8`).
- **Braun multiplier.** The reference code sums four shifted partial-product rows with `+`. It is behavioural and is not a structural full-adder array.
