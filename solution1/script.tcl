############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mabonSOC
set_top mabonsoc
add_files mabonSOC/mabonsoc.cpp
add_files mabonSOC/mabonSOC.h
add_files -tb mabonSOC/mobonsoctb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -use_netlist top -version 1.1.1 -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
#source "./mabonSOC/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -version "1.1.1"
