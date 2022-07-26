// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module master_fix_convolution1_fix_Pipeline_VITIS_LOOP_107_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        tmp1_V_11_0_out,
        tmp1_V_11_0_out_ap_vld,
        tmp1_V_10_0_out,
        tmp1_V_10_0_out_ap_vld,
        tmp1_V_11_4_out,
        tmp1_V_11_4_out_ap_vld,
        tmp1_V_11_6_out,
        tmp1_V_11_6_out_ap_vld,
        tmp1_V_5_0_out,
        tmp1_V_5_0_out_ap_vld,
        tmp1_V_4_0_out,
        tmp1_V_4_0_out_ap_vld,
        tmp1_V_2_0_out,
        tmp1_V_2_0_out_ap_vld,
        tmp1_V_1_0_out,
        tmp1_V_1_0_out_ap_vld,
        tmp1_V_0_0_out,
        tmp1_V_0_0_out_ap_vld,
        tmp1_V_11_9_out,
        tmp1_V_11_9_out_ap_vld,
        tmp1_V_11_11_out,
        tmp1_V_11_11_out_ap_vld,
        tmp2_V_11_0_out,
        tmp2_V_11_0_out_ap_vld,
        tmp2_V_10_0_out,
        tmp2_V_10_0_out_ap_vld,
        tmp2_V_9_0_out,
        tmp2_V_9_0_out_ap_vld,
        tmp2_V_8_0_out,
        tmp2_V_8_0_out_ap_vld,
        tmp2_V_7_0_out,
        tmp2_V_7_0_out_ap_vld,
        tmp2_V_6_0_out,
        tmp2_V_6_0_out_ap_vld,
        tmp2_V_5_0_out,
        tmp2_V_5_0_out_ap_vld,
        tmp2_V_3_0_out,
        tmp2_V_3_0_out_ap_vld,
        tmp2_V_2_0_out,
        tmp2_V_2_0_out_ap_vld,
        tmp2_V_1_0_out,
        tmp2_V_1_0_out_ap_vld,
        tmp2_V_0_0_out,
        tmp2_V_0_0_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
output  [11:0] tmp1_V_11_0_out;
output   tmp1_V_11_0_out_ap_vld;
output  [11:0] tmp1_V_10_0_out;
output   tmp1_V_10_0_out_ap_vld;
output  [11:0] tmp1_V_11_4_out;
output   tmp1_V_11_4_out_ap_vld;
output  [11:0] tmp1_V_11_6_out;
output   tmp1_V_11_6_out_ap_vld;
output  [11:0] tmp1_V_5_0_out;
output   tmp1_V_5_0_out_ap_vld;
output  [11:0] tmp1_V_4_0_out;
output   tmp1_V_4_0_out_ap_vld;
output  [11:0] tmp1_V_2_0_out;
output   tmp1_V_2_0_out_ap_vld;
output  [11:0] tmp1_V_1_0_out;
output   tmp1_V_1_0_out_ap_vld;
output  [11:0] tmp1_V_0_0_out;
output   tmp1_V_0_0_out_ap_vld;
output  [11:0] tmp1_V_11_9_out;
output   tmp1_V_11_9_out_ap_vld;
output  [11:0] tmp1_V_11_11_out;
output   tmp1_V_11_11_out_ap_vld;
output  [11:0] tmp2_V_11_0_out;
output   tmp2_V_11_0_out_ap_vld;
output  [11:0] tmp2_V_10_0_out;
output   tmp2_V_10_0_out_ap_vld;
output  [11:0] tmp2_V_9_0_out;
output   tmp2_V_9_0_out_ap_vld;
output  [11:0] tmp2_V_8_0_out;
output   tmp2_V_8_0_out_ap_vld;
output  [11:0] tmp2_V_7_0_out;
output   tmp2_V_7_0_out_ap_vld;
output  [11:0] tmp2_V_6_0_out;
output   tmp2_V_6_0_out_ap_vld;
output  [11:0] tmp2_V_5_0_out;
output   tmp2_V_5_0_out_ap_vld;
output  [11:0] tmp2_V_3_0_out;
output   tmp2_V_3_0_out_ap_vld;
output  [11:0] tmp2_V_2_0_out;
output   tmp2_V_2_0_out_ap_vld;
output  [11:0] tmp2_V_1_0_out;
output   tmp2_V_1_0_out_ap_vld;
output  [11:0] tmp2_V_0_0_out;
output   tmp2_V_0_0_out_ap_vld;

reg ap_idle;
reg input_r_ce0;
reg tmp1_V_11_0_out_ap_vld;
reg tmp1_V_10_0_out_ap_vld;
reg tmp1_V_11_4_out_ap_vld;
reg tmp1_V_11_6_out_ap_vld;
reg tmp1_V_5_0_out_ap_vld;
reg tmp1_V_4_0_out_ap_vld;
reg tmp1_V_2_0_out_ap_vld;
reg tmp1_V_1_0_out_ap_vld;
reg tmp1_V_0_0_out_ap_vld;
reg tmp1_V_11_9_out_ap_vld;
reg tmp1_V_11_11_out_ap_vld;
reg tmp2_V_11_0_out_ap_vld;
reg tmp2_V_10_0_out_ap_vld;
reg tmp2_V_9_0_out_ap_vld;
reg tmp2_V_8_0_out_ap_vld;
reg tmp2_V_7_0_out_ap_vld;
reg tmp2_V_6_0_out_ap_vld;
reg tmp2_V_5_0_out_ap_vld;
reg tmp2_V_3_0_out_ap_vld;
reg tmp2_V_2_0_out_ap_vld;
reg tmp2_V_1_0_out_ap_vld;
reg tmp2_V_0_0_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln107_fu_396_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [2:0] r_3_reg_1624;
reg   [2:0] r_3_reg_1624_pp0_iter1_reg;
reg   [0:0] icmp_ln107_reg_1633;
wire   [1:0] j_fu_420_p3;
reg   [1:0] j_reg_1637;
wire   [63:0] zext_ln112_1_fu_1059_p1;
wire    ap_block_pp0_stage0;
reg   [2:0] r_fu_116;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_r_3;
wire   [2:0] add_ln107_fu_402_p2;
reg   [11:0] tmp2_V_0_0_fu_120;
wire   [11:0] tmp2_V_0_1_fu_547_p18;
reg   [11:0] tmp2_V_1_0_fu_124;
wire   [11:0] tmp2_V_1_1_fu_585_p18;
reg   [11:0] tmp2_V_2_0_fu_128;
wire   [11:0] tmp2_V_2_1_fu_623_p18;
reg   [11:0] tmp2_V_3_0_fu_132;
wire   [11:0] tmp2_V_3_1_fu_661_p18;
reg   [11:0] tmp2_V_5_0_fu_136;
wire   [11:0] tmp2_V_5_1_fu_699_p18;
reg   [11:0] tmp2_V_6_0_fu_140;
wire   [11:0] tmp2_V_6_1_fu_737_p18;
reg   [11:0] tmp2_V_7_0_fu_144;
wire   [11:0] tmp2_V_7_1_fu_775_p18;
reg   [11:0] tmp2_V_8_0_fu_148;
wire   [11:0] tmp2_V_8_1_fu_813_p18;
reg   [11:0] tmp2_V_9_0_fu_152;
wire   [11:0] tmp2_V_9_1_fu_851_p18;
reg   [11:0] tmp2_V_10_0_fu_156;
wire   [11:0] tmp2_V_10_1_fu_889_p18;
reg   [11:0] tmp2_V_11_0_fu_160;
wire   [11:0] tmp2_V_11_1_fu_927_p18;
reg   [11:0] tmp1_V_11_2_fu_164;
wire   [11:0] tmp1_V_11_20_fu_1304_p3;
reg   [11:0] tmp1_V_11_9_fu_168;
wire   [11:0] tmp1_V_11_19_fu_1296_p3;
reg   [11:0] tmp1_V_0_0_fu_172;
wire   [11:0] select_ln111_8_fu_1204_p3;
reg   [11:0] tmp1_V_1_0_fu_176;
wire   [11:0] select_ln111_7_fu_1196_p3;
reg   [11:0] tmp1_V_2_0_fu_180;
wire   [11:0] select_ln111_5_fu_1180_p3;
reg   [11:0] tmp1_V_4_0_fu_184;
wire   [11:0] select_ln111_3_fu_1164_p3;
reg   [11:0] tmp1_V_5_0_fu_188;
wire   [11:0] select_ln111_1_fu_1148_p3;
reg   [11:0] tmp1_V_11_6_fu_192;
wire   [11:0] tmp1_V_11_18_fu_1272_p3;
reg   [11:0] tmp1_V_11_4_fu_196;
wire   [11:0] tmp1_V_11_16_fu_1256_p3;
reg   [11:0] tmp1_V_11_11_fu_200;
wire   [11:0] tmp1_V_11_15_fu_1240_p3;
reg   [11:0] tmp1_V_11_13_fu_204;
wire   [11:0] tmp1_V_11_fu_1224_p3;
reg   [15:0] i_fu_208;
reg   [15:0] ap_sig_allocacmp_i_load;
wire   [15:0] select_ln109_fu_491_p3;
wire   [0:0] icmp_ln109_fu_428_p2;
wire    ap_block_pp0_stage0_01001;
wire   [1:0] empty_fu_392_p1;
wire   [0:0] icmp_ln108_fu_408_p2;
wire   [1:0] add_ln108_fu_414_p2;
wire  signed [15:0] sext_ln109_fu_437_p0;
wire  signed [15:0] trunc_ln109_fu_441_p0;
wire  signed [16:0] sext_ln109_fu_437_p1;
wire   [16:0] add_ln109_fu_445_p2;
wire   [6:0] trunc_ln109_fu_441_p1;
wire   [6:0] xor_ln109_fu_463_p2;
wire   [15:0] p_and_t_cast_fu_469_p3;
wire   [6:0] trunc_ln109_1_fu_459_p1;
wire   [0:0] tmp_fu_451_p3;
wire   [15:0] sub_ln109_fu_477_p2;
wire   [15:0] tmp_s_fu_483_p3;
wire   [3:0] zext_ln111_fu_537_p1;
wire   [3:0] add_ln112_fu_541_p2;
wire   [6:0] trunc_ln112_1_fu_1032_p1;
wire   [8:0] tmp_47_cast_fu_1036_p3;
wire   [8:0] trunc_ln112_fu_1028_p1;
wire   [8:0] sub_ln112_fu_1044_p2;
wire   [8:0] zext_ln112_fu_1050_p1;
wire   [8:0] add_ln112_1_fu_1053_p2;
wire   [0:0] icmp_ln111_4_fu_1117_p2;
wire   [0:0] icmp_ln111_3_fu_1112_p2;
wire   [0:0] icmp_ln111_2_fu_1107_p2;
wire   [0:0] icmp_ln111_1_fu_1102_p2;
wire   [0:0] icmp_ln111_fu_1097_p2;
wire   [0:0] or_ln111_fu_1122_p2;
wire   [0:0] or_ln111_1_fu_1128_p2;
wire   [0:0] or_ln111_2_fu_1142_p2;
wire   [11:0] select_ln111_fu_1134_p3;
wire   [11:0] select_ln111_2_fu_1156_p3;
wire   [11:0] select_ln111_4_fu_1172_p3;
wire   [11:0] select_ln111_6_fu_1188_p3;
wire   [11:0] tmp1_V_11_21_fu_1212_p1;
wire   [11:0] select_ln112_fu_1216_p3;
wire   [11:0] select_ln112_2_fu_1232_p3;
wire   [11:0] select_ln112_4_fu_1248_p3;
wire   [11:0] tmp1_V_11_17_fu_1264_p3;
wire   [11:0] select_ln112_8_fu_1280_p3;
wire   [11:0] select_ln112_9_fu_1288_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_818;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

master_fix_mux_164_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 12 ),
    .din9_WIDTH( 12 ),
    .din10_WIDTH( 12 ),
    .din11_WIDTH( 12 ),
    .din12_WIDTH( 12 ),
    .din13_WIDTH( 12 ),
    .din14_WIDTH( 12 ),
    .din15_WIDTH( 12 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 12 ))
mux_164_12_1_1_U1(
    .din0(12'd0),
    .din1(tmp2_V_0_0_fu_120),
    .din2(tmp2_V_0_0_fu_120),
    .din3(tmp2_V_0_0_fu_120),
    .din4(tmp2_V_0_0_fu_120),
    .din5(tmp2_V_0_0_fu_120),
    .din6(tmp2_V_0_0_fu_120),
    .din7(tmp2_V_0_0_fu_120),
    .din8(tmp2_V_0_0_fu_120),
    .din9(tmp2_V_0_0_fu_120),
    .din10(tmp2_V_0_0_fu_120),
    .din11(tmp2_V_0_0_fu_120),
    .din12(tmp2_V_0_0_fu_120),
    .din13(tmp2_V_0_0_fu_120),
    .din14(tmp2_V_0_0_fu_120),
    .din15(tmp2_V_0_0_fu_120),
    .din16(zext_ln111_fu_537_p1),
    .dout(tmp2_V_0_1_fu_547_p18)
);

master_fix_mux_164_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 12 ),
    .din9_WIDTH( 12 ),
    .din10_WIDTH( 12 ),
    .din11_WIDTH( 12 ),
    .din12_WIDTH( 12 ),
    .din13_WIDTH( 12 ),
    .din14_WIDTH( 12 ),
    .din15_WIDTH( 12 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 12 ))
mux_164_12_1_1_U2(
    .din0(tmp2_V_1_0_fu_124),
    .din1(12'd0),
    .din2(tmp2_V_1_0_fu_124),
    .din3(tmp2_V_1_0_fu_124),
    .din4(tmp2_V_1_0_fu_124),
    .din5(tmp2_V_1_0_fu_124),
    .din6(tmp2_V_1_0_fu_124),
    .din7(tmp2_V_1_0_fu_124),
    .din8(tmp2_V_1_0_fu_124),
    .din9(tmp2_V_1_0_fu_124),
    .din10(tmp2_V_1_0_fu_124),
    .din11(tmp2_V_1_0_fu_124),
    .din12(tmp2_V_1_0_fu_124),
    .din13(tmp2_V_1_0_fu_124),
    .din14(tmp2_V_1_0_fu_124),
    .din15(tmp2_V_1_0_fu_124),
    .din16(zext_ln111_fu_537_p1),
    .dout(tmp2_V_1_1_fu_585_p18)
);

master_fix_mux_164_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 12 ),
    .din9_WIDTH( 12 ),
    .din10_WIDTH( 12 ),
    .din11_WIDTH( 12 ),
    .din12_WIDTH( 12 ),
    .din13_WIDTH( 12 ),
    .din14_WIDTH( 12 ),
    .din15_WIDTH( 12 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 12 ))
mux_164_12_1_1_U3(
    .din0(tmp2_V_2_0_fu_128),
    .din1(tmp2_V_2_0_fu_128),
    .din2(12'd0),
    .din3(tmp2_V_2_0_fu_128),
    .din4(tmp2_V_2_0_fu_128),
    .din5(tmp2_V_2_0_fu_128),
    .din6(tmp2_V_2_0_fu_128),
    .din7(tmp2_V_2_0_fu_128),
    .din8(tmp2_V_2_0_fu_128),
    .din9(tmp2_V_2_0_fu_128),
    .din10(tmp2_V_2_0_fu_128),
    .din11(tmp2_V_2_0_fu_128),
    .din12(tmp2_V_2_0_fu_128),
    .din13(tmp2_V_2_0_fu_128),
    .din14(tmp2_V_2_0_fu_128),
    .din15(tmp2_V_2_0_fu_128),
    .din16(zext_ln111_fu_537_p1),
    .dout(tmp2_V_2_1_fu_623_p18)
);

master_fix_mux_164_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 12 ),
    .din9_WIDTH( 12 ),
    .din10_WIDTH( 12 ),
    .din11_WIDTH( 12 ),
    .din12_WIDTH( 12 ),
    .din13_WIDTH( 12 ),
    .din14_WIDTH( 12 ),
    .din15_WIDTH( 12 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 12 ))
mux_164_12_1_1_U4(
    .din0(tmp2_V_3_0_fu_132),
    .din1(tmp2_V_3_0_fu_132),
    .din2(tmp2_V_3_0_fu_132),
    .din3(12'd0),
    .din4(tmp2_V_3_0_fu_132),
    .din5(tmp2_V_3_0_fu_132),
    .din6(tmp2_V_3_0_fu_132),
    .din7(tmp2_V_3_0_fu_132),
    .din8(tmp2_V_3_0_fu_132),
    .din9(tmp2_V_3_0_fu_132),
    .din10(tmp2_V_3_0_fu_132),
    .din11(tmp2_V_3_0_fu_132),
    .din12(tmp2_V_3_0_fu_132),
    .din13(tmp2_V_3_0_fu_132),
    .din14(tmp2_V_3_0_fu_132),
    .din15(tmp2_V_3_0_fu_132),
    .din16(zext_ln111_fu_537_p1),
    .dout(tmp2_V_3_1_fu_661_p18)
);

master_fix_mux_164_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 12 ),
    .din9_WIDTH( 12 ),
    .din10_WIDTH( 12 ),
    .din11_WIDTH( 12 ),
    .din12_WIDTH( 12 ),
    .din13_WIDTH( 12 ),
    .din14_WIDTH( 12 ),
    .din15_WIDTH( 12 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 12 ))
mux_164_12_1_1_U5(
    .din0(tmp2_V_5_0_fu_136),
    .din1(tmp2_V_5_0_fu_136),
    .din2(tmp2_V_5_0_fu_136),
    .din3(tmp2_V_5_0_fu_136),
    .din4(tmp2_V_5_0_fu_136),
    .din5(12'd0),
    .din6(12'd0),
    .din7(12'd0),
    .din8(12'd0),
    .din9(12'd0),
    .din10(12'd0),
    .din11(12'd0),
    .din12(12'd0),
    .din13(12'd0),
    .din14(12'd0),
    .din15(12'd0),
    .din16(zext_ln111_fu_537_p1),
    .dout(tmp2_V_5_1_fu_699_p18)
);

master_fix_mux_164_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 12 ),
    .din9_WIDTH( 12 ),
    .din10_WIDTH( 12 ),
    .din11_WIDTH( 12 ),
    .din12_WIDTH( 12 ),
    .din13_WIDTH( 12 ),
    .din14_WIDTH( 12 ),
    .din15_WIDTH( 12 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 12 ))
mux_164_12_1_1_U6(
    .din0(tmp2_V_6_0_fu_140),
    .din1(tmp2_V_6_0_fu_140),
    .din2(tmp2_V_6_0_fu_140),
    .din3(tmp2_V_6_0_fu_140),
    .din4(tmp2_V_6_0_fu_140),
    .din5(tmp2_V_6_0_fu_140),
    .din6(12'd0),
    .din7(tmp2_V_6_0_fu_140),
    .din8(tmp2_V_6_0_fu_140),
    .din9(tmp2_V_6_0_fu_140),
    .din10(tmp2_V_6_0_fu_140),
    .din11(tmp2_V_6_0_fu_140),
    .din12(tmp2_V_6_0_fu_140),
    .din13(tmp2_V_6_0_fu_140),
    .din14(tmp2_V_6_0_fu_140),
    .din15(tmp2_V_6_0_fu_140),
    .din16(add_ln112_fu_541_p2),
    .dout(tmp2_V_6_1_fu_737_p18)
);

master_fix_mux_164_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 12 ),
    .din9_WIDTH( 12 ),
    .din10_WIDTH( 12 ),
    .din11_WIDTH( 12 ),
    .din12_WIDTH( 12 ),
    .din13_WIDTH( 12 ),
    .din14_WIDTH( 12 ),
    .din15_WIDTH( 12 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 12 ))
mux_164_12_1_1_U7(
    .din0(tmp2_V_7_0_fu_144),
    .din1(tmp2_V_7_0_fu_144),
    .din2(tmp2_V_7_0_fu_144),
    .din3(tmp2_V_7_0_fu_144),
    .din4(tmp2_V_7_0_fu_144),
    .din5(tmp2_V_7_0_fu_144),
    .din6(tmp2_V_7_0_fu_144),
    .din7(12'd0),
    .din8(tmp2_V_7_0_fu_144),
    .din9(tmp2_V_7_0_fu_144),
    .din10(tmp2_V_7_0_fu_144),
    .din11(tmp2_V_7_0_fu_144),
    .din12(tmp2_V_7_0_fu_144),
    .din13(tmp2_V_7_0_fu_144),
    .din14(tmp2_V_7_0_fu_144),
    .din15(tmp2_V_7_0_fu_144),
    .din16(add_ln112_fu_541_p2),
    .dout(tmp2_V_7_1_fu_775_p18)
);

master_fix_mux_164_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 12 ),
    .din9_WIDTH( 12 ),
    .din10_WIDTH( 12 ),
    .din11_WIDTH( 12 ),
    .din12_WIDTH( 12 ),
    .din13_WIDTH( 12 ),
    .din14_WIDTH( 12 ),
    .din15_WIDTH( 12 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 12 ))
mux_164_12_1_1_U8(
    .din0(tmp2_V_8_0_fu_148),
    .din1(tmp2_V_8_0_fu_148),
    .din2(tmp2_V_8_0_fu_148),
    .din3(tmp2_V_8_0_fu_148),
    .din4(tmp2_V_8_0_fu_148),
    .din5(tmp2_V_8_0_fu_148),
    .din6(tmp2_V_8_0_fu_148),
    .din7(tmp2_V_8_0_fu_148),
    .din8(12'd0),
    .din9(tmp2_V_8_0_fu_148),
    .din10(tmp2_V_8_0_fu_148),
    .din11(tmp2_V_8_0_fu_148),
    .din12(tmp2_V_8_0_fu_148),
    .din13(tmp2_V_8_0_fu_148),
    .din14(tmp2_V_8_0_fu_148),
    .din15(tmp2_V_8_0_fu_148),
    .din16(add_ln112_fu_541_p2),
    .dout(tmp2_V_8_1_fu_813_p18)
);

master_fix_mux_164_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 12 ),
    .din9_WIDTH( 12 ),
    .din10_WIDTH( 12 ),
    .din11_WIDTH( 12 ),
    .din12_WIDTH( 12 ),
    .din13_WIDTH( 12 ),
    .din14_WIDTH( 12 ),
    .din15_WIDTH( 12 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 12 ))
mux_164_12_1_1_U9(
    .din0(tmp2_V_9_0_fu_152),
    .din1(tmp2_V_9_0_fu_152),
    .din2(tmp2_V_9_0_fu_152),
    .din3(tmp2_V_9_0_fu_152),
    .din4(tmp2_V_9_0_fu_152),
    .din5(tmp2_V_9_0_fu_152),
    .din6(tmp2_V_9_0_fu_152),
    .din7(tmp2_V_9_0_fu_152),
    .din8(tmp2_V_9_0_fu_152),
    .din9(12'd0),
    .din10(tmp2_V_9_0_fu_152),
    .din11(tmp2_V_9_0_fu_152),
    .din12(tmp2_V_9_0_fu_152),
    .din13(tmp2_V_9_0_fu_152),
    .din14(tmp2_V_9_0_fu_152),
    .din15(tmp2_V_9_0_fu_152),
    .din16(add_ln112_fu_541_p2),
    .dout(tmp2_V_9_1_fu_851_p18)
);

master_fix_mux_164_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 12 ),
    .din9_WIDTH( 12 ),
    .din10_WIDTH( 12 ),
    .din11_WIDTH( 12 ),
    .din12_WIDTH( 12 ),
    .din13_WIDTH( 12 ),
    .din14_WIDTH( 12 ),
    .din15_WIDTH( 12 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 12 ))
mux_164_12_1_1_U10(
    .din0(tmp2_V_10_0_fu_156),
    .din1(tmp2_V_10_0_fu_156),
    .din2(tmp2_V_10_0_fu_156),
    .din3(tmp2_V_10_0_fu_156),
    .din4(tmp2_V_10_0_fu_156),
    .din5(tmp2_V_10_0_fu_156),
    .din6(tmp2_V_10_0_fu_156),
    .din7(tmp2_V_10_0_fu_156),
    .din8(tmp2_V_10_0_fu_156),
    .din9(tmp2_V_10_0_fu_156),
    .din10(12'd0),
    .din11(tmp2_V_10_0_fu_156),
    .din12(tmp2_V_10_0_fu_156),
    .din13(tmp2_V_10_0_fu_156),
    .din14(tmp2_V_10_0_fu_156),
    .din15(tmp2_V_10_0_fu_156),
    .din16(add_ln112_fu_541_p2),
    .dout(tmp2_V_10_1_fu_889_p18)
);

master_fix_mux_164_12_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 12 ),
    .din3_WIDTH( 12 ),
    .din4_WIDTH( 12 ),
    .din5_WIDTH( 12 ),
    .din6_WIDTH( 12 ),
    .din7_WIDTH( 12 ),
    .din8_WIDTH( 12 ),
    .din9_WIDTH( 12 ),
    .din10_WIDTH( 12 ),
    .din11_WIDTH( 12 ),
    .din12_WIDTH( 12 ),
    .din13_WIDTH( 12 ),
    .din14_WIDTH( 12 ),
    .din15_WIDTH( 12 ),
    .din16_WIDTH( 4 ),
    .dout_WIDTH( 12 ))
mux_164_12_1_1_U11(
    .din0(12'd0),
    .din1(12'd0),
    .din2(12'd0),
    .din3(12'd0),
    .din4(12'd0),
    .din5(12'd0),
    .din6(tmp2_V_11_0_fu_160),
    .din7(tmp2_V_11_0_fu_160),
    .din8(tmp2_V_11_0_fu_160),
    .din9(tmp2_V_11_0_fu_160),
    .din10(tmp2_V_11_0_fu_160),
    .din11(12'd0),
    .din12(12'd0),
    .din13(12'd0),
    .din14(12'd0),
    .din15(12'd0),
    .din16(add_ln112_fu_541_p2),
    .dout(tmp2_V_11_1_fu_927_p18)
);

master_fix_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((1'b1 == ap_condition_818)) begin
            i_fu_208 <= select_ln109_fu_491_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_208 <= 16'd65535;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln107_fu_396_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            r_fu_116 <= add_ln107_fu_402_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            r_fu_116 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln107_reg_1633 <= icmp_ln107_fu_396_p2;
        r_3_reg_1624 <= ap_sig_allocacmp_r_3;
        r_3_reg_1624_pp0_iter1_reg <= r_3_reg_1624;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln107_fu_396_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_reg_1637 <= j_fu_420_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmp1_V_0_0_fu_172 <= select_ln111_8_fu_1204_p3;
        tmp1_V_11_11_fu_200 <= tmp1_V_11_15_fu_1240_p3;
        tmp1_V_11_13_fu_204 <= tmp1_V_11_fu_1224_p3;
        tmp1_V_11_2_fu_164 <= tmp1_V_11_20_fu_1304_p3;
        tmp1_V_11_4_fu_196 <= tmp1_V_11_16_fu_1256_p3;
        tmp1_V_11_6_fu_192 <= tmp1_V_11_18_fu_1272_p3;
        tmp1_V_11_9_fu_168 <= tmp1_V_11_19_fu_1296_p3;
        tmp1_V_1_0_fu_176 <= select_ln111_7_fu_1196_p3;
        tmp1_V_2_0_fu_180 <= select_ln111_5_fu_1180_p3;
        tmp1_V_4_0_fu_184 <= select_ln111_3_fu_1164_p3;
        tmp1_V_5_0_fu_188 <= select_ln111_1_fu_1148_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln107_fu_396_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_V_0_0_fu_120 <= tmp2_V_0_1_fu_547_p18;
        tmp2_V_10_0_fu_156 <= tmp2_V_10_1_fu_889_p18;
        tmp2_V_11_0_fu_160 <= tmp2_V_11_1_fu_927_p18;
        tmp2_V_1_0_fu_124 <= tmp2_V_1_1_fu_585_p18;
        tmp2_V_2_0_fu_128 <= tmp2_V_2_1_fu_623_p18;
        tmp2_V_3_0_fu_132 <= tmp2_V_3_1_fu_661_p18;
        tmp2_V_5_0_fu_136 <= tmp2_V_5_1_fu_699_p18;
        tmp2_V_6_0_fu_140 <= tmp2_V_6_1_fu_737_p18;
        tmp2_V_7_0_fu_144 <= tmp2_V_7_1_fu_775_p18;
        tmp2_V_8_0_fu_148 <= tmp2_V_8_1_fu_813_p18;
        tmp2_V_9_0_fu_152 <= tmp2_V_9_1_fu_851_p18;
    end
end

always @ (*) begin
    if (((icmp_ln107_fu_396_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 16'd65535;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_208;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_r_3 = 3'd0;
    end else begin
        ap_sig_allocacmp_r_3 = r_fu_116;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp1_V_0_0_out_ap_vld = 1'b1;
    end else begin
        tmp1_V_0_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp1_V_10_0_out_ap_vld = 1'b1;
    end else begin
        tmp1_V_10_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp1_V_11_0_out_ap_vld = 1'b1;
    end else begin
        tmp1_V_11_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp1_V_11_11_out_ap_vld = 1'b1;
    end else begin
        tmp1_V_11_11_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp1_V_11_4_out_ap_vld = 1'b1;
    end else begin
        tmp1_V_11_4_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp1_V_11_6_out_ap_vld = 1'b1;
    end else begin
        tmp1_V_11_6_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp1_V_11_9_out_ap_vld = 1'b1;
    end else begin
        tmp1_V_11_9_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp1_V_1_0_out_ap_vld = 1'b1;
    end else begin
        tmp1_V_1_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp1_V_2_0_out_ap_vld = 1'b1;
    end else begin
        tmp1_V_2_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp1_V_4_0_out_ap_vld = 1'b1;
    end else begin
        tmp1_V_4_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp1_V_5_0_out_ap_vld = 1'b1;
    end else begin
        tmp1_V_5_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp2_V_0_0_out_ap_vld = 1'b1;
    end else begin
        tmp2_V_0_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp2_V_10_0_out_ap_vld = 1'b1;
    end else begin
        tmp2_V_10_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp2_V_11_0_out_ap_vld = 1'b1;
    end else begin
        tmp2_V_11_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp2_V_1_0_out_ap_vld = 1'b1;
    end else begin
        tmp2_V_1_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp2_V_2_0_out_ap_vld = 1'b1;
    end else begin
        tmp2_V_2_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp2_V_3_0_out_ap_vld = 1'b1;
    end else begin
        tmp2_V_3_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp2_V_5_0_out_ap_vld = 1'b1;
    end else begin
        tmp2_V_5_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp2_V_6_0_out_ap_vld = 1'b1;
    end else begin
        tmp2_V_6_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp2_V_7_0_out_ap_vld = 1'b1;
    end else begin
        tmp2_V_7_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp2_V_8_0_out_ap_vld = 1'b1;
    end else begin
        tmp2_V_8_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln107_reg_1633 == 1'd1))) begin
        tmp2_V_9_0_out_ap_vld = 1'b1;
    end else begin
        tmp2_V_9_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln107_fu_402_p2 = (ap_sig_allocacmp_r_3 + 3'd1);

assign add_ln108_fu_414_p2 = (empty_fu_392_p1 + 2'd1);

assign add_ln109_fu_445_p2 = ($signed(sext_ln109_fu_437_p1) + $signed(17'd1));

assign add_ln112_1_fu_1053_p2 = (sub_ln112_fu_1044_p2 + zext_ln112_fu_1050_p1);

assign add_ln112_fu_541_p2 = (zext_ln111_fu_537_p1 + 4'd6);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_818 = ((icmp_ln107_fu_396_p2 == 1'd0) & (icmp_ln109_fu_428_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_fu_392_p1 = ap_sig_allocacmp_r_3[1:0];

assign icmp_ln107_fu_396_p2 = ((ap_sig_allocacmp_r_3 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln108_fu_408_p2 = ((ap_sig_allocacmp_r_3 < 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln109_fu_428_p2 = ((j_fu_420_p3 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln111_1_fu_1102_p2 = ((r_3_reg_1624_pp0_iter1_reg == 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln111_2_fu_1107_p2 = ((r_3_reg_1624_pp0_iter1_reg == 3'd2) ? 1'b1 : 1'b0);

assign icmp_ln111_3_fu_1112_p2 = ((r_3_reg_1624_pp0_iter1_reg == 3'd1) ? 1'b1 : 1'b0);

assign icmp_ln111_4_fu_1117_p2 = ((r_3_reg_1624_pp0_iter1_reg == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln111_fu_1097_p2 = ((r_3_reg_1624_pp0_iter1_reg == 3'd4) ? 1'b1 : 1'b0);

assign input_r_address0 = zext_ln112_1_fu_1059_p1;

assign j_fu_420_p3 = ((icmp_ln108_fu_408_p2[0:0] == 1'b1) ? empty_fu_392_p1 : add_ln108_fu_414_p2);

assign or_ln111_1_fu_1128_p2 = (icmp_ln111_2_fu_1107_p2 | icmp_ln111_1_fu_1102_p2);

assign or_ln111_2_fu_1142_p2 = (or_ln111_fu_1122_p2 | or_ln111_1_fu_1128_p2);

assign or_ln111_fu_1122_p2 = (icmp_ln111_4_fu_1117_p2 | icmp_ln111_3_fu_1112_p2);

assign p_and_t_cast_fu_469_p3 = {{9'd0}, {xor_ln109_fu_463_p2}};

assign select_ln109_fu_491_p3 = ((tmp_fu_451_p3[0:0] == 1'b1) ? sub_ln109_fu_477_p2 : tmp_s_fu_483_p3);

assign select_ln111_1_fu_1148_p3 = ((or_ln111_2_fu_1142_p2[0:0] == 1'b1) ? tmp1_V_5_0_fu_188 : select_ln111_fu_1134_p3);

assign select_ln111_2_fu_1156_p3 = ((icmp_ln111_fu_1097_p2[0:0] == 1'b1) ? 12'd4089 : tmp1_V_4_0_fu_184);

assign select_ln111_3_fu_1164_p3 = ((or_ln111_2_fu_1142_p2[0:0] == 1'b1) ? tmp1_V_4_0_fu_184 : select_ln111_2_fu_1156_p3);

assign select_ln111_4_fu_1172_p3 = ((icmp_ln111_2_fu_1107_p2[0:0] == 1'b1) ? 12'd4089 : tmp1_V_2_0_fu_180);

assign select_ln111_5_fu_1180_p3 = ((or_ln111_fu_1122_p2[0:0] == 1'b1) ? tmp1_V_2_0_fu_180 : select_ln111_4_fu_1172_p3);

assign select_ln111_6_fu_1188_p3 = ((icmp_ln111_3_fu_1112_p2[0:0] == 1'b1) ? 12'd4089 : tmp1_V_1_0_fu_176);

assign select_ln111_7_fu_1196_p3 = ((icmp_ln111_4_fu_1117_p2[0:0] == 1'b1) ? tmp1_V_1_0_fu_176 : select_ln111_6_fu_1188_p3);

assign select_ln111_8_fu_1204_p3 = ((icmp_ln111_4_fu_1117_p2[0:0] == 1'b1) ? 12'd4089 : tmp1_V_0_0_fu_172);

assign select_ln111_fu_1134_p3 = ((icmp_ln111_fu_1097_p2[0:0] == 1'b1) ? tmp1_V_5_0_fu_188 : 12'd4089);

assign select_ln112_2_fu_1232_p3 = ((icmp_ln111_fu_1097_p2[0:0] == 1'b1) ? tmp1_V_11_21_fu_1212_p1 : tmp1_V_11_11_fu_200);

assign select_ln112_4_fu_1248_p3 = ((icmp_ln111_2_fu_1107_p2[0:0] == 1'b1) ? tmp1_V_11_21_fu_1212_p1 : tmp1_V_11_4_fu_196);

assign select_ln112_8_fu_1280_p3 = ((icmp_ln111_2_fu_1107_p2[0:0] == 1'b1) ? tmp1_V_11_9_fu_168 : tmp1_V_11_21_fu_1212_p1);

assign select_ln112_9_fu_1288_p3 = ((or_ln111_fu_1122_p2[0:0] == 1'b1) ? tmp1_V_11_9_fu_168 : select_ln112_8_fu_1280_p3);

assign select_ln112_fu_1216_p3 = ((icmp_ln111_fu_1097_p2[0:0] == 1'b1) ? tmp1_V_11_13_fu_204 : tmp1_V_11_21_fu_1212_p1);

assign sext_ln109_fu_437_p0 = ap_sig_allocacmp_i_load;

assign sext_ln109_fu_437_p1 = sext_ln109_fu_437_p0;

assign sub_ln109_fu_477_p2 = (16'd0 - p_and_t_cast_fu_469_p3);

assign sub_ln112_fu_1044_p2 = (tmp_47_cast_fu_1036_p3 - trunc_ln112_fu_1028_p1);

assign tmp1_V_0_0_out = tmp1_V_0_0_fu_172;

assign tmp1_V_10_0_out = tmp1_V_11_11_fu_200;

assign tmp1_V_11_0_out = tmp1_V_11_13_fu_204;

assign tmp1_V_11_11_out = tmp1_V_11_2_fu_164;

assign tmp1_V_11_15_fu_1240_p3 = ((or_ln111_2_fu_1142_p2[0:0] == 1'b1) ? tmp1_V_11_11_fu_200 : select_ln112_2_fu_1232_p3);

assign tmp1_V_11_16_fu_1256_p3 = ((or_ln111_fu_1122_p2[0:0] == 1'b1) ? tmp1_V_11_4_fu_196 : select_ln112_4_fu_1248_p3);

assign tmp1_V_11_17_fu_1264_p3 = ((icmp_ln111_3_fu_1112_p2[0:0] == 1'b1) ? tmp1_V_11_21_fu_1212_p1 : tmp1_V_11_6_fu_192);

assign tmp1_V_11_18_fu_1272_p3 = ((icmp_ln111_4_fu_1117_p2[0:0] == 1'b1) ? tmp1_V_11_6_fu_192 : tmp1_V_11_17_fu_1264_p3);

assign tmp1_V_11_19_fu_1296_p3 = ((or_ln111_2_fu_1142_p2[0:0] == 1'b1) ? select_ln112_9_fu_1288_p3 : tmp1_V_11_9_fu_168);

assign tmp1_V_11_20_fu_1304_p3 = ((icmp_ln111_4_fu_1117_p2[0:0] == 1'b1) ? tmp1_V_11_21_fu_1212_p1 : tmp1_V_11_2_fu_164);

assign tmp1_V_11_21_fu_1212_p1 = input_r_q0[11:0];

assign tmp1_V_11_4_out = tmp1_V_11_4_fu_196;

assign tmp1_V_11_6_out = tmp1_V_11_6_fu_192;

assign tmp1_V_11_9_out = tmp1_V_11_9_fu_168;

assign tmp1_V_11_fu_1224_p3 = ((or_ln111_2_fu_1142_p2[0:0] == 1'b1) ? tmp1_V_11_13_fu_204 : select_ln112_fu_1216_p3);

assign tmp1_V_1_0_out = tmp1_V_1_0_fu_176;

assign tmp1_V_2_0_out = tmp1_V_2_0_fu_180;

assign tmp1_V_4_0_out = tmp1_V_4_0_fu_184;

assign tmp1_V_5_0_out = tmp1_V_5_0_fu_188;

assign tmp2_V_0_0_out = tmp2_V_0_0_fu_120;

assign tmp2_V_10_0_out = tmp2_V_10_0_fu_156;

assign tmp2_V_11_0_out = tmp2_V_11_0_fu_160;

assign tmp2_V_1_0_out = tmp2_V_1_0_fu_124;

assign tmp2_V_2_0_out = tmp2_V_2_0_fu_128;

assign tmp2_V_3_0_out = tmp2_V_3_0_fu_132;

assign tmp2_V_5_0_out = tmp2_V_5_0_fu_136;

assign tmp2_V_6_0_out = tmp2_V_6_0_fu_140;

assign tmp2_V_7_0_out = tmp2_V_7_0_fu_144;

assign tmp2_V_8_0_out = tmp2_V_8_0_fu_148;

assign tmp2_V_9_0_out = tmp2_V_9_0_fu_152;

assign tmp_47_cast_fu_1036_p3 = {{trunc_ln112_1_fu_1032_p1}, {2'd0}};

assign tmp_fu_451_p3 = add_ln109_fu_445_p2[32'd16];

assign tmp_s_fu_483_p3 = {{9'd0}, {trunc_ln109_1_fu_459_p1}};

assign trunc_ln109_1_fu_459_p1 = add_ln109_fu_445_p2[6:0];

assign trunc_ln109_fu_441_p0 = ap_sig_allocacmp_i_load;

assign trunc_ln109_fu_441_p1 = trunc_ln109_fu_441_p0[6:0];

assign trunc_ln112_1_fu_1032_p1 = i_fu_208[6:0];

assign trunc_ln112_fu_1028_p1 = i_fu_208[8:0];

assign xor_ln109_fu_463_p2 = (trunc_ln109_fu_441_p1 ^ 7'd127);

assign zext_ln111_fu_537_p1 = ap_sig_allocacmp_r_3;

assign zext_ln112_1_fu_1059_p1 = add_ln112_1_fu_1053_p2;

assign zext_ln112_fu_1050_p1 = j_reg_1637;

endmodule //master_fix_convolution1_fix_Pipeline_VITIS_LOOP_107_1
