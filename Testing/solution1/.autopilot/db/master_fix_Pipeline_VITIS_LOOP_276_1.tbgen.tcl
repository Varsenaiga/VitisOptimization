set moduleName master_fix_Pipeline_VITIS_LOOP_276_1
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
set C_modelName {master_fix_Pipeline_VITIS_LOOP_276_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln279 int 35 regular  }
	{ zext_ln279_1 int 35 regular  }
	{ zext_ln279_2 int 35 regular  }
	{ zext_ln279_3 int 35 regular  }
	{ zext_ln279_4 int 35 regular  }
	{ zext_ln279_5 int 35 regular  }
	{ zext_ln279_6 int 35 regular  }
	{ zext_ln279_7 int 35 regular  }
	{ zext_ln279_8 int 35 regular  }
	{ zext_ln279_9 int 35 regular  }
	{ zext_ln279_10 int 35 regular  }
	{ zext_ln279_11 int 35 regular  }
	{ zext_ln279_12 int 35 regular  }
	{ zext_ln279_13 int 35 regular  }
	{ zext_ln279_14 int 35 regular  }
	{ sext_ln1169_15_cast int 35 regular  }
	{ den2_V_0_3_08_out int 36 regular {pointer 1}  }
	{ den2_V_0_2_07_out int 36 regular {pointer 1}  }
	{ den2_V_0_1_06_out int 36 regular {pointer 1}  }
	{ den2_V_0_0_05_out int 36 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln279", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_1", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_2", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_3", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_4", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_5", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_6", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_7", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_8", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_9", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_10", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_11", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_12", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_13", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln279_14", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln1169_15_cast", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "den2_V_0_3_08_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "den2_V_0_2_07_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "den2_V_0_1_06_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} , 
 	{ "Name" : "den2_V_0_0_05_out", "interface" : "wire", "bitwidth" : 36, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 94
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln279 sc_in sc_lv 35 signal 0 } 
	{ zext_ln279_1 sc_in sc_lv 35 signal 1 } 
	{ zext_ln279_2 sc_in sc_lv 35 signal 2 } 
	{ zext_ln279_3 sc_in sc_lv 35 signal 3 } 
	{ zext_ln279_4 sc_in sc_lv 35 signal 4 } 
	{ zext_ln279_5 sc_in sc_lv 35 signal 5 } 
	{ zext_ln279_6 sc_in sc_lv 35 signal 6 } 
	{ zext_ln279_7 sc_in sc_lv 35 signal 7 } 
	{ zext_ln279_8 sc_in sc_lv 35 signal 8 } 
	{ zext_ln279_9 sc_in sc_lv 35 signal 9 } 
	{ zext_ln279_10 sc_in sc_lv 35 signal 10 } 
	{ zext_ln279_11 sc_in sc_lv 35 signal 11 } 
	{ zext_ln279_12 sc_in sc_lv 35 signal 12 } 
	{ zext_ln279_13 sc_in sc_lv 35 signal 13 } 
	{ zext_ln279_14 sc_in sc_lv 35 signal 14 } 
	{ sext_ln1169_15_cast sc_in sc_lv 35 signal 15 } 
	{ den2_V_0_3_08_out sc_out sc_lv 36 signal 16 } 
	{ den2_V_0_3_08_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ den2_V_0_2_07_out sc_out sc_lv 36 signal 17 } 
	{ den2_V_0_2_07_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ den2_V_0_1_06_out sc_out sc_lv 36 signal 18 } 
	{ den2_V_0_1_06_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ den2_V_0_0_05_out sc_out sc_lv 36 signal 19 } 
	{ den2_V_0_0_05_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ grp_fu_1100_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1100_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1100_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1100_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1104_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1104_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1104_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1104_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1108_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1108_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1108_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1108_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1112_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1112_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1112_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1112_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1116_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1116_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1116_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1116_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1120_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1120_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1120_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1120_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1124_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1124_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1124_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1124_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1128_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1128_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1128_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1128_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1132_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1132_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1132_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1132_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1136_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1136_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1136_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1136_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1140_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1140_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1140_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1140_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1144_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1144_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1144_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1144_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1148_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1148_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1148_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1148_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1152_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1152_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1152_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1152_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1156_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1156_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1156_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1156_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1160_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1160_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1160_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1160_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln279", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279", "role": "default" }} , 
 	{ "name": "zext_ln279_1", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_1", "role": "default" }} , 
 	{ "name": "zext_ln279_2", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_2", "role": "default" }} , 
 	{ "name": "zext_ln279_3", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_3", "role": "default" }} , 
 	{ "name": "zext_ln279_4", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_4", "role": "default" }} , 
 	{ "name": "zext_ln279_5", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_5", "role": "default" }} , 
 	{ "name": "zext_ln279_6", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_6", "role": "default" }} , 
 	{ "name": "zext_ln279_7", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_7", "role": "default" }} , 
 	{ "name": "zext_ln279_8", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_8", "role": "default" }} , 
 	{ "name": "zext_ln279_9", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_9", "role": "default" }} , 
 	{ "name": "zext_ln279_10", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_10", "role": "default" }} , 
 	{ "name": "zext_ln279_11", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_11", "role": "default" }} , 
 	{ "name": "zext_ln279_12", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_12", "role": "default" }} , 
 	{ "name": "zext_ln279_13", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_13", "role": "default" }} , 
 	{ "name": "zext_ln279_14", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln279_14", "role": "default" }} , 
 	{ "name": "sext_ln1169_15_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "sext_ln1169_15_cast", "role": "default" }} , 
 	{ "name": "den2_V_0_3_08_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "den2_V_0_3_08_out", "role": "default" }} , 
 	{ "name": "den2_V_0_3_08_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den2_V_0_3_08_out", "role": "ap_vld" }} , 
 	{ "name": "den2_V_0_2_07_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "den2_V_0_2_07_out", "role": "default" }} , 
 	{ "name": "den2_V_0_2_07_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den2_V_0_2_07_out", "role": "ap_vld" }} , 
 	{ "name": "den2_V_0_1_06_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "den2_V_0_1_06_out", "role": "default" }} , 
 	{ "name": "den2_V_0_1_06_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den2_V_0_1_06_out", "role": "ap_vld" }} , 
 	{ "name": "den2_V_0_0_05_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "den2_V_0_0_05_out", "role": "default" }} , 
 	{ "name": "den2_V_0_0_05_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den2_V_0_0_05_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1100_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1100_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1100_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1100_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1100_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1100_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1100_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1100_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1104_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1104_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1104_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1104_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1104_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1104_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1104_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1104_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1108_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1108_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1108_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1108_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1108_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1108_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1108_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1108_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1112_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1112_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1112_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1112_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1112_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1112_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1112_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1112_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1116_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1116_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1116_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1116_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1116_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1116_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1116_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1116_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1120_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1120_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1120_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1120_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1120_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1120_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1120_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1120_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1124_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1124_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1124_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1124_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1124_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1124_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1124_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1124_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1128_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1128_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1128_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1128_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1128_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1128_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1128_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1128_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1132_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1132_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1132_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1132_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1132_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1132_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1132_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1132_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1136_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1136_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1136_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1136_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1136_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1136_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1136_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1136_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1140_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1140_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1140_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1140_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1140_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1140_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1140_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1140_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1144_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1144_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1144_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1144_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1144_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1144_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1144_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1144_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1148_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1148_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1148_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1148_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1148_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1148_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1148_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1148_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1152_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1152_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1152_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1152_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1152_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1152_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1152_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1152_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1156_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1156_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1156_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1156_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1156_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1156_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1156_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1156_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1160_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1160_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1160_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1160_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1160_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1160_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1160_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1160_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "master_fix_Pipeline_VITIS_LOOP_276_1",
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
			{"Name" : "zext_ln279", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln279_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln1169_15_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "den2_V_0_3_08_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den2_V_0_2_07_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den2_V_0_1_06_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den2_V_0_0_05_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_276_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U318", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U320", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U322", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U323", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U325", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U327", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U329", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U331", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U333", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U335", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U337", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U339", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U341", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U343", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U345", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U347", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U349", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	master_fix_Pipeline_VITIS_LOOP_276_1 {
		zext_ln279 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_8 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_9 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_11 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_12 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln279_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln1169_15_cast {Type I LastRead 0 FirstWrite -1}
		den2_V_0_3_08_out {Type O LastRead -1 FirstWrite 17}
		den2_V_0_2_07_out {Type O LastRead -1 FirstWrite 17}
		den2_V_0_1_06_out {Type O LastRead -1 FirstWrite 17}
		den2_V_0_0_05_out {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "23", "Max" : "23"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln279 { ap_none {  { zext_ln279 in_data 0 35 } } }
	zext_ln279_1 { ap_none {  { zext_ln279_1 in_data 0 35 } } }
	zext_ln279_2 { ap_none {  { zext_ln279_2 in_data 0 35 } } }
	zext_ln279_3 { ap_none {  { zext_ln279_3 in_data 0 35 } } }
	zext_ln279_4 { ap_none {  { zext_ln279_4 in_data 0 35 } } }
	zext_ln279_5 { ap_none {  { zext_ln279_5 in_data 0 35 } } }
	zext_ln279_6 { ap_none {  { zext_ln279_6 in_data 0 35 } } }
	zext_ln279_7 { ap_none {  { zext_ln279_7 in_data 0 35 } } }
	zext_ln279_8 { ap_none {  { zext_ln279_8 in_data 0 35 } } }
	zext_ln279_9 { ap_none {  { zext_ln279_9 in_data 0 35 } } }
	zext_ln279_10 { ap_none {  { zext_ln279_10 in_data 0 35 } } }
	zext_ln279_11 { ap_none {  { zext_ln279_11 in_data 0 35 } } }
	zext_ln279_12 { ap_none {  { zext_ln279_12 in_data 0 35 } } }
	zext_ln279_13 { ap_none {  { zext_ln279_13 in_data 0 35 } } }
	zext_ln279_14 { ap_none {  { zext_ln279_14 in_data 0 35 } } }
	sext_ln1169_15_cast { ap_none {  { sext_ln1169_15_cast in_data 0 35 } } }
	den2_V_0_3_08_out { ap_vld {  { den2_V_0_3_08_out out_data 1 36 }  { den2_V_0_3_08_out_ap_vld out_vld 1 1 } } }
	den2_V_0_2_07_out { ap_vld {  { den2_V_0_2_07_out out_data 1 36 }  { den2_V_0_2_07_out_ap_vld out_vld 1 1 } } }
	den2_V_0_1_06_out { ap_vld {  { den2_V_0_1_06_out out_data 1 36 }  { den2_V_0_1_06_out_ap_vld out_vld 1 1 } } }
	den2_V_0_0_05_out { ap_vld {  { den2_V_0_0_05_out out_data 1 36 }  { den2_V_0_0_05_out_ap_vld out_vld 1 1 } } }
}
