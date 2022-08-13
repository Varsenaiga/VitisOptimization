set moduleName convolution1_fix_Pipeline_Convolution1_loop
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {convolution1_fix_Pipeline_Convolution1_loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ tmp1_V_11_0_reload int 12 regular  }
	{ tmp1_V_10_0_reload int 12 regular  }
	{ tmp1_V_9 int 12 regular  }
	{ tmp1_V_11_4_reload int 12 regular  }
	{ tmp1_V_11_6_reload int 12 regular  }
	{ tmp1_V_11_9_reload int 12 regular  }
	{ tmp1_V_5_0_reload int 12 regular  }
	{ tmp1_V_4_0_reload int 12 regular  }
	{ tmp1_V_11_11_reload int 12 regular  }
	{ tmp1_V_2_0_reload int 12 regular  }
	{ tmp1_V_1_0_reload int 12 regular  }
	{ tmp1_V_0_0_reload int 12 regular  }
	{ tmp2_V_11_0_reload int 12 regular  }
	{ tmp2_V_10_0_reload int 12 regular  }
	{ tmp2_V_9_0_reload int 12 regular  }
	{ tmp2_V_8_0_reload int 12 regular  }
	{ tmp2_V_7_0_reload int 12 regular  }
	{ tmp2_V_6_0_reload int 12 regular  }
	{ tmp2_V_5_0_reload int 12 regular  }
	{ tmp2_V_3_0_reload int 12 regular  }
	{ tmp2_V_2_0_reload int 12 regular  }
	{ tmp2_V_1_0_reload int 12 regular  }
	{ tmp2_V_0_0_reload int 12 regular  }
	{ input_r int 16 regular {array 384 { 1 3 } 1 1 }  }
	{ out_r int 35 regular {array 3072 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tmp1_V_11_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_10_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_9", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_11_4_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_11_6_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_11_9_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_5_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_4_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_11_11_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_2_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_1_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_0_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_11_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_10_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_9_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_8_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_7_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_6_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_5_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_3_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_2_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_1_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_0_0_reload", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 35, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmp1_V_11_0_reload sc_in sc_lv 12 signal 0 } 
	{ tmp1_V_10_0_reload sc_in sc_lv 12 signal 1 } 
	{ tmp1_V_9 sc_in sc_lv 12 signal 2 } 
	{ tmp1_V_11_4_reload sc_in sc_lv 12 signal 3 } 
	{ tmp1_V_11_6_reload sc_in sc_lv 12 signal 4 } 
	{ tmp1_V_11_9_reload sc_in sc_lv 12 signal 5 } 
	{ tmp1_V_5_0_reload sc_in sc_lv 12 signal 6 } 
	{ tmp1_V_4_0_reload sc_in sc_lv 12 signal 7 } 
	{ tmp1_V_11_11_reload sc_in sc_lv 12 signal 8 } 
	{ tmp1_V_2_0_reload sc_in sc_lv 12 signal 9 } 
	{ tmp1_V_1_0_reload sc_in sc_lv 12 signal 10 } 
	{ tmp1_V_0_0_reload sc_in sc_lv 12 signal 11 } 
	{ tmp2_V_11_0_reload sc_in sc_lv 12 signal 12 } 
	{ tmp2_V_10_0_reload sc_in sc_lv 12 signal 13 } 
	{ tmp2_V_9_0_reload sc_in sc_lv 12 signal 14 } 
	{ tmp2_V_8_0_reload sc_in sc_lv 12 signal 15 } 
	{ tmp2_V_7_0_reload sc_in sc_lv 12 signal 16 } 
	{ tmp2_V_6_0_reload sc_in sc_lv 12 signal 17 } 
	{ tmp2_V_5_0_reload sc_in sc_lv 12 signal 18 } 
	{ tmp2_V_3_0_reload sc_in sc_lv 12 signal 19 } 
	{ tmp2_V_2_0_reload sc_in sc_lv 12 signal 20 } 
	{ tmp2_V_1_0_reload sc_in sc_lv 12 signal 21 } 
	{ tmp2_V_0_0_reload sc_in sc_lv 12 signal 22 } 
	{ input_r_address0 sc_out sc_lv 9 signal 23 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 23 } 
	{ input_r_q0 sc_in sc_lv 16 signal 23 } 
	{ out_r_address0 sc_out sc_lv 12 signal 24 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 24 } 
	{ out_r_we0 sc_out sc_logic 1 signal 24 } 
	{ out_r_d0 sc_out sc_lv 35 signal 24 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tmp1_V_11_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_11_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_10_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_10_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_9", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_9", "role": "default" }} , 
 	{ "name": "tmp1_V_11_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_11_4_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_11_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_11_6_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_11_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_11_9_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_5_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_5_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_4_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_4_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_11_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_11_11_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_2_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_2_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_1_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_1_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_0_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_0_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_11_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_11_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_10_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_10_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_9_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_9_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_8_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_8_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_7_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_7_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_6_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_6_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_5_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_5_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_3_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_3_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_2_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_2_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_1_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_1_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_0_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_0_0_reload", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
		"CDFG" : "convolution1_fix_Pipeline_Convolution1_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3083", "EstimateLatencyMax" : "3083",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tmp1_V_11_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_10_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_11_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_11_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_11_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_5_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_4_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_11_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_11_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_10_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_9_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_8_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_7_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_6_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_5_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "firstKernel_f_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstKernel_f_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstKernel_f_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstKernel_f_V_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstKernel_f_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstKernel_f_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstKernel_f_V_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstKernel_f_V_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstKernel_f_V_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstKernel_f_V_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstKernel_f_V_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstKernel_f_V_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstBias_f_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Convolution1_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstKernel_f_V_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstKernel_f_V_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstKernel_f_V_0_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstKernel_f_V_1_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstKernel_f_V_1_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstKernel_f_V_1_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstKernel_f_V_2_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstKernel_f_V_2_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstKernel_f_V_2_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstKernel_f_V_3_0_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstKernel_f_V_3_1_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstKernel_f_V_3_2_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstBias_f_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_124_12_1_1_U36", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U37", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U38", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U39", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U40", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U41", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U42", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U43", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U44", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U45", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U46", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U47", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U48", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convolution1_fix_Pipeline_Convolution1_loop {
		tmp1_V_11_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_10_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_9 {Type I LastRead 0 FirstWrite -1}
		tmp1_V_11_4_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_11_6_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_11_9_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_5_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_4_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_11_11_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_2_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_1_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_0_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_11_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_10_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_9_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_8_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_7_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_6_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_5_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_3_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_2_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_1_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_0_0_reload {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 4 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 11}
		firstKernel_f_V_0_0 {Type I LastRead -1 FirstWrite -1}
		firstKernel_f_V_0_1 {Type I LastRead -1 FirstWrite -1}
		firstKernel_f_V_0_2 {Type I LastRead -1 FirstWrite -1}
		firstKernel_f_V_1_0 {Type I LastRead -1 FirstWrite -1}
		firstKernel_f_V_1_1 {Type I LastRead -1 FirstWrite -1}
		firstKernel_f_V_1_2 {Type I LastRead -1 FirstWrite -1}
		firstKernel_f_V_2_0 {Type I LastRead -1 FirstWrite -1}
		firstKernel_f_V_2_1 {Type I LastRead -1 FirstWrite -1}
		firstKernel_f_V_2_2 {Type I LastRead -1 FirstWrite -1}
		firstKernel_f_V_3_0 {Type I LastRead -1 FirstWrite -1}
		firstKernel_f_V_3_1 {Type I LastRead -1 FirstWrite -1}
		firstKernel_f_V_3_2 {Type I LastRead -1 FirstWrite -1}
		firstBias_f_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3083", "Max" : "3083"}
	, {"Name" : "Interval", "Min" : "3083", "Max" : "3083"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp1_V_11_0_reload { ap_none {  { tmp1_V_11_0_reload in_data 0 12 } } }
	tmp1_V_10_0_reload { ap_none {  { tmp1_V_10_0_reload in_data 0 12 } } }
	tmp1_V_9 { ap_none {  { tmp1_V_9 in_data 0 12 } } }
	tmp1_V_11_4_reload { ap_none {  { tmp1_V_11_4_reload in_data 0 12 } } }
	tmp1_V_11_6_reload { ap_none {  { tmp1_V_11_6_reload in_data 0 12 } } }
	tmp1_V_11_9_reload { ap_none {  { tmp1_V_11_9_reload in_data 0 12 } } }
	tmp1_V_5_0_reload { ap_none {  { tmp1_V_5_0_reload in_data 0 12 } } }
	tmp1_V_4_0_reload { ap_none {  { tmp1_V_4_0_reload in_data 0 12 } } }
	tmp1_V_11_11_reload { ap_none {  { tmp1_V_11_11_reload in_data 0 12 } } }
	tmp1_V_2_0_reload { ap_none {  { tmp1_V_2_0_reload in_data 0 12 } } }
	tmp1_V_1_0_reload { ap_none {  { tmp1_V_1_0_reload in_data 0 12 } } }
	tmp1_V_0_0_reload { ap_none {  { tmp1_V_0_0_reload in_data 0 12 } } }
	tmp2_V_11_0_reload { ap_none {  { tmp2_V_11_0_reload in_data 0 12 } } }
	tmp2_V_10_0_reload { ap_none {  { tmp2_V_10_0_reload in_data 0 12 } } }
	tmp2_V_9_0_reload { ap_none {  { tmp2_V_9_0_reload in_data 0 12 } } }
	tmp2_V_8_0_reload { ap_none {  { tmp2_V_8_0_reload in_data 0 12 } } }
	tmp2_V_7_0_reload { ap_none {  { tmp2_V_7_0_reload in_data 0 12 } } }
	tmp2_V_6_0_reload { ap_none {  { tmp2_V_6_0_reload in_data 0 12 } } }
	tmp2_V_5_0_reload { ap_none {  { tmp2_V_5_0_reload in_data 0 12 } } }
	tmp2_V_3_0_reload { ap_none {  { tmp2_V_3_0_reload in_data 0 12 } } }
	tmp2_V_2_0_reload { ap_none {  { tmp2_V_2_0_reload in_data 0 12 } } }
	tmp2_V_1_0_reload { ap_none {  { tmp2_V_1_0_reload in_data 0 12 } } }
	tmp2_V_0_0_reload { ap_none {  { tmp2_V_0_0_reload in_data 0 12 } } }
	input_r { ap_memory {  { input_r_address0 mem_address 1 9 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 16 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 12 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 35 } } }
}
