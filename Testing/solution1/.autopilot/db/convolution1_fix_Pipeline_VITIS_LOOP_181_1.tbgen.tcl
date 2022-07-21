set moduleName convolution1_fix_Pipeline_VITIS_LOOP_181_1
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
set C_modelName {convolution1_fix_Pipeline_VITIS_LOOP_181_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 16 regular {array 384 { 1 3 } 1 1 }  }
	{ tmp1_V_11_0_out int 12 regular {pointer 1}  }
	{ tmp1_V_10_0_out int 12 regular {pointer 1}  }
	{ tmp1_V_11_4_out int 12 regular {pointer 1}  }
	{ tmp1_V_11_6_out int 12 regular {pointer 1}  }
	{ tmp1_V_5_0_out int 12 regular {pointer 1}  }
	{ tmp1_V_4_0_out int 12 regular {pointer 1}  }
	{ tmp1_V_2_0_out int 12 regular {pointer 1}  }
	{ tmp1_V_1_0_out int 12 regular {pointer 1}  }
	{ tmp1_V_0_0_out int 12 regular {pointer 1}  }
	{ tmp1_V_11_9_out int 12 regular {pointer 1}  }
	{ tmp1_V_11_11_out int 12 regular {pointer 1}  }
	{ tmp2_V_11_0_out int 12 regular {pointer 1}  }
	{ tmp2_V_10_0_out int 12 regular {pointer 1}  }
	{ tmp2_V_9_0_out int 12 regular {pointer 1}  }
	{ tmp2_V_8_0_out int 12 regular {pointer 1}  }
	{ tmp2_V_7_0_out int 12 regular {pointer 1}  }
	{ tmp2_V_6_0_out int 12 regular {pointer 1}  }
	{ tmp2_V_5_0_out int 12 regular {pointer 1}  }
	{ tmp2_V_3_0_out int 12 regular {pointer 1}  }
	{ tmp2_V_2_0_out int 12 regular {pointer 1}  }
	{ tmp2_V_1_0_out int 12 regular {pointer 1}  }
	{ tmp2_V_0_0_out int 12 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_11_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_10_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_11_4_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_11_6_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_5_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_4_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_2_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_1_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_0_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_11_9_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_11_11_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_11_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_10_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_9_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_8_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_7_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_6_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_5_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_3_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_2_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_1_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_0_0_out", "interface" : "wire", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 53
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
	{ tmp1_V_11_0_out sc_out sc_lv 12 signal 1 } 
	{ tmp1_V_11_0_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ tmp1_V_10_0_out sc_out sc_lv 12 signal 2 } 
	{ tmp1_V_10_0_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ tmp1_V_11_4_out sc_out sc_lv 12 signal 3 } 
	{ tmp1_V_11_4_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ tmp1_V_11_6_out sc_out sc_lv 12 signal 4 } 
	{ tmp1_V_11_6_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ tmp1_V_5_0_out sc_out sc_lv 12 signal 5 } 
	{ tmp1_V_5_0_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ tmp1_V_4_0_out sc_out sc_lv 12 signal 6 } 
	{ tmp1_V_4_0_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ tmp1_V_2_0_out sc_out sc_lv 12 signal 7 } 
	{ tmp1_V_2_0_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ tmp1_V_1_0_out sc_out sc_lv 12 signal 8 } 
	{ tmp1_V_1_0_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ tmp1_V_0_0_out sc_out sc_lv 12 signal 9 } 
	{ tmp1_V_0_0_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ tmp1_V_11_9_out sc_out sc_lv 12 signal 10 } 
	{ tmp1_V_11_9_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ tmp1_V_11_11_out sc_out sc_lv 12 signal 11 } 
	{ tmp1_V_11_11_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ tmp2_V_11_0_out sc_out sc_lv 12 signal 12 } 
	{ tmp2_V_11_0_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ tmp2_V_10_0_out sc_out sc_lv 12 signal 13 } 
	{ tmp2_V_10_0_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ tmp2_V_9_0_out sc_out sc_lv 12 signal 14 } 
	{ tmp2_V_9_0_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ tmp2_V_8_0_out sc_out sc_lv 12 signal 15 } 
	{ tmp2_V_8_0_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ tmp2_V_7_0_out sc_out sc_lv 12 signal 16 } 
	{ tmp2_V_7_0_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ tmp2_V_6_0_out sc_out sc_lv 12 signal 17 } 
	{ tmp2_V_6_0_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ tmp2_V_5_0_out sc_out sc_lv 12 signal 18 } 
	{ tmp2_V_5_0_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ tmp2_V_3_0_out sc_out sc_lv 12 signal 19 } 
	{ tmp2_V_3_0_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ tmp2_V_2_0_out sc_out sc_lv 12 signal 20 } 
	{ tmp2_V_2_0_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ tmp2_V_1_0_out sc_out sc_lv 12 signal 21 } 
	{ tmp2_V_1_0_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ tmp2_V_0_0_out sc_out sc_lv 12 signal 22 } 
	{ tmp2_V_0_0_out_ap_vld sc_out sc_logic 1 outvld 22 } 
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
 	{ "name": "tmp1_V_11_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_11_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_11_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_11_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_10_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_10_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_10_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_10_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_11_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_11_4_out", "role": "default" }} , 
 	{ "name": "tmp1_V_11_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_11_4_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_11_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_11_6_out", "role": "default" }} , 
 	{ "name": "tmp1_V_11_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_11_6_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_5_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_4_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_4_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_4_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_4_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_2_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_1_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_0_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_0_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_11_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_11_9_out", "role": "default" }} , 
 	{ "name": "tmp1_V_11_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_11_9_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_11_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp1_V_11_11_out", "role": "default" }} , 
 	{ "name": "tmp1_V_11_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_11_11_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_11_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_11_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_11_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_11_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_10_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_10_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_10_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_10_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_9_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_9_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_9_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_9_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_8_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_8_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_8_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_8_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_7_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_7_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_7_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_7_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_6_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_6_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_6_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_6_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_5_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_3_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_2_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_1_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp2_V_0_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_0_0_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "convolution1_fix_Pipeline_VITIS_LOOP_181_1",
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
			{"Name" : "VITIS_LOOP_181_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_12_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_12_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_12_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_12_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_12_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_12_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_12_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_12_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_12_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_12_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_12_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convolution1_fix_Pipeline_VITIS_LOOP_181_1 {
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
		tmp2_V_0_0_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 9 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 16 } } }
	tmp1_V_11_0_out { ap_vld {  { tmp1_V_11_0_out out_data 1 12 }  { tmp1_V_11_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_10_0_out { ap_vld {  { tmp1_V_10_0_out out_data 1 12 }  { tmp1_V_10_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_11_4_out { ap_vld {  { tmp1_V_11_4_out out_data 1 12 }  { tmp1_V_11_4_out_ap_vld out_vld 1 1 } } }
	tmp1_V_11_6_out { ap_vld {  { tmp1_V_11_6_out out_data 1 12 }  { tmp1_V_11_6_out_ap_vld out_vld 1 1 } } }
	tmp1_V_5_0_out { ap_vld {  { tmp1_V_5_0_out out_data 1 12 }  { tmp1_V_5_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_4_0_out { ap_vld {  { tmp1_V_4_0_out out_data 1 12 }  { tmp1_V_4_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_2_0_out { ap_vld {  { tmp1_V_2_0_out out_data 1 12 }  { tmp1_V_2_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_1_0_out { ap_vld {  { tmp1_V_1_0_out out_data 1 12 }  { tmp1_V_1_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_0_0_out { ap_vld {  { tmp1_V_0_0_out out_data 1 12 }  { tmp1_V_0_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_11_9_out { ap_vld {  { tmp1_V_11_9_out out_data 1 12 }  { tmp1_V_11_9_out_ap_vld out_vld 1 1 } } }
	tmp1_V_11_11_out { ap_vld {  { tmp1_V_11_11_out out_data 1 12 }  { tmp1_V_11_11_out_ap_vld out_vld 1 1 } } }
	tmp2_V_11_0_out { ap_vld {  { tmp2_V_11_0_out out_data 1 12 }  { tmp2_V_11_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_10_0_out { ap_vld {  { tmp2_V_10_0_out out_data 1 12 }  { tmp2_V_10_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_9_0_out { ap_vld {  { tmp2_V_9_0_out out_data 1 12 }  { tmp2_V_9_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_8_0_out { ap_vld {  { tmp2_V_8_0_out out_data 1 12 }  { tmp2_V_8_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_7_0_out { ap_vld {  { tmp2_V_7_0_out out_data 1 12 }  { tmp2_V_7_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_6_0_out { ap_vld {  { tmp2_V_6_0_out out_data 1 12 }  { tmp2_V_6_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_5_0_out { ap_vld {  { tmp2_V_5_0_out out_data 1 12 }  { tmp2_V_5_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_3_0_out { ap_vld {  { tmp2_V_3_0_out out_data 1 12 }  { tmp2_V_3_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_2_0_out { ap_vld {  { tmp2_V_2_0_out out_data 1 12 }  { tmp2_V_2_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_1_0_out { ap_vld {  { tmp2_V_1_0_out out_data 1 12 }  { tmp2_V_1_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_0_0_out { ap_vld {  { tmp2_V_0_0_out out_data 1 12 }  { tmp2_V_0_0_out_ap_vld out_vld 1 1 } } }
}
