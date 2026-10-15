# Module 5: Final Physical Design Steps

This module covers the final physical-design stages of a Sky130 RTL-to-GDSII flow, including routing concepts, power-distribution network (PDN) generation, global routing, detailed routing, TritonRoute, and design-rule checking (DRC).

> **Documentation note:** This README outlines the workflow and the evidence to collect. Add commands, screenshots, and report values from the actual run before describing a step as completed.

## Objectives

- Understand maze routing and the Lee routing algorithm.
- Review routing constraints and design-rule checking.
- Build and inspect the power-distribution network.
- Understand global routing and detailed routing.
- Run TritonRoute and analyze its routing results.
- Collect final implementation reports and supporting evidence.

## Workflow Overview

1. Review routing concepts and DRC.
2. Generate and inspect the power-distribution network.
3. Run global routing.
4. Run detailed routing with TritonRoute.
5. Review routing, DRC, timing, and area reports.
6. Save the final layout and supporting screenshots.

## 1. SKY130_D5_SK1 — Routing and Design-Rule Checking

Routing connects placed standard cells, the clock network, power network, and I/O pins while following the technology's physical-design rules. DRC checks the layout for violations of those rules.

### Lab steps

1. Review the concept of maze routing.
2. Study the operation and conclusions of Lee's routing algorithm.
3. Run design-rule checking (DRC) and inspect the report.

### Evidence and results to record

- Routing setup and relevant configuration.
- Commands used to run routing and DRC.
- Screenshots of the routed layout and terminal output.
- DRC violation count and the final DRC report.
- A short explanation of any remaining violations.

**Results:** Add measurements and conclusions from the actual run here. Do not enter a zero-violation result unless the report confirms it.

## 2. SKY130_D5_SK2 — Power-Distribution Network

The power-distribution network (PDN) delivers power and ground to the standard cells. Depending on the design and configuration, it may include core rails, straps, rings, and connections between power ports and cell rows.

### Lab steps

1. Generate the power-distribution network using the flow's configuration.
2. Review the steps from power-grid setup to the completed network.
3. Inspect the generated rails, straps, and power connections.
4. Check power connectivity using the available flow reports or verification commands.

### Evidence and results to record

- PDN configuration and relevant commands.
- Generated files and reports.
- Screenshots showing the power rails and straps.
- Power/ground connectivity-check results.
- Any warnings or errors reported by the tools.

**Results:** Describe what the actual PDN view and connectivity reports show.

## 3. SKY130_D5_SK3 — TritonRoute Flow

Global routing assigns approximate routing resources, while detailed routing creates the physical wire and via geometry needed to complete the connections. TritonRoute is used for detailed routing in the relevant OpenROAD/OpenLane flow.

### Lab steps

1. Review the TritonRoute features covered by the lab.
2. Study the routing method and its stages.
3. Run detailed routing using the project's configured flow.
4. Analyze the routing report and inspect the routed layout.

### Evidence and results to record

- TritonRoute commands or flow stage used.
- Screenshots of the routing process and completed layout.
- Wire and via counts, if reported.
- DRC results and any remaining violations.
- Routing-report observations, including warnings or failed connections.

**Results:** Add the actual report values and summarize whether routing completed successfully.

## Final Implementation Checklist

- [ ] Power-distribution network generated and checked.
- [ ] Global routing completed.
- [ ] Detailed routing completed.
- [ ] TritonRoute report saved and reviewed.
- [ ] DRC report collected and violation count recorded.
- [ ] Final layout screenshots attached.
- [ ] Final timing and area results recorded.
- [ ] Remaining warnings or violations documented.
- [ ] Final layout/database files saved in the project directory.

## Flow Summary

```text
Power-distribution network
          ↓
Global routing
          ↓
Detailed routing (TritonRoute)
          ↓
Routing report review
          ↓
Design-rule checking
          ↓
Final layout and implementation reports
```

The exact ordering of report generation and DRC checks depends on the flow configuration. Follow the actual run sequence shown in your tool logs.

## Notes and Attachments

Add the relevant screenshots, terminal commands, reports, final layout files, and conclusions below. Use the exact filenames from your project directory so that Markdown image links work.

Example image syntax:

```markdown
![Description of the screenshot](actual_image_filename.png)
```

## Conclusion

This module provides a checklist for the final physical-design stages of a Sky130 RTL-to-GDSII flow. Successful completion should be supported by the actual PDN, routing, DRC, timing, and area reports. A completed routing stage alone does not establish that all design-rule checks passed or that final timing requirements were met.

