# Original Source (kept unchanged)

> Author: Anushka Gope

These files were extracted from the lab documents and are preserved exactly (formatting and identity lines aside). They were **replaced in the parent folder** by corrected files and are kept here for traceability. They are not the recommended files to compile.

| Role | File | Top module | Why it was replaced |
|---|---|---|---|
| Testbench | [`booth_multiplier_tb.v`](booth_multiplier_tb.v) | `booth _tb` | Module name contains a space; instantiates `booth` instead of `booth_v` |
| Testbench (post-lab) | [`booth_postlab_tb.v`](booth_postlab_tb.v) | `booth_tb` | Includes `booth.v` and instantiates `booth` with lower-case ports |

Several of these files define the same module names as the corrected files, so do not compile the two sets together.
