set moduleName master_fix_Pipeline_Initialization_SoftMax_Loop
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
set C_modelName {master_fix_Pipeline_Initialization_SoftMax_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ den2_V_0_0_05_reload int 36 regular  }
	{ den2_V_0_1_06_reload int 36 regular  }
	{ den2_V_0_2_07_reload int 36 regular  }
	{ den2_V_0_3_08_reload int 36 regular  }
	{ m_3_04_out double 64 regular {pointer 1}  }
	{ m_2_03_out double 64 regular {pointer 1}  }
	{ m_3_7_out double 64 regular {pointer 1}  }
	{ m_3_10_out double 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "den2_V_0_0_05_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "den2_V_0_1_06_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "den2_V_0_2_07_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "den2_V_0_3_08_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "m_3_04_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_2_03_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_3_7_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_3_10_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ den2_V_0_0_05_reload sc_in sc_lv 36 signal 0 } 
	{ den2_V_0_1_06_reload sc_in sc_lv 36 signal 1 } 
	{ den2_V_0_2_07_reload sc_in sc_lv 36 signal 2 } 
	{ den2_V_0_3_08_reload sc_in sc_lv 36 signal 3 } 
	{ m_3_04_out sc_out sc_lv 64 signal 4 } 
	{ m_3_04_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ m_2_03_out sc_out sc_lv 64 signal 5 } 
	{ m_2_03_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ m_3_7_out sc_out sc_lv 64 signal 6 } 
	{ m_3_7_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ m_3_10_out sc_out sc_lv 64 signal 7 } 
	{ m_3_10_out_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "den2_V_0_0_05_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "den2_V_0_0_05_reload", "role": "default" }} , 
 	{ "name": "den2_V_0_1_06_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "den2_V_0_1_06_reload", "role": "default" }} , 
 	{ "name": "den2_V_0_2_07_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "den2_V_0_2_07_reload", "role": "default" }} , 
 	{ "name": "den2_V_0_3_08_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "den2_V_0_3_08_reload", "role": "default" }} , 
 	{ "name": "m_3_04_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_3_04_out", "role": "default" }} , 
 	{ "name": "m_3_04_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_3_04_out", "role": "ap_vld" }} , 
 	{ "name": "m_2_03_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_2_03_out", "role": "default" }} , 
 	{ "name": "m_2_03_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_2_03_out", "role": "ap_vld" }} , 
 	{ "name": "m_3_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_3_7_out", "role": "default" }} , 
 	{ "name": "m_3_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_3_7_out", "role": "ap_vld" }} , 
 	{ "name": "m_3_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_3_10_out", "role": "default" }} , 
 	{ "name": "m_3_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_3_10_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U1014", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	master_fix_Pipeline_Initialization_SoftMax_Loop {
		den2_V_0_0_05_reload {Type I LastRead 0 FirstWrite -1}
		den2_V_0_1_06_reload {Type I LastRead 0 FirstWrite -1}
		den2_V_0_2_07_reload {Type I LastRead 0 FirstWrite -1}
		den2_V_0_3_08_reload {Type I LastRead 0 FirstWrite -1}
		m_3_04_out {Type O LastRead -1 FirstWrite 4}
		m_2_03_out {Type O LastRead -1 FirstWrite 4}
		m_3_7_out {Type O LastRead -1 FirstWrite 4}
		m_3_10_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	den2_V_0_0_05_reload { ap_none {  { den2_V_0_0_05_reload in_data 0 36 } } }
	den2_V_0_1_06_reload { ap_none {  { den2_V_0_1_06_reload in_data 0 36 } } }
	den2_V_0_2_07_reload { ap_none {  { den2_V_0_2_07_reload in_data 0 36 } } }
	den2_V_0_3_08_reload { ap_none {  { den2_V_0_3_08_reload in_data 0 36 } } }
	m_3_04_out { ap_vld {  { m_3_04_out out_data 1 64 }  { m_3_04_out_ap_vld out_vld 1 1 } } }
	m_2_03_out { ap_vld {  { m_2_03_out out_data 1 64 }  { m_2_03_out_ap_vld out_vld 1 1 } } }
	m_3_7_out { ap_vld {  { m_3_7_out out_data 1 64 }  { m_3_7_out_ap_vld out_vld 1 1 } } }
	m_3_10_out { ap_vld {  { m_3_10_out out_data 1 64 }  { m_3_10_out_ap_vld out_vld 1 1 } } }
}
