set moduleName convolution2_fix_Pipeline_VITIS_LOOP_247_2
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
set C_modelName {convolution2_fix_Pipeline_VITIS_LOOP_247_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ parc_V_0_21_reload int 36 regular  }
	{ parc_V_1_23_reload int 36 regular  }
	{ parc_V_2_24_reload int 36 regular  }
	{ parc_V_3_25_reload int 36 regular  }
	{ parc_V_4_26_reload int 36 regular  }
	{ parc_V_5_27_reload int 36 regular  }
	{ parc_V_6_28_reload int 36 regular  }
	{ parc_V_7_29_reload int 36 regular  }
	{ parc_V_8_210_reload int 36 regular  }
	{ parc_V_9_211_reload int 36 regular  }
	{ parc_V_10_212_reload int 36 regular  }
	{ parc_V_11_213_reload int 36 regular  }
	{ parc_V_12_214_reload int 36 regular  }
	{ parc_V_13_215_reload int 36 regular  }
	{ parc_V_14_216_reload int 36 regular  }
	{ parc_V_15_217_reload int 36 regular  }
	{ out_0 int 35 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "parc_V_0_21_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_1_23_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_2_24_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_3_25_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_4_26_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_5_27_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_6_28_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_7_29_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_8_210_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_9_211_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_10_212_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_11_213_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_12_214_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_13_215_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_14_216_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "parc_V_15_217_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "out_0", "interface" : "memory", "bitwidth" : 35, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ parc_V_0_21_reload sc_in sc_lv 36 signal 0 } 
	{ parc_V_1_23_reload sc_in sc_lv 36 signal 1 } 
	{ parc_V_2_24_reload sc_in sc_lv 36 signal 2 } 
	{ parc_V_3_25_reload sc_in sc_lv 36 signal 3 } 
	{ parc_V_4_26_reload sc_in sc_lv 36 signal 4 } 
	{ parc_V_5_27_reload sc_in sc_lv 36 signal 5 } 
	{ parc_V_6_28_reload sc_in sc_lv 36 signal 6 } 
	{ parc_V_7_29_reload sc_in sc_lv 36 signal 7 } 
	{ parc_V_8_210_reload sc_in sc_lv 36 signal 8 } 
	{ parc_V_9_211_reload sc_in sc_lv 36 signal 9 } 
	{ parc_V_10_212_reload sc_in sc_lv 36 signal 10 } 
	{ parc_V_11_213_reload sc_in sc_lv 36 signal 11 } 
	{ parc_V_12_214_reload sc_in sc_lv 36 signal 12 } 
	{ parc_V_13_215_reload sc_in sc_lv 36 signal 13 } 
	{ parc_V_14_216_reload sc_in sc_lv 36 signal 14 } 
	{ parc_V_15_217_reload sc_in sc_lv 36 signal 15 } 
	{ out_0_address0 sc_out sc_lv 4 signal 16 } 
	{ out_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ out_0_we0 sc_out sc_logic 1 signal 16 } 
	{ out_0_d0 sc_out sc_lv 35 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "parc_V_0_21_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_0_21_reload", "role": "default" }} , 
 	{ "name": "parc_V_1_23_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_1_23_reload", "role": "default" }} , 
 	{ "name": "parc_V_2_24_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_2_24_reload", "role": "default" }} , 
 	{ "name": "parc_V_3_25_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_3_25_reload", "role": "default" }} , 
 	{ "name": "parc_V_4_26_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_4_26_reload", "role": "default" }} , 
 	{ "name": "parc_V_5_27_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_5_27_reload", "role": "default" }} , 
 	{ "name": "parc_V_6_28_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_6_28_reload", "role": "default" }} , 
 	{ "name": "parc_V_7_29_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_7_29_reload", "role": "default" }} , 
 	{ "name": "parc_V_8_210_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_8_210_reload", "role": "default" }} , 
 	{ "name": "parc_V_9_211_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_9_211_reload", "role": "default" }} , 
 	{ "name": "parc_V_10_212_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_10_212_reload", "role": "default" }} , 
 	{ "name": "parc_V_11_213_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_11_213_reload", "role": "default" }} , 
 	{ "name": "parc_V_12_214_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_12_214_reload", "role": "default" }} , 
 	{ "name": "parc_V_13_215_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_13_215_reload", "role": "default" }} , 
 	{ "name": "parc_V_14_216_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_14_216_reload", "role": "default" }} , 
 	{ "name": "parc_V_15_217_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "parc_V_15_217_reload", "role": "default" }} , 
 	{ "name": "out_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_0", "role": "address0" }} , 
 	{ "name": "out_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_0", "role": "ce0" }} , 
 	{ "name": "out_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_0", "role": "we0" }} , 
 	{ "name": "out_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "out_0", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_36_1_1_x_U337", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		out_0 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	parc_V_0_21_reload { ap_none {  { parc_V_0_21_reload in_data 0 36 } } }
	parc_V_1_23_reload { ap_none {  { parc_V_1_23_reload in_data 0 36 } } }
	parc_V_2_24_reload { ap_none {  { parc_V_2_24_reload in_data 0 36 } } }
	parc_V_3_25_reload { ap_none {  { parc_V_3_25_reload in_data 0 36 } } }
	parc_V_4_26_reload { ap_none {  { parc_V_4_26_reload in_data 0 36 } } }
	parc_V_5_27_reload { ap_none {  { parc_V_5_27_reload in_data 0 36 } } }
	parc_V_6_28_reload { ap_none {  { parc_V_6_28_reload in_data 0 36 } } }
	parc_V_7_29_reload { ap_none {  { parc_V_7_29_reload in_data 0 36 } } }
	parc_V_8_210_reload { ap_none {  { parc_V_8_210_reload in_data 0 36 } } }
	parc_V_9_211_reload { ap_none {  { parc_V_9_211_reload in_data 0 36 } } }
	parc_V_10_212_reload { ap_none {  { parc_V_10_212_reload in_data 0 36 } } }
	parc_V_11_213_reload { ap_none {  { parc_V_11_213_reload in_data 0 36 } } }
	parc_V_12_214_reload { ap_none {  { parc_V_12_214_reload in_data 0 36 } } }
	parc_V_13_215_reload { ap_none {  { parc_V_13_215_reload in_data 0 36 } } }
	parc_V_14_216_reload { ap_none {  { parc_V_14_216_reload in_data 0 36 } } }
	parc_V_15_217_reload { ap_none {  { parc_V_15_217_reload in_data 0 36 } } }
	out_0 { ap_memory {  { out_0_address0 mem_address 1 4 }  { out_0_ce0 mem_ce 1 1 }  { out_0_we0 mem_we 1 1 }  { out_0_d0 mem_din 1 35 } } }
}
