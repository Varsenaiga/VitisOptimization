set moduleName master_fix
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {master_fix}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 16 regular {array 384 { 1 3 } 1 1 }  }
	{ out_r int 32 regular {array 4 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_address0 sc_out sc_lv 9 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 16 signal 0 } 
	{ out_r_address0 sc_out sc_lv 2 signal 1 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_r_we0 sc_out sc_logic 1 signal 1 } 
	{ out_r_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "36", "161", "196", "199", "204", "205", "206"],
		"CDFG" : "master_fix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4114", "EstimateLatencyMax" : "4114",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "input_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "199", "SubInstance" : "grp_master_fix_Pipeline_Operations_SoftMax_Loop_fu_511", "Port" : "out_r", "Inst_start_state" : "18", "Inst_end_state" : "45"}]},
			{"Name" : "firstKernel_f_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstKernel_f_V_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstKernel_f_V_0_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstKernel_f_V_0_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstKernel_f_V_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstKernel_f_V_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstKernel_f_V_1_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstKernel_f_V_2_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstKernel_f_V_2_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstKernel_f_V_2_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstKernel_f_V_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstKernel_f_V_3_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstKernel_f_V_3_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstBias_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_convolution1_fix_fu_363", "Port" : "firstBias_f_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "thirdBias_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "thirdBias_f_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_0_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_0_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_0_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_0_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_0_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_0_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_1_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_1_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_1_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_1_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_1_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_1_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_1_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_2_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_2_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_2_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_2_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_2_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_2_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_2_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_3_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_3_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_3_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_3_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_3_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_3_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_3_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondKernel_f_V_3_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondBias_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "secondBias_f_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "firstDense_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_convolution2_fix_fu_397", "Port" : "firstDense_f_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "Accumulation_SoftMax_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "45", "FirstState" : "ap_ST_fsm_state18", "LastState" : ["ap_ST_fsm_state44"], "QuitState" : ["ap_ST_fsm_state18"], "PreState" : ["ap_ST_fsm_state17"], "PostState" : ["ap_ST_fsm_state45"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max1_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.den1_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363", "Parent" : "0", "Child" : ["4", "6"],
		"CDFG" : "convolution1_fix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3109", "EstimateLatencyMax" : "3109",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_convolution1_fix_Pipeline_Initialization_Conv1_Loop_fu_108", "Port" : "input_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "input_r", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "out_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstKernel_f_V_0_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstKernel_f_V_0_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstKernel_f_V_0_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstKernel_f_V_1_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstKernel_f_V_1_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstKernel_f_V_1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstKernel_f_V_2_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstKernel_f_V_2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstKernel_f_V_2_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstKernel_f_V_3_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstKernel_f_V_3_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstKernel_f_V_3_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstBias_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Port" : "firstBias_f_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Initialization_Conv1_Loop_fu_108", "Parent" : "3", "Child" : ["5"],
		"CDFG" : "convolution1_fix_Pipeline_Initialization_Conv1_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp1_V_11_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_10_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_11_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_11_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_11_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_11_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Initialization_Conv1_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Initialization_Conv1_Loop_fu_108.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125", "Parent" : "3", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstKernel_f_V_0_0_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstKernel_f_V_0_1_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstKernel_f_V_0_2_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstKernel_f_V_1_0_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstKernel_f_V_1_1_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstKernel_f_V_1_2_U", "Parent" : "6"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstKernel_f_V_2_0_U", "Parent" : "6"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstKernel_f_V_2_1_U", "Parent" : "6"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstKernel_f_V_2_2_U", "Parent" : "6"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstKernel_f_V_3_0_U", "Parent" : "6"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstKernel_f_V_3_1_U", "Parent" : "6"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstKernel_f_V_3_2_U", "Parent" : "6"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.firstBias_f_V_U", "Parent" : "6"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.srem_17ns_3ns_3_21_1_U13", "Parent" : "6"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mux_124_12_1_1_U14", "Parent" : "6"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_36s_12s_36_2_1_U15", "Parent" : "6"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_36s_12s_36_2_1_U16", "Parent" : "6"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_36s_12s_36_2_1_U17", "Parent" : "6"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_36s_12s_36_2_1_U18", "Parent" : "6"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_36s_12s_36_2_1_U19", "Parent" : "6"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_36s_12s_36_2_1_U20", "Parent" : "6"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_36s_12s_36_2_1_U21", "Parent" : "6"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_36s_12s_36_2_1_U22", "Parent" : "6"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_36s_12s_36_2_1_U23", "Parent" : "6"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_36s_12s_36_2_1_U24", "Parent" : "6"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_36s_12s_36_2_1_U25", "Parent" : "6"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_36s_12s_36_2_1_U26", "Parent" : "6"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.mul_mul_16s_17ns_34_4_1_U27", "Parent" : "6"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_363.grp_convolution1_fix_Pipeline_Convolution1_loop_fu_125.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397", "Parent" : "0", "Child" : ["37", "72", "158"],
		"CDFG" : "convolution2_fix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "762", "EstimateLatencyMax" : "762",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "m_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "m_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "37", "SubInstance" : "grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402", "Port" : "m_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "158", "SubInstance" : "grp_convolution2_fix_Pipeline_VITIS_LOOP_247_2_fu_628", "Port" : "out_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "thirdBias_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402", "Port" : "thirdBias_f_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "secondKernel_f_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_0_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_0_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_0_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_0_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_0_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_0_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_1_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_1_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_1_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_1_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_1_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_1_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_1_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_2_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_2_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_2_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_2_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_2_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_2_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_2_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_3_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_3_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_3_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_3_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_3_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_3_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_3_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondKernel_f_V_3_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondBias_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "secondBias_f_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "firstDense_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Port" : "firstDense_f_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402", "Parent" : "36", "Child" : ["38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71"],
		"CDFG" : "convolution2_fix_Pipeline_Initialization_Conv2_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "m_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "parc_V_15_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_14_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_13_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_12_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_11_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_10_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_9_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_7_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_6_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_31_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_30_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_29_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_28_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_27_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_26_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_25_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_24_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_23_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_22_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_21_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_20_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_19_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_18_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_17_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_16_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_7_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_6_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_31_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_30_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_29_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_28_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_27_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_26_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_25_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_24_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_23_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_22_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_21_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_20_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_19_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_18_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_17_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_16_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_15_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_14_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_13_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_12_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_11_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_10_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_9_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "thirdBias_f_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Initialization_Conv2_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.thirdBias_f_V_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_164_36_1_1_U61", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_164_36_1_1_U62", "Parent" : "37"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_164_36_1_1_U63", "Parent" : "37"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_164_36_1_1_U64", "Parent" : "37"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_164_36_1_1_U65", "Parent" : "37"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_164_36_1_1_U66", "Parent" : "37"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_164_36_1_1_U67", "Parent" : "37"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_164_36_1_1_U68", "Parent" : "37"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U69", "Parent" : "37"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U70", "Parent" : "37"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U71", "Parent" : "37"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U72", "Parent" : "37"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U73", "Parent" : "37"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U74", "Parent" : "37"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U75", "Parent" : "37"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U76", "Parent" : "37"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U77", "Parent" : "37"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U78", "Parent" : "37"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U79", "Parent" : "37"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U80", "Parent" : "37"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U81", "Parent" : "37"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U82", "Parent" : "37"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U83", "Parent" : "37"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U84", "Parent" : "37"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U85", "Parent" : "37"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U86", "Parent" : "37"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U87", "Parent" : "37"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U88", "Parent" : "37"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U89", "Parent" : "37"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U90", "Parent" : "37"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U91", "Parent" : "37"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.mux_325_36_1_1_U92", "Parent" : "37"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Initialization_Conv2_Loop_fu_402.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474", "Parent" : "36", "Child" : ["73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157"],
		"CDFG" : "convolution2_fix_Pipeline_Convolution2_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "721", "EstimateLatencyMax" : "721",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "parc_V_15_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_14_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_13_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_12_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_11_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_10_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_9_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_8_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_7_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_6_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_5_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_4_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_31_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_30_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_29_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_28_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_27_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_26_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_25_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_24_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_23_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_22_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_21_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_20_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_19_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_18_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_17_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_16_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_7_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_6_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_5_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_4_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_3_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_2_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_1_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp2_V_0_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_31_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_30_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_29_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_28_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_27_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_26_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_25_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_24_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_23_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_22_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_21_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_20_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_19_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_18_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_17_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_16_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_15_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_14_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_13_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_12_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_11_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_10_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_9_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_8_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "parc_V_15_217_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_14_216_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_13_215_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_12_214_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_11_213_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_10_212_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_9_211_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_8_210_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_7_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_6_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_5_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_4_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_3_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_2_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_1_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "parc_V_0_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "secondKernel_f_V_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_2_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_2_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_2_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_2_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondBias_f_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstDense_f_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Convolution2_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter48", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter48", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_0_0_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_0_1_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_0_2_U", "Parent" : "72"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_0_3_U", "Parent" : "72"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_0_4_U", "Parent" : "72"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_0_5_U", "Parent" : "72"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_0_6_U", "Parent" : "72"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_0_7_U", "Parent" : "72"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_1_0_U", "Parent" : "72"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_1_1_U", "Parent" : "72"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_1_2_U", "Parent" : "72"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_1_3_U", "Parent" : "72"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_1_4_U", "Parent" : "72"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_1_5_U", "Parent" : "72"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_1_6_U", "Parent" : "72"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_1_7_U", "Parent" : "72"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_2_0_U", "Parent" : "72"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_2_1_U", "Parent" : "72"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_2_2_U", "Parent" : "72"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_2_3_U", "Parent" : "72"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_2_4_U", "Parent" : "72"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_2_5_U", "Parent" : "72"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_2_6_U", "Parent" : "72"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_2_7_U", "Parent" : "72"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_3_0_U", "Parent" : "72"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_3_1_U", "Parent" : "72"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_3_2_U", "Parent" : "72"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_3_3_U", "Parent" : "72"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_3_4_U", "Parent" : "72"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_3_5_U", "Parent" : "72"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_3_6_U", "Parent" : "72"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondKernel_f_V_3_7_U", "Parent" : "72"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.secondBias_f_V_U", "Parent" : "72"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.firstDense_f_V_U", "Parent" : "72"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.urem_6ns_3ns_2_10_1_U168", "Parent" : "72"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_6ns_8ns_13_1_1_U169", "Parent" : "72"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U170", "Parent" : "72"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U171", "Parent" : "72"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U172", "Parent" : "72"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U173", "Parent" : "72"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U174", "Parent" : "72"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U175", "Parent" : "72"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U176", "Parent" : "72"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U177", "Parent" : "72"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U178", "Parent" : "72"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U179", "Parent" : "72"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U180", "Parent" : "72"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U181", "Parent" : "72"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U182", "Parent" : "72"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U183", "Parent" : "72"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U184", "Parent" : "72"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U185", "Parent" : "72"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U186", "Parent" : "72"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U187", "Parent" : "72"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U188", "Parent" : "72"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U189", "Parent" : "72"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U190", "Parent" : "72"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U191", "Parent" : "72"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U192", "Parent" : "72"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U193", "Parent" : "72"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U194", "Parent" : "72"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U195", "Parent" : "72"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U196", "Parent" : "72"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U197", "Parent" : "72"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U198", "Parent" : "72"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U199", "Parent" : "72"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U200", "Parent" : "72"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_36s_36s_55_2_1_U201", "Parent" : "72"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U202", "Parent" : "72"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U203", "Parent" : "72"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U204", "Parent" : "72"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U205", "Parent" : "72"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U206", "Parent" : "72"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U207", "Parent" : "72"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U208", "Parent" : "72"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U209", "Parent" : "72"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U210", "Parent" : "72"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U211", "Parent" : "72"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U212", "Parent" : "72"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U213", "Parent" : "72"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U214", "Parent" : "72"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U215", "Parent" : "72"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U216", "Parent" : "72"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.mul_21s_36s_55_2_1_U217", "Parent" : "72"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_Convolution2_loop_fu_474.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_VITIS_LOOP_247_2_fu_628", "Parent" : "36", "Child" : ["159", "160"],
		"CDFG" : "convolution2_fix_Pipeline_VITIS_LOOP_247_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "parc_V_0_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_1_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_2_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_3_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_4_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_5_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_6_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_7_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_8_210_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_9_211_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_10_212_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_11_213_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_12_214_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_13_215_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_14_216_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "parc_V_15_217_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_247_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_VITIS_LOOP_247_2_fu_628.mux_164_36_1_1_x_U337", "Parent" : "158"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_397.grp_convolution2_fix_Pipeline_VITIS_LOOP_247_2_fu_628.flow_control_loop_pipe_sequential_init_U", "Parent" : "158"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473", "Parent" : "0", "Child" : ["162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195"],
		"CDFG" : "master_fix_Pipeline_Dense2_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "zext_ln291", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln291_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln287", "Type" : "None", "Direction" : "I"},
			{"Name" : "den2_V_0_3_08_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den2_V_0_2_07_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den2_V_0_1_06_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den2_V_0_0_05_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Dense2_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U358", "Parent" : "161"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U359", "Parent" : "161"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U360", "Parent" : "161"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U361", "Parent" : "161"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U362", "Parent" : "161"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U363", "Parent" : "161"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U364", "Parent" : "161"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U365", "Parent" : "161"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U366", "Parent" : "161"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U367", "Parent" : "161"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U368", "Parent" : "161"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U369", "Parent" : "161"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U370", "Parent" : "161"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U371", "Parent" : "161"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U372", "Parent" : "161"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U373", "Parent" : "161"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U374", "Parent" : "161"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U375", "Parent" : "161"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U376", "Parent" : "161"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U377", "Parent" : "161"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U378", "Parent" : "161"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U379", "Parent" : "161"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U380", "Parent" : "161"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U381", "Parent" : "161"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U382", "Parent" : "161"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U383", "Parent" : "161"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U384", "Parent" : "161"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U385", "Parent" : "161"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U386", "Parent" : "161"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U387", "Parent" : "161"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U388", "Parent" : "161"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mux_42_36_1_1_U389", "Parent" : "161"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.mul_36s_35ns_55_2_1_U390", "Parent" : "161"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Dense2_Loop_fu_473.flow_control_loop_pipe_sequential_init_U", "Parent" : "161"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Initialization_SoftMax_Loop_fu_499", "Parent" : "0", "Child" : ["197", "198"],
		"CDFG" : "master_fix_Pipeline_Initialization_SoftMax_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "den2_V_0_0_05_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "den2_V_0_1_06_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "den2_V_0_2_07_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "den2_V_0_3_08_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_3_04_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "m_2_03_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "m_3_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "m_3_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Initialization_SoftMax_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Initialization_SoftMax_Loop_fu_499.mux_42_36_1_1_U419", "Parent" : "196"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Initialization_SoftMax_Loop_fu_499.flow_control_loop_pipe_sequential_init_U", "Parent" : "196"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Operations_SoftMax_Loop_fu_511", "Parent" : "0", "Child" : ["200", "201", "202", "203"],
		"CDFG" : "master_fix_Pipeline_Operations_SoftMax_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "84", "EstimateLatencyMax" : "84",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "m_3_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_3_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_2_03_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_3_04_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Operations_SoftMax_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter79", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter79", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Operations_SoftMax_Loop_fu_511.fptrunc_64ns_32_2_no_dsp_1_U428", "Parent" : "199"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Operations_SoftMax_Loop_fu_511.ddiv_64ns_64ns_64_59_no_dsp_1_U429", "Parent" : "199"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Operations_SoftMax_Loop_fu_511.mux_42_64_1_1_U431", "Parent" : "199"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_Operations_SoftMax_Loop_fu_511.flow_control_loop_pipe_sequential_init_U", "Parent" : "199"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_7_full_dsp_1_U442", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dexp_64ns_64ns_64_18_full_dsp_1_U443", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U444", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	master_fix {
		input_r {Type I LastRead 16 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 79}
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
		firstBias_f_V {Type I LastRead -1 FirstWrite -1}
		thirdBias_f_V {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_3 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_4 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_5 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_6 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_7 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_3 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_4 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_5 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_6 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_7 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_3 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_4 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_5 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_6 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_7 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_3 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_4 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_5 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_6 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_7 {Type I LastRead -1 FirstWrite -1}
		secondBias_f_V {Type I LastRead -1 FirstWrite -1}
		firstDense_f_V {Type I LastRead -1 FirstWrite -1}}
	convolution1_fix {
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
		firstBias_f_V {Type I LastRead -1 FirstWrite -1}}
	convolution1_fix_Pipeline_Initialization_Conv1_Loop {
		input_r {Type I LastRead 1 FirstWrite -1}
		tmp1_V_11_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_10_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_11_4_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_11_6_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_5_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_4_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_2_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_1_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_0_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_11_9_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_11_11_out {Type O LastRead -1 FirstWrite 1}}
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
		firstBias_f_V {Type I LastRead -1 FirstWrite -1}}
	convolution2_fix {
		m_0 {Type I LastRead 1 FirstWrite -1}
		out_0 {Type O LastRead -1 FirstWrite 0}
		thirdBias_f_V {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_3 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_4 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_5 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_6 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_7 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_3 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_4 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_5 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_6 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_7 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_3 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_4 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_5 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_6 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_7 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_3 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_4 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_5 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_6 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_7 {Type I LastRead -1 FirstWrite -1}
		secondBias_f_V {Type I LastRead -1 FirstWrite -1}
		firstDense_f_V {Type I LastRead -1 FirstWrite -1}}
	convolution2_fix_Pipeline_Initialization_Conv2_Loop {
		m_0 {Type I LastRead 0 FirstWrite -1}
		parc_V_15_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_14_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_13_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_12_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_11_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_10_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_9_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_8_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_7_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_6_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_5_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_4_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_3_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_2_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_1_0_out {Type O LastRead -1 FirstWrite 0}
		parc_V_0_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_31_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_30_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_29_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_28_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_27_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_26_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_25_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_24_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_23_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_22_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_21_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_20_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_19_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_18_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_17_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_16_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_7_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_6_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_5_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_4_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_3_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_2_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_1_0_out {Type O LastRead -1 FirstWrite 0}
		tmp2_V_0_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_31_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_30_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_29_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_28_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_27_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_26_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_25_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_24_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_23_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_22_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_21_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_20_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_19_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_18_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_17_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_16_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_15_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_14_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_13_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_12_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_11_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_10_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_9_0_out {Type O LastRead -1 FirstWrite 0}
		tmp1_V_8_0_out {Type O LastRead -1 FirstWrite 0}
		thirdBias_f_V {Type I LastRead -1 FirstWrite -1}}
	convolution2_fix_Pipeline_Convolution2_loop {
		parc_V_15_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_14_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_13_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_12_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_11_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_10_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_9_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_8_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_7_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_6_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_5_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_4_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_3_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_2_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_1_0_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_0_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_31_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_30_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_29_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_28_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_27_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_26_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_25_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_24_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_23_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_22_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_21_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_20_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_19_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_18_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_17_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_16_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_7_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_6_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_5_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_4_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_3_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_2_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_1_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp2_V_0_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_31_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_30_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_29_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_28_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_27_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_26_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_25_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_24_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_23_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_22_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_21_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_20_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_19_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_18_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_17_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_16_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_15_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_14_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_13_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_12_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_11_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_10_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_9_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_8_0_reload {Type I LastRead 0 FirstWrite -1}
		m_0 {Type I LastRead 1 FirstWrite -1}
		parc_V_15_217_out {Type O LastRead -1 FirstWrite 47}
		parc_V_14_216_out {Type O LastRead -1 FirstWrite 47}
		parc_V_13_215_out {Type O LastRead -1 FirstWrite 47}
		parc_V_12_214_out {Type O LastRead -1 FirstWrite 47}
		parc_V_11_213_out {Type O LastRead -1 FirstWrite 47}
		parc_V_10_212_out {Type O LastRead -1 FirstWrite 47}
		parc_V_9_211_out {Type O LastRead -1 FirstWrite 47}
		parc_V_8_210_out {Type O LastRead -1 FirstWrite 47}
		parc_V_7_29_out {Type O LastRead -1 FirstWrite 47}
		parc_V_6_28_out {Type O LastRead -1 FirstWrite 47}
		parc_V_5_27_out {Type O LastRead -1 FirstWrite 47}
		parc_V_4_26_out {Type O LastRead -1 FirstWrite 47}
		parc_V_3_25_out {Type O LastRead -1 FirstWrite 47}
		parc_V_2_24_out {Type O LastRead -1 FirstWrite 47}
		parc_V_1_23_out {Type O LastRead -1 FirstWrite 47}
		parc_V_0_21_out {Type O LastRead -1 FirstWrite 47}
		secondKernel_f_V_0_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_3 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_4 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_5 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_6 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0_7 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_3 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_4 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_5 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_6 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1_7 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_3 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_4 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_5 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_6 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2_7 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_3 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_4 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_5 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_6 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3_7 {Type I LastRead -1 FirstWrite -1}
		secondBias_f_V {Type I LastRead -1 FirstWrite -1}
		firstDense_f_V {Type I LastRead -1 FirstWrite -1}}
	convolution2_fix_Pipeline_VITIS_LOOP_247_2 {
		parc_V_0_21_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_1_23_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_2_24_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_3_25_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_4_26_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_5_27_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_6_28_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_7_29_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_8_210_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_9_211_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_10_212_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_11_213_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_12_214_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_13_215_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_14_216_reload {Type I LastRead 0 FirstWrite -1}
		parc_V_15_217_reload {Type I LastRead 0 FirstWrite -1}
		out_0 {Type O LastRead -1 FirstWrite 0}}
	master_fix_Pipeline_Dense2_Loop {
		zext_ln291 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_8 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_9 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_11 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_12 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln291_14 {Type I LastRead 0 FirstWrite -1}
		zext_ln287 {Type I LastRead 0 FirstWrite -1}
		den2_V_0_3_08_out {Type O LastRead -1 FirstWrite 17}
		den2_V_0_2_07_out {Type O LastRead -1 FirstWrite 17}
		den2_V_0_1_06_out {Type O LastRead -1 FirstWrite 17}
		den2_V_0_0_05_out {Type O LastRead -1 FirstWrite 17}}
	master_fix_Pipeline_Initialization_SoftMax_Loop {
		den2_V_0_0_05_reload {Type I LastRead 0 FirstWrite -1}
		den2_V_0_1_06_reload {Type I LastRead 0 FirstWrite -1}
		den2_V_0_2_07_reload {Type I LastRead 0 FirstWrite -1}
		den2_V_0_3_08_reload {Type I LastRead 0 FirstWrite -1}
		m_3_04_out {Type O LastRead -1 FirstWrite 4}
		m_2_03_out {Type O LastRead -1 FirstWrite 4}
		m_3_7_out {Type O LastRead -1 FirstWrite 4}
		m_3_10_out {Type O LastRead -1 FirstWrite 4}}
	master_fix_Pipeline_Operations_SoftMax_Loop {
		m_3_10_reload {Type I LastRead 0 FirstWrite -1}
		m_3_7_reload {Type I LastRead 0 FirstWrite -1}
		m_2_03_reload {Type I LastRead 0 FirstWrite -1}
		m_3_04_reload {Type I LastRead 0 FirstWrite -1}
		sum {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 79}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4114", "Max" : "4114"}
	, {"Name" : "Interval", "Min" : "4115", "Max" : "4115"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 9 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 16 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 2 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 32 } } }
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
