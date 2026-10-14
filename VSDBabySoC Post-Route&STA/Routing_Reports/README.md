# Routing Reports

This folder contains routing-stage reports for the VSDBabySoC physical-design flow.

## Included files
- `5_global_route.rpt` — global-routing stage report, including routing estimates and congestion-related information reported by the flow.
- `5_detailed_route.rpt` — detailed-routing stage report.
- `5_route_drc.rpt` — design-rule-check (DRC) report generated at the routing stage.

## How to review
1. Open each report in a text editor.
2. Check the report summary and any warnings or violations.
3. Record congestion, design-rule violations, and routing completion status only as stated in the actual report.
4. Use the physical-design artifacts in `../Physical_Design/` alongside these reports when further inspection is required.

These reports are evidence from the supplied run. Re-run the flow to regenerate results after changing RTL, constraints, libraries, or tool settings.
