#set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports PWM0]
#set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports PWM1]
#set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports PWM2]
#set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports PWM3]

set_property IOSTANDARD LVCMOS18 [get_ports {PWM0}]
set_property IOSTANDARD LVCMOS18 [get_ports {PWM1}]
set_property IOSTANDARD LVCMOS18 [get_ports {PWM2}]
set_property IOSTANDARD LVCMOS18 [get_ports {PWM3}]

set_property PACKAGE_PIN V16 [get_ports {PWM0}]
set_property PACKAGE_PIN W16 [get_ports {PWM1}]
set_property PACKAGE_PIN V12 [get_ports {PWM2}]
set_property PACKAGE_PIN W13 [get_ports {PWM3}]


#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { jb[4] }]; #IO_L18P_T2_34 Sch=jb_p[3]
#set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { jb[5] }]; #IO_L18N_T2_34 Sch=jb_n[3]
#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { jb[6] }]; #IO_L4P_T0_34 Sch=jb_p[4]
#set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { jb[7] }]; #IO_L4N_T0_34 Sch=jb_n[4]

set_property IOSTANDARD LVCMOS18 [get_ports {BTN[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {BTN[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {BTN[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {BTN[3]}]

set_property PACKAGE_PIN U18 [get_ports {BTN[0]}]
set_property PACKAGE_PIN U19 [get_ports {BTN[1]}]
set_property PACKAGE_PIN W18 [get_ports {BTN[2]}]
set_property PACKAGE_PIN W19 [get_ports {BTN[3]}]
