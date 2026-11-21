# Original Source (kept unchanged)

> Author: Anushka Gope

These files were extracted from the lab documents and are preserved exactly (formatting and identity lines aside). They were **replaced in the parent folder** by corrected files and are kept here for traceability. They are not the recommended files to compile.

| Role | File | Top module | Why it was replaced |
|---|---|---|---|
| Design | [`rom_16x4.v`](rom_16x4.v) | `full_adder` | Module is named `full_adder` |
| Testbench | [`rom_16x4_tb.v`](rom_16x4_tb.v) | `rom_tb` | Includes `full_adder_rtl.v`; uses `$fsdbDumpvars` |

Several of these files define the same module names as the corrected files, so do not compile the two sets together.
