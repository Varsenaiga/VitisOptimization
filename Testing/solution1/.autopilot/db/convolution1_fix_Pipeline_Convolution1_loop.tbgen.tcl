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
	{ input_r int 16 regular {array 384 { 1 3 } 1 1 }  }
	{ out_0 int 36 regular {array 336 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
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
 	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_0", "interface" : "memory", "bitwidth" : 36, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
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
	{ input_r_address0 sc_out sc_lv 9 signal 12 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 12 } 
	{ input_r_q0 sc_in sc_lv 16 signal 12 } 
	{ out_0_address0 sc_out sc_lv 9 signal 13 } 
	{ out_0_ce0 sc_out sc_logic 1 signal 13 } 
	{ out_0_we0 sc_out sc_logic 1 signal 13 } 
	{ out_0_d0 sc_out sc_lv 36 signal 13 } 
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
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "out_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_0", "role": "address0" }} , 
 	{ "name": "out_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_0", "role": "ce0" }} , 
 	{ "name": "out_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_0", "role": "we0" }} , 
 	{ "name": "out_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "out_0", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "convolution1_fix_Pipeline_Convolution1_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3095", "EstimateLatencyMax" : "3095",
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
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_0", "Type" : "Memory", "Direction" : "O"},
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
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter23", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter23", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
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
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_17ns_3ns_3_21_1_U13", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_124_12_1_1_U14", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U15", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U16", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U17", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U18", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U19", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U20", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U21", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U22", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U23", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U24", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U25", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_36_2_1_U26", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_17ns_34_4_1_U27", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


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
		input_r {Type I LastRead 16 FirstWrite -1}
		out_0 {Type O LastRead -1 FirstWrite 23}
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
	{"Name" : "Latency", "Min" : "3095", "Max" : "3095"}
	, {"Name" : "Interval", "Min" : "3095", "Max" : "3095"}
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
	input_r { ap_memory {  { input_r_address0 mem_address 1 9 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 16 } } }
	out_0 { ap_memory {  { out_0_address0 mem_address 1 9 }  { out_0_ce0 mem_ce 1 1 }  { out_0_we0 mem_we 1 1 }  { out_0_d0 mem_din 1 36 } } }
}
