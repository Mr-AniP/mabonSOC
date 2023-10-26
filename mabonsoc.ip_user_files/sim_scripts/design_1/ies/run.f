-makelib ies_lib/xilinx_vip -sv \
  "E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "E:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "E:/xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_5 -sv \
  "../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_100M_2/sim/design_1_rst_ps7_0_100M_2.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_4 \
  "../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_18 \
  "../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_19 \
  "../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_19 \
  "../../../../mabonsoc.srcs/sources_1/bd/design_1/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

