#set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports PWM0]
#set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports PWM1]
#set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports PWM2]
#set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports PWM3]

set_property IOSTANDARD LVCMOS18 [get_ports {PWM0}]
set_property IOSTANDARD LVCMOS18 [get_ports {PWM1}]
set_property IOSTANDARD LVCMOS18 [get_ports {PWM2}]
set_property IOSTANDARD LVCMOS18 [get_ports {PWM3}]


set_property PACKAGE_PIN Y18 [get_ports {PWM0}]
set_property PACKAGE_PIN Y19 [get_ports {PWM1}]
set_property PACKAGE_PIN Y16 [get_ports {PWM2}]
set_property PACKAGE_PIN Y17 [get_ports {PWM3}]
