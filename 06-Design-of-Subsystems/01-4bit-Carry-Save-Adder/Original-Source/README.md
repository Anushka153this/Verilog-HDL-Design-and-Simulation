# Original Source (kept unchanged)

> Author: Anushka Gope

These files were extracted from the lab documents and are preserved exactly (formatting and identity lines aside). They were **replaced in the parent folder** by corrected files and are kept here for traceability. They are not the recommended files to compile.

| Role | File | Top module | Why it was replaced |
|---|---|---|---|
| Design | [`carry_save_adder_4bit.v`](carry_save_adder_4bit.v) | `carry_save_adder_4bit` | Needs `fulladder` and `ripple_adder` |
| Testbench | [`carry_save_adder_4bit_tb.v`](carry_save_adder_4bit_tb.v) | `tb_carry_save_adder_4bit` | Uses `$fsdbDumpvars` |

Several of these files define the same module names as the corrected files, so do not compile the two sets together.
