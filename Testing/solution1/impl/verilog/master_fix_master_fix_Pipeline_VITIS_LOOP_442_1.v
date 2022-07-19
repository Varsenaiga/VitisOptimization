// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module master_fix_master_fix_Pipeline_VITIS_LOOP_442_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        den2_V_0_0_05,
        den2_V_0_1_06,
        den2_V_0_2_07,
        den2_V_0_3_08,
        m_3_04_out,
        m_3_04_out_ap_vld,
        m_2_03_out,
        m_2_03_out_ap_vld,
        m_3_7_out,
        m_3_7_out_ap_vld,
        m_3_10_out,
        m_3_10_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [35:0] den2_V_0_0_05;
input  [35:0] den2_V_0_1_06;
input  [35:0] den2_V_0_2_07;
input  [35:0] den2_V_0_3_08;
output  [63:0] m_3_04_out;
output   m_3_04_out_ap_vld;
output  [63:0] m_2_03_out;
output   m_2_03_out_ap_vld;
output  [63:0] m_3_7_out;
output   m_3_7_out_ap_vld;
output  [63:0] m_3_10_out;
output   m_3_10_out_ap_vld;

reg ap_idle;
reg m_3_04_out_ap_vld;
reg m_2_03_out_ap_vld;
reg m_3_7_out_ap_vld;
reg m_3_10_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln442_fu_188_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [1:0] trunc_ln938_fu_200_p1;
reg   [1:0] trunc_ln938_reg_687;
wire    ap_block_pp0_stage0_11001;
wire   [35:0] p_Val2_s_fu_204_p6;
reg   [35:0] p_Val2_s_reg_694;
reg   [0:0] p_Result_6_reg_700;
wire   [35:0] tmp_V_fu_226_p2;
reg   [35:0] tmp_V_reg_706;
reg   [2:0] i_fu_108;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage0;
wire   [2:0] add_ln442_fu_194_p2;
reg   [63:0] m_3_1_fu_112;
wire   [63:0] m_3_20_fu_605_p3;
reg   [63:0] m_3_7_fu_116;
wire   [63:0] m_3_19_fu_597_p3;
reg   [63:0] m_3_10_fu_120;
wire   [63:0] m_3_17_fu_581_p3;
reg   [63:0] m_3_04_fu_124;
wire   [63:0] m_3_14_fu_557_p3;
wire    ap_block_pp0_stage0_01001;
wire   [1:0] p_Val2_s_fu_204_p5;
wire   [35:0] tmp_V_2_fu_254_p3;
reg   [35:0] p_Result_s_fu_259_p4;
wire   [63:0] p_Result_7_fu_269_p3;
reg   [63:0] tmp_6_fu_277_p3;
wire   [31:0] l_fu_285_p1;
wire   [31:0] sub_ln947_fu_289_p2;
wire   [31:0] lsb_index_fu_295_p2;
wire   [30:0] tmp_fu_301_p4;
wire   [5:0] trunc_ln950_fu_317_p1;
wire   [5:0] sub_ln950_fu_321_p2;
wire   [35:0] zext_ln950_fu_327_p1;
wire   [35:0] lshr_ln950_fu_331_p2;
wire   [35:0] p_Result_2_fu_337_p2;
wire   [0:0] tmp_1_fu_349_p3;
wire   [0:0] icmp_ln949_fu_311_p2;
wire   [0:0] icmp_ln950_fu_343_p2;
wire   [0:0] p_Result_3_fu_369_p3;
wire   [0:0] and_ln949_fu_363_p2;
wire   [31:0] add_ln961_fu_393_p2;
wire   [63:0] zext_ln960_fu_383_p1;
wire   [63:0] zext_ln961_fu_399_p1;
wire   [31:0] sub_ln962_fu_409_p2;
wire   [63:0] zext_ln962_fu_415_p1;
wire   [0:0] a_fu_377_p2;
wire   [0:0] xor_ln952_fu_357_p2;
wire   [0:0] icmp_ln961_fu_387_p2;
wire   [63:0] lshr_ln961_fu_403_p2;
wire   [63:0] shl_ln962_fu_419_p2;
wire   [0:0] tobool31_i_i_i11_fu_425_p2;
wire   [63:0] m_1_fu_431_p3;
wire   [63:0] zext_ln964_fu_439_p1;
wire   [63:0] m_3_fu_443_p2;
wire   [62:0] m_fu_449_p4;
wire   [0:0] p_Result_4_fu_463_p3;
wire   [10:0] trunc_ln946_fu_479_p1;
wire   [10:0] sub_ln968_fu_483_p2;
wire   [10:0] select_ln946_fu_471_p3;
wire   [10:0] add_ln968_fu_489_p2;
wire   [63:0] zext_ln965_fu_459_p1;
wire   [11:0] tmp_s_fu_495_p3;
wire   [63:0] p_Result_8_fu_502_p5;
wire   [0:0] icmp_ln938_fu_249_p2;
wire   [63:0] bitcast_ln741_fu_514_p1;
wire   [0:0] icmp_ln443_fu_526_p2;
wire   [63:0] m_3_21_fu_518_p3;
wire   [0:0] icmp_ln443_1_fu_539_p2;
wire   [63:0] m_3_44_fu_531_p3;
wire   [0:0] icmp_ln443_2_fu_552_p2;
wire   [63:0] m_3_13_fu_544_p3;
wire   [63:0] m_3_15_fu_565_p3;
wire   [63:0] m_3_16_fu_573_p3;
wire   [63:0] m_3_18_fu_589_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

master_fix_mux_42_36_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 36 ),
    .din1_WIDTH( 36 ),
    .din2_WIDTH( 36 ),
    .din3_WIDTH( 36 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 36 ))
mux_42_36_1_1_U51(
    .din0(den2_V_0_0_05),
    .din1(den2_V_0_1_06),
    .din2(den2_V_0_2_07),
    .din3(den2_V_0_3_08),
    .din4(p_Val2_s_fu_204_p5),
    .dout(p_Val2_s_fu_204_p6)
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln442_fu_188_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_108 <= add_ln442_fu_194_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_108 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_3_04_fu_124 <= m_3_14_fu_557_p3;
        m_3_10_fu_120 <= m_3_17_fu_581_p3;
        m_3_1_fu_112 <= m_3_20_fu_605_p3;
        m_3_7_fu_116 <= m_3_19_fu_597_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln442_fu_188_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Result_6_reg_700 <= p_Val2_s_fu_204_p6[32'd35];
        p_Val2_s_reg_694 <= p_Val2_s_fu_204_p6;
        tmp_V_reg_706 <= tmp_V_fu_226_p2;
        trunc_ln938_reg_687 <= trunc_ln938_fu_200_p1;
    end
end

always @ (*) begin
    if (((icmp_ln442_fu_188_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_108;
    end
end

always @ (*) begin
    if (((icmp_ln442_fu_188_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_2_03_out_ap_vld = 1'b1;
    end else begin
        m_2_03_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln442_fu_188_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_3_04_out_ap_vld = 1'b1;
    end else begin
        m_3_04_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln442_fu_188_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_3_10_out_ap_vld = 1'b1;
    end else begin
        m_3_10_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln442_fu_188_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_3_7_out_ap_vld = 1'b1;
    end else begin
        m_3_7_out_ap_vld = 1'b0;
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

assign a_fu_377_p2 = (p_Result_3_fu_369_p3 | and_ln949_fu_363_p2);

assign add_ln442_fu_194_p2 = (ap_sig_allocacmp_i_2 + 3'd1);

assign add_ln961_fu_393_p2 = ($signed(sub_ln947_fu_289_p2) + $signed(32'd4294967242));

assign add_ln968_fu_489_p2 = (sub_ln968_fu_483_p2 + select_ln946_fu_471_p3);

assign and_ln949_fu_363_p2 = (icmp_ln950_fu_343_p2 & icmp_ln949_fu_311_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign bitcast_ln741_fu_514_p1 = p_Result_8_fu_502_p5;

assign icmp_ln442_fu_188_p2 = ((ap_sig_allocacmp_i_2 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln443_1_fu_539_p2 = ((trunc_ln938_reg_687 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln443_2_fu_552_p2 = ((trunc_ln938_reg_687 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln443_fu_526_p2 = ((trunc_ln938_reg_687 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln938_fu_249_p2 = ((p_Val2_s_reg_694 == 36'd0) ? 1'b1 : 1'b0);

assign icmp_ln949_fu_311_p2 = (($signed(tmp_fu_301_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln950_fu_343_p2 = ((p_Result_2_fu_337_p2 != 36'd0) ? 1'b1 : 1'b0);

assign icmp_ln961_fu_387_p2 = (($signed(lsb_index_fu_295_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign l_fu_285_p1 = tmp_6_fu_277_p3[31:0];

assign lsb_index_fu_295_p2 = ($signed(sub_ln947_fu_289_p2) + $signed(32'd4294967243));

assign lshr_ln950_fu_331_p2 = 36'd68719476735 >> zext_ln950_fu_327_p1;

assign lshr_ln961_fu_403_p2 = zext_ln960_fu_383_p1 >> zext_ln961_fu_399_p1;

assign m_1_fu_431_p3 = ((icmp_ln961_fu_387_p2[0:0] == 1'b1) ? lshr_ln961_fu_403_p2 : shl_ln962_fu_419_p2);

assign m_2_03_out = m_3_10_fu_120;

assign m_3_04_out = m_3_04_fu_124;

assign m_3_10_out = m_3_1_fu_112;

assign m_3_13_fu_544_p3 = ((icmp_ln443_1_fu_539_p2[0:0] == 1'b1) ? m_3_04_fu_124 : m_3_44_fu_531_p3);

assign m_3_14_fu_557_p3 = ((icmp_ln443_2_fu_552_p2[0:0] == 1'b1) ? m_3_04_fu_124 : m_3_13_fu_544_p3);

assign m_3_15_fu_565_p3 = ((icmp_ln443_fu_526_p2[0:0] == 1'b1) ? m_3_21_fu_518_p3 : m_3_10_fu_120);

assign m_3_16_fu_573_p3 = ((icmp_ln443_1_fu_539_p2[0:0] == 1'b1) ? m_3_10_fu_120 : m_3_15_fu_565_p3);

assign m_3_17_fu_581_p3 = ((icmp_ln443_2_fu_552_p2[0:0] == 1'b1) ? m_3_10_fu_120 : m_3_16_fu_573_p3);

assign m_3_18_fu_589_p3 = ((icmp_ln443_1_fu_539_p2[0:0] == 1'b1) ? m_3_21_fu_518_p3 : m_3_7_fu_116);

assign m_3_19_fu_597_p3 = ((icmp_ln443_2_fu_552_p2[0:0] == 1'b1) ? m_3_7_fu_116 : m_3_18_fu_589_p3);

assign m_3_20_fu_605_p3 = ((icmp_ln443_2_fu_552_p2[0:0] == 1'b1) ? m_3_21_fu_518_p3 : m_3_1_fu_112);

assign m_3_21_fu_518_p3 = ((icmp_ln938_fu_249_p2[0:0] == 1'b1) ? 64'd0 : bitcast_ln741_fu_514_p1);

assign m_3_44_fu_531_p3 = ((icmp_ln443_fu_526_p2[0:0] == 1'b1) ? m_3_04_fu_124 : m_3_21_fu_518_p3);

assign m_3_7_out = m_3_7_fu_116;

assign m_3_fu_443_p2 = (m_1_fu_431_p3 + zext_ln964_fu_439_p1);

assign m_fu_449_p4 = {{m_3_fu_443_p2[63:1]}};

assign p_Result_2_fu_337_p2 = (tmp_V_2_fu_254_p3 & lshr_ln950_fu_331_p2);

assign p_Result_3_fu_369_p3 = tmp_V_2_fu_254_p3[lsb_index_fu_295_p2];

assign p_Result_4_fu_463_p3 = m_3_fu_443_p2[32'd54];

assign p_Result_7_fu_269_p3 = {{28'd268435455}, {p_Result_s_fu_259_p4}};

assign p_Result_8_fu_502_p5 = {{tmp_s_fu_495_p3}, {zext_ln965_fu_459_p1[51:0]}};

integer ap_tvar_int_0;

always @ (tmp_V_2_fu_254_p3) begin
    for (ap_tvar_int_0 = 36 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 35 - 0) begin
            p_Result_s_fu_259_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_s_fu_259_p4[ap_tvar_int_0] = tmp_V_2_fu_254_p3[35 - ap_tvar_int_0];
        end
    end
end

assign p_Val2_s_fu_204_p5 = ap_sig_allocacmp_i_2[1:0];

assign select_ln946_fu_471_p3 = ((p_Result_4_fu_463_p3[0:0] == 1'b1) ? 11'd1023 : 11'd1022);

assign shl_ln962_fu_419_p2 = zext_ln960_fu_383_p1 << zext_ln962_fu_415_p1;

assign sub_ln947_fu_289_p2 = (32'd36 - l_fu_285_p1);

assign sub_ln950_fu_321_p2 = (6'd26 - trunc_ln950_fu_317_p1);

assign sub_ln962_fu_409_p2 = (32'd54 - sub_ln947_fu_289_p2);

assign sub_ln968_fu_483_p2 = (11'd17 - trunc_ln946_fu_479_p1);

assign tmp_1_fu_349_p3 = lsb_index_fu_295_p2[32'd31];


always @ (p_Result_7_fu_269_p3) begin
    if (p_Result_7_fu_269_p3[0] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd0;
    end else if (p_Result_7_fu_269_p3[1] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd1;
    end else if (p_Result_7_fu_269_p3[2] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd2;
    end else if (p_Result_7_fu_269_p3[3] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd3;
    end else if (p_Result_7_fu_269_p3[4] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd4;
    end else if (p_Result_7_fu_269_p3[5] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd5;
    end else if (p_Result_7_fu_269_p3[6] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd6;
    end else if (p_Result_7_fu_269_p3[7] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd7;
    end else if (p_Result_7_fu_269_p3[8] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd8;
    end else if (p_Result_7_fu_269_p3[9] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd9;
    end else if (p_Result_7_fu_269_p3[10] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd10;
    end else if (p_Result_7_fu_269_p3[11] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd11;
    end else if (p_Result_7_fu_269_p3[12] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd12;
    end else if (p_Result_7_fu_269_p3[13] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd13;
    end else if (p_Result_7_fu_269_p3[14] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd14;
    end else if (p_Result_7_fu_269_p3[15] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd15;
    end else if (p_Result_7_fu_269_p3[16] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd16;
    end else if (p_Result_7_fu_269_p3[17] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd17;
    end else if (p_Result_7_fu_269_p3[18] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd18;
    end else if (p_Result_7_fu_269_p3[19] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd19;
    end else if (p_Result_7_fu_269_p3[20] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd20;
    end else if (p_Result_7_fu_269_p3[21] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd21;
    end else if (p_Result_7_fu_269_p3[22] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd22;
    end else if (p_Result_7_fu_269_p3[23] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd23;
    end else if (p_Result_7_fu_269_p3[24] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd24;
    end else if (p_Result_7_fu_269_p3[25] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd25;
    end else if (p_Result_7_fu_269_p3[26] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd26;
    end else if (p_Result_7_fu_269_p3[27] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd27;
    end else if (p_Result_7_fu_269_p3[28] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd28;
    end else if (p_Result_7_fu_269_p3[29] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd29;
    end else if (p_Result_7_fu_269_p3[30] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd30;
    end else if (p_Result_7_fu_269_p3[31] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd31;
    end else if (p_Result_7_fu_269_p3[32] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd32;
    end else if (p_Result_7_fu_269_p3[33] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd33;
    end else if (p_Result_7_fu_269_p3[34] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd34;
    end else if (p_Result_7_fu_269_p3[35] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd35;
    end else if (p_Result_7_fu_269_p3[36] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd36;
    end else if (p_Result_7_fu_269_p3[37] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd37;
    end else if (p_Result_7_fu_269_p3[38] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd38;
    end else if (p_Result_7_fu_269_p3[39] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd39;
    end else if (p_Result_7_fu_269_p3[40] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd40;
    end else if (p_Result_7_fu_269_p3[41] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd41;
    end else if (p_Result_7_fu_269_p3[42] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd42;
    end else if (p_Result_7_fu_269_p3[43] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd43;
    end else if (p_Result_7_fu_269_p3[44] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd44;
    end else if (p_Result_7_fu_269_p3[45] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd45;
    end else if (p_Result_7_fu_269_p3[46] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd46;
    end else if (p_Result_7_fu_269_p3[47] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd47;
    end else if (p_Result_7_fu_269_p3[48] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd48;
    end else if (p_Result_7_fu_269_p3[49] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd49;
    end else if (p_Result_7_fu_269_p3[50] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd50;
    end else if (p_Result_7_fu_269_p3[51] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd51;
    end else if (p_Result_7_fu_269_p3[52] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd52;
    end else if (p_Result_7_fu_269_p3[53] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd53;
    end else if (p_Result_7_fu_269_p3[54] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd54;
    end else if (p_Result_7_fu_269_p3[55] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd55;
    end else if (p_Result_7_fu_269_p3[56] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd56;
    end else if (p_Result_7_fu_269_p3[57] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd57;
    end else if (p_Result_7_fu_269_p3[58] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd58;
    end else if (p_Result_7_fu_269_p3[59] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd59;
    end else if (p_Result_7_fu_269_p3[60] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd60;
    end else if (p_Result_7_fu_269_p3[61] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd61;
    end else if (p_Result_7_fu_269_p3[62] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd62;
    end else if (p_Result_7_fu_269_p3[63] == 1'b1) begin
        tmp_6_fu_277_p3 = 64'd63;
    end else begin
        tmp_6_fu_277_p3 = 64'd64;
    end
end

assign tmp_V_2_fu_254_p3 = ((p_Result_6_reg_700[0:0] == 1'b1) ? tmp_V_reg_706 : p_Val2_s_reg_694);

assign tmp_V_fu_226_p2 = (36'd0 - p_Val2_s_fu_204_p6);

assign tmp_fu_301_p4 = {{lsb_index_fu_295_p2[31:1]}};

assign tmp_s_fu_495_p3 = {{p_Result_6_reg_700}, {add_ln968_fu_489_p2}};

assign tobool31_i_i_i11_fu_425_p2 = (xor_ln952_fu_357_p2 & a_fu_377_p2);

assign trunc_ln938_fu_200_p1 = ap_sig_allocacmp_i_2[1:0];

assign trunc_ln946_fu_479_p1 = tmp_6_fu_277_p3[10:0];

assign trunc_ln950_fu_317_p1 = sub_ln947_fu_289_p2[5:0];

assign xor_ln952_fu_357_p2 = (tmp_1_fu_349_p3 ^ 1'd1);

assign zext_ln950_fu_327_p1 = sub_ln950_fu_321_p2;

assign zext_ln960_fu_383_p1 = tmp_V_2_fu_254_p3;

assign zext_ln961_fu_399_p1 = add_ln961_fu_393_p2;

assign zext_ln962_fu_415_p1 = sub_ln962_fu_409_p2;

assign zext_ln964_fu_439_p1 = tobool31_i_i_i11_fu_425_p2;

assign zext_ln965_fu_459_p1 = m_fu_449_p4;

endmodule //master_fix_master_fix_Pipeline_VITIS_LOOP_442_1
