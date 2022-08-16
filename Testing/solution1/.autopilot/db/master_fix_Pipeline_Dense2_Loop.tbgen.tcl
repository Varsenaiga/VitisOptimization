set moduleName master_fix_Pipeline_Dense2_Loop
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
set C_modelName {master_fix_Pipeline_Dense2_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln314 int 35 regular  }
	{ zext_ln314_1 int 35 regular  }
	{ zext_ln314_2 int 35 regular  }
	{ zext_ln314_3 int 35 regular  }
	{ zext_ln314_4 int 35 regular  }
	{ zext_ln314_5 int 35 regular  }
	{ zext_ln314_6 int 35 regular  }
	{ zext_ln314_7 int 35 regular  }
	{ zext_ln314_8 int 35 regular  }
	{ zext_ln314_9 int 35 regular  }
	{ zext_ln314_10 int 35 regular  }
	{ zext_ln314_11 int 35 regular  }
	{ zext_ln314_12 int 35 regular  }
	{ zext_ln314_13 int 35 regular  }
	{ zext_ln314_14 int 35 regular  }
	{ zext_ln310 int 35 regular  }
	{ den2_V_0_3_08_out int 36 regular {pointer 1}  }
	{ den2_V_0_2_07_out int 36 regular {pointer 1}  }
	{ den2_V_0_1_06_out int 36 regular {pointer 1}  }
	{ den2_V_0_0_05_out int 36 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln314", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_1", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_2", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_3", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_4", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_5", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_6", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_7", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_8", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_9", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_10", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_11", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_12", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_13", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln314_14", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln310", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
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
	{ zext_ln314 sc_in sc_lv 35 signal 0 } 
	{ zext_ln314_1 sc_in sc_lv 35 signal 1 } 
	{ zext_ln314_2 sc_in sc_lv 35 signal 2 } 
	{ zext_ln314_3 sc_in sc_lv 35 signal 3 } 
	{ zext_ln314_4 sc_in sc_lv 35 signal 4 } 
	{ zext_ln314_5 sc_in sc_lv 35 signal 5 } 
	{ zext_ln314_6 sc_in sc_lv 35 signal 6 } 
	{ zext_ln314_7 sc_in sc_lv 35 signal 7 } 
	{ zext_ln314_8 sc_in sc_lv 35 signal 8 } 
	{ zext_ln314_9 sc_in sc_lv 35 signal 9 } 
	{ zext_ln314_10 sc_in sc_lv 35 signal 10 } 
	{ zext_ln314_11 sc_in sc_lv 35 signal 11 } 
	{ zext_ln314_12 sc_in sc_lv 35 signal 12 } 
	{ zext_ln314_13 sc_in sc_lv 35 signal 13 } 
	{ zext_ln314_14 sc_in sc_lv 35 signal 14 } 
	{ zext_ln310 sc_in sc_lv 35 signal 15 } 
	{ den2_V_0_3_08_out sc_out sc_lv 36 signal 16 } 
	{ den2_V_0_3_08_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ den2_V_0_2_07_out sc_out sc_lv 36 signal 17 } 
	{ den2_V_0_2_07_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ den2_V_0_1_06_out sc_out sc_lv 36 signal 18 } 
	{ den2_V_0_1_06_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ den2_V_0_0_05_out sc_out sc_lv 36 signal 19 } 
	{ den2_V_0_0_05_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ grp_fu_1810_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1810_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1810_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1810_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1814_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1814_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1814_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1814_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1818_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1818_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1818_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1818_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1822_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1822_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1822_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1822_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1826_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1826_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1826_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1826_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1830_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1830_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1830_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1830_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1834_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1834_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1834_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1834_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1838_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1838_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1838_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1838_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1842_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1842_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1842_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1842_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1846_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1846_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1846_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1846_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1850_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1850_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1850_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1850_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1854_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1854_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1854_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1854_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1858_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1858_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1858_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1858_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1862_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1862_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1862_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1862_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1866_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1866_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1866_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1866_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1870_p_din0 sc_out sc_lv 36 signal -1 } 
	{ grp_fu_1870_p_din1 sc_out sc_lv 35 signal -1 } 
	{ grp_fu_1870_p_dout0 sc_in sc_lv 55 signal -1 } 
	{ grp_fu_1870_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln314", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314", "role": "default" }} , 
 	{ "name": "zext_ln314_1", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_1", "role": "default" }} , 
 	{ "name": "zext_ln314_2", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_2", "role": "default" }} , 
 	{ "name": "zext_ln314_3", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_3", "role": "default" }} , 
 	{ "name": "zext_ln314_4", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_4", "role": "default" }} , 
 	{ "name": "zext_ln314_5", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_5", "role": "default" }} , 
 	{ "name": "zext_ln314_6", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_6", "role": "default" }} , 
 	{ "name": "zext_ln314_7", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_7", "role": "default" }} , 
 	{ "name": "zext_ln314_8", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_8", "role": "default" }} , 
 	{ "name": "zext_ln314_9", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_9", "role": "default" }} , 
 	{ "name": "zext_ln314_10", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_10", "role": "default" }} , 
 	{ "name": "zext_ln314_11", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_11", "role": "default" }} , 
 	{ "name": "zext_ln314_12", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_12", "role": "default" }} , 
 	{ "name": "zext_ln314_13", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_13", "role": "default" }} , 
 	{ "name": "zext_ln314_14", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln314_14", "role": "default" }} , 
 	{ "name": "zext_ln310", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln310", "role": "default" }} , 
 	{ "name": "den2_V_0_3_08_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "den2_V_0_3_08_out", "role": "default" }} , 
 	{ "name": "den2_V_0_3_08_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den2_V_0_3_08_out", "role": "ap_vld" }} , 
 	{ "name": "den2_V_0_2_07_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "den2_V_0_2_07_out", "role": "default" }} , 
 	{ "name": "den2_V_0_2_07_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den2_V_0_2_07_out", "role": "ap_vld" }} , 
 	{ "name": "den2_V_0_1_06_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "den2_V_0_1_06_out", "role": "default" }} , 
 	{ "name": "den2_V_0_1_06_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den2_V_0_1_06_out", "role": "ap_vld" }} , 
 	{ "name": "den2_V_0_0_05_out", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "den2_V_0_0_05_out", "role": "default" }} , 
 	{ "name": "den2_V_0_0_05_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "den2_V_0_0_05_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1810_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1810_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1810_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1810_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1810_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1810_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1810_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1810_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1814_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1814_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1814_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1814_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1814_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1814_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1814_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1814_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1818_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1818_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1818_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1818_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1818_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1818_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1818_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1818_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1822_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1822_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1822_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1822_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1822_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1822_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1822_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1822_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1826_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1826_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1826_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1826_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1826_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1826_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1826_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1826_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1830_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1830_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1830_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1830_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1830_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1830_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1830_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1830_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1834_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1834_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1834_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1834_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1834_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1834_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1834_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1834_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1838_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1838_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1838_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1838_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1838_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1838_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1838_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1838_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1842_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1842_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1842_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1842_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1842_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1842_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1842_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1842_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1846_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1846_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1846_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1846_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1846_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1846_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1846_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1846_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1850_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1850_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1850_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1850_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1850_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1850_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1850_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1850_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1854_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1854_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1854_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1854_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1854_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1854_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1854_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1854_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1858_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1858_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1858_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1858_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1858_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1858_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1858_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1858_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1862_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1862_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1862_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1862_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1862_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1862_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1862_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1862_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1866_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1866_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1866_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1866_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1866_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1866_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1866_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1866_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1870_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "grp_fu_1870_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1870_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "grp_fu_1870_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1870_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":55, "type": "signal", "bundle":{"name": "grp_fu_1870_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1870_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1870_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
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
			{"Name" : "zext_ln314", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln314_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln310", "Type" : "None", "Direction" : "I"},
			{"Name" : "den2_V_0_3_08_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den2_V_0_2_07_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den2_V_0_1_06_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "den2_V_0_0_05_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Dense2_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U957", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U959", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U961", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U962", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U964", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U966", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U968", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U970", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U972", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U974", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U976", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U978", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U980", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U982", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U984", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U986", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_36_1_1_U988", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	master_fix_Pipeline_Dense2_Loop {
		zext_ln314 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_8 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_9 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_11 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_12 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln314_14 {Type I LastRead 0 FirstWrite -1}
		zext_ln310 {Type I LastRead 0 FirstWrite -1}
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
	zext_ln314 { ap_none {  { zext_ln314 in_data 0 35 } } }
	zext_ln314_1 { ap_none {  { zext_ln314_1 in_data 0 35 } } }
	zext_ln314_2 { ap_none {  { zext_ln314_2 in_data 0 35 } } }
	zext_ln314_3 { ap_none {  { zext_ln314_3 in_data 0 35 } } }
	zext_ln314_4 { ap_none {  { zext_ln314_4 in_data 0 35 } } }
	zext_ln314_5 { ap_none {  { zext_ln314_5 in_data 0 35 } } }
	zext_ln314_6 { ap_none {  { zext_ln314_6 in_data 0 35 } } }
	zext_ln314_7 { ap_none {  { zext_ln314_7 in_data 0 35 } } }
	zext_ln314_8 { ap_none {  { zext_ln314_8 in_data 0 35 } } }
	zext_ln314_9 { ap_none {  { zext_ln314_9 in_data 0 35 } } }
	zext_ln314_10 { ap_none {  { zext_ln314_10 in_data 0 35 } } }
	zext_ln314_11 { ap_none {  { zext_ln314_11 in_data 0 35 } } }
	zext_ln314_12 { ap_none {  { zext_ln314_12 in_data 0 35 } } }
	zext_ln314_13 { ap_none {  { zext_ln314_13 in_data 0 35 } } }
	zext_ln314_14 { ap_none {  { zext_ln314_14 in_data 0 35 } } }
	zext_ln310 { ap_none {  { zext_ln310 in_data 0 35 } } }
	den2_V_0_3_08_out { ap_vld {  { den2_V_0_3_08_out out_data 1 36 }  { den2_V_0_3_08_out_ap_vld out_vld 1 1 } } }
	den2_V_0_2_07_out { ap_vld {  { den2_V_0_2_07_out out_data 1 36 }  { den2_V_0_2_07_out_ap_vld out_vld 1 1 } } }
	den2_V_0_1_06_out { ap_vld {  { den2_V_0_1_06_out out_data 1 36 }  { den2_V_0_1_06_out_ap_vld out_vld 1 1 } } }
	den2_V_0_0_05_out { ap_vld {  { den2_V_0_0_05_out out_data 1 36 }  { den2_V_0_0_05_out_ap_vld out_vld 1 1 } } }
}
