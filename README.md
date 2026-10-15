# RTL Design & Synthesis Workshop

A practical collection of RTL design, simulation, logic synthesis, optimization, gate-level simulation, physical-design, and static timing analysis exercises.

This repository documents my learning and experiments with Verilog HDL and open-source EDA tools, with screenshots, reports, and documentation organized by workshop day and implementation stage.

**GitHub Repository:** [Aravind6082/RTL_Design_Workshop](https://github.com/Aravind6082/RTL_Design_Workshop)

## Table of Contents

- [Overview](#overview)
- [Workshop Demonstration Video](#workshop-demonstration-video)
- [Tools and Technologies](#tools-and-technologies)
- [Repository Structure](#repository-structure)
- [Workshop Modules](#workshop-modules)
  - [Day 1 — RTL Design and Simulation](#day-1--rtl-design-and-simulation)
  - [Day 2 — Sequential Logic and RTL Synthesis](#day-2--sequential-logic-and-rtl-synthesis)
  - [Day 3 — Combinational and Sequential Optimization](#day-3--combinational-and-sequential-optimization)
  - [Day 4 — GLS and RTL Coding Practices](#day-4--gls-and-rtl-coding-practices)
  - [Day 5 — Optimization in Synthesis](#day-5--optimization-in-synthesis)
  - [Day 6 — Pre- and Post-Synthesis Comparison](#day-6--pre--and-post-synthesis-comparison)
  - [Day 7 — Sequence Detector](#day-7--sequence-detector)
- [Gate-Level Simulation Lab](#gate-level-simulation-lab)
- [Physical Design](#physical-design)
- [VSDBabySoC Post-Route STA](#vsdbabysoc-post-route-sta)
- [Typical RTL-to-Physical-Design Flow](#typical-rtl-to-physical-design-flow)
- [Learning Outcomes](#learning-outcomes)
- [Notes](#notes)

## Overview

The workshop follows digital-design concepts from RTL description and functional simulation through synthesis, technology mapping, and selected physical-design and timing-analysis activities.

Each workshop day has a dedicated README and supporting evidence where available. Additional folders contain gate-level simulation exercises, physical-design activities, and VSDBabySoC timing reports.

The repository serves as a learning record and technical reference. Results should be interpreted using the included reports and screenshots; the presence of a screenshot alone does not establish that every implementation check passed.

## Workshop Demonstration Video

The following video presents my practical work and learning throughout the RTL Design & Synthesis Workshop. It provides an overview of the workshop environment, project organization, selected implementation stages, and supporting technical evidence.

**Video file:** `final_vedio.mp4`

- [Open the video file on GitHub](final_vedio.mp4)
- [Download the final workshop demonstration](https://github.com/Aravind6082/RTL_Design_Workshop/raw/refs/heads/main/final_vedio.mp4)

**Format:** MP4  
**Location:** Repository root

**Note:** GitHub may not preview a video directly on its file page. Use the download link if the preview is unavailable. The video link assumes the file remains in the repository root on the `main` branch.

## Tools and Technologies

| Tool or Technology | Purpose |
|---|---|
| Verilog HDL | RTL description of digital hardware |
| Icarus Verilog | Verilog compilation and simulation |
| GTKWave | Simulation waveform inspection |
| Yosys | Logic synthesis and optimization |
| SKY130 / SKY130 HD | Open-source process-design-kit and standard-cell library context |
| OpenLane / OpenROAD | Physical-design workflow exercises where included |
| OpenSTA | Static timing analysis |
| Magic | Layout viewing and physical-layout exercises |
| ngspice | Circuit simulation and characterization exercises |
| Git and GitHub | Version control and project documentation |

Tool availability, commands, versions, and results depend on the individual exercise and installed environment.

## Repository Structure

The following tree summarizes the main repository organization. Some folders contain additional screenshots, reports, and supporting files.

```text
RTL_Design_Workshop/
├── README.md
├── final_vedio.mp4
├── Day_1/
│   ├── README.md
│   └── images/
├── Day_2/
│   ├── README.md
│   └── images/
├── Day_3/
│   ├── README.md
│   └── images/
├── Day_4/
│   ├── README.md
│   └── images/
├── Day_5/
│   ├── README.md
│   └── images/
├── Day_6/
│   ├── README.md
│   ├── pre_synthesis.png
│   ├── post_synthesis.png
│   └── readability_enhanced/
├── Day_7/
│   ├── README.md
│   ├── sequence-detector evidence images
│   └── readability_enhanced/
├── lab_gls/
│   ├── README.md
│   └── screenshots/
├── Physical_Design/
│   ├── Module 1/
│   ├── Module 2/
│   ├── Module 3/
│   ├── Module 4/
│   └── Module 5/
└── VSDBabySoC Post-Route&STA/
    ├── README.md
    ├── STA_Reports/
    ├── Physical_Design/
    ├── Routing_Reports/
    └── screenshots/
```

## Workshop Modules

### Day 1 — RTL Design and Simulation

**Focus:** A 2-to-1 multiplexer, RTL description, testbench-based functional simulation, waveform inspection, and introductory synthesis concepts.

The exercise demonstrates how a select input controls which data input reaches the output. Simulation waveforms help verify the expected behavior of the design.

**Documentation:** [Day 1 README](Day_1/README.md)

### Day 2 — Sequential Logic and RTL Synthesis

**Focus:** D flip-flops, asynchronous reset and set behavior, multiplier synthesis examples, and hierarchical RTL structures.

The exercises introduce sequential logic and demonstrate how module hierarchy and sequential elements are represented in synthesized netlists.

**Documentation:** [Day 2 README](Day_2/README.md)

### Day 3 — Combinational and Sequential Optimization

**Focus:** Constant optimization, sequential logic optimization, and counter-related synthesis examples.

These exercises explore how synthesis tools simplify logic, optimize hardware structures, and remove unnecessary logic while preserving intended design behavior.

**Documentation:** [Day 3 README](Day_3/README.md)

### Day 4 — GLS and RTL Coding Practices

**Focus:** Ternary-operator multiplexer coding, blocking-assignment considerations, incomplete multiplexer examples, and gate-level simulation concepts.

This module highlights the importance of synthesizable RTL, appropriate assignment styles, and verification of the hardware structure inferred by synthesis.

**Documentation:** [Day 4 README](Day_4/README.md)

### Day 5 — Optimization in Synthesis

**Focus:** Complete and incomplete `if` and `case` assignments, multiplexer and demultiplexer coding, generate constructs, and a ripple-carry-adder example.

Incomplete combinational assignments can infer latches because the circuit must retain a previous value when no new assignment is made. The exercises illustrate why complete assignment coverage and coding style are important.

**Documentation:** [Day 5 README](Day_5/README.md)

### Day 6 — Pre- and Post-Synthesis Comparison

**Focus:** Comparing pre-synthesis and post-synthesis design representations.

The exercise demonstrates how RTL is transformed during synthesis into a hardware-oriented representation. The included images should be reviewed alongside the module documentation.

**Documentation:** [Day 6 README](Day_6/README.md)

**Evidence files, where present:**
- `pre_synthesis.png`
- `post_synthesis.png`
- `readability_enhanced/`

### Day 7 — Sequence Detector

**Focus:** Sequence-detector design and verification, RTL simulation waveforms, output behavior, and a synthesized schematic view.

A sequence detector monitors a stream of input bits and signals when a specified pattern is recognized. The waveform illustrates functional behavior, while the synthesized schematic provides a view of the inferred hardware structure.

**Documentation:** [Day 7 README](Day_7/README.md)

## Gate-Level Simulation Lab

The `lab_gls/` directory contains documentation and screenshots related to RTL simulation, synthesis, technology mapping, and gate-level simulation.

The available material also includes mux comparisons, VSDBabySoC evidence, and sequence-detector assessment activities.

**Documentation:** [Gate-Level Simulation Lab README](lab_gls/README.md)

The exact simulation stages, netlists, testbenches, and results should be verified against the files included in the lab directory.

## Physical Design

The `Physical_Design/` directory contains five module folders with physical-design exercises, module-level documentation, screenshots, and reports where available.

| Module | Main topics |
|---|---|
| [Module 1](Physical_Design/Module%201/README.md) | Synthesis reports, design configuration, netlist evidence, and OpenSTA reports |
| [Module 2](Physical_Design/Module%202/README.md) | Floorplanning, power-distribution network (PDN), and layout viewing |
| [Module 3](Physical_Design/Module%203/README.md) | ngspice waveforms, inverter layout, extracted layout, and DRC examples |
| [Module 4](Physical_Design/Module%204/README.md) | Placement, clock-tree synthesis, clock skew, timing slack, and configuration |
| [Module 5](Physical_Design/Module%205/README.md) | Routing, post-route timing, and routed-layout evidence |

### Physical-Design Stages

The exercises cover selected stages of the physical-design process:

1. Design configuration and synthesis.
2. Floorplanning and power planning.
3. Standard-cell placement.
4. Clock-tree synthesis.
5. Global and detailed routing.
6. Static timing analysis and physical verification.

Not every exercise necessarily completes every stage. Consult each module's README and reports to establish which stages were executed successfully.

## VSDBabySoC Post-Route STA

The `VSDBabySoC Post-Route&STA/` directory documents static timing analysis activities for VSDBabySoC using the SKY130 HD standard-cell library and OpenSTA.

The supplied material includes setup and hold reports across 16 process-voltage-temperature (PVT) corners, together with available physical-design, routing, and screenshot evidence.

**Start here:** [VSDBabySoC STA README](VSDBabySoC%20Post-Route%26STA/README.md)

### Important Reports

- `STA_Reports/STA_Summary.txt` — summary of the supplied timing results.
- `STA_Reports/` — individual setup and hold reports for the available PVT corners.
- `Routing_Reports/` — available global-routing, detailed-routing, and routing DRC reports.
- `screenshots/16_Corner_STA_Summary.png` — visual summary of the corner analysis.
- `screenshots/Worst_SS_Corner.png` — screenshot associated with the worst slow-slow corner report.

### Timing Analysis Notes

Timing behavior can vary across PVT corners because process characteristics, supply voltage, and temperature affect circuit delays.

The supplied reports indicate that timing varies across corners and that some reports contain negative slack. Therefore, this repository does not claim that setup and hold timing pass at every corner.

Use the individual timing reports and `STA_Reports/STA_Summary.txt` to determine the actual setup and hold status. A complete timing assessment should also consider the constraints, clock definitions, path coverage, and whether the reports correspond to the intended implementation stage.

## Typical RTL-to-Physical-Design Flow

The following sequence summarizes a typical RTL-to-physical-design workflow.

```text
Verilog RTL
    |
    v
Testbench and RTL Simulation
    |
    v
Logic Synthesis and Optimization
    |
    v
Technology Mapping
    |
    v
Floorplanning and Power Planning
    |
    v
Standard-Cell Placement
    |
    v
Clock-Tree Synthesis
    |
    v
Global and Detailed Routing
    |
    v
Static Timing Analysis
    |
    v
Physical Verification and Report Review
```

The exact stages completed and the available reports depend on the particular exercise. Intermediate screenshots or results should not be treated as proof that the complete flow finished successfully.

## Learning Outcomes

Through these exercises, I practiced and reviewed the following concepts:

- Describing combinational and sequential logic using Verilog HDL.
- Creating testbenches and interpreting simulation waveforms.
- Understanding logic synthesis, optimization, and technology-mapped netlists.
- Recognizing RTL coding patterns that may infer unintended latches.
- Comparing pre-synthesis and post-synthesis design representations.
- Understanding sequence-detector verification and gate-level simulation.
- Reviewing physical-design stages, including floorplanning, placement, clock-tree synthesis, and routing.
- Interpreting setup and hold slack and comparing timing across PVT corners.
- Reviewing available routing and physical-verification reports.
- Organizing screenshots, reports, and documentation in a GitHub repository.

## Notes

- Image links and documentation links use repository-relative paths wherever practical. Keep filenames and directory names unchanged, or update links after renaming files.
- The physical-design directory names contain spaces. Preserve these names when navigating the repository.
- Refer to each module's README for exercise-specific commands, configuration details, screenshots, and results.
- Use measured values from actual tool reports when documenting area, power, delay, slack, or design-rule violations.
- Tool versions, libraries, timing constraints, and flow configurations can affect results when experiments are rerun.
- The supplied timing reports should be used to establish actual timing status; do not assume every PVT corner passes.
- Check the license and redistribution terms of any PDK, standard-cell library, or third-party files before publishing them.

## Repository

**GitHub:** [Aravind6082/RTL_Design_Workshop](https://github.com/Aravind6082/RTL_Design_Workshop)

**Workshop demonstration:** [Download final_vedio.mp4](https://github.com/Aravind6082/RTL_Design_Workshop/raw/refs/heads/main/final_vedio.mp4)

This repository records my practical learning in RTL design, synthesis, simulation, physical design, and static timing analysis using open-source EDA tools.
