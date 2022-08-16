set moduleName convolution2_fix_Pipeline_Initialization_Conv2_Loop
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
set C_modelName {convolution2_fix_Pipeline_Initialization_Conv2_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ m_0 int 35 regular {array 336 { 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ tmp2_V_31_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_30_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_29_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_28_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_27_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_26_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_25_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_24_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_23_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_22_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_21_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_20_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_19_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_18_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_17_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_16_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_7_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_6_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_5_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_4_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_3_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_2_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_1_0_out int 36 regular {pointer 1}  }
	{ tmp2_V_0_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_31_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_30_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_29_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_28_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_27_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_26_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_25_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_24_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_23_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_22_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_21_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_20_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_19_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_18_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_17_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_16_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_15_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_14_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_13_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_12_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_11_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_10_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_9_0_out int 36 regular {pointer 1}  }
	{ tmp1_V_8_0_out int 36 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m_0", "interface" : "memory", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_31_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_30_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_29_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_28_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_27_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_26_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_25_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_24_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_23_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_22_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_21_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_20_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_19_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_18_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_17_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_16_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_7_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_6_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_5_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_4_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_3_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_2_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_1_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp2_V_0_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_31_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_30_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_29_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_28_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_27_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_26_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_25_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_24_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_23_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_22_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_21_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_20_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_19_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_18_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_17_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_16_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_15_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_14_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_13_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_12_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_11_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_10_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_9_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp1_V_8_0_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 105
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_0_address0 sc_out sc_lv 9 signal 0 } 
	{ m_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ m_0_q0 sc_in sc_lv 35 signal 0 } 
	{ tmp2_V_31_0_out sc_out sc_lv 36 signal 1 } 
	{ tmp2_V_31_0_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ tmp2_V_30_0_out sc_out sc_lv 36 signal 2 } 
	{ tmp2_V_30_0_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ tmp2_V_29_0_out sc_out sc_lv 36 signal 3 } 
	{ tmp2_V_29_0_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ tmp2_V_28_0_out sc_out sc_lv 36 signal 4 } 
	{ tmp2_V_28_0_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ tmp2_V_27_0_out sc_out sc_lv 36 signal 5 } 
	{ tmp2_V_27_0_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ tmp2_V_26_0_out sc_out sc_lv 36 signal 6 } 
	{ tmp2_V_26_0_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ tmp2_V_25_0_out sc_out sc_lv 36 signal 7 } 
	{ tmp2_V_25_0_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ tmp2_V_24_0_out sc_out sc_lv 36 signal 8 } 
	{ tmp2_V_24_0_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ tmp2_V_23_0_out sc_out sc_lv 36 signal 9 } 
	{ tmp2_V_23_0_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ tmp2_V_22_0_out sc_out sc_lv 36 signal 10 } 
	{ tmp2_V_22_0_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ tmp2_V_21_0_out sc_out sc_lv 36 signal 11 } 
	{ tmp2_V_21_0_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ tmp2_V_20_0_out sc_out sc_lv 36 signal 12 } 
	{ tmp2_V_20_0_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ tmp2_V_19_0_out sc_out sc_lv 36 signal 13 } 
	{ tmp2_V_19_0_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ tmp2_V_18_0_out sc_out sc_lv 36 signal 14 } 
	{ tmp2_V_18_0_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ tmp2_V_17_0_out sc_out sc_lv 36 signal 15 } 
	{ tmp2_V_17_0_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ tmp2_V_16_0_out sc_out sc_lv 36 signal 16 } 
	{ tmp2_V_16_0_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ tmp2_V_7_0_out sc_out sc_lv 36 signal 17 } 
	{ tmp2_V_7_0_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ tmp2_V_6_0_out sc_out sc_lv 36 signal 18 } 
	{ tmp2_V_6_0_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ tmp2_V_5_0_out sc_out sc_lv 36 signal 19 } 
	{ tmp2_V_5_0_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ tmp2_V_4_0_out sc_out sc_lv 36 signal 20 } 
	{ tmp2_V_4_0_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ tmp2_V_3_0_out sc_out sc_lv 36 signal 21 } 
	{ tmp2_V_3_0_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ tmp2_V_2_0_out sc_out sc_lv 36 signal 22 } 
	{ tmp2_V_2_0_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ tmp2_V_1_0_out sc_out sc_lv 36 signal 23 } 
	{ tmp2_V_1_0_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ tmp2_V_0_0_out sc_out sc_lv 36 signal 24 } 
	{ tmp2_V_0_0_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ tmp1_V_31_0_out sc_out sc_lv 36 signal 25 } 
	{ tmp1_V_31_0_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ tmp1_V_30_0_out sc_out sc_lv 36 signal 26 } 
	{ tmp1_V_30_0_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ tmp1_V_29_0_out sc_out sc_lv 36 signal 27 } 
	{ tmp1_V_29_0_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ tmp1_V_28_0_out sc_out sc_lv 36 signal 28 } 
	{ tmp1_V_28_0_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ tmp1_V_27_0_out sc_out sc_lv 36 signal 29 } 
	{ tmp1_V_27_0_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ tmp1_V_26_0_out sc_out sc_lv 36 signal 30 } 
	{ tmp1_V_26_0_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ tmp1_V_25_0_out sc_out sc_lv 36 signal 31 } 
	{ tmp1_V_25_0_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ tmp1_V_24_0_out sc_out sc_lv 36 signal 32 } 
	{ tmp1_V_24_0_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ tmp1_V_23_0_out sc_out sc_lv 36 signal 33 } 
	{ tmp1_V_23_0_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ tmp1_V_22_0_out sc_out sc_lv 36 signal 34 } 
	{ tmp1_V_22_0_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ tmp1_V_21_0_out sc_out sc_lv 36 signal 35 } 
	{ tmp1_V_21_0_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ tmp1_V_20_0_out sc_out sc_lv 36 signal 36 } 
	{ tmp1_V_20_0_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ tmp1_V_19_0_out sc_out sc_lv 36 signal 37 } 
	{ tmp1_V_19_0_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ tmp1_V_18_0_out sc_out sc_lv 36 signal 38 } 
	{ tmp1_V_18_0_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ tmp1_V_17_0_out sc_out sc_lv 36 signal 39 } 
	{ tmp1_V_17_0_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ tmp1_V_16_0_out sc_out sc_lv 36 signal 40 } 
	{ tmp1_V_16_0_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ tmp1_V_15_0_out sc_out sc_lv 36 signal 41 } 
	{ tmp1_V_15_0_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ tmp1_V_14_0_out sc_out sc_lv 36 signal 42 } 
	{ tmp1_V_14_0_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ tmp1_V_13_0_out sc_out sc_lv 36 signal 43 } 
	{ tmp1_V_13_0_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ tmp1_V_12_0_out sc_out sc_lv 36 signal 44 } 
	{ tmp1_V_12_0_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ tmp1_V_11_0_out sc_out sc_lv 36 signal 45 } 
	{ tmp1_V_11_0_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ tmp1_V_10_0_out sc_out sc_lv 36 signal 46 } 
	{ tmp1_V_10_0_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ tmp1_V_9_0_out sc_out sc_lv 36 signal 47 } 
	{ tmp1_V_9_0_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ tmp1_V_8_0_out sc_out sc_lv 36 signal 48 } 
	{ tmp1_V_8_0_out_ap_vld sc_out sc_logic 1 outvld 48 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address0" }} , 
 	{ "name": "m_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce0" }} , 
 	{ "name": "m_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "m_0", "role": "q0" }} , 
 	{ "name": "tmp2_V_31_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_31_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_31_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_31_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_30_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_30_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_30_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_30_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_29_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_29_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_29_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_29_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_28_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_28_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_28_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_28_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_27_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_27_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_27_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_27_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_26_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_26_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_26_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_26_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_25_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_25_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_25_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_25_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_24_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_24_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_24_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_24_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_23_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_23_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_23_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_23_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_22_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_22_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_22_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_22_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_21_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_21_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_21_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_21_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_20_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_20_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_20_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_20_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_19_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_19_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_19_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_19_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_18_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_18_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_18_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_18_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_17_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_17_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_17_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_17_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_16_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_16_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_16_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_16_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_7_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_7_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_7_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_7_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_6_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_6_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_6_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_6_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_5_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_4_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_4_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_4_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_4_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_3_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_2_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_1_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp2_V_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_0_0_out", "role": "default" }} , 
 	{ "name": "tmp2_V_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp2_V_0_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_31_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_31_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_31_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_31_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_30_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_30_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_30_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_30_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_29_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_29_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_29_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_29_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_28_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_28_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_28_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_28_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_27_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_27_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_27_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_27_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_26_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_26_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_26_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_26_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_25_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_25_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_25_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_25_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_24_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_24_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_24_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_24_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_23_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_23_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_23_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_23_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_22_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_22_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_22_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_22_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_21_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_21_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_21_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_21_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_20_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_20_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_20_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_20_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_19_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_19_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_19_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_19_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_18_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_18_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_18_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_18_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_17_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_17_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_17_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_17_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_16_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_16_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_16_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_16_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_15_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_15_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_15_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_15_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_14_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_14_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_14_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_14_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_13_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_13_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_13_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_13_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_12_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_12_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_12_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_12_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_11_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_11_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_11_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_11_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_10_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_10_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_10_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_10_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_9_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_9_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_9_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_9_0_out", "role": "ap_vld" }} , 
 	{ "name": "tmp1_V_8_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_8_0_out", "role": "default" }} , 
 	{ "name": "tmp1_V_8_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_V_8_0_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
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
			{"Name" : "Initialization_Conv2_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_36_1_1_U63", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_36_1_1_U64", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_36_1_1_U65", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_36_1_1_U66", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_36_1_1_U67", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_36_1_1_U68", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_36_1_1_U69", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_36_1_1_U70", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U71", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U72", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U73", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U74", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U75", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U76", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U77", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U78", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U79", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U80", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U81", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U82", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U83", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U84", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U85", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U86", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U87", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U88", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U89", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U90", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U91", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U92", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U93", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_36_1_1_U94", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convolution2_fix_Pipeline_Initialization_Conv2_Loop {
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
		tmp1_V_8_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m_0 { ap_memory {  { m_0_address0 mem_address 1 9 }  { m_0_ce0 mem_ce 1 1 }  { m_0_q0 mem_dout 0 35 } } }
	tmp2_V_31_0_out { ap_vld {  { tmp2_V_31_0_out out_data 1 36 }  { tmp2_V_31_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_30_0_out { ap_vld {  { tmp2_V_30_0_out out_data 1 36 }  { tmp2_V_30_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_29_0_out { ap_vld {  { tmp2_V_29_0_out out_data 1 36 }  { tmp2_V_29_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_28_0_out { ap_vld {  { tmp2_V_28_0_out out_data 1 36 }  { tmp2_V_28_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_27_0_out { ap_vld {  { tmp2_V_27_0_out out_data 1 36 }  { tmp2_V_27_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_26_0_out { ap_vld {  { tmp2_V_26_0_out out_data 1 36 }  { tmp2_V_26_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_25_0_out { ap_vld {  { tmp2_V_25_0_out out_data 1 36 }  { tmp2_V_25_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_24_0_out { ap_vld {  { tmp2_V_24_0_out out_data 1 36 }  { tmp2_V_24_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_23_0_out { ap_vld {  { tmp2_V_23_0_out out_data 1 36 }  { tmp2_V_23_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_22_0_out { ap_vld {  { tmp2_V_22_0_out out_data 1 36 }  { tmp2_V_22_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_21_0_out { ap_vld {  { tmp2_V_21_0_out out_data 1 36 }  { tmp2_V_21_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_20_0_out { ap_vld {  { tmp2_V_20_0_out out_data 1 36 }  { tmp2_V_20_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_19_0_out { ap_vld {  { tmp2_V_19_0_out out_data 1 36 }  { tmp2_V_19_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_18_0_out { ap_vld {  { tmp2_V_18_0_out out_data 1 36 }  { tmp2_V_18_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_17_0_out { ap_vld {  { tmp2_V_17_0_out out_data 1 36 }  { tmp2_V_17_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_16_0_out { ap_vld {  { tmp2_V_16_0_out out_data 1 36 }  { tmp2_V_16_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_7_0_out { ap_vld {  { tmp2_V_7_0_out out_data 1 36 }  { tmp2_V_7_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_6_0_out { ap_vld {  { tmp2_V_6_0_out out_data 1 36 }  { tmp2_V_6_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_5_0_out { ap_vld {  { tmp2_V_5_0_out out_data 1 36 }  { tmp2_V_5_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_4_0_out { ap_vld {  { tmp2_V_4_0_out out_data 1 36 }  { tmp2_V_4_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_3_0_out { ap_vld {  { tmp2_V_3_0_out out_data 1 36 }  { tmp2_V_3_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_2_0_out { ap_vld {  { tmp2_V_2_0_out out_data 1 36 }  { tmp2_V_2_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_1_0_out { ap_vld {  { tmp2_V_1_0_out out_data 1 36 }  { tmp2_V_1_0_out_ap_vld out_vld 1 1 } } }
	tmp2_V_0_0_out { ap_vld {  { tmp2_V_0_0_out out_data 1 36 }  { tmp2_V_0_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_31_0_out { ap_vld {  { tmp1_V_31_0_out out_data 1 36 }  { tmp1_V_31_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_30_0_out { ap_vld {  { tmp1_V_30_0_out out_data 1 36 }  { tmp1_V_30_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_29_0_out { ap_vld {  { tmp1_V_29_0_out out_data 1 36 }  { tmp1_V_29_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_28_0_out { ap_vld {  { tmp1_V_28_0_out out_data 1 36 }  { tmp1_V_28_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_27_0_out { ap_vld {  { tmp1_V_27_0_out out_data 1 36 }  { tmp1_V_27_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_26_0_out { ap_vld {  { tmp1_V_26_0_out out_data 1 36 }  { tmp1_V_26_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_25_0_out { ap_vld {  { tmp1_V_25_0_out out_data 1 36 }  { tmp1_V_25_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_24_0_out { ap_vld {  { tmp1_V_24_0_out out_data 1 36 }  { tmp1_V_24_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_23_0_out { ap_vld {  { tmp1_V_23_0_out out_data 1 36 }  { tmp1_V_23_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_22_0_out { ap_vld {  { tmp1_V_22_0_out out_data 1 36 }  { tmp1_V_22_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_21_0_out { ap_vld {  { tmp1_V_21_0_out out_data 1 36 }  { tmp1_V_21_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_20_0_out { ap_vld {  { tmp1_V_20_0_out out_data 1 36 }  { tmp1_V_20_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_19_0_out { ap_vld {  { tmp1_V_19_0_out out_data 1 36 }  { tmp1_V_19_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_18_0_out { ap_vld {  { tmp1_V_18_0_out out_data 1 36 }  { tmp1_V_18_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_17_0_out { ap_vld {  { tmp1_V_17_0_out out_data 1 36 }  { tmp1_V_17_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_16_0_out { ap_vld {  { tmp1_V_16_0_out out_data 1 36 }  { tmp1_V_16_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_15_0_out { ap_vld {  { tmp1_V_15_0_out out_data 1 36 }  { tmp1_V_15_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_14_0_out { ap_vld {  { tmp1_V_14_0_out out_data 1 36 }  { tmp1_V_14_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_13_0_out { ap_vld {  { tmp1_V_13_0_out out_data 1 36 }  { tmp1_V_13_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_12_0_out { ap_vld {  { tmp1_V_12_0_out out_data 1 36 }  { tmp1_V_12_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_11_0_out { ap_vld {  { tmp1_V_11_0_out out_data 1 36 }  { tmp1_V_11_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_10_0_out { ap_vld {  { tmp1_V_10_0_out out_data 1 36 }  { tmp1_V_10_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_9_0_out { ap_vld {  { tmp1_V_9_0_out out_data 1 36 }  { tmp1_V_9_0_out_ap_vld out_vld 1 1 } } }
	tmp1_V_8_0_out { ap_vld {  { tmp1_V_8_0_out out_data 1 36 }  { tmp1_V_8_0_out_ap_vld out_vld 1 1 } } }
}
