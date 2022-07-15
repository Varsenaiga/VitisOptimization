############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Tutorial
set_top master
add_files Tutorial/master.cpp
add_files Tutorial/master.h
add_files -tb Tutorial/main.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7k160ti-ffv676-2L}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -vivado_clock 10
#source "./Tutorial/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
