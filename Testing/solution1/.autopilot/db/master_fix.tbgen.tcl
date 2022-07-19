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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "51", "61", "64", "69", "70", "71", "72", "73", "74", "75", "76"],
		"CDFG" : "master_fix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "55237", "EstimateLatencyMax" : "135365",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "input_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_master_fix_Pipeline_VITIS_LOOP_456_3_fu_626", "Port" : "out_r", "Inst_start_state" : "41", "Inst_end_state" : "68"}]},
			{"Name" : "firstKernel_f_V_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstKernel_f_V_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstKernel_f_V_0_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstKernel_f_V_0_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstKernel_f_V_1_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstKernel_f_V_1_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstKernel_f_V_1_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstKernel_f_V_2_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstKernel_f_V_2_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstKernel_f_V_2_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstKernel_f_V_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstKernel_f_V_3_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstKernel_f_V_3_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstKernel_f_V_3_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "firstBias_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_convolution1_fix_fu_564", "Port" : "firstBias_f_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "secondBias_f_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_convolution2_fix_fu_598", "Port" : "secondBias_f_V", "Inst_start_state" : "3", "Inst_end_state" : "19"}]},
			{"Name" : "secondKernel_f_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_convolution2_fix_fu_598", "Port" : "secondKernel_f_V_1", "Inst_start_state" : "3", "Inst_end_state" : "19"}]},
			{"Name" : "secondKernel_f_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_convolution2_fix_fu_598", "Port" : "secondKernel_f_V_0", "Inst_start_state" : "3", "Inst_end_state" : "19"}]},
			{"Name" : "secondKernel_f_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_convolution2_fix_fu_598", "Port" : "secondKernel_f_V_2", "Inst_start_state" : "3", "Inst_end_state" : "19"}]},
			{"Name" : "secondKernel_f_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_convolution2_fix_fu_598", "Port" : "secondKernel_f_V_3", "Inst_start_state" : "3", "Inst_end_state" : "19"}]},
			{"Name" : "thirdBias_f_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "firstDense_f_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondDense_f_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_377_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "68", "FirstState" : "ap_ST_fsm_state17", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state17"], "PreState" : ["ap_ST_fsm_state16"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_371_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "68", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_369_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "68", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_392_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "68", "FirstState" : "ap_ST_fsm_state21", "LastState" : ["ap_ST_fsm_state24"], "QuitState" : ["ap_ST_fsm_state21"], "PreState" : ["ap_ST_fsm_state20"], "PostState" : ["ap_ST_fsm_state20"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_390_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "68", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state21"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state19"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_418_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "68", "FirstState" : "ap_ST_fsm_state28", "LastState" : ["ap_ST_fsm_state32"], "QuitState" : ["ap_ST_fsm_state28"], "PreState" : ["ap_ST_fsm_state27"], "PostState" : ["ap_ST_fsm_state27"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_414_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "68", "FirstState" : "ap_ST_fsm_state27", "LastState" : ["ap_ST_fsm_state28"], "QuitState" : ["ap_ST_fsm_state27"], "PreState" : ["ap_ST_fsm_state26"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_411_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "68", "FirstState" : "ap_ST_fsm_state25", "LastState" : ["ap_ST_fsm_state27"], "QuitState" : ["ap_ST_fsm_state25"], "PreState" : ["ap_ST_fsm_state20"], "PostState" : ["ap_ST_fsm_state33"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_435_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "68", "FirstState" : "ap_ST_fsm_state34", "LastState" : ["ap_ST_fsm_state38"], "QuitState" : ["ap_ST_fsm_state34"], "PreState" : ["ap_ST_fsm_state33"], "PostState" : ["ap_ST_fsm_state33"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_432_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "68", "FirstState" : "ap_ST_fsm_state33", "LastState" : ["ap_ST_fsm_state34"], "QuitState" : ["ap_ST_fsm_state33"], "PreState" : ["ap_ST_fsm_state25"], "PostState" : ["ap_ST_fsm_state39"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_451_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "68", "FirstState" : "ap_ST_fsm_state41", "LastState" : ["ap_ST_fsm_state67"], "QuitState" : ["ap_ST_fsm_state41"], "PreState" : ["ap_ST_fsm_state40"], "PostState" : ["ap_ST_fsm_state68"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.thirdBias_f_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.firstDense_f_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondDense_f_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max1_V_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_0_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.max2_V_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.den1_V_0_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564", "Parent" : "0", "Child" : ["10", "23"],
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
					{"ID" : "10", "SubInstance" : "grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152", "Port" : "input_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152", "Parent" : "9", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "convolution1_fix_Pipeline_VITIS_LOOP_221_1",
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
			{"Name" : "tmp1_V_11_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tmp1_V_0_0_out", "Type" : "Vld", "Direction" : "O"},
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
			{"Name" : "VITIS_LOOP_221_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152.mux_164_12_1_1_U1", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152.mux_164_12_1_1_U2", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152.mux_164_12_1_1_U3", "Parent" : "10"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152.mux_164_12_1_1_U4", "Parent" : "10"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152.mux_164_12_1_1_U5", "Parent" : "10"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152.mux_164_12_1_1_U6", "Parent" : "10"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152.mux_164_12_1_1_U7", "Parent" : "10"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152.mux_164_12_1_1_U8", "Parent" : "10"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152.mux_164_12_1_1_U9", "Parent" : "10"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152.mux_164_12_1_1_U10", "Parent" : "10"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152.mux_164_12_1_1_U11", "Parent" : "10"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_VITIS_LOOP_221_1_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180", "Parent" : "9", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50"],
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
			{"Name" : "tmp1_V_11_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_11_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_11_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_5_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_4_0_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_V_3_0_reload", "Type" : "None", "Direction" : "I"},
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_0_0_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_0_1_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_0_2_U", "Parent" : "23"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_1_0_U", "Parent" : "23"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_1_1_U", "Parent" : "23"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_1_2_U", "Parent" : "23"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_2_0_U", "Parent" : "23"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_2_1_U", "Parent" : "23"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_2_2_U", "Parent" : "23"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_3_0_U", "Parent" : "23"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_3_1_U", "Parent" : "23"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstKernel_f_V_3_2_U", "Parent" : "23"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.firstBias_f_V_U", "Parent" : "23"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mux_124_12_1_1_U36", "Parent" : "23"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U37", "Parent" : "23"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U38", "Parent" : "23"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U39", "Parent" : "23"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U40", "Parent" : "23"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U41", "Parent" : "23"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U42", "Parent" : "23"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U43", "Parent" : "23"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U44", "Parent" : "23"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U45", "Parent" : "23"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U46", "Parent" : "23"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U47", "Parent" : "23"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.mul_36s_12s_36_2_1_U48", "Parent" : "23"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_convolution1_fix_fu_564.grp_convolution1_fix_Pipeline_Conv_loop_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_598", "Parent" : "0", "Child" : ["52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "convolution2_fix",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30289", "EstimateLatencyMax" : "90097",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "m_0_0_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "secondBias_f_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "secondKernel_f_V_3", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_340_4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_345_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_state10", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state26", "ap_ST_fsm_state15", "ap_ST_fsm_state20"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_350_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_state20", "LastState" : ["ap_ST_fsm_state25"], "QuitState" : ["ap_ST_fsm_state20"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state26"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_354_7", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state19"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state10"], "PostState" : ["ap_ST_fsm_state26"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_334_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state27"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_332_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_598.secondBias_f_V_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_598.secondKernel_f_V_1_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_598.secondKernel_f_V_0_U", "Parent" : "51"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_598.secondKernel_f_V_2_U", "Parent" : "51"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_598.secondKernel_f_V_3_U", "Parent" : "51"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_598.mul_20s_36s_55_2_1_U91", "Parent" : "51"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_598.mul_20s_36s_55_2_1_U92", "Parent" : "51"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_598.mul_21s_36s_55_2_1_U94", "Parent" : "51"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_convolution2_fix_fu_598.mul_21s_36s_55_2_1_U95", "Parent" : "51"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_445_1_fu_614", "Parent" : "0", "Child" : ["62", "63"],
		"CDFG" : "master_fix_Pipeline_VITIS_LOOP_445_1",
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
			{"Name" : "VITIS_LOOP_445_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_445_1_fu_614.mux_42_36_1_1_U105", "Parent" : "61"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_445_1_fu_614.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_456_3_fu_626", "Parent" : "0", "Child" : ["65", "66", "67", "68"],
		"CDFG" : "master_fix_Pipeline_VITIS_LOOP_456_3",
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
			{"Name" : "VITIS_LOOP_456_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter79", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter79", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_456_3_fu_626.fptrunc_64ns_32_2_no_dsp_1_U115", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_456_3_fu_626.ddiv_64ns_64ns_64_59_no_dsp_1_U116", "Parent" : "64"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_456_3_fu_626.mux_42_64_1_1_U118", "Parent" : "64"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_master_fix_Pipeline_VITIS_LOOP_456_3_fu_626.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_7_full_dsp_1_U129", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dexp_64ns_64ns_64_18_full_dsp_1_U130", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_9ns_15_1_1_U131", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_7ns_3ns_2_11_seq_1_U132", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_21s_36s_55_2_1_U133", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_x_U134", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_19s_35ns_54_2_1_U135", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_64_1_1_U136", "Parent" : "0"}]}


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
		secondBias_f_V {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3 {Type I LastRead -1 FirstWrite -1}
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
	convolution1_fix_Pipeline_VITIS_LOOP_221_1 {
		input_r {Type I LastRead 1 FirstWrite -1}
		tmp1_V_11_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_10_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_11_4_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_11_6_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_11_8_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_5_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_4_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_3_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_2_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_1_0_out {Type O LastRead -1 FirstWrite 1}
		tmp1_V_0_0_out {Type O LastRead -1 FirstWrite 1}
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
		tmp1_V_11_4_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_11_6_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_11_8_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_6 {Type I LastRead 0 FirstWrite -1}
		tmp1_V_5_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_4_0_reload {Type I LastRead 0 FirstWrite -1}
		tmp1_V_3_0_reload {Type I LastRead 0 FirstWrite -1}
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
	convolution2_fix {
		m_0_0_0_0 {Type I LastRead 7 FirstWrite -1}
		out_0 {Type O LastRead -1 FirstWrite 4}
		secondBias_f_V {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_1 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_0 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_2 {Type I LastRead -1 FirstWrite -1}
		secondKernel_f_V_3 {Type I LastRead -1 FirstWrite -1}}
	master_fix_Pipeline_VITIS_LOOP_445_1 {
		den2_V_0_0_05 {Type I LastRead 0 FirstWrite -1}
		den2_V_0_1_06 {Type I LastRead 0 FirstWrite -1}
		den2_V_0_2_07 {Type I LastRead 0 FirstWrite -1}
		den2_V_0_3_08 {Type I LastRead 0 FirstWrite -1}
		m_3_04_out {Type O LastRead -1 FirstWrite 3}
		m_2_03_out {Type O LastRead -1 FirstWrite 3}
		m_3_7_out {Type O LastRead -1 FirstWrite 3}
		m_3_10_out {Type O LastRead -1 FirstWrite 3}}
	master_fix_Pipeline_VITIS_LOOP_456_3 {
		m_3_10_reload {Type I LastRead 0 FirstWrite -1}
		m_3_7_reload {Type I LastRead 0 FirstWrite -1}
		m_2_03_reload {Type I LastRead 0 FirstWrite -1}
		m_3_04_reload {Type I LastRead 0 FirstWrite -1}
		sum {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 79}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "55237", "Max" : "135365"}
	, {"Name" : "Interval", "Min" : "55238", "Max" : "135366"}
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
