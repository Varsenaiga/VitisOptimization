############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Testing
add_files master.cpp
add_files master.h
add_files model_functions.h
add_files parameters.h
add_files -tb file.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb file.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb main.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvf1517-3-e}
create_clock -period 10 -name default
#source "./Testing/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
