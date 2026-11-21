# Known Issues and Gaps

> Author: Anushka Gope

This file collects the problems found in the supplied lab material and records how the later Missing-Code Pack was merged. **Original code was never silently changed**: where a file was replaced it was moved, unchanged, to an `Original-Source/` folder in the same design folder, and nothing missing has been presented as original work.

## How the added files were merged

- Files from the Missing-Code Pack were copied in byte for byte. Each one was compared with the original it relates to before anything was replaced.
- Where a pack file **replaces** an original with the same name (corrected testbenches, renamed memory modules, corrected carry skip top module, corrected carry save adder), the original moved to `Original-Source/` and the pack file took its place.
- Where a pack file is a pure **addition** (missing modules or testbench) it sits next to the originals.
- The Braun multiplier files are a **newly written reference implementation**, not the original lab code.
- None of the added or corrected files has been simulated. A static check (every instantiated module is defined and every named port exists) found no problems in the merged compile sets; it does not check behaviour. See [`Code-Provenance.md`](Code-Provenance.md).

## What was changed when the original code was extracted

- **Whitespace and indentation only.** A whitespace-insensitive comparison confirmed that no token of any extracted original differs from the source.
- **Line breaks restored** for the FSM designs (topic 04) and the carry skip adder (topic 07), whose code reached the source document with several statements run together on single lines.
- **Identity lines.** Header comments carrying names or registration numbers were replaced by a single line `// Author : Anushka Gope`, or removed.
- **Report text.** File-system paths in synthesis reports were generalised to `/home/<user>/` and identifying path elements were removed.
- **Images.** Image metadata was stripped. One waveform printout had a header containing a host and path, which was cropped out. The post-lab memory figure and the carry save adder schematic page were cropped to their figures.

## Still missing or unverified

| Item | Status |
|---|---|
| Topic 08: original Braun array multiplier Verilog, testbench and reports | **Original source pending.** A reference implementation was added; it is not the original. |
| Topic 01: original `decoder3x8_tb.v` | Never recovered; a new testbench was added. |
| Topic 02: ALU waveform | Pending (the supplied image is a MUX 8x1 waveform). |
| Topic 04: Mealy detector waveform | Unverified (the supplied image is labelled `Moore_FSM_TB`). |
| Topic 06, 07: waveforms for most subsystem designs | Not supplied. |
| Topic 07: schematic, waveform and reports | They come from the lab's own modules, not from the added `rca.v` and `mux_2to1.v`. |
| Console / `$display` output for all designs | Not supplied; none is claimed. |
| Simulation of any added or corrected file | Not done. |

## Resolved by the added or corrected files

### Combinational Circuit Design

- **[3-to-8 Decoder with Enable](01-Combinational-Circuit-Design/04-Decoder-3x8/README.md)**: Missing testbench: `decoder3x8_tb.v` was added (newly written, not recovered).
### Design of Subsystems

- **[4-bit Carry Save Adder](06-Design-of-Subsystems/01-4bit-Carry-Save-Adder/README.md)**: Missing module: `fulladder.v` was added (newly written; ports `X, Y, Ci, S, Co` match every instantiation in the original code).
- **[4-bit Carry Save Adder](06-Design-of-Subsystems/01-4bit-Carry-Save-Adder/README.md)**: Result width: the corrected design has a 6-bit `Final_Sum` and uses `carry_vec[3]`.
- **[4-bit Carry Save Adder](06-Design-of-Subsystems/01-4bit-Carry-Save-Adder/README.md)**: Testbench: a new exhaustive testbench replaces the original, which is kept in `Original-Source/`.
- **[4-bit Ripple Carry Adder (post-lab comparison)](06-Design-of-Subsystems/02-4bit-Ripple-Carry-Adder/README.md)**: Missing module: `fulladder` is now available (added in `../01-4bit-Carry-Save-Adder/fulladder.v`).
- **[4-bit Ripple Carry Adder (post-lab comparison)](06-Design-of-Subsystems/02-4bit-Ripple-Carry-Adder/README.md)**: Testbench connections: the corrected testbench instantiates `ripple_adder` with its real ports `X`, `Y`, `S`, `Co`. The original (instantiating `rca_4`) is kept in `Original-Source/`.
### Carry Skip Adder

- **[4-bit Carry Skip Adder](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/README.md)**: Missing modules: `rca.v` (4-bit ripple carry adder with a propagate output `P`) and `mux_2to1.v` were added (newly written).
- **[4-bit Carry Skip Adder](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/README.md)**: Typo: the corrected top module ends with `endmodule`; the original ended with `Endmodule`.
- **[4-bit Carry Skip Adder](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/README.md)**: Coverage: the new testbench is exhaustive; the original loops covered 264 cases while its comment claimed 256.
### 4-bit Booth Multiplier

- **[4-bit Booth Multiplier](09-4bit-Booth-Multiplier/01-4bit-Booth-Multiplier/README.md)**: Testbench connections: the corrected testbench has a legal module name (`booth_multiplier_tb`) and instantiates `booth_v` with ports `A`, `B`, `P`. The original testbenches are kept in `Original-Source/`.
- **[4-bit Booth Multiplier](09-4bit-Booth-Multiplier/01-4bit-Booth-Multiplier/README.md)**: Include and instance mismatch of the post-lab testbench: it is no longer part of the compile set (original kept in `Original-Source/`). The new exhaustive testbench covers 3 x -7.
- **[4-bit Booth Multiplier](09-4bit-Booth-Multiplier/01-4bit-Booth-Multiplier/README.md)**: The `$fsdbDumpvars` call is not used by the corrected testbench.
### Memory Design: RAM and ROM

- **[16 x 4 RAM](11-Memory-Design-RAM-and-ROM/01-RAM-16x4/README.md)**: Module name: the RAM is now `ram_16x4` (original: `full_adder`). Behaviour is the same (checked by reading both).
- **[16 x 4 RAM](11-Memory-Design-RAM-and-ROM/01-RAM-16x4/README.md)**: Include mismatch: the new testbench does not `include` any file and does not call `$fsdbDumpvars`.
- **[16 x 4 ROM](11-Memory-Design-RAM-and-ROM/02-ROM-16x4/README.md)**: Module name: the ROM is now `rom_16x4` (original: `full_adder`). The mapping equals the original table.
- **[16 x 4 ROM](11-Memory-Design-RAM-and-ROM/02-ROM-16x4/README.md)**: Include mismatch: the new testbench does not `include` any file and does not call `$fsdbDumpvars`.
- **[64 x 8 RAM (post-lab)](11-Memory-Design-RAM-and-ROM/03-RAM-64x8/README.md)**: Module name: the RAM is now `ram_64x8` (original: `full_adder`). Behaviour is the same (checked by reading both).
- **[64 x 8 RAM (post-lab)](11-Memory-Design-RAM-and-ROM/03-RAM-64x8/README.md)**: Include mismatch: the new testbench does not `include` any file and does not call `$fsdbDumpvars`.

## Open issues by design

### Combinational Circuit Design

- **[Full Adder (built from two half adders)](01-Combinational-Circuit-Design/02-Full-Adder/README.md)**: The testbench is missing a semicolon after `cin = 0` in the third stimulus block (a = 0, b = 1). As supplied this is a syntax error; it was left unchanged. The waveform in the source was nevertheless captured, so the original testbench was presumably run in a corrected form.
- **[4-bit Ripple Carry Adder](01-Combinational-Circuit-Design/03-Ripple-Carry-Adder-4bit/README.md)**: The testbench writes 4-bit values as bare decimal numbers (e.g. `a = 1100;`, `a = 1111;`), which Verilog reads as decimal and truncates to 4 bits. The waveform confirms this: the second `a` shows `0111`, not `1111`. The intent was probably binary literals (`4'b1111`). Left unchanged.
- **[3-to-8 Decoder with Enable](01-Combinational-Circuit-Design/04-Decoder-3x8/README.md)**: The original 3x8 testbench code was never recovered. `decoder3x8_tb.v` is a newly written replacement, not the original.
### Multiplexer Design

- **[2-to-1 Multiplexer](02-Multiplexer-Design/01-MUX-2x1/README.md)**: In the testbench, "Test Case 7" ends with `#10` without a semicolon. As supplied this is a syntax error; left unchanged.
- **[4-bit ALU](02-Multiplexer-Design/04-ALU-4bit/README.md)**: Waveform pending: the image supplied under the ALU heading belongs to the 8-to-1 multiplexer testbench.
### Finite State Machine

- **[Vending Machine FSM (Moore)](04-Finite-State-Machine/01-Vending-Machine/README.md)**: The source code had lost its line breaks (several statements and comments ran together on single lines). Line breaks were restored without changing any token; a whitespace-insensitive comparison against the source confirmed this.
- **[Moore FSM Sequence Detector](04-Finite-State-Machine/02-Moore-Sequence-Detector/README.md)**: The source code had lost its line breaks. They were restored without changing any token.
- **[Moore FSM Sequence Detector](04-Finite-State-Machine/02-Moore-Sequence-Detector/README.md)**: The detected pattern (1011) is derived here from the state transitions; the source does not state it.
- **[Mealy FSM Sequence Detector](04-Finite-State-Machine/03-Mealy-Sequence-Detector/README.md)**: The source code had lost its line breaks. They were restored without changing any token.
- **[Mealy FSM Sequence Detector](04-Finite-State-Machine/03-Mealy-Sequence-Detector/README.md)**: Waveform pending: the supplied image is labelled `Moore_FSM_TB`.
### Switch-Level Modeling

- **[CMOS Latch](05-Switch-Level-Modeling/05-CMOS-Latch/README.md)**: By inspection, the feedback transmission gate drives a separate net `n2` that is never connected back to `n1`, so no storage loop exists. When `EN = 0` the node `n1` is left floating. This matches the unknown values seen in the waveform. The code was left unchanged.
- **[CMOS Boolean Function (5 inputs)](05-Switch-Level-Modeling/06-CMOS-Boolean-Function/README.md)**: By inspection, the final stage connects four PMOS transistors in parallel to `vdd` and four NMOS transistors in parallel to `gnd` on the same node (`Y_bar`). A valid complementary CMOS gate would need the pull-up and pull-down networks to be duals (series versus parallel). With this arrangement, differing inputs make the PMOS and NMOS devices fight, which simulation can show as X. The code was left unchanged.
### Design of Subsystems

- **[4-bit Carry Save Adder](06-Design-of-Subsystems/01-4bit-Carry-Save-Adder/README.md)**: The corrected design is a replacement: width 5 -> 6 bits, `ripple_adder` instance -> `+` operator. Do not compile it together with the original file (both define `carry_save_adder_4bit`).
- **[4-bit Carry Save Adder](06-Design-of-Subsystems/01-4bit-Carry-Save-Adder/README.md)**: By inspection, the original drops `carry_vec[3]` and cannot represent sums above 31. It is preserved in `Original-Source/` for traceability only.
- **[4-bit Carry Save Adder](06-Design-of-Subsystems/01-4bit-Carry-Save-Adder/README.md)**: The RTL schematic belongs to the original structure.
- **[4-bit Ripple Carry Adder (post-lab comparison)](06-Design-of-Subsystems/02-4bit-Ripple-Carry-Adder/README.md)**: The corrected testbench does not check the results.
### Carry Skip Adder

- **[4-bit Carry Skip Adder](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/README.md)**: The supplied schematic shows different module names (`ripple_carry_4_bit`, `generate_p`, `mux2X1`) from the code.
- **[4-bit Carry Skip Adder](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/README.md)**: The supplied waveform uses lower-case signal names and a stimulus that does not match either testbench.
- **[4-bit Carry Skip Adder](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/README.md)**: The post-lab "Expected Comparison" table does not agree with the actual reports (for example 40 and 42 BELs versus 100 and 25). See the post-lab files in `Synthesis-Reports/`.
- **[4-bit Carry Skip Adder](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/README.md)**: The corrected top module has the same ports and instances as the original. A token comparison shows three differences only: grouped input declaration (`input [3:0] A, B`), `&P` instead of `P[0] & P[1] & P[2] & P[3]`, and `endmodule` instead of `Endmodule`. The originals are kept in `Original-Source/`.
### 4-bit Braun Array Multiplier

- **[4-bit Braun Array Multiplier](08-4bit-Braun-Array-Multiplier/01-4bit-Braun-Array-Multiplier/README.md)**: **Original Braun array source: pending.** The original lab Verilog (design, testbench, reports) was never supplied. The files in this folder are a newly written reference implementation added to fill the gap.
### 4-bit Booth Multiplier

- **[4-bit Booth Multiplier](09-4bit-Booth-Multiplier/01-4bit-Booth-Multiplier/README.md)**: The post-lab testbench was not corrected separately; its original is preserved in `Original-Source/` and does not compile as supplied (`include "booth.v"`, instance `booth`).
- **[4-bit Booth Multiplier](09-4bit-Booth-Multiplier/01-4bit-Booth-Multiplier/README.md)**: The waveform images use lower-case names (`a`, `b`, `p`), so they came from a testbench that is not among the supplied files.
- **[4-bit Booth Multiplier](09-4bit-Booth-Multiplier/01-4bit-Booth-Multiplier/README.md)**: The first two reports are headed `Design : full_adder`, while the design synthesised has 16 ports (4 + 4 + 8), consistent with the Booth multiplier. The heading appears to be stale and was left as supplied.
### 4-bit Wallace Tree Multiplier

- **[4-bit Wallace Tree Multiplier](10-4bit-Wallace-Tree-Multiplier/01-4bit-Wallace-Tree-Multiplier/README.md)**: By inspection, the nets `c10` and `c11` are each driven by several half-adder outputs (`c10` by `HA3`, `HA5` and `HA7`; `c11` by `HA4` and `HA6`) and also fed back into later half adders. The synthesis log reports "Timing loop detected" and disables timing arcs on `HA5/U2` and `HA7/U2`. The simulation screenshot nevertheless shows the expected products for the eight vectors. This structure should be reviewed; it was left unchanged.
- **[4-bit Wallace Tree Multiplier](10-4bit-Wallace-Tree-Multiplier/01-4bit-Wallace-Tree-Multiplier/README.md)**: The testbench uses `$fsdbDumpvars`, a Synopsys/Verdi system task that is not available in every simulator.
- **[4-bit Wallace Tree Multiplier](10-4bit-Wallace-Tree-Multiplier/01-4bit-Wallace-Tree-Multiplier/README.md)**: The waveform image is displayed in picoseconds, while the testbench timescale is 1 ns / 1 ps.
- **[5-bit Wallace Tree Multiplier (post-lab)](10-4bit-Wallace-Tree-Multiplier/02-5bit-Wallace-Tree-Multiplier/README.md)**: The file defines its own `half_adder` and `full_adder` modules whose carry output is named `cout`, whereas the 4-bit design uses `carry`. The two files must not be compiled together.
### Memory Design: RAM and ROM

- **[16 x 4 RAM](11-Memory-Design-RAM-and-ROM/01-RAM-16x4/README.md)**: In the source, the RAM and ROM waveform images were placed under each other's sections. They were matched here by signal content.
- **[16 x 4 ROM](11-Memory-Design-RAM-and-ROM/02-ROM-16x4/README.md)**: The waveform image was placed under the RAM code in the source; it was matched here by signal content.
- **[16 x 4 ROM](11-Memory-Design-RAM-and-ROM/02-ROM-16x4/README.md)**: The new ROM computes `address + 1` instead of listing a table, so it is not a stored-constant table like the original.
- **[64 x 8 RAM (post-lab)](11-Memory-Design-RAM-and-ROM/03-RAM-64x8/README.md)**: The `out` bus is not included in the supplied post-lab waveform.

## Limitations of the preparation

- No Verilog simulator was available, so no design (original, added or corrected) was simulated. Compile-status statements come from reading the code and from the static name/port check described above.
- Results shown are those in the supplied images and reports. Values tabulated in the READMEs were read from those images.
