set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports *]

# Clocks from internal generators

set_property PACKAGE_PIN N14 [get_ports clk]
create_clock -period 30.518 -name clk [get_ports clk]

set_property PACKAGE_PIN F15 [get_ports {led}]

set_property PACKAGE_PIN M16 [get_ports {increase_duty}]
set_property PACKAGE_PIN M15 [get_ports {decrease_duty}]
