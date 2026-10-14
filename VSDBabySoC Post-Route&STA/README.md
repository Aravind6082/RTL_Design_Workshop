# VSDBabySoC Post-Route Static Timing Analysis

## Project Overview
This repository documents Static Timing Analysis (STA) for the VSDBabySoC design using the SKY130 HD standard-cell library and OpenSTA. The submission contains timing reports collected across 16 process-voltage-temperature (PVT) corners, together with available physical-design and routing reports.

## Objectives
- Inspect setup and hold timing across multiple PVT corners.
- Identify worst slack values and timing violations.
- Preserve the reports and evidence used for project documentation.
- Practice an RTL-to-synthesis and timing-analysis workflow.

## Tools and Technology
- VSDBabySoC
- SKY130 HD standard-cell library
- Yosys synthesis
- OpenSTA
- OpenLane / OpenROAD-related flow artifacts (where included)

## Repository Contents
- `STA_Reports/` — setup and hold timing reports and `STA_Summary.txt`.
- `Physical_Design/` — physical-design artifacts included in the submission.
- `Routing_Reports/` — routing-related reports included in the submission.
- `screenshots/` — selected terminal evidence from synthesis and STA runs.

## Results and Interpretation
The supplied reports show that timing results differ by PVT corner. Some reports have positive slack (timing met), while others show negative slack (timing violations). Therefore, this project should **not** be described as passing timing at every corner. Refer to the individual setup/hold reports and `STA_Reports/STA_Summary.txt` for the reported values.

## How to Review
1. Open `STA_Reports/STA_Summary.txt` for the overview.
2. Open the individual `*_setup.rpt` files to inspect setup paths.
3. Open the individual `*_hold.rpt` files to inspect hold paths.
4. Compare results across the 16 PVT corners and record the worst slack and violation status.
5. Use the included screenshots as execution evidence, not as a substitute for the text reports.

## Notes
- Report values reflect the supplied run artifacts; rerunning the flow may produce different results if scripts, constraints, libraries, or tool versions change.
- Verify units and timing constraints in the source SDC before making design-level conclusions.
- Do not upload proprietary or licensed PDK/library files unless redistribution is permitted.

## Author
VLSI Workshop Project — VSDBabySoC Post-Route STA Analysis
