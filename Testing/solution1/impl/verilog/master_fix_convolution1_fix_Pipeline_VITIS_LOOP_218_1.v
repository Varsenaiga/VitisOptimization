// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module master_fix_convolution1_fix_Pipeline_VITIS_LOOP_218_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        tmp1_V_address0,
        tmp1_V_ce0,
        tmp1_V_we0,
        tmp1_V_d0,
        tmp1_V_address1,
        tmp1_V_ce1,
        tmp1_V_we1,
        tmp1_V_d1,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        tmp2_V_address0,
        tmp2_V_ce0,
        tmp2_V_we0,
        tmp2_V_d0,
        tmp2_V_address1,
        tmp2_V_ce1,
        tmp2_V_we1,
        tmp2_V_d1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] tmp1_V_address0;
output   tmp1_V_ce0;
output   tmp1_V_we0;
output  [11:0] tmp1_V_d0;
output  [3:0] tmp1_V_address1;
output   tmp1_V_ce1;
output   tmp1_V_we1;
output  [11:0] tmp1_V_d1;
output  [8:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
output  [3:0] tmp2_V_address0;
output   tmp2_V_ce0;
output   tmp2_V_we0;
output  [11:0] tmp2_V_d0;
output  [3:0] tmp2_V_address1;
output   tmp2_V_ce1;
output   tmp2_V_we1;
output  [11:0] tmp2_V_d1;

reg ap_idle;
reg tmp1_V_ce0;
reg tmp1_V_we0;
reg tmp1_V_ce1;
reg tmp1_V_we1;
reg input_r_ce0;
reg tmp2_V_ce0;
reg tmp2_V_we0;
reg tmp2_V_ce1;
reg tmp2_V_we1;

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
wire   [0:0] icmp_ln218_fu_161_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] zext_ln219_fu_179_p1;
reg   [3:0] zext_ln219_reg_368;
reg   [3:0] zext_ln219_reg_368_pp0_iter1_reg;
wire   [1:0] j_fu_195_p3;
reg   [1:0] j_reg_373;
wire   [63:0] trunc_ln219_cast6_fu_173_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln225_fu_285_p1;
wire   [63:0] zext_ln223_2_fu_329_p1;
wire   [63:0] zext_ln223_1_fu_339_p1;
reg   [2:0] r_fu_70;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_r_5;
wire   [2:0] add_ln218_fu_167_p2;
reg   [15:0] i_fu_74;
reg   [15:0] ap_sig_allocacmp_i_load;
wire   [15:0] select_ln220_fu_266_p3;
wire   [0:0] icmp_ln220_fu_203_p2;
wire   [1:0] empty_fu_157_p1;
wire   [0:0] icmp_ln219_fu_183_p2;
wire   [1:0] add_ln219_fu_189_p2;
wire  signed [15:0] sext_ln220_fu_212_p0;
wire  signed [15:0] trunc_ln220_fu_216_p0;
wire  signed [16:0] sext_ln220_fu_212_p1;
wire   [16:0] add_ln220_fu_220_p2;
wire   [6:0] trunc_ln220_fu_216_p1;
wire   [6:0] xor_ln220_fu_238_p2;
wire   [15:0] p_and_t_cast_fu_244_p3;
wire   [6:0] trunc_ln220_1_fu_234_p1;
wire   [0:0] tmp_fu_226_p3;
wire   [15:0] sub_ln220_fu_252_p2;
wire   [15:0] tmp_s_fu_258_p3;
wire   [3:0] sub_ln225_fu_279_p2;
wire   [6:0] trunc_ln223_1_fu_302_p1;
wire   [8:0] tmp_33_cast_fu_306_p3;
wire   [8:0] trunc_ln223_fu_298_p1;
wire   [8:0] sub_ln223_fu_314_p2;
wire   [8:0] zext_ln223_fu_320_p1;
wire   [8:0] add_ln223_1_fu_323_p2;
wire   [3:0] add_ln223_fu_334_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_292;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_292)) begin
            i_fu_74 <= select_ln220_fu_266_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_74 <= 16'd65535;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln218_fu_161_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            r_fu_70 <= add_ln218_fu_167_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            r_fu_70 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        zext_ln219_reg_368_pp0_iter1_reg[2 : 0] <= zext_ln219_reg_368[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln218_fu_161_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_reg_373 <= j_fu_195_p3;
        zext_ln219_reg_368[2 : 0] <= zext_ln219_fu_179_p1[2 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln218_fu_161_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_load = i_fu_74;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_r_5 = 3'd0;
    end else begin
        ap_sig_allocacmp_r_5 = r_fu_70;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmp1_V_ce0 = 1'b1;
    end else begin
        tmp1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_V_ce1 = 1'b1;
    end else begin
        tmp1_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmp1_V_we0 = 1'b1;
    end else begin
        tmp1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln218_fu_161_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_V_we1 = 1'b1;
    end else begin
        tmp1_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_V_ce0 = 1'b1;
    end else begin
        tmp2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_V_ce1 = 1'b1;
    end else begin
        tmp2_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln218_fu_161_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_V_we0 = 1'b1;
    end else begin
        tmp2_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln218_fu_161_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_V_we1 = 1'b1;
    end else begin
        tmp2_V_we1 = 1'b0;
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

assign add_ln218_fu_167_p2 = (ap_sig_allocacmp_r_5 + 3'd1);

assign add_ln219_fu_189_p2 = (empty_fu_157_p1 + 2'd1);

assign add_ln220_fu_220_p2 = ($signed(sext_ln220_fu_212_p1) + $signed(17'd1));

assign add_ln223_1_fu_323_p2 = (sub_ln223_fu_314_p2 + zext_ln223_fu_320_p1);

assign add_ln223_fu_334_p2 = (zext_ln219_reg_368_pp0_iter1_reg + 4'd6);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_292 = ((icmp_ln218_fu_161_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln220_fu_203_p2 == 1'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_fu_157_p1 = ap_sig_allocacmp_r_5[1:0];

assign icmp_ln218_fu_161_p2 = ((ap_sig_allocacmp_r_5 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln219_fu_183_p2 = ((ap_sig_allocacmp_r_5 < 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln220_fu_203_p2 = ((j_fu_195_p3 == 2'd0) ? 1'b1 : 1'b0);

assign input_r_address0 = zext_ln223_2_fu_329_p1;

assign j_fu_195_p3 = ((icmp_ln219_fu_183_p2[0:0] == 1'b1) ? empty_fu_157_p1 : add_ln219_fu_189_p2);

assign p_and_t_cast_fu_244_p3 = {{9'd0}, {xor_ln220_fu_238_p2}};

assign select_ln220_fu_266_p3 = ((tmp_fu_226_p3[0:0] == 1'b1) ? sub_ln220_fu_252_p2 : tmp_s_fu_258_p3);

assign sext_ln220_fu_212_p0 = ap_sig_allocacmp_i_load;

assign sext_ln220_fu_212_p1 = sext_ln220_fu_212_p0;

assign sub_ln220_fu_252_p2 = (16'd0 - p_and_t_cast_fu_244_p3);

assign sub_ln223_fu_314_p2 = (tmp_33_cast_fu_306_p3 - trunc_ln223_fu_298_p1);

assign sub_ln225_fu_279_p2 = ($signed(4'd11) - $signed(zext_ln219_fu_179_p1));

assign tmp1_V_address0 = zext_ln223_1_fu_339_p1;

assign tmp1_V_address1 = trunc_ln219_cast6_fu_173_p1;

assign tmp1_V_d0 = input_r_q0[11:0];

assign tmp1_V_d1 = 12'd4089;

assign tmp2_V_address0 = zext_ln225_fu_285_p1;

assign tmp2_V_address1 = trunc_ln219_cast6_fu_173_p1;

assign tmp2_V_d0 = 12'd0;

assign tmp2_V_d1 = 12'd0;

assign tmp_33_cast_fu_306_p3 = {{trunc_ln223_1_fu_302_p1}, {2'd0}};

assign tmp_fu_226_p3 = add_ln220_fu_220_p2[32'd16];

assign tmp_s_fu_258_p3 = {{9'd0}, {trunc_ln220_1_fu_234_p1}};

assign trunc_ln219_cast6_fu_173_p1 = ap_sig_allocacmp_r_5;

assign trunc_ln220_1_fu_234_p1 = add_ln220_fu_220_p2[6:0];

assign trunc_ln220_fu_216_p0 = ap_sig_allocacmp_i_load;

assign trunc_ln220_fu_216_p1 = trunc_ln220_fu_216_p0[6:0];

assign trunc_ln223_1_fu_302_p1 = i_fu_74[6:0];

assign trunc_ln223_fu_298_p1 = i_fu_74[8:0];

assign xor_ln220_fu_238_p2 = (trunc_ln220_fu_216_p1 ^ 7'd127);

assign zext_ln219_fu_179_p1 = ap_sig_allocacmp_r_5;

assign zext_ln223_1_fu_339_p1 = add_ln223_fu_334_p2;

assign zext_ln223_2_fu_329_p1 = add_ln223_1_fu_323_p2;

assign zext_ln223_fu_320_p1 = j_reg_373;

assign zext_ln225_fu_285_p1 = sub_ln225_fu_279_p2;

always @ (posedge ap_clk) begin
    zext_ln219_reg_368[3] <= 1'b0;
    zext_ln219_reg_368_pp0_iter1_reg[3] <= 1'b0;
end

endmodule //master_fix_convolution1_fix_Pipeline_VITIS_LOOP_218_1
