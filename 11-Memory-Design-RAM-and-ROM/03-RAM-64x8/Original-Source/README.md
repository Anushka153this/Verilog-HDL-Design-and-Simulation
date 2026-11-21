# Original Source (kept unchanged)

> Author: Anushka Gope

These files were extracted from the lab documents and are preserved exactly (formatting and identity lines aside). They were **replaced in the parent folder** by corrected files and are kept here for traceability. They are not the recommended files to compile.

| Role | File | Top module | Why it was replaced |
|---|---|---|---|
| Design | [`ram_64x8.v`](ram_64x8.v) | `full_adder` | Module is named `full_adder` |
| Testbench | [`ram_64x8_tb.v`](ram_64x8_tb.v) | `ramm_tb` | Includes `full_adder_rtl.v`; uses `$fsdbDumpvars` |

Several of these files define the same module names as the corrected files, so do not compile the two sets together.
