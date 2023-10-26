set moduleName mabonsoc
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {mabonsoc}
set C_modelType { void 0 }
set C_modelArgList {
	{ Out_r int 32 regular {axi_slave 1}  }
	{ reward int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Out_r", "interface" : "axi_slave", "bundle":"BUS_A","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":16}, "offset_end" : {"out":23}} , 
 	{ "Name" : "reward", "interface" : "axi_slave", "bundle":"BUS_A","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "reward","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_BUS_A_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_BUS_A_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_BUS_A_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_BUS_A_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_BUS_A_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_BUS_A_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_BUS_A_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_BUS_A_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "BUS_A", "role": "AWADDR" },"address":[{"name":"mabonsoc","role":"start","value":"0","valid_bit":"0"},{"name":"mabonsoc","role":"continue","value":"0","valid_bit":"4"},{"name":"mabonsoc","role":"auto_start","value":"0","valid_bit":"7"},{"name":"reward","role":"data","value":"24"}] },
	{ "name": "s_axi_BUS_A_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "AWVALID" } },
	{ "name": "s_axi_BUS_A_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "AWREADY" } },
	{ "name": "s_axi_BUS_A_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "WVALID" } },
	{ "name": "s_axi_BUS_A_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "WREADY" } },
	{ "name": "s_axi_BUS_A_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BUS_A", "role": "WDATA" } },
	{ "name": "s_axi_BUS_A_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUS_A", "role": "WSTRB" } },
	{ "name": "s_axi_BUS_A_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "BUS_A", "role": "ARADDR" },"address":[{"name":"mabonsoc","role":"start","value":"0","valid_bit":"0"},{"name":"mabonsoc","role":"done","value":"0","valid_bit":"1"},{"name":"mabonsoc","role":"idle","value":"0","valid_bit":"2"},{"name":"mabonsoc","role":"ready","value":"0","valid_bit":"3"},{"name":"mabonsoc","role":"auto_start","value":"0","valid_bit":"7"},{"name":"Out_r","role":"data","value":"16"}, {"name":"Out_r","role":"valid","value":"20","valid_bit":"0"}] },
	{ "name": "s_axi_BUS_A_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "ARVALID" } },
	{ "name": "s_axi_BUS_A_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "ARREADY" } },
	{ "name": "s_axi_BUS_A_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "RVALID" } },
	{ "name": "s_axi_BUS_A_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "RREADY" } },
	{ "name": "s_axi_BUS_A_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BUS_A", "role": "RDATA" } },
	{ "name": "s_axi_BUS_A_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUS_A", "role": "RRESP" } },
	{ "name": "s_axi_BUS_A_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "BVALID" } },
	{ "name": "s_axi_BUS_A_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "BREADY" } },
	{ "name": "s_axi_BUS_A_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUS_A", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118"],
		"CDFG" : "mabonsoc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "48",
		"VariableLatency" : "0", "ExactLatency" : "51", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Out_r", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reward", "Type" : "None", "Direction" : "I"},
			{"Name" : "Index_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "X_V_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "T_V_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "t_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "log_apfixed_reduce_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_log_28_15_s_fu_1233", "Port" : "log_apfixed_reduce_3"}]},
			{"Name" : "log_apfixed_reduce_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_log_28_15_s_fu_1233", "Port" : "log_apfixed_reduce_2"}]},
			{"Name" : "log_apfixed_reduce_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_log_28_15_s_fu_1233", "Port" : "log_apfixed_reduce_s"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_BUS_A_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1153", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1158", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1163", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1168", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1173", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1178", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1183", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1188", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1193", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1198", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1203", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1208", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1213", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1218", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1223", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sqrt_fixed_28_15_s_fu_1228", "Parent" : "0",
		"CDFG" : "sqrt_fixed_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_log_28_15_s_fu_1233", "Parent" : "0", "Child" : ["19", "20", "21", "22"],
		"CDFG" : "log_28_15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "log_apfixed_reduce_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "log_apfixed_reduce_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "log_apfixed_reduce_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_log_28_15_s_fu_1233.log_apfixed_reduce_3_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_log_28_15_s_fu_1233.log_apfixed_reduce_2_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_log_28_15_s_fu_1233.log_apfixed_reduce_s_U", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_log_28_15_s_fu_1233.mabonsoc_mac_mulseOg_U1", "Parent" : "18"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U8", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U9", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U10", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U11", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U12", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U13", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U14", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U15", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U16", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U17", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U18", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U19", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U20", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U21", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U22", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U23", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U24", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U25", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U26", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U27", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U28", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U29", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U30", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U31", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U32", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U33", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U34", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U35", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U36", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U37", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U38", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U39", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U40", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U41", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U42", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U43", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U44", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U45", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U46", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U47", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U48", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U49", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U50", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U51", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U52", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U53", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U54", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U55", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U56", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_sdiv_32ng8j_U57", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U58", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U59", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U60", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U61", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U62", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U63", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U64", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U65", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U66", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U67", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U68", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U69", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U70", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U71", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U72", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_udiv_18nhbi_U73", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U74", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U75", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U76", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U77", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U78", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U79", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U80", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U81", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U82", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U83", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U84", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U85", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U86", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U87", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U88", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U89", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U90", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U91", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U92", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U93", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U94", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U95", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U96", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U97", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U98", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U99", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U100", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U101", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_fYi_U102", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mabonsoc_mux_164_ibs_U103", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mabonsoc {
		Out_r {Type O LastRead -1 FirstWrite 51}
		reward {Type I LastRead 3 FirstWrite -1}
		Index_V {Type IO LastRead -1 FirstWrite -1}
		X_V_0 {Type IO LastRead -1 FirstWrite -1}
		X_V_1 {Type IO LastRead -1 FirstWrite -1}
		X_V_2 {Type IO LastRead -1 FirstWrite -1}
		X_V_3 {Type IO LastRead -1 FirstWrite -1}
		X_V_4 {Type IO LastRead -1 FirstWrite -1}
		X_V_5 {Type IO LastRead -1 FirstWrite -1}
		X_V_6 {Type IO LastRead -1 FirstWrite -1}
		X_V_7 {Type IO LastRead -1 FirstWrite -1}
		X_V_8 {Type IO LastRead -1 FirstWrite -1}
		X_V_9 {Type IO LastRead -1 FirstWrite -1}
		X_V_10 {Type IO LastRead -1 FirstWrite -1}
		X_V_11 {Type IO LastRead -1 FirstWrite -1}
		X_V_12 {Type IO LastRead -1 FirstWrite -1}
		X_V_13 {Type IO LastRead -1 FirstWrite -1}
		X_V_14 {Type IO LastRead -1 FirstWrite -1}
		X_V_15 {Type IO LastRead -1 FirstWrite -1}
		T_V_0 {Type IO LastRead -1 FirstWrite -1}
		T_V_1 {Type IO LastRead -1 FirstWrite -1}
		T_V_2 {Type IO LastRead -1 FirstWrite -1}
		T_V_3 {Type IO LastRead -1 FirstWrite -1}
		T_V_4 {Type IO LastRead -1 FirstWrite -1}
		T_V_5 {Type IO LastRead -1 FirstWrite -1}
		T_V_6 {Type IO LastRead -1 FirstWrite -1}
		T_V_7 {Type IO LastRead -1 FirstWrite -1}
		T_V_8 {Type IO LastRead -1 FirstWrite -1}
		T_V_9 {Type IO LastRead -1 FirstWrite -1}
		T_V_10 {Type IO LastRead -1 FirstWrite -1}
		T_V_11 {Type IO LastRead -1 FirstWrite -1}
		T_V_12 {Type IO LastRead -1 FirstWrite -1}
		T_V_13 {Type IO LastRead -1 FirstWrite -1}
		T_V_14 {Type IO LastRead -1 FirstWrite -1}
		T_V_15 {Type IO LastRead -1 FirstWrite -1}
		t_V {Type IO LastRead -1 FirstWrite -1}
		log_apfixed_reduce_3 {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_2 {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_s {Type I LastRead -1 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	sqrt_fixed_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	log_28_15_s {
		x_V {Type I LastRead 0 FirstWrite -1}
		log_apfixed_reduce_3 {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_2 {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_s {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "51", "Max" : "51"}
	, {"Name" : "Interval", "Min" : "48", "Max" : "48"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
