# Verilog HDL Design and Simulation

A portfolio of eleven Verilog HDL topics covering combinational and sequential design, finite state machines, switch-level modelling, arithmetic subsystems, multipliers and memories. Each topic has its own folder with the Verilog source, testbenches, simulation results and a README.

**Author:** Anushka Gope

> **Original versus added code.** Most files are my original lab code, extracted from the lab documents. Some files were added or corrected later to fill gaps (missing modules, mismatched testbenches). They are labelled in every README, listed in [`Code-Provenance.md`](Code-Provenance.md), and replaced originals are kept unchanged in `Original-Source/` folders. The Braun multiplier code is a **newly written reference implementation**, not my original lab code. The added and corrected files have **not been simulated**.

## Contents

| # | Topic | What it covers | Status |
|---|---|---|---|
| 01 | [Combinational Circuit Design](01-Combinational-Circuit-Design/README.md) | Basic adders and decoders built from gate-level, dataflow and behavioural Verilog: half adder, full adder, 4-bit ripple carry adder, 3-to-8 decoder and 4-to-16 decoder. | Complete |
| 02 | [Multiplexer Design](02-Multiplexer-Design/README.md) | 2-to-1, 4-to-1 and 8-to-1 multiplexers (the 8-to-1 is built hierarchically) and a 4-bit ALU with eight operations. | Complete  |
| 03 | [4-bit Ripple Counter](03-4bit-Ripple-Counter/README.md) | Sequential building blocks and counters: T flip-flop, 4-bit asynchronous ripple counter, D flip-flop and a MOD-10 synchronous counter. | Complete |
| 04 | [Finite State Machine](04-Finite-State-Machine/README.md) | Finite state machines: a coin-operated vending machine, and Moore and Mealy sequence detectors. | Complete  |
| 05 | [Switch-Level Modeling](05-Switch-Level-Modeling/README.md) | Transistor-level (switch-level) models written with Verilog `pmos`, `nmos` and `cmos` primitives: inverter, NAND, NOR, 2:1 multiplexer, latch and a 5-input Boolean function. | Complete |
| 06 | [Design of Subsystems](06-Design-of-Subsystems/README.md) | Arithmetic subsystems built hierarchically: a 4-bit carry save adder, plus ripple carry and carry look-ahead adders compared by synthesis area and power. | Complete  |
| 07 | [Carry Skip Adder](07-Carry-Skip-Adder/README.md) | A 4-bit carry skip adder with area, delay and power reports and a post-lab comparison with a carry save adder. | Complete |
| 08 | [4-bit Braun Array Multiplier](08-4bit-Braun-Array-Multiplier/README.md) | 4-bit Braun array multiplier topic. The original source was missing, so a newly written reference implementation and testbench were added next to the original lab waveform. | Complete |
| 09 | [4-bit Booth Multiplier](09-4bit-Booth-Multiplier/README.md) | 4-bit signed multiplier using Booth's algorithm, with synthesis reports and the post-lab 3 x -7 multiplication. | Complete  |
| 10 | [4-bit Wallace Tree Multiplier](10-4bit-Wallace-Tree-Multiplier/README.md) | 4-bit Wallace-tree style multiplier with synthesis reports, the post-lab 5-bit version and a delay comparison of the Braun, Booth and Wallace multipliers. | Complete |
| 11 | [Memory Design: RAM and ROM](11-Memory-Design-RAM-and-ROM/README.md) | Memory models: 16 x 4 RAM, 16 x 4 ROM and the post-lab 64 x 8 RAM. | Complete  |

## Design Inventory

| Topic | Design | Design file | Testbench | Waveform | Reports |
|---|---|---|---|---|---|
| 01 | [Half Adder](01-Combinational-Circuit-Design/01-Half-Adder/README.md) | Original | Original | Yes | - |
| 01 | [Full Adder (built from two half adders)](01-Combinational-Circuit-Design/02-Full-Adder/README.md) | Original | Original | Yes | - |
| 01 | [4-bit Ripple Carry Adder](01-Combinational-Circuit-Design/03-Ripple-Carry-Adder-4bit/README.md) | Original | Original | Yes | - |
| 01 | [3-to-8 Decoder with Enable](01-Combinational-Circuit-Design/04-Decoder-3x8/README.md) | Original | Added | Yes | - |
| 01 | [4-to-16 Decoder (built from two 3x8 decoders)](01-Combinational-Circuit-Design/05-Decoder-4x16/README.md) | Original | Original | Yes | - |
| 02 | [2-to-1 Multiplexer](02-Multiplexer-Design/01-MUX-2x1/README.md) | Original | Original | Yes | - |
| 02 | [4-to-1 Multiplexer](02-Multiplexer-Design/02-MUX-4x1/README.md) | Original | Original | Yes | - |
| 02 | [8-to-1 Multiplexer (from two 4x1 and one 2x1)](02-Multiplexer-Design/03-MUX-8x1/README.md) | Original | Original | Yes | - |
| 02 | [4-bit ALU](02-Multiplexer-Design/04-ALU-4bit/README.md) | Original | Original | Pending | - |
| 03 | [T Flip-Flop](03-4bit-Ripple-Counter/01-T-Flip-Flop/README.md) | Original | Original | Yes | - |
| 03 | [4-bit Asynchronous Ripple Counter](03-4bit-Ripple-Counter/02-4bit-Ripple-Counter/README.md) | Original | Original | Yes | - |
| 03 | [D Flip-Flop](03-4bit-Ripple-Counter/03-D-Flip-Flop/README.md) | Original | Original | Yes | - |
| 03 | [MOD-10 (Decade) Synchronous Counter](03-4bit-Ripple-Counter/04-MOD-10-Counter/README.md) | Original | Original | Yes | - |
| 04 | [Vending Machine FSM (Moore)](04-Finite-State-Machine/01-Vending-Machine/README.md) | Original | Original | Yes | - |
| 04 | [Moore FSM Sequence Detector](04-Finite-State-Machine/02-Moore-Sequence-Detector/README.md) | Original | Original | Yes | - |
| 04 | [Mealy FSM Sequence Detector](04-Finite-State-Machine/03-Mealy-Sequence-Detector/README.md) | Original | Original | Unverified | - |
| 05 | [CMOS Inverter](05-Switch-Level-Modeling/01-CMOS-Inverter/README.md) | Original | Original | Yes | - |
| 05 | [CMOS NAND Gate](05-Switch-Level-Modeling/02-CMOS-NAND/README.md) | Original | Original | Yes | - |
| 05 | [CMOS NOR Gate](05-Switch-Level-Modeling/03-CMOS-NOR/README.md) | Original | Original | Yes | - |
| 05 | [CMOS 2:1 Multiplexer](05-Switch-Level-Modeling/04-CMOS-MUX-2x1/README.md) | Original | Original | Yes | - |
| 05 | [CMOS Latch](05-Switch-Level-Modeling/05-CMOS-Latch/README.md) | Original | Original | Yes | - |
| 05 | [CMOS Boolean Function (5 inputs)](05-Switch-Level-Modeling/06-CMOS-Boolean-Function/README.md) | Original | Original | Yes | - |
| 06 | [4-bit Carry Save Adder](06-Design-of-Subsystems/01-4bit-Carry-Save-Adder/README.md) | Corrected | Corrected | Pending | - |
| 06 | [4-bit Ripple Carry Adder (post-lab comparison)](06-Design-of-Subsystems/02-4bit-Ripple-Carry-Adder/README.md) | Original | Corrected | Pending | Yes |
| 06 | [4-bit Carry Look-Ahead Adder (post-lab comparison)](06-Design-of-Subsystems/03-4bit-Carry-Look-Ahead-Adder/README.md) | Original | Original | Pending | Yes |
| 07 | [4-bit Carry Skip Adder](07-Carry-Skip-Adder/01-4bit-Carry-Skip-Adder/README.md) | Corrected | Corrected | Yes | Yes |
| 08 | [4-bit Braun Array Multiplier](08-4bit-Braun-Array-Multiplier/01-4bit-Braun-Array-Multiplier/README.md) | Reference (new) | Reference (new) | Yes | - |
| 09 | [4-bit Booth Multiplier](09-4bit-Booth-Multiplier/01-4bit-Booth-Multiplier/README.md) | Original | Corrected | Yes | Yes |
| 10 | [4-bit Wallace Tree Multiplier](10-4bit-Wallace-Tree-Multiplier/01-4bit-Wallace-Tree-Multiplier/README.md) | Original | Original | Yes | Yes |
| 10 | [5-bit Wallace Tree Multiplier (post-lab)](10-4bit-Wallace-Tree-Multiplier/02-5bit-Wallace-Tree-Multiplier/README.md) | Original | Original | Yes | - |
| 11 | [16 x 4 RAM](11-Memory-Design-RAM-and-ROM/01-RAM-16x4/README.md) | Corrected | Corrected | Yes | - |
| 11 | [16 x 4 ROM](11-Memory-Design-RAM-and-ROM/02-ROM-16x4/README.md) | Corrected | Corrected | Yes | - |
| 11 | [64 x 8 RAM (post-lab)](11-Memory-Design-RAM-and-ROM/03-RAM-64x8/README.md) | Corrected | Corrected | Yes | - |

33 designs in 11 topics. "Original" = extracted from the lab documents (formatting only). "Corrected" and "Added" = newly prepared files merged in later (not recovered originals, not simulated); replaced originals are kept in each design's `Original-Source/` folder. "Reference (new)" = newly written to stand in for missing source. "Pending" = not available. "Unverified" = image labels do not match the design.

## Repository Structure

```text
Verilog-HDL-Design-and-Simulation/
├── README.md
├── Known-Issues.md
├── Code-Provenance.md
├── 01-Combinational-Circuit-Design/
├── 02-Multiplexer-Design/
├── 03-4bit-Ripple-Counter/
├── 04-Finite-State-Machine/
├── 05-Switch-Level-Modeling/
├── 06-Design-of-Subsystems/
├── 07-Carry-Skip-Adder/
├── 08-4bit-Braun-Array-Multiplier/
├── 09-4bit-Booth-Multiplier/
├── 10-4bit-Wallace-Tree-Multiplier/
├── 11-Memory-Design-RAM-and-ROM/
└── LICENSE
```

Inside each topic folder:

```text
NN-Topic/
├── README.md
└── NN-Design/
    ├── README.md
    ├── <design>.v
    ├── <design>_tb.v
    ├── Original-Source/        (only where an original file was replaced)
    └── Simulation-Results/
        ├── waveform.png
        └── README.md
```

Some designs also have a `Synthesis-Reports/` folder with the area, power and timing reports from the lab material.

## How This Portfolio Was Prepared

- Code and testbenches were extracted from the lab documents into separate `.v` and `_tb.v` files.
- **Original logic is preserved.** Only formatting (indentation, restored line breaks) and identity lines were changed. Errors, mismatches and incomplete code are documented in [`Known-Issues.md`](Known-Issues.md).
- A Missing-Code Pack was merged later: nine designs received added or corrected files. Each was compared with the original before replacing anything.
- Waveforms, schematics and reports are the genuine ones from the lab documents. No simulation output, screenshot or verification result was fabricated for added code.
- No simulator was available, so nothing was re-simulated; results shown are those captured in the original lab work.

## Running a Design

Any Verilog simulator can be used (for example ModelSim/Questa or Icarus Verilog). Each design README lists the files to compile. The added and corrected files passed a static check that every instantiated module exists and every named port is valid; that is not a simulation.

## Tools Seen in the Source

- Waveform screenshots in the style of ModelSim and of an FSDB-capable waveform viewer (the original testbenches call `$fsdbDumpvars`).
- Synopsys Design Compiler style area / power / timing reports (topics 09, 10) and Xilinx XST / XPower style reports (topics 06, 07).

## License

Released under the MIT License. See [`LICENSE`](LICENSE).
