# Original Source (kept unchanged)

> Author: Anushka Gope

These files were extracted from the lab documents and are preserved exactly (formatting and identity lines aside). They were **replaced in the parent folder** by corrected files and are kept here for traceability. They are not the recommended files to compile.

| Role | File | Top module | Why it was replaced |
|---|---|---|---|
| Design | [`carry_skip_adder.v`](carry_skip_adder.v) | `csa` | Ends with `Endmodule`; needs `rca` and `mux_2to1` |
| Testbench | [`carry_skip_adder_tb.v`](carry_skip_adder_tb.v) | `csa_tb` | Loops cover 264 cases, not 256 or 512 |

Several of these files define the same module names as the corrected files, so do not compile the two sets together.
