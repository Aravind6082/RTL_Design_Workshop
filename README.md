RTL Design & Synthesis Workshop
A practical collection of RTL design, simulation, logic synthesis, optimization, gate-level simulation, physical-design, and static timing analysis exercises. This repository documents my learning and experiments with Verilog HDL and open-source EDA tools, with screenshots and reports organized by workshop day and implementation stage.
GitHub repository: Aravind6082/RTL_Design_Workshop
Table of Contents
- Overview
- Tools and Technologies
- Repository Structure
- Workshop Modules
  - Day 1 — RTL Design and Simulation
  - Day 2 — Sequential Logic and RTL Synthesis
  - Day 3 — Combinational and Sequential Optimization
  - Day 4 — GLS and RTL Coding Practices
  - Day 5 — Optimization in Synthesis
  - Day 6 — Pre- and Post-Synthesis Comparison
  - Day 7 — Sequence Detector
- Gate-Level Simulation Lab
- Physical Design
- VSDBabySoC Post-Route STA
- Typical RTL-to-Physical-Design Flow
- Learning Outcomes
- Notes
Overview
The workshop follows digital-design concepts from RTL description and functional simulation through synthesis, technology mapping, and selected physical-design and timing-analysis activities. Each day has a dedicated README and supporting images. Additional folders contain gate-level simulation evidence, physical-design exercises, and VSDBabySoC timing reports.
The repository is intended as a learning record and reference. Results should be interpreted using the included reports and screenshots; the presence of a screenshot alone does not imply that every implementation check passed.
Tools and Technologies
- Verilog HDL — RTL description of digital hardware
- Icarus Verilog — Verilog compilation and simulation
- GTKWave — waveform inspection
- Yosys — logic synthesis and optimization
- SKY130 / SKY130 HD — open-source process-design-kit and standard-cell library context used in the included exercises
- OpenLane / OpenROAD flow tools — physical-design workflow artifacts where included
- OpenSTA — static timing analysis
- Magic — layout viewing and physical-layout exercises
- ngspice — circuit simulation and characterization exercises
- Git and GitHub — project organization and version control
Tool availability and exact commands depend on the exercise and installed environment.
Repository Structure
RTL_Design_Workshop/
├── README.md
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
Workshop Modules
Day 1 — RTL Design and Simulation
Focus: A 2-to-1 multiplexer, RTL description, testbench-based functional simulation, waveform inspection, and the basic synthesis flow.
The exercise demonstrates how a select input controls which data input reaches the output, and how simulation waveforms can be used to check the expected behavior.
Evidence: [Day 1 README](Day_1/README.md)

Day 2 — Sequential Logic and RTL Synthesis
Focus: D flip-flops, asynchronous reset and set behavior, multiplier synthesis examples, and hierarchical RTL structures.
The examples show how sequential elements and module hierarchy are represented in synthesized netlists.
Evidence: [Day 2 README](Day_2/README.md)

Day 3 — Combinational and Sequential Optimization
Focus: Constant optimization, sequential logic optimization, and counter-related synthesis examples.
The exercises explore how synthesis can simplify logic and remove unnecessary hardware while maintaining the intended behavior of a design.
Evidence: [Day 3 README](Day_3/README.md)

Day 4 — GLS and RTL Coding Practices
Focus: Ternary-operator multiplexer coding, blocking-assignment caveats, incomplete multiplexer examples, and gate-level simulation concepts.
This module highlights the importance of writing synthesizable RTL and checking the hardware structure inferred by synthesis.
Evidence: [Day 4 README](Day_4/README.md)

Day 5 — Optimization in Synthesis
Focus: Complete and incomplete if and case assignments, mux and demux coding, generate constructs, and a ripple-carry-adder example.
Incomplete combinational assignments can infer latches because the circuit must retain a previous value in conditions where no new assignment is made. The examples illustrate why assignment coverage and coding style matter.
Evidence: [Day 5 README](Day_5/README.md)

Day 6 — Pre- and Post-Synthesis Comparison
Focus: Comparing pre-synthesis and post-synthesis design views.
This exercise helps illustrate how a design's representation changes during synthesis. Compare the included images alongside the Day 6 documentation.
Evidence: [Day 6 README](Day_6/README.md)

Day 7 — Sequence Detector
Focus: Sequence-detector design and verification, RTL simulation waveforms, output behavior, and a synthesized schematic view.
A sequence detector monitors a stream of input bits and signals when the specified pattern is recognized. The waveform and schematic provide complementary views of its behavior and hardware representation.
Evidence: [Day 7 README](Day_7/README.md)

Gate-Level Simulation Lab
The lab_gls/ directory contains documentation and screenshots covering the practical flow for RTL simulation, synthesis, technology mapping, and gate-level simulation. It also includes mux comparisons, VSD BabySoC evidence, and a sequence-detector assessment.
Evidence: [Gate-Level Simulation Lab README](lab_gls/README.md)
Selected examples:

Physical Design
The Physical_Design/ directory contains five module folders with physical-design exercises, screenshots, and module-level documentation.
Module	Main topics represented in the included materials
[Module 1](Physical_Design/Module 1/README.md)	Synthesis reports, design configuration, netlist evidence, and OpenSTA reports
[Module 2](Physical_Design/Module 2/README.md)	Floorplanning, power-distribution network (PDN), and layout viewing
[Module 3](Physical_Design/Module 3/README.md)	ngspice waveforms, inverter layout, extracted layout, and DRC examples
[Module 4](Physical_Design/Module 4/README.md)	Placement, clock-tree synthesis, clock skew, timing slack, and configuration
[Module 5](Physical_Design/Module 5/README.md)	Routing, post-route timing, and routed-layout evidence


Selected physical-design evidence:

VSDBabySoC Post-Route STA
The VSDBabySoC Post-Route&STA/ directory documents static timing analysis for VSDBabySoC using the SKY130 HD standard-cell library and OpenSTA. It includes setup and hold reports across 16 process-voltage-temperature (PVT) corners, plus available physical-design, routing, and screenshot evidence.
Start here: [VSDBabySoC STA README](VSDBabySoC Post-Route%26STA/README.md)
Useful report files:
- STA_Reports/STA_Summary.txt — summary of the supplied timing results
- STA_Reports/ — individual setup and hold reports for the available PVT corners
- Routing_Reports/ — global routing, detailed routing, and routing DRC reports
- screenshots/16_Corner_STA_Summary.png — visual summary of the corner analysis
- screenshots/Worst_SS_Corner.png — screenshot associated with the worst SS-corner report

Timing note: The supplied reports show that timing varies across PVT corners and that some reports contain negative slack. Therefore, this repository does not claim that timing passes at every corner. Use the individual timing reports and STA_Reports/STA_Summary.txt to determine the actual setup and hold status.
Typical RTL-to-Physical-Design Flow
Verilog RTL
    ↓
Testbench and RTL simulation
    ↓
Logic synthesis and optimization
    ↓
Technology mapping
    ↓
Floorplanning and power planning
    ↓
Placement
    ↓
Clock-tree synthesis
    ↓
Routing
    ↓
Static timing analysis and physical checks
    ↓
Review implementation reports and layout evidence
The exact stages completed and the available reports depend on the particular exercise. A screenshot or intermediate result should not be treated as proof that the entire flow completed successfully.
Learning Outcomes
Through these exercises, I practiced and reviewed:
- Describing combinational and sequential logic with Verilog HDL.
- Creating testbenches and interpreting simulation waveforms.
- Understanding synthesis, optimization, and technology-mapped netlists.
- Recognizing coding patterns that can infer unintended latches.
- Comparing pre-synthesis and post-synthesis design representations.
- Understanding sequence-detector verification and gate-level simulation.
- Reviewing physical-design stages such as floorplanning, placement, clock-tree synthesis, and routing.
- Interpreting setup/hold slack and comparing timing across PVT corners.
- Organizing screenshots and reports as evidence for technical documentation.
Notes
- Image links in this README use paths relative to the repository root. Keep the directory names and image filenames unchanged, or update the links when files are renamed.
- Refer to each module's README for the specific exercise details and available evidence.
- Use measured values from the actual tool reports when documenting area, power, delay, slack, or DRC results.
- Tool versions, libraries, constraints, and flow configurations can affect results when the experiments are rerun.
- Check the license and redistribution terms of any PDK, standard-cell library, or third-party files before publishing them.
Repository: Aravind6082/RTL_Design_Workshop
