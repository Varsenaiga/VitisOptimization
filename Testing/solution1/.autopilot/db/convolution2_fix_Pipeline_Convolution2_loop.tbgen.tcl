set moduleName convolution2_fix_Pipeline_Convolution2_loop
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
set C_modelName {convolution2_fix_Pipeline_Convolution2_loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ tmp2_V_31_0_reload int 36 regular  }
	{ tmp2_V_30_0_reload int 36 regular  }
	{ tmp2_V_29_0_reload int 36 regular  }
	{ tmp2_V_28_0_reload int 36 regular  }
	{ tmp2_V_27_0_reload int 36 regular  }
	{ tmp2_V_26_0_reload int 36 regular  }
	{ tmp2_V_25_0_reload int 36 regular  }
	{ tmp2_V_24_0_reload int 36 regular  }
	{ tmp2_V_23_0_reload int 36 regular  }
	{ tmp2_V_22_0_reload int 36 regular  }
	{ tmp2_V_21_0_reload int 36 regular  }
	{ tmp2_V_20_0_reload int 36 regular  }
	{ tmp2_V_19_0_reload int 36 regular  }
	{ tmp2_V_18_0_reload int 36 regular  }
	{ tmp2_V_17_0_reload int 36 regular  }
	{ tmp2_V_16_0_reload int 36 regular  }
	{ tmp2_V_7_0_reload int 36 regular  }
	{ tmp2_V_6_0_reload int 36 regular  }
	{ tmp2_V_5_0_reload int 36 regular  }
	{ tmp2_V_4_0_reload int 36 regular  }
	{ tmp2_V_3_0_reload int 36 regular  }
	{ tmp2_V_2_0_reload int 36 regular  }
	{ tmp2_V_1_0_reload int 36 regular  }
	{ tmp2_V_0_0_reload int 36 regular  }
	{ tmp1_V_31_0_reload int 36 regular  }
	{ tmp1_V_30_0_reload int 36 regular  }
	{ tmp1_V_29_0_reload int 36 regular  }
	{ tmp1_V_28_0_reload int 36 regular  }
	{ tmp1_V_27_0_reload int 36 regular  }
	{ tmp1_V_26_0_reload int 36 regular  }
	{ tmp1_V_25_0_reload int 36 regular  }
	{ tmp1_V_24_0_reload int 36 regular  }
	{ tmp1_V_23_0_reload int 36 regular  }
	{ tmp1_V_22_0_reload int 36 regular  }
	{ tmp1_V_21_0_reload int 36 regular  }
	{ tmp1_V_20_0_reload int 36 regular  }
	{ tmp1_V_19_0_reload int 36 regular  }
	{ tmp1_V_18_0_reload int 36 regular  }
	{ tmp1_V_17_0_reload int 36 regular  }
	{ tmp1_V_16_0_reload int 36 regular  }
	{ tmp1_V_15_0_reload int 36 regular  }
	{ tmp1_V_14_0_reload int 36 regular  }
	{ tmp1_V_13_0_reload int 36 regular  }
	{ tmp1_V_12_0_reload int 36 regular  }
	{ tmp1_V_11_0_reload int 36 regular  }
	{ tmp1_V_10_0_reload int 36 regular  }
	{ tmp1_V_9_0_reload int 36 regular  }
	{ tmp1_V_8_0_reload int 36 regular  }
	{ m_0 int 36 regular {array 336 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 3 } 1 1 }  }
	{ out_0 int 35 regular {array 672 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tmp2_V_31_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_30_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_29_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_28_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_27_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_26_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_25_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_24_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_23_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_22_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_21_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_20_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_19_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_18_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_17_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_16_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_7_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_6_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_5_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_4_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_3_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_2_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_1_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp2_V_0_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_31_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_30_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_29_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_28_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_27_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_26_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_25_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_24_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_23_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_22_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_21_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_20_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_19_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_18_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_17_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_16_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_15_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_14_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_13_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_12_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_11_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_10_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_9_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_V_8_0_reload", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "m_0", "interface" : "memory", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "out_0", "interface" : "memory", "bitwidth" : 35, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 106
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmp2_V_31_0_reload sc_in sc_lv 36 signal 0 } 
	{ tmp2_V_30_0_reload sc_in sc_lv 36 signal 1 } 
	{ tmp2_V_29_0_reload sc_in sc_lv 36 signal 2 } 
	{ tmp2_V_28_0_reload sc_in sc_lv 36 signal 3 } 
	{ tmp2_V_27_0_reload sc_in sc_lv 36 signal 4 } 
	{ tmp2_V_26_0_reload sc_in sc_lv 36 signal 5 } 
	{ tmp2_V_25_0_reload sc_in sc_lv 36 signal 6 } 
	{ tmp2_V_24_0_reload sc_in sc_lv 36 signal 7 } 
	{ tmp2_V_23_0_reload sc_in sc_lv 36 signal 8 } 
	{ tmp2_V_22_0_reload sc_in sc_lv 36 signal 9 } 
	{ tmp2_V_21_0_reload sc_in sc_lv 36 signal 10 } 
	{ tmp2_V_20_0_reload sc_in sc_lv 36 signal 11 } 
	{ tmp2_V_19_0_reload sc_in sc_lv 36 signal 12 } 
	{ tmp2_V_18_0_reload sc_in sc_lv 36 signal 13 } 
	{ tmp2_V_17_0_reload sc_in sc_lv 36 signal 14 } 
	{ tmp2_V_16_0_reload sc_in sc_lv 36 signal 15 } 
	{ tmp2_V_7_0_reload sc_in sc_lv 36 signal 16 } 
	{ tmp2_V_6_0_reload sc_in sc_lv 36 signal 17 } 
	{ tmp2_V_5_0_reload sc_in sc_lv 36 signal 18 } 
	{ tmp2_V_4_0_reload sc_in sc_lv 36 signal 19 } 
	{ tmp2_V_3_0_reload sc_in sc_lv 36 signal 20 } 
	{ tmp2_V_2_0_reload sc_in sc_lv 36 signal 21 } 
	{ tmp2_V_1_0_reload sc_in sc_lv 36 signal 22 } 
	{ tmp2_V_0_0_reload sc_in sc_lv 36 signal 23 } 
	{ tmp1_V_31_0_reload sc_in sc_lv 36 signal 24 } 
	{ tmp1_V_30_0_reload sc_in sc_lv 36 signal 25 } 
	{ tmp1_V_29_0_reload sc_in sc_lv 36 signal 26 } 
	{ tmp1_V_28_0_reload sc_in sc_lv 36 signal 27 } 
	{ tmp1_V_27_0_reload sc_in sc_lv 36 signal 28 } 
	{ tmp1_V_26_0_reload sc_in sc_lv 36 signal 29 } 
	{ tmp1_V_25_0_reload sc_in sc_lv 36 signal 30 } 
	{ tmp1_V_24_0_reload sc_in sc_lv 36 signal 31 } 
	{ tmp1_V_23_0_reload sc_in sc_lv 36 signal 32 } 
	{ tmp1_V_22_0_reload sc_in sc_lv 36 signal 33 } 
	{ tmp1_V_21_0_reload sc_in sc_lv 36 signal 34 } 
	{ tmp1_V_20_0_reload sc_in sc_lv 36 signal 35 } 
	{ tmp1_V_19_0_reload sc_in sc_lv 36 signal 36 } 
	{ tmp1_V_18_0_reload sc_in sc_lv 36 signal 37 } 
	{ tmp1_V_17_0_reload sc_in sc_lv 36 signal 38 } 
	{ tmp1_V_16_0_reload sc_in sc_lv 36 signal 39 } 
	{ tmp1_V_15_0_reload sc_in sc_lv 36 signal 40 } 
	{ tmp1_V_14_0_reload sc_in sc_lv 36 signal 41 } 
	{ tmp1_V_13_0_reload sc_in sc_lv 36 signal 42 } 
	{ tmp1_V_12_0_reload sc_in sc_lv 36 signal 43 } 
	{ tmp1_V_11_0_reload sc_in sc_lv 36 signal 44 } 
	{ tmp1_V_10_0_reload sc_in sc_lv 36 signal 45 } 
	{ tmp1_V_9_0_reload sc_in sc_lv 36 signal 46 } 
	{ tmp1_V_8_0_reload sc_in sc_lv 36 signal 47 } 
	{ m_0_address0 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce0 sc_out sc_logic 1 signal 48 } 
	{ m_0_q0 sc_in sc_lv 36 signal 48 } 
	{ m_0_address1 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce1 sc_out sc_logic 1 signal 48 } 
	{ m_0_q1 sc_in sc_lv 36 signal 48 } 
	{ m_0_address2 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce2 sc_out sc_logic 1 signal 48 } 
	{ m_0_q2 sc_in sc_lv 36 signal 48 } 
	{ m_0_address3 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce3 sc_out sc_logic 1 signal 48 } 
	{ m_0_q3 sc_in sc_lv 36 signal 48 } 
	{ m_0_address4 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce4 sc_out sc_logic 1 signal 48 } 
	{ m_0_q4 sc_in sc_lv 36 signal 48 } 
	{ m_0_address5 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce5 sc_out sc_logic 1 signal 48 } 
	{ m_0_q5 sc_in sc_lv 36 signal 48 } 
	{ m_0_address6 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce6 sc_out sc_logic 1 signal 48 } 
	{ m_0_q6 sc_in sc_lv 36 signal 48 } 
	{ m_0_address7 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce7 sc_out sc_logic 1 signal 48 } 
	{ m_0_q7 sc_in sc_lv 36 signal 48 } 
	{ m_0_address8 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce8 sc_out sc_logic 1 signal 48 } 
	{ m_0_q8 sc_in sc_lv 36 signal 48 } 
	{ m_0_address9 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce9 sc_out sc_logic 1 signal 48 } 
	{ m_0_q9 sc_in sc_lv 36 signal 48 } 
	{ m_0_address10 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce10 sc_out sc_logic 1 signal 48 } 
	{ m_0_q10 sc_in sc_lv 36 signal 48 } 
	{ m_0_address11 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce11 sc_out sc_logic 1 signal 48 } 
	{ m_0_q11 sc_in sc_lv 36 signal 48 } 
	{ m_0_address12 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce12 sc_out sc_logic 1 signal 48 } 
	{ m_0_q12 sc_in sc_lv 36 signal 48 } 
	{ m_0_address13 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce13 sc_out sc_logic 1 signal 48 } 
	{ m_0_q13 sc_in sc_lv 36 signal 48 } 
	{ m_0_address14 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce14 sc_out sc_logic 1 signal 48 } 
	{ m_0_q14 sc_in sc_lv 36 signal 48 } 
	{ m_0_address15 sc_out sc_lv 9 signal 48 } 
	{ m_0_ce15 sc_out sc_logic 1 signal 48 } 
	{ m_0_q15 sc_in sc_lv 36 signal 48 } 
	{ out_0_address0 sc_out sc_lv 10 signal 49 } 
	{ out_0_ce0 sc_out sc_logic 1 signal 49 } 
	{ out_0_we0 sc_out sc_logic 1 signal 49 } 
	{ out_0_d0 sc_out sc_lv 35 signal 49 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tmp2_V_31_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_31_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_30_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_30_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_29_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_29_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_28_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_28_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_27_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_27_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_26_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_26_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_25_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_25_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_24_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_24_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_23_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_23_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_22_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_22_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_21_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_21_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_20_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_20_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_19_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_19_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_18_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_18_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_17_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_17_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_16_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_16_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_7_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_7_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_6_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_6_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_5_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_5_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_4_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_4_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_3_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_3_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_2_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_2_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_1_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_1_0_reload", "role": "default" }} , 
 	{ "name": "tmp2_V_0_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp2_V_0_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_31_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_31_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_30_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_30_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_29_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_29_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_28_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_28_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_27_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_27_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_26_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_26_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_25_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_25_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_24_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_24_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_23_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_23_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_22_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_22_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_21_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_21_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_20_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_20_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_19_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_19_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_18_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_18_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_17_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_17_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_16_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_16_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_15_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_15_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_14_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_14_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_13_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_13_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_12_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_12_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_11_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_11_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_10_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_10_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_9_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_9_0_reload", "role": "default" }} , 
 	{ "name": "tmp1_V_8_0_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "tmp1_V_8_0_reload", "role": "default" }} , 
 	{ "name": "m_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address0" }} , 
 	{ "name": "m_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce0" }} , 
 	{ "name": "m_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q0" }} , 
 	{ "name": "m_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address1" }} , 
 	{ "name": "m_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce1" }} , 
 	{ "name": "m_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q1" }} , 
 	{ "name": "m_0_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address2" }} , 
 	{ "name": "m_0_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce2" }} , 
 	{ "name": "m_0_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q2" }} , 
 	{ "name": "m_0_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address3" }} , 
 	{ "name": "m_0_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce3" }} , 
 	{ "name": "m_0_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q3" }} , 
 	{ "name": "m_0_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address4" }} , 
 	{ "name": "m_0_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce4" }} , 
 	{ "name": "m_0_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q4" }} , 
 	{ "name": "m_0_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address5" }} , 
 	{ "name": "m_0_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce5" }} , 
 	{ "name": "m_0_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q5" }} , 
 	{ "name": "m_0_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address6" }} , 
 	{ "name": "m_0_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce6" }} , 
 	{ "name": "m_0_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q6" }} , 
 	{ "name": "m_0_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address7" }} , 
 	{ "name": "m_0_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce7" }} , 
 	{ "name": "m_0_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q7" }} , 
 	{ "name": "m_0_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address8" }} , 
 	{ "name": "m_0_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce8" }} , 
 	{ "name": "m_0_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q8" }} , 
 	{ "name": "m_0_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address9" }} , 
 	{ "name": "m_0_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce9" }} , 
 	{ "name": "m_0_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q9" }} , 
 	{ "name": "m_0_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address10" }} , 
 	{ "name": "m_0_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce10" }} , 
 	{ "name": "m_0_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q10" }} , 
 	{ "name": "m_0_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address11" }} , 
 	{ "name": "m_0_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce11" }} , 
 	{ "name": "m_0_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q11" }} , 
 	{ "name": "m_0_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address12" }} , 
 	{ "name": "m_0_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce12" }} , 
 	{ "name": "m_0_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q12" }} , 
 	{ "name": "m_0_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address13" }} , 
 	{ "name": "m_0_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce13" }} , 
 	{ "name": "m_0_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q13" }} , 
 	{ "name": "m_0_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address14" }} , 
 	{ "name": "m_0_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce14" }} , 
 	{ "name": "m_0_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q14" }} , 
 	{ "name": "m_0_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "m_0", "role": "address15" }} , 
 	{ "name": "m_0_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m_0", "role": "ce15" }} , 
 	{ "name": "m_0_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "m_0", "role": "q15" }} , 
 	{ "name": "out_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "out_0", "role": "address0" }} , 
 	{ "name": "out_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_0", "role": "ce0" }} , 
 	{ "name": "out_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_0", "role": "we0" }} , 
 	{ "name": "out_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "out_0", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66"],
		"CDFG" : "convolution2_fix_Pipeline_Convolution2_loop",
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
			{"Name" : "Convolution2_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter37", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter37", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_0_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_0_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_0_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_0_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_0_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_0_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_1_0_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_1_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_1_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_1_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_1_4_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_1_5_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_1_6_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_1_7_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_2_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_2_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_2_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_2_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_2_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_2_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_2_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_2_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_3_0_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_3_1_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_3_2_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_3_3_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_3_4_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_3_5_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_3_6_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondKernel_f_V_3_7_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secondBias_f_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U151", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U152", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U153", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U154", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U155", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U156", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U157", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U158", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U159", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U160", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U161", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U162", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U163", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U164", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U165", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U166", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U167", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U168", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U169", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U170", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U171", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U172", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U173", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U174", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U175", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U176", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U177", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U178", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U179", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U180", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U181", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_36s_55_2_1_U182", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	convolution2_fix_Pipeline_Convolution2_loop {
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
		secondBias_f_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "709", "Max" : "709"}
	, {"Name" : "Interval", "Min" : "709", "Max" : "709"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp2_V_31_0_reload { ap_none {  { tmp2_V_31_0_reload in_data 0 36 } } }
	tmp2_V_30_0_reload { ap_none {  { tmp2_V_30_0_reload in_data 0 36 } } }
	tmp2_V_29_0_reload { ap_none {  { tmp2_V_29_0_reload in_data 0 36 } } }
	tmp2_V_28_0_reload { ap_none {  { tmp2_V_28_0_reload in_data 0 36 } } }
	tmp2_V_27_0_reload { ap_none {  { tmp2_V_27_0_reload in_data 0 36 } } }
	tmp2_V_26_0_reload { ap_none {  { tmp2_V_26_0_reload in_data 0 36 } } }
	tmp2_V_25_0_reload { ap_none {  { tmp2_V_25_0_reload in_data 0 36 } } }
	tmp2_V_24_0_reload { ap_none {  { tmp2_V_24_0_reload in_data 0 36 } } }
	tmp2_V_23_0_reload { ap_none {  { tmp2_V_23_0_reload in_data 0 36 } } }
	tmp2_V_22_0_reload { ap_none {  { tmp2_V_22_0_reload in_data 0 36 } } }
	tmp2_V_21_0_reload { ap_none {  { tmp2_V_21_0_reload in_data 0 36 } } }
	tmp2_V_20_0_reload { ap_none {  { tmp2_V_20_0_reload in_data 0 36 } } }
	tmp2_V_19_0_reload { ap_none {  { tmp2_V_19_0_reload in_data 0 36 } } }
	tmp2_V_18_0_reload { ap_none {  { tmp2_V_18_0_reload in_data 0 36 } } }
	tmp2_V_17_0_reload { ap_none {  { tmp2_V_17_0_reload in_data 0 36 } } }
	tmp2_V_16_0_reload { ap_none {  { tmp2_V_16_0_reload in_data 0 36 } } }
	tmp2_V_7_0_reload { ap_none {  { tmp2_V_7_0_reload in_data 0 36 } } }
	tmp2_V_6_0_reload { ap_none {  { tmp2_V_6_0_reload in_data 0 36 } } }
	tmp2_V_5_0_reload { ap_none {  { tmp2_V_5_0_reload in_data 0 36 } } }
	tmp2_V_4_0_reload { ap_none {  { tmp2_V_4_0_reload in_data 0 36 } } }
	tmp2_V_3_0_reload { ap_none {  { tmp2_V_3_0_reload in_data 0 36 } } }
	tmp2_V_2_0_reload { ap_none {  { tmp2_V_2_0_reload in_data 0 36 } } }
	tmp2_V_1_0_reload { ap_none {  { tmp2_V_1_0_reload in_data 0 36 } } }
	tmp2_V_0_0_reload { ap_none {  { tmp2_V_0_0_reload in_data 0 36 } } }
	tmp1_V_31_0_reload { ap_none {  { tmp1_V_31_0_reload in_data 0 36 } } }
	tmp1_V_30_0_reload { ap_none {  { tmp1_V_30_0_reload in_data 0 36 } } }
	tmp1_V_29_0_reload { ap_none {  { tmp1_V_29_0_reload in_data 0 36 } } }
	tmp1_V_28_0_reload { ap_none {  { tmp1_V_28_0_reload in_data 0 36 } } }
	tmp1_V_27_0_reload { ap_none {  { tmp1_V_27_0_reload in_data 0 36 } } }
	tmp1_V_26_0_reload { ap_none {  { tmp1_V_26_0_reload in_data 0 36 } } }
	tmp1_V_25_0_reload { ap_none {  { tmp1_V_25_0_reload in_data 0 36 } } }
	tmp1_V_24_0_reload { ap_none {  { tmp1_V_24_0_reload in_data 0 36 } } }
	tmp1_V_23_0_reload { ap_none {  { tmp1_V_23_0_reload in_data 0 36 } } }
	tmp1_V_22_0_reload { ap_none {  { tmp1_V_22_0_reload in_data 0 36 } } }
	tmp1_V_21_0_reload { ap_none {  { tmp1_V_21_0_reload in_data 0 36 } } }
	tmp1_V_20_0_reload { ap_none {  { tmp1_V_20_0_reload in_data 0 36 } } }
	tmp1_V_19_0_reload { ap_none {  { tmp1_V_19_0_reload in_data 0 36 } } }
	tmp1_V_18_0_reload { ap_none {  { tmp1_V_18_0_reload in_data 0 36 } } }
	tmp1_V_17_0_reload { ap_none {  { tmp1_V_17_0_reload in_data 0 36 } } }
	tmp1_V_16_0_reload { ap_none {  { tmp1_V_16_0_reload in_data 0 36 } } }
	tmp1_V_15_0_reload { ap_none {  { tmp1_V_15_0_reload in_data 0 36 } } }
	tmp1_V_14_0_reload { ap_none {  { tmp1_V_14_0_reload in_data 0 36 } } }
	tmp1_V_13_0_reload { ap_none {  { tmp1_V_13_0_reload in_data 0 36 } } }
	tmp1_V_12_0_reload { ap_none {  { tmp1_V_12_0_reload in_data 0 36 } } }
	tmp1_V_11_0_reload { ap_none {  { tmp1_V_11_0_reload in_data 0 36 } } }
	tmp1_V_10_0_reload { ap_none {  { tmp1_V_10_0_reload in_data 0 36 } } }
	tmp1_V_9_0_reload { ap_none {  { tmp1_V_9_0_reload in_data 0 36 } } }
	tmp1_V_8_0_reload { ap_none {  { tmp1_V_8_0_reload in_data 0 36 } } }
	m_0 { ap_memory {  { m_0_address0 mem_address 1 9 }  { m_0_ce0 mem_ce 1 1 }  { m_0_q0 mem_dout 0 36 }  { m_0_address1 MemPortADDR2 1 9 }  { m_0_ce1 MemPortCE2 1 1 }  { m_0_q1 MemPortDOUT2 0 36 }  { m_0_address2 MemPortADDR2 1 9 }  { m_0_ce2 MemPortCE2 1 1 }  { m_0_q2 MemPortDOUT2 0 36 }  { m_0_address3 MemPortADDR2 1 9 }  { m_0_ce3 MemPortCE2 1 1 }  { m_0_q3 MemPortDOUT2 0 36 }  { m_0_address4 MemPortADDR2 1 9 }  { m_0_ce4 MemPortCE2 1 1 }  { m_0_q4 MemPortDOUT2 0 36 }  { m_0_address5 MemPortADDR2 1 9 }  { m_0_ce5 MemPortCE2 1 1 }  { m_0_q5 MemPortDOUT2 0 36 }  { m_0_address6 MemPortADDR2 1 9 }  { m_0_ce6 MemPortCE2 1 1 }  { m_0_q6 MemPortDOUT2 0 36 }  { m_0_address7 MemPortADDR2 1 9 }  { m_0_ce7 MemPortCE2 1 1 }  { m_0_q7 MemPortDOUT2 0 36 }  { m_0_address8 MemPortADDR2 1 9 }  { m_0_ce8 MemPortCE2 1 1 }  { m_0_q8 MemPortDOUT2 0 36 }  { m_0_address9 MemPortADDR2 1 9 }  { m_0_ce9 MemPortCE2 1 1 }  { m_0_q9 MemPortDOUT2 0 36 }  { m_0_address10 MemPortADDR2 1 9 }  { m_0_ce10 MemPortCE2 1 1 }  { m_0_q10 MemPortDOUT2 0 36 }  { m_0_address11 MemPortADDR2 1 9 }  { m_0_ce11 MemPortCE2 1 1 }  { m_0_q11 MemPortDOUT2 0 36 }  { m_0_address12 MemPortADDR2 1 9 }  { m_0_ce12 MemPortCE2 1 1 }  { m_0_q12 MemPortDOUT2 0 36 }  { m_0_address13 MemPortADDR2 1 9 }  { m_0_ce13 MemPortCE2 1 1 }  { m_0_q13 MemPortDOUT2 0 36 }  { m_0_address14 MemPortADDR2 1 9 }  { m_0_ce14 MemPortCE2 1 1 }  { m_0_q14 MemPortDOUT2 0 36 }  { m_0_address15 MemPortADDR2 1 9 }  { m_0_ce15 MemPortCE2 1 1 }  { m_0_q15 MemPortDOUT2 0 36 } } }
	out_0 { ap_memory {  { out_0_address0 mem_address 1 10 }  { out_0_ce0 mem_ce 1 1 }  { out_0_we0 mem_we 1 1 }  { out_0_d0 mem_din 1 35 } } }
}
