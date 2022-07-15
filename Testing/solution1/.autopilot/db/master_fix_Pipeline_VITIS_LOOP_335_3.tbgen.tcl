set moduleName master_fix_Pipeline_VITIS_LOOP_335_3
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
set C_modelName {master_fix_Pipeline_VITIS_LOOP_335_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_V_0_01_reload int 32 regular  }
	{ m_V_1_02_reload int 32 regular  }
	{ m_V_2_03_reload int 32 regular  }
	{ m_V_3_04_reload int 32 regular  }
	{ conv_i_i84 int 32 regular  }
	{ out_r int 32 regular {array 4 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_V_0_01_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_V_1_02_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_V_2_03_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_V_3_04_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_i_i84", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_V_0_01_reload sc_in sc_lv 32 signal 0 } 
	{ m_V_1_02_reload sc_in sc_lv 32 signal 1 } 
	{ m_V_2_03_reload sc_in sc_lv 32 signal 2 } 
	{ m_V_3_04_reload sc_in sc_lv 32 signal 3 } 
	{ conv_i_i84 sc_in sc_lv 32 signal 4 } 
	{ out_r_address0 sc_out sc_lv 2 signal 5 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 5 } 
	{ out_r_we0 sc_out sc_logic 1 signal 5 } 
	{ out_r_d0 sc_out sc_lv 32 signal 5 } 
	{ grp_exp_32_13_s_fu_651_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_exp_32_13_s_fu_651_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_exp_32_13_s_fu_651_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_exp_32_13_s_fu_651_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_exp_32_13_s_fu_651_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_exp_32_13_s_fu_651_p_idle sc_in sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_V_0_01_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_V_0_01_reload", "role": "default" }} , 
 	{ "name": "m_V_1_02_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_V_1_02_reload", "role": "default" }} , 
 	{ "name": "m_V_2_03_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_V_2_03_reload", "role": "default" }} , 
 	{ "name": "m_V_3_04_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_V_3_04_reload", "role": "default" }} , 
 	{ "name": "conv_i_i84", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_i_i84", "role": "default" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }} , 
 	{ "name": "grp_exp_32_13_s_fu_651_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_exp_32_13_s_fu_651_p_din1", "role": "default" }} , 
 	{ "name": "grp_exp_32_13_s_fu_651_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_exp_32_13_s_fu_651_p_dout0", "role": "default" }} , 
 	{ "name": "grp_exp_32_13_s_fu_651_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_exp_32_13_s_fu_651_p_start", "role": "default" }} , 
 	{ "name": "grp_exp_32_13_s_fu_651_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_exp_32_13_s_fu_651_p_ready", "role": "default" }} , 
 	{ "name": "grp_exp_32_13_s_fu_651_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_exp_32_13_s_fu_651_p_done", "role": "default" }} , 
 	{ "name": "grp_exp_32_13_s_fu_651_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_exp_32_13_s_fu_651_p_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "master_fix_Pipeline_VITIS_LOOP_335_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "m_V_0_01_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_V_1_02_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_V_2_03_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_V_3_04_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_i_i84", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_335_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter59", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter59", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U72", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_51ns_32s_32_55_1_U73", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	master_fix_Pipeline_VITIS_LOOP_335_3 {
		m_V_0_01_reload {Type I LastRead 0 FirstWrite -1}
		m_V_1_02_reload {Type I LastRead 0 FirstWrite -1}
		m_V_2_03_reload {Type I LastRead 0 FirstWrite -1}
		m_V_3_04_reload {Type I LastRead 0 FirstWrite -1}
		conv_i_i84 {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 59}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_V_0_01_reload { ap_none {  { m_V_0_01_reload in_data 0 32 } } }
	m_V_1_02_reload { ap_none {  { m_V_1_02_reload in_data 0 32 } } }
	m_V_2_03_reload { ap_none {  { m_V_2_03_reload in_data 0 32 } } }
	m_V_3_04_reload { ap_none {  { m_V_3_04_reload in_data 0 32 } } }
	conv_i_i84 { ap_none {  { conv_i_i84 in_data 0 32 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 2 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 32 } } }
}
