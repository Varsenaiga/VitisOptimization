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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "51", "55", "157", "160", "165", "166", "167", "168", "169", "170"],
		"CDFG" : "master_fix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26526", "EstimateLatencyMax" : "26526",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "input_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "160", "SubInstance" : "grp_master_fix_Pipeline_VITIS_LOOP_387_3_fu_638", "Port" : "out_r", "Inst_start_state" : "28", "Inst_end_state" : "55"}]},
			{"Name" : "firstKernel_f_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstKernel_f_V_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstKernel_f_V_0_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstKernel_f_V_0_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstKernel_f_V_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstKernel_f_V_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstKernel_f_V_1_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstKernel_f_V_2_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstKernel_f_V_2_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstKernel_f_V_2_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstKernel_f_V_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstKernel_f_V_3_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstKernel_f_V_3_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstBias_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_514", "Port" : "firstBias_f_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "secondKernel_f_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_0_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_0_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_0_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_0_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_0_4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_0_5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_0_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_0_7", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_1_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_1_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_1_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_1_4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_1_5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_1_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_1_7", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_2_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_2_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_2_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_2_4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_2_5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_2_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_2_7", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_3_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_3_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_3_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_3_3", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_3_4", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_3_5", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_3_6", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondKernel_f_V_3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondKernel_f_V_3_7", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "secondBias_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_convolution2_fix_fu_554", "Port" : "secondBias_f_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "thirdBias_f_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstDense_f_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondDense_f_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_323_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_321_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state8"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_349_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_345_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state13"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_342_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state12", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state12"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_366_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state21", "LastState" : ["ap_ST_fsm_state25"], "QuitState" : ["ap_ST_fsm_state21"], "PreState" : ["ap_ST_fsm_state20"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_363_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state26"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_382_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "55", "FirstState" : "ap_ST_fsm_state28", "LastState" : ["ap_ST_fsm_state54"], "QuitState" : ["ap_ST_fsm_state28"], "PreState" : ["ap_ST_fsm_state27"], "PostState" : ["ap_ST_fsm_state55"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.thirdBias_f_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstDense_f_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondDense_f_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max1_V_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_0_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max2_V_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.den1_V_0_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514", "Parent" : "0", "Child" : ["10", "23"],
		"CDFG" : "convolution1_fix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3097", "EstimateLatencyMax" : "3097",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "input_r", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "10", "SubInstance" : "grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152", "Port" : "input_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "out_r", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstKernel_f_V_0_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstKernel_f_V_0_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstKernel_f_V_0_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstKernel_f_V_1_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstKernel_f_V_1_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstKernel_f_V_1_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstKernel_f_V_2_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstKernel_f_V_2_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstKernel_f_V_2_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstKernel_f_V_3_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstKernel_f_V_3_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstKernel_f_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstKernel_f_V_3_2", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "firstBias_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Port" : "firstBias_f_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152", "Parent" : "9", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "convolution1_fix_Pipeline_VITIS_LOOP_107_1",
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
			{"Name" : "tmp1_V_11_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_11_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_10_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_9_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_7_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_6_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp2_V_0_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_107_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152.mux_164_12_1_1_U1", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152.mux_164_12_1_1_U2", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152.mux_164_12_1_1_U3", "Parent" : "10"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152.mux_164_12_1_1_U4", "Parent" : "10"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152.mux_164_12_1_1_U5", "Parent" : "10"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152.mux_164_12_1_1_U6", "Parent" : "10"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152.mux_164_12_1_1_U7", "Parent" : "10"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152.mux_164_12_1_1_U8", "Parent" : "10"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152.mux_164_12_1_1_U9", "Parent" : "10"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152.mux_164_12_1_1_U10", "Parent" : "10"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152.mux_164_12_1_1_U11", "Parent" : "10"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_VITIS_LOOP_107_1_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Parent" : "9", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50"],
		"CDFG" : "convolution1_fix_Pipeline_Conv_loop",
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
			{"Name" : "Conv_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_0_0_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_0_1_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_0_2_U", "Parent" : "23"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_1_0_U", "Parent" : "23"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_1_1_U", "Parent" : "23"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_1_2_U", "Parent" : "23"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_2_0_U", "Parent" : "23"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_2_1_U", "Parent" : "23"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_2_2_U", "Parent" : "23"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_3_0_U", "Parent" : "23"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_3_1_U", "Parent" : "23"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_3_2_U", "Parent" : "23"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstBias_f_V_U", "Parent" : "23"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mux_124_12_1_1_U36", "Parent" : "23"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U37", "Parent" : "23"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U38", "Parent" : "23"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U39", "Parent" : "23"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U40", "Parent" : "23"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U41", "Parent" : "23"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U42", "Parent" : "23"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U43", "Parent" : "23"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U44", "Parent" : "23"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U45", "Parent" : "23"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U46", "Parent" : "23"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U47", "Parent" : "23"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U48", "Parent" : "23"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_514.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_303_1_VITIS_LOOP_304_2_fu_548", "Parent" : "0", "Child" : ["52", "53", "54"],
		"CDFG" : "master_fix_Pipeline_VITIS_LOOP_303_1_VITIS_LOOP_304_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1022", "EstimateLatencyMax" : "1022",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "max1_V_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_303_1_VITIS_LOOP_304_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_303_1_VITIS_LOOP_304_2_fu_548.urem_7ns_3ns_2_11_1_U91", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_303_1_VITIS_LOOP_304_2_fu_548.mul_7ns_9ns_15_1_1_U92", "Parent" : "51"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_303_1_VITIS_LOOP_304_2_fu_548.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554", "Parent" : "0", "Child" : ["56", "90"],
		"CDFG" : "convolution2_fix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "730", "EstimateLatencyMax" : "730",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "m_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268", "Port" : "m_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "m_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "out_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "out_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_0_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_0_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_0_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_0_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_0_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_0_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_1_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_1_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_1_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_1_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_1_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_1_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_1_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_2_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_2_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_2_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_2_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_2_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_2_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_2_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_2_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_3_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_3_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_3_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_3_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_3_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_3_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_3_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondKernel_f_V_3_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondKernel_f_V_3_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "secondBias_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Port" : "secondBias_f_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268", "Parent" : "55", "Child" : ["57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89"],
		"CDFG" : "convolution2_fix_Pipeline_VITIS_LOOP_215_1",
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
			{"Name" : "tmp1_V_8_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_215_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_164_36_1_1_U97", "Parent" : "56"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_164_36_1_1_U98", "Parent" : "56"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_164_36_1_1_U99", "Parent" : "56"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_164_36_1_1_U100", "Parent" : "56"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_164_36_1_1_U101", "Parent" : "56"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_164_36_1_1_U102", "Parent" : "56"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_164_36_1_1_U103", "Parent" : "56"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_164_36_1_1_U104", "Parent" : "56"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U105", "Parent" : "56"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U106", "Parent" : "56"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U107", "Parent" : "56"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U108", "Parent" : "56"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U109", "Parent" : "56"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U110", "Parent" : "56"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U111", "Parent" : "56"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U112", "Parent" : "56"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U113", "Parent" : "56"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U114", "Parent" : "56"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U115", "Parent" : "56"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U116", "Parent" : "56"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U117", "Parent" : "56"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U118", "Parent" : "56"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U119", "Parent" : "56"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U120", "Parent" : "56"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U121", "Parent" : "56"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U122", "Parent" : "56"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U123", "Parent" : "56"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U124", "Parent" : "56"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U125", "Parent" : "56"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U126", "Parent" : "56"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U127", "Parent" : "56"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.mux_325_36_1_1_U128", "Parent" : "56"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_VITIS_LOOP_215_1_fu_268.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322", "Parent" : "55", "Child" : ["91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156"],
		"CDFG" : "convolution2_fix_Pipeline_Conv_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "709", "EstimateLatencyMax" : "709",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
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
			{"Name" : "out_0", "Type" : "Memory", "Direction" : "O"},
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
			{"Name" : "secondBias_f_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Conv_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter37", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter37", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_0_0_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_0_1_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_0_2_U", "Parent" : "90"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_0_3_U", "Parent" : "90"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_0_4_U", "Parent" : "90"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_0_5_U", "Parent" : "90"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_0_6_U", "Parent" : "90"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_0_7_U", "Parent" : "90"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_1_0_U", "Parent" : "90"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_1_1_U", "Parent" : "90"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_1_2_U", "Parent" : "90"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_1_3_U", "Parent" : "90"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_1_4_U", "Parent" : "90"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_1_5_U", "Parent" : "90"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_1_6_U", "Parent" : "90"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_1_7_U", "Parent" : "90"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_2_0_U", "Parent" : "90"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_2_1_U", "Parent" : "90"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_2_2_U", "Parent" : "90"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_2_3_U", "Parent" : "90"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_2_4_U", "Parent" : "90"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_2_5_U", "Parent" : "90"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_2_6_U", "Parent" : "90"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_2_7_U", "Parent" : "90"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_3_0_U", "Parent" : "90"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_3_1_U", "Parent" : "90"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_3_2_U", "Parent" : "90"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_3_3_U", "Parent" : "90"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_3_4_U", "Parent" : "90"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_3_5_U", "Parent" : "90"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_3_6_U", "Parent" : "90"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondKernel_f_V_3_7_U", "Parent" : "90"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.secondBias_f_V_U", "Parent" : "90"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U187", "Parent" : "90"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U188", "Parent" : "90"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U189", "Parent" : "90"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U190", "Parent" : "90"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U191", "Parent" : "90"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U192", "Parent" : "90"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U193", "Parent" : "90"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U194", "Parent" : "90"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U195", "Parent" : "90"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U196", "Parent" : "90"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U197", "Parent" : "90"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U198", "Parent" : "90"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U199", "Parent" : "90"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U200", "Parent" : "90"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U201", "Parent" : "90"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U202", "Parent" : "90"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U203", "Parent" : "90"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U204", "Parent" : "90"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U205", "Parent" : "90"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U206", "Parent" : "90"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U207", "Parent" : "90"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U208", "Parent" : "90"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U209", "Parent" : "90"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U210", "Parent" : "90"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U211", "Parent" : "90"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U212", "Parent" : "90"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U213", "Parent" : "90"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U214", "Parent" : "90"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U215", "Parent" : "90"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U216", "Parent" : "90"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U217", "Parent" : "90"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.mul_36s_36s_55_2_1_U218", "Parent" : "90"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_554.grp_convolution2_fix_Pipeline_Conv_loop_fu_322.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_376_1_fu_626", "Parent" : "0", "Child" : ["158", "159"],
		"CDFG" : "master_fix_Pipeline_VITIS_LOOP_376_1",
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
			{"Name" : "den2_V_0_0_05", "Type" : "None", "Direction" : "I"},
			{"Name" : "den2_V_0_1_06", "Type" : "None", "Direction" : "I"},
			{"Name" : "den2_V_0_2_07", "Type" : "None", "Direction" : "I"},
			{"Name" : "den2_V_0_3_08", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_3_04_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "m_2_03_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "m_3_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "m_3_10_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_376_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_376_1_fu_626.mux_42_36_1_1_U305", "Parent" : "157"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_376_1_fu_626.flow_control_loop_pipe_sequential_init_U", "Parent" : "157"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_387_3_fu_638", "Parent" : "0", "Child" : ["161", "162", "163", "164"],
		"CDFG" : "master_fix_Pipeline_VITIS_LOOP_387_3",
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
			{"Name" : "VITIS_LOOP_387_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter79", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter79", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_387_3_fu_638.fptrunc_64ns_32_2_no_dsp_1_U315", "Parent" : "160"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_387_3_fu_638.ddiv_64ns_64ns_64_59_no_dsp_1_U316", "Parent" : "160"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_387_3_fu_638.mux_42_64_1_1_U318", "Parent" : "160"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_387_3_fu_638.flow_control_loop_pipe_sequential_init_U", "Parent" : "160"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_7_full_dsp_1_U329", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dexp_64ns_64ns_64_18_full_dsp_1_U330", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_21s_35ns_55_2_1_U331", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_x_U332", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_19s_35ns_54_2_1_U333", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U334", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	master_fix {
		input_r {Type I LastRead 4 FirstWrite -1}
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
		thirdBias_f_V {Type I LastRead -1 FirstWrite -1}
		firstDense_f_V {Type I LastRead -1 FirstWrite -1}
		secondDense_f_V {Type I LastRead -1 FirstWrite -1}}
	convolution1_fix {
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
		firstBias_f_V {Type I LastRead -1 FirstWrite -1}}
	convolution1_fix_Pipeline_VITIS_LOOP_107_1 {
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
		tmp1_V_11_11_out {Type O LastRead -1 FirstWrite 1}
		tmp2_V_11_0_out {Type O LastRead -1 FirstWrite 1}
		tmp2_V_10_0_out {Type O LastRead -1 FirstWrite 1}
		tmp2_V_9_0_out {Type O LastRead -1 FirstWrite 1}
		tmp2_V_8_0_out {Type O LastRead -1 FirstWrite 1}
		tmp2_V_7_0_out {Type O LastRead -1 FirstWrite 1}
		tmp2_V_6_0_out {Type O LastRead -1 FirstWrite 1}
		tmp2_V_5_0_out {Type O LastRead -1 FirstWrite 1}
		tmp2_V_3_0_out {Type O LastRead -1 FirstWrite 1}
		tmp2_V_2_0_out {Type O LastRead -1 FirstWrite 1}
		tmp2_V_1_0_out {Type O LastRead -1 FirstWrite 1}
		tmp2_V_0_0_out {Type O LastRead -1 FirstWrite 1}}
	convolution1_fix_Pipeline_Conv_loop {
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
		firstBias_f_V {Type I LastRead -1 FirstWrite -1}}
	master_fix_Pipeline_VITIS_LOOP_303_1_VITIS_LOOP_304_2 {
		conv1 {Type I LastRead 2 FirstWrite -1}
		max1_V_0 {Type O LastRead -1 FirstWrite 13}}
	convolution2_fix {
		m_0 {Type I LastRead 2 FirstWrite -1}
		out_0 {Type O LastRead -1 FirstWrite 37}
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
		secondBias_f_V {Type I LastRead -1 FirstWrite -1}}
	convolution2_fix_Pipeline_VITIS_LOOP_215_1 {
		m_0 {Type I LastRead 0 FirstWrite -1}
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
		tmp1_V_8_0_out {Type O LastRead -1 FirstWrite 0}}
	convolution2_fix_Pipeline_Conv_loop {
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
		m_0 {Type I LastRead 2 FirstWrite -1}
		out_0 {Type O LastRead -1 FirstWrite 37}
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
		secondBias_f_V {Type I LastRead -1 FirstWrite -1}}
	master_fix_Pipeline_VITIS_LOOP_376_1 {
		den2_V_0_0_05 {Type I LastRead 0 FirstWrite -1}
		den2_V_0_1_06 {Type I LastRead 0 FirstWrite -1}
		den2_V_0_2_07 {Type I LastRead 0 FirstWrite -1}
		den2_V_0_3_08 {Type I LastRead 0 FirstWrite -1}
		m_3_04_out {Type O LastRead -1 FirstWrite 3}
		m_2_03_out {Type O LastRead -1 FirstWrite 3}
		m_3_7_out {Type O LastRead -1 FirstWrite 3}
		m_3_10_out {Type O LastRead -1 FirstWrite 3}}
	master_fix_Pipeline_VITIS_LOOP_387_3 {
		m_3_10_reload {Type I LastRead 0 FirstWrite -1}
		m_3_7_reload {Type I LastRead 0 FirstWrite -1}
		m_2_03_reload {Type I LastRead 0 FirstWrite -1}
		m_3_04_reload {Type I LastRead 0 FirstWrite -1}
		sum {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 79}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26526", "Max" : "26526"}
	, {"Name" : "Interval", "Min" : "26527", "Max" : "26527"}
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
