set moduleName master_fix_Pipeline_VITIS_LOOP_256_2_VITIS_LOOP_257_3
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
set C_modelName {master_fix_Pipeline_VITIS_LOOP_256_2_VITIS_LOOP_257_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln250 int 21 regular  }
	{ sub_ln259 int 10 regular  }
	{ max2_V_0 int 35 regular {array 224 { 1 3 } 1 1 }  }
	{ num_V_8_out int 36 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln250", "interface" : "wire", "bitwidth" : 21, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln259", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "max2_V_0", "interface" : "memory", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "num_V_8_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln250 sc_in sc_lv 21 signal 0 } 
	{ sub_ln259 sc_in sc_lv 10 signal 1 } 
	{ max2_V_0_address0 sc_out sc_lv 8 signal 2 } 
	{ max2_V_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ max2_V_0_q0 sc_in sc_lv 35 signal 2 } 
	{ num_V_8_out sc_out sc_lv 36 signal 3 } 
	{ num_V_8_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ grp_fu_1096_p_din0 sc_out sc_lv 21 signal -1 } 
	{ grp_fu_1096_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1096_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1096_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln250", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "sext_ln250", "role": "default" }} , 
 	{ "name": "sub_ln259", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sub_ln259", "role": "default" }} , 
 	{ "name": "max2_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "max2_V_0", "role": "address0" }} , 
 	{ "name": "max2_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "max2_V_0", "role": "ce0" }} , 
 	{ "name": "max2_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "max2_V_0", "role": "q0" }} , 
 	{ "name": "num_V_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "num_V_8_out", "role": "default" }} , 
 	{ "name": "num_V_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "num_V_8_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1096_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "grp_fu_1096_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1096_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1096_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1096_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1096_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1096_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1096_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "master_fix_Pipeline_VITIS_LOOP_256_2_VITIS_LOOP_257_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "230", "EstimateLatencyMax" : "230",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sext_ln250", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln259", "Type" : "None", "Direction" : "I"},
			{"Name" : "max2_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "firstDense_f_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_256_2_VITIS_LOOP_257_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstDense_f_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	master_fix_Pipeline_VITIS_LOOP_256_2_VITIS_LOOP_257_3 {
		sext_ln250 {Type I LastRead 0 FirstWrite -1}
		sub_ln259 {Type I LastRead 0 FirstWrite -1}
		max2_V_0 {Type I LastRead 1 FirstWrite -1}
		num_V_8_out {Type O LastRead -1 FirstWrite 4}
		firstDense_f_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "230", "Max" : "230"}
	, {"Name" : "Interval", "Min" : "230", "Max" : "230"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln250 { ap_none {  { sext_ln250 in_data 0 21 } } }
	sub_ln259 { ap_none {  { sub_ln259 in_data 0 10 } } }
	max2_V_0 { ap_memory {  { max2_V_0_address0 mem_address 1 8 }  { max2_V_0_ce0 mem_ce 1 1 }  { max2_V_0_q0 mem_dout 0 35 } } }
	num_V_8_out { ap_vld {  { num_V_8_out out_data 1 36 }  { num_V_8_out_ap_vld out_vld 1 1 } } }
}
