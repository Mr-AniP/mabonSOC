vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_5
vlib questa_lib/msim/processing_system7_vip_v1_0_7
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_4
vlib questa_lib/msim/axi_data_fifo_v2_1_18
vlib questa_lib/msim/axi_register_slice_v2_1_19
vlib questa_lib/msim/axi_protocol_converter_v2_1_19

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 questa_lib/msim/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 questa_lib/msim/processing_system7_vip_v1_0_7
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_4 questa_lib/msim/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 questa_lib/msim/axi_data_fifo_v2_1_18
vmap axi_register_slice_v2_1_19 questa_lib/msim/axi_register_slice_v2_1_19
vmap axi_protocol_converter_v2_1_19 questa_lib/msim/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"E:/xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"E:/xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_2/sim/design_1_rst_ps7_0_100M_2.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/3266/hdl/verilog/log_28_15_s.v" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/3266/hdl/verilog/log_28_15_s_log_abkb.v" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/3266/hdl/verilog/log_28_15_s_log_acud.v" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/3266/hdl/verilog/log_28_15_s_log_adEe.v" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/3266/hdl/verilog/mabonsoc_BUS_A_s_axi.v" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/3266/hdl/verilog/mabonsoc_mac_mulseOg.v" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/3266/hdl/verilog/mabonsoc_mux_42_1fYi.v" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/3266/hdl/verilog/mabonsoc_mux_42_1ibs.v" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/3266/hdl/verilog/mabonsoc_sdiv_32ng8j.v" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/3266/hdl/verilog/mabonsoc_udiv_18nhbi.v" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/3266/hdl/verilog/sqrt_fixed_28_15_s.v" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/3266/hdl/verilog/mabonsoc.v" \
"../../../bd/design_1/ip/design_1_mabonsoc_0_5/sim/design_1_mabonsoc_0_5.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4 -64 "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_19 -64 "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../mabonsoc.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

