// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module master_fix_convolution1_fix (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
output  [11:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [34:0] out_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[8:0] input_r_address0;
reg input_r_ce0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
wire   [11:0] tmp1_V_9_fu_237_p1;
reg   [11:0] tmp1_V_9_reg_466;
wire    ap_CS_fsm_state4;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_start;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_done;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_idle;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_ready;
wire   [8:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_input_r_address0;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_input_r_ce0;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_10_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_10_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_4_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_4_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_6_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_6_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_5_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_5_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_4_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_4_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_2_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_2_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_1_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_1_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_0_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_0_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_9_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_9_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_11_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_11_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_11_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_11_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_10_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_10_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_9_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_9_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_8_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_8_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_7_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_7_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_6_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_6_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_5_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_5_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_3_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_3_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_2_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_2_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_1_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_1_0_out_ap_vld;
wire   [11:0] grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_0_0_out;
wire    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_0_0_out_ap_vld;
wire    grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_start;
wire    grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_done;
wire    grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_idle;
wire    grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_ready;
wire   [8:0] grp_convolution1_fix_Pipeline_Conv_loop_fu_180_input_r_address0;
wire    grp_convolution1_fix_Pipeline_Conv_loop_fu_180_input_r_ce0;
wire   [11:0] grp_convolution1_fix_Pipeline_Conv_loop_fu_180_out_r_address0;
wire    grp_convolution1_fix_Pipeline_Conv_loop_fu_180_out_r_ce0;
wire    grp_convolution1_fix_Pipeline_Conv_loop_fu_180_out_r_we0;
wire   [34:0] grp_convolution1_fix_Pipeline_Conv_loop_fu_180_out_r_d0;
reg    grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_start_reg = 1'b0;
#0 grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_start_reg = 1'b0;
end

master_fix_convolution1_fix_Pipeline_VITIS_LOOP_17_1 grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_start),
    .ap_done(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_done),
    .ap_idle(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_idle),
    .ap_ready(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_ready),
    .input_r_address0(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_input_r_address0),
    .input_r_ce0(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_input_r_ce0),
    .input_r_q0(input_r_q0),
    .tmp1_V_11_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_0_out),
    .tmp1_V_11_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_0_out_ap_vld),
    .tmp1_V_10_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_10_0_out),
    .tmp1_V_10_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_10_0_out_ap_vld),
    .tmp1_V_11_4_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_4_out),
    .tmp1_V_11_4_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_4_out_ap_vld),
    .tmp1_V_11_6_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_6_out),
    .tmp1_V_11_6_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_6_out_ap_vld),
    .tmp1_V_5_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_5_0_out),
    .tmp1_V_5_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_5_0_out_ap_vld),
    .tmp1_V_4_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_4_0_out),
    .tmp1_V_4_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_4_0_out_ap_vld),
    .tmp1_V_2_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_2_0_out),
    .tmp1_V_2_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_2_0_out_ap_vld),
    .tmp1_V_1_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_1_0_out),
    .tmp1_V_1_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_1_0_out_ap_vld),
    .tmp1_V_0_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_0_0_out),
    .tmp1_V_0_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_0_0_out_ap_vld),
    .tmp1_V_11_9_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_9_out),
    .tmp1_V_11_9_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_9_out_ap_vld),
    .tmp1_V_11_11_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_11_out),
    .tmp1_V_11_11_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_11_out_ap_vld),
    .tmp2_V_11_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_11_0_out),
    .tmp2_V_11_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_11_0_out_ap_vld),
    .tmp2_V_10_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_10_0_out),
    .tmp2_V_10_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_10_0_out_ap_vld),
    .tmp2_V_9_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_9_0_out),
    .tmp2_V_9_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_9_0_out_ap_vld),
    .tmp2_V_8_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_8_0_out),
    .tmp2_V_8_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_8_0_out_ap_vld),
    .tmp2_V_7_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_7_0_out),
    .tmp2_V_7_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_7_0_out_ap_vld),
    .tmp2_V_6_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_6_0_out),
    .tmp2_V_6_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_6_0_out_ap_vld),
    .tmp2_V_5_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_5_0_out),
    .tmp2_V_5_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_5_0_out_ap_vld),
    .tmp2_V_3_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_3_0_out),
    .tmp2_V_3_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_3_0_out_ap_vld),
    .tmp2_V_2_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_2_0_out),
    .tmp2_V_2_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_2_0_out_ap_vld),
    .tmp2_V_1_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_1_0_out),
    .tmp2_V_1_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_1_0_out_ap_vld),
    .tmp2_V_0_0_out(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_0_0_out),
    .tmp2_V_0_0_out_ap_vld(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_0_0_out_ap_vld)
);

master_fix_convolution1_fix_Pipeline_Conv_loop grp_convolution1_fix_Pipeline_Conv_loop_fu_180(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_start),
    .ap_done(grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_done),
    .ap_idle(grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_idle),
    .ap_ready(grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_ready),
    .tmp1_V_11_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_0_out),
    .tmp1_V_10_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_10_0_out),
    .tmp1_V_9(tmp1_V_9_reg_466),
    .tmp1_V_11_4_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_4_out),
    .tmp1_V_11_6_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_6_out),
    .tmp1_V_11_9_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_9_out),
    .tmp1_V_5_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_5_0_out),
    .tmp1_V_4_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_4_0_out),
    .tmp1_V_11_11_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_11_11_out),
    .tmp1_V_2_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_2_0_out),
    .tmp1_V_1_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_1_0_out),
    .tmp1_V_0_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp1_V_0_0_out),
    .tmp2_V_11_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_11_0_out),
    .tmp2_V_10_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_10_0_out),
    .tmp2_V_9_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_9_0_out),
    .tmp2_V_8_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_8_0_out),
    .tmp2_V_7_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_7_0_out),
    .tmp2_V_6_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_6_0_out),
    .tmp2_V_5_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_5_0_out),
    .tmp2_V_3_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_3_0_out),
    .tmp2_V_2_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_2_0_out),
    .tmp2_V_1_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_1_0_out),
    .tmp2_V_0_0_reload(grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_tmp2_V_0_0_out),
    .input_r_address0(grp_convolution1_fix_Pipeline_Conv_loop_fu_180_input_r_address0),
    .input_r_ce0(grp_convolution1_fix_Pipeline_Conv_loop_fu_180_input_r_ce0),
    .input_r_q0(input_r_q0),
    .out_r_address0(grp_convolution1_fix_Pipeline_Conv_loop_fu_180_out_r_address0),
    .out_r_ce0(grp_convolution1_fix_Pipeline_Conv_loop_fu_180_out_r_ce0),
    .out_r_we0(grp_convolution1_fix_Pipeline_Conv_loop_fu_180_out_r_we0),
    .out_r_d0(grp_convolution1_fix_Pipeline_Conv_loop_fu_180_out_r_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_start_reg <= 1'b1;
        end else if ((grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_ready == 1'b1)) begin
            grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_start_reg <= 1'b1;
        end else if ((grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_ready == 1'b1)) begin
            grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp1_V_9_reg_466 <= tmp1_V_9_fu_237_p1;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state6) & (grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_r_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_r_address0 = grp_convolution1_fix_Pipeline_Conv_loop_fu_180_input_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_r_address0 = grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_input_r_address0;
    end else begin
        input_r_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        input_r_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        input_r_ce0 = grp_convolution1_fix_Pipeline_Conv_loop_fu_180_input_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_r_ce0 = grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_input_r_ce0;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_start = grp_convolution1_fix_Pipeline_Conv_loop_fu_180_ap_start_reg;

assign grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_start = grp_convolution1_fix_Pipeline_VITIS_LOOP_17_1_fu_152_ap_start_reg;

assign out_r_address0 = grp_convolution1_fix_Pipeline_Conv_loop_fu_180_out_r_address0;

assign out_r_ce0 = grp_convolution1_fix_Pipeline_Conv_loop_fu_180_out_r_ce0;

assign out_r_d0 = grp_convolution1_fix_Pipeline_Conv_loop_fu_180_out_r_d0;

assign out_r_we0 = grp_convolution1_fix_Pipeline_Conv_loop_fu_180_out_r_we0;

assign tmp1_V_9_fu_237_p1 = input_r_q0[11:0];

endmodule //master_fix_convolution1_fix
