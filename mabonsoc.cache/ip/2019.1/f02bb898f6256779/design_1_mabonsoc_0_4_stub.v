// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Jul 29 11:41:04 2023
// Host        : SHANNON-PC1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mabonsoc_0_4_stub.v
// Design      : design_1_mabonsoc_0_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mabonsoc,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_BUS_A_AWADDR, s_axi_BUS_A_AWVALID, 
  s_axi_BUS_A_AWREADY, s_axi_BUS_A_WDATA, s_axi_BUS_A_WSTRB, s_axi_BUS_A_WVALID, 
  s_axi_BUS_A_WREADY, s_axi_BUS_A_BRESP, s_axi_BUS_A_BVALID, s_axi_BUS_A_BREADY, 
  s_axi_BUS_A_ARADDR, s_axi_BUS_A_ARVALID, s_axi_BUS_A_ARREADY, s_axi_BUS_A_RDATA, 
  s_axi_BUS_A_RRESP, s_axi_BUS_A_RVALID, s_axi_BUS_A_RREADY, ap_clk, ap_rst_n, interrupt)
/* synthesis syn_black_box black_box_pad_pin="s_axi_BUS_A_AWADDR[4:0],s_axi_BUS_A_AWVALID,s_axi_BUS_A_AWREADY,s_axi_BUS_A_WDATA[31:0],s_axi_BUS_A_WSTRB[3:0],s_axi_BUS_A_WVALID,s_axi_BUS_A_WREADY,s_axi_BUS_A_BRESP[1:0],s_axi_BUS_A_BVALID,s_axi_BUS_A_BREADY,s_axi_BUS_A_ARADDR[4:0],s_axi_BUS_A_ARVALID,s_axi_BUS_A_ARREADY,s_axi_BUS_A_RDATA[31:0],s_axi_BUS_A_RRESP[1:0],s_axi_BUS_A_RVALID,s_axi_BUS_A_RREADY,ap_clk,ap_rst_n,interrupt" */;
  input [4:0]s_axi_BUS_A_AWADDR;
  input s_axi_BUS_A_AWVALID;
  output s_axi_BUS_A_AWREADY;
  input [31:0]s_axi_BUS_A_WDATA;
  input [3:0]s_axi_BUS_A_WSTRB;
  input s_axi_BUS_A_WVALID;
  output s_axi_BUS_A_WREADY;
  output [1:0]s_axi_BUS_A_BRESP;
  output s_axi_BUS_A_BVALID;
  input s_axi_BUS_A_BREADY;
  input [4:0]s_axi_BUS_A_ARADDR;
  input s_axi_BUS_A_ARVALID;
  output s_axi_BUS_A_ARREADY;
  output [31:0]s_axi_BUS_A_RDATA;
  output [1:0]s_axi_BUS_A_RRESP;
  output s_axi_BUS_A_RVALID;
  input s_axi_BUS_A_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
endmodule
