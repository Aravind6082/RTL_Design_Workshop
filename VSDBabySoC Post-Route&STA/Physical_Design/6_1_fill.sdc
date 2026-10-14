###############################################################################
# Created by write_sdc
###############################################################################
current_design vsdbabysoc
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clk -period 12.0000 [get_pins {pll/CLK}]
set_propagated_clock [get_clocks {core_clk}]
set_input_delay 2.4000 -clock [get_clocks {core_clk}] -add_delay [get_ports {ENb_CP}]
set_input_delay 2.4000 -clock [get_clocks {core_clk}] -add_delay [get_ports {ENb_VCO}]
set_input_delay 2.4000 -clock [get_clocks {core_clk}] -add_delay [get_ports {REF}]
set_input_delay 2.4000 -clock [get_clocks {core_clk}] -add_delay [get_ports {VCO_IN}]
set_input_delay 2.4000 -clock [get_clocks {core_clk}] -add_delay [get_ports {VREFH}]
set_input_delay 2.4000 -clock [get_clocks {core_clk}] -add_delay [get_ports {reset}]
set_output_delay 2.4000 -clock [get_clocks {core_clk}] -add_delay [get_ports {OUT}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0170 [get_ports {OUT}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ENb_CP}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ENb_VCO}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {REF}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {VCO_IN}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {VREFH}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]
