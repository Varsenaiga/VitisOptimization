// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module master_fix_master_fix_Pipeline_VITIS_LOOP_214_1_VITIS_LOOP_215_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        conv1_address0,
        conv1_ce0,
        conv1_q0,
        conv1_address1,
        conv1_ce1,
        conv1_q1,
        conv1_address2,
        conv1_ce2,
        conv1_q2,
        max1_V_0_address0,
        max1_V_0_ce0,
        max1_V_0_we0,
        max1_V_0_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] conv1_address0;
output   conv1_ce0;
input  [34:0] conv1_q0;
output  [11:0] conv1_address1;
output   conv1_ce1;
input  [34:0] conv1_q1;
output  [11:0] conv1_address2;
output   conv1_ce2;
input  [34:0] conv1_q2;
output  [8:0] max1_V_0_address0;
output   max1_V_0_ce0;
output   max1_V_0_we0;
output  [34:0] max1_V_0_d0;

reg ap_idle;
reg conv1_ce0;
reg conv1_ce1;
reg conv1_ce2;
reg max1_V_0_ce0;
reg max1_V_0_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln214_fu_154_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln214_fu_184_p3;
wire   [3:0] select_ln214_1_fu_192_p3;
reg   [3:0] select_ln214_1_reg_433;
wire   [11:0] sub_ln220_fu_220_p2;
reg   [11:0] sub_ln220_reg_439;
reg   [5:0] tmp_reg_446;
wire   [8:0] empty_36_fu_328_p2;
reg   [8:0] empty_36_reg_466;
reg   [8:0] empty_36_reg_466_pp0_iter2_reg;
reg   [8:0] empty_36_reg_466_pp0_iter3_reg;
reg   [8:0] empty_36_reg_466_pp0_iter4_reg;
reg   [8:0] empty_36_reg_466_pp0_iter5_reg;
reg   [8:0] empty_36_reg_466_pp0_iter6_reg;
reg   [8:0] empty_36_reg_466_pp0_iter7_reg;
reg   [8:0] empty_36_reg_466_pp0_iter8_reg;
reg   [8:0] empty_36_reg_466_pp0_iter9_reg;
reg   [8:0] empty_36_reg_466_pp0_iter10_reg;
reg   [8:0] empty_36_reg_466_pp0_iter11_reg;
reg   [8:0] empty_36_reg_466_pp0_iter12_reg;
reg   [34:0] conv1_load_reg_471;
reg   [34:0] conv1_load_reg_471_pp0_iter3_reg;
reg   [34:0] conv1_load_reg_471_pp0_iter4_reg;
reg   [34:0] conv1_load_reg_471_pp0_iter5_reg;
reg   [34:0] conv1_load_reg_471_pp0_iter6_reg;
reg   [34:0] conv1_load_reg_471_pp0_iter7_reg;
reg   [34:0] conv1_load_reg_471_pp0_iter8_reg;
reg   [34:0] conv1_load_reg_471_pp0_iter9_reg;
reg   [34:0] conv1_load_reg_471_pp0_iter10_reg;
reg   [34:0] conv1_load_1_reg_477;
reg   [34:0] conv1_load_1_reg_477_pp0_iter3_reg;
reg   [34:0] conv1_load_1_reg_477_pp0_iter4_reg;
reg   [34:0] conv1_load_1_reg_477_pp0_iter5_reg;
reg   [34:0] conv1_load_1_reg_477_pp0_iter6_reg;
reg   [34:0] conv1_load_1_reg_477_pp0_iter7_reg;
reg   [34:0] conv1_load_1_reg_477_pp0_iter8_reg;
reg   [34:0] conv1_load_1_reg_477_pp0_iter9_reg;
reg   [34:0] conv1_load_1_reg_477_pp0_iter10_reg;
reg   [34:0] conv1_load_1_reg_477_pp0_iter11_reg;
reg   [34:0] conv1_load_2_reg_483;
reg   [34:0] conv1_load_2_reg_483_pp0_iter3_reg;
reg   [34:0] conv1_load_2_reg_483_pp0_iter4_reg;
reg   [34:0] conv1_load_2_reg_483_pp0_iter5_reg;
reg   [34:0] conv1_load_2_reg_483_pp0_iter6_reg;
reg   [34:0] conv1_load_2_reg_483_pp0_iter7_reg;
reg   [34:0] conv1_load_2_reg_483_pp0_iter8_reg;
reg   [34:0] conv1_load_2_reg_483_pp0_iter9_reg;
reg   [34:0] conv1_load_2_reg_483_pp0_iter10_reg;
reg   [34:0] conv1_load_2_reg_483_pp0_iter11_reg;
wire   [0:0] icmp_ln216_fu_338_p2;
reg   [0:0] icmp_ln216_reg_489;
wire   [34:0] select_ln221_fu_359_p3;
reg   [34:0] select_ln221_reg_494;
wire   [34:0] select_ln221_2_fu_381_p3;
reg   [34:0] select_ln221_2_reg_500;
wire   [63:0] zext_ln220_1_fu_284_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln220_2_fu_300_p1;
wire   [63:0] zext_ln220_3_fu_316_p1;
wire   [63:0] p_cast_fu_393_p1;
reg   [34:0] empty_fu_70;
reg   [34:0] ap_sig_allocacmp_p_load;
reg   [6:0] i_fu_74;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_load;
wire   [6:0] add_ln215_fu_252_p2;
reg   [3:0] d_fu_78;
reg   [3:0] ap_sig_allocacmp_d_load;
reg   [9:0] indvar_flatten_fu_82;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [9:0] add_ln214_1_fu_160_p2;
wire   [0:0] icmp_ln215_fu_178_p2;
wire   [3:0] add_ln214_fu_172_p2;
wire   [9:0] tmp_s_fu_208_p3;
wire   [11:0] tmp_2_fu_200_p3;
wire   [11:0] zext_ln220_fu_216_p1;
wire   [2:0] grp_fu_226_p1;
wire   [6:0] mul_fu_236_p0;
wire   [8:0] mul_fu_236_p1;
wire   [14:0] mul_fu_236_p2;
wire   [11:0] select_ln214_1_cast_fu_276_p1;
wire   [11:0] add_ln220_fu_279_p2;
wire   [11:0] add_ln220_1_fu_289_p2;
wire   [11:0] add_ln220_2_fu_294_p2;
wire   [11:0] add_ln220_3_fu_305_p2;
wire   [11:0] add_ln220_4_fu_310_p2;
wire   [8:0] tmp_24_cast_fu_321_p3;
wire   [8:0] select_ln214_1_cast1_fu_273_p1;
wire   [1:0] grp_fu_226_p2;
wire   [1:0] trunc_ln216_fu_334_p1;
wire   [34:0] select_ln216_fu_347_p3;
wire   [0:0] icmp_ln1548_fu_354_p2;
wire   [0:0] icmp_ln1548_1_fu_366_p2;
wire   [34:0] select_ln221_1_fu_370_p3;
wire   [0:0] icmp_ln1548_2_fu_376_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [14:0] mul_fu_236_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_done_reg = 1'b0;
end

master_fix_urem_7ns_3ns_2_11_1 #(
    .ID( 1 ),
    .NUM_STAGE( 11 ),
    .din0_WIDTH( 7 ),
    .din1_WIDTH( 3 ),
    .dout_WIDTH( 2 ))
urem_7ns_3ns_2_11_1_U91(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(select_ln214_fu_184_p3),
    .din1(grp_fu_226_p1),
    .ce(1'b1),
    .dout(grp_fu_226_p2)
);

master_fix_mul_7ns_9ns_15_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 7 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U92(
    .din0(mul_fu_236_p0),
    .din1(mul_fu_236_p1),
    .dout(mul_fu_236_p2)
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln214_fu_154_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            d_fu_78 <= select_ln214_1_fu_192_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            d_fu_78 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln214_fu_154_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_74 <= add_ln215_fu_252_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_74 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln214_fu_154_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_82 <= add_ln214_1_fu_160_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_82 <= 10'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        conv1_load_1_reg_477_pp0_iter10_reg <= conv1_load_1_reg_477_pp0_iter9_reg;
        conv1_load_1_reg_477_pp0_iter11_reg <= conv1_load_1_reg_477_pp0_iter10_reg;
        conv1_load_1_reg_477_pp0_iter3_reg <= conv1_load_1_reg_477;
        conv1_load_1_reg_477_pp0_iter4_reg <= conv1_load_1_reg_477_pp0_iter3_reg;
        conv1_load_1_reg_477_pp0_iter5_reg <= conv1_load_1_reg_477_pp0_iter4_reg;
        conv1_load_1_reg_477_pp0_iter6_reg <= conv1_load_1_reg_477_pp0_iter5_reg;
        conv1_load_1_reg_477_pp0_iter7_reg <= conv1_load_1_reg_477_pp0_iter6_reg;
        conv1_load_1_reg_477_pp0_iter8_reg <= conv1_load_1_reg_477_pp0_iter7_reg;
        conv1_load_1_reg_477_pp0_iter9_reg <= conv1_load_1_reg_477_pp0_iter8_reg;
        conv1_load_2_reg_483_pp0_iter10_reg <= conv1_load_2_reg_483_pp0_iter9_reg;
        conv1_load_2_reg_483_pp0_iter11_reg <= conv1_load_2_reg_483_pp0_iter10_reg;
        conv1_load_2_reg_483_pp0_iter3_reg <= conv1_load_2_reg_483;
        conv1_load_2_reg_483_pp0_iter4_reg <= conv1_load_2_reg_483_pp0_iter3_reg;
        conv1_load_2_reg_483_pp0_iter5_reg <= conv1_load_2_reg_483_pp0_iter4_reg;
        conv1_load_2_reg_483_pp0_iter6_reg <= conv1_load_2_reg_483_pp0_iter5_reg;
        conv1_load_2_reg_483_pp0_iter7_reg <= conv1_load_2_reg_483_pp0_iter6_reg;
        conv1_load_2_reg_483_pp0_iter8_reg <= conv1_load_2_reg_483_pp0_iter7_reg;
        conv1_load_2_reg_483_pp0_iter9_reg <= conv1_load_2_reg_483_pp0_iter8_reg;
        conv1_load_reg_471_pp0_iter10_reg <= conv1_load_reg_471_pp0_iter9_reg;
        conv1_load_reg_471_pp0_iter3_reg <= conv1_load_reg_471;
        conv1_load_reg_471_pp0_iter4_reg <= conv1_load_reg_471_pp0_iter3_reg;
        conv1_load_reg_471_pp0_iter5_reg <= conv1_load_reg_471_pp0_iter4_reg;
        conv1_load_reg_471_pp0_iter6_reg <= conv1_load_reg_471_pp0_iter5_reg;
        conv1_load_reg_471_pp0_iter7_reg <= conv1_load_reg_471_pp0_iter6_reg;
        conv1_load_reg_471_pp0_iter8_reg <= conv1_load_reg_471_pp0_iter7_reg;
        conv1_load_reg_471_pp0_iter9_reg <= conv1_load_reg_471_pp0_iter8_reg;
        empty_36_reg_466_pp0_iter10_reg <= empty_36_reg_466_pp0_iter9_reg;
        empty_36_reg_466_pp0_iter11_reg <= empty_36_reg_466_pp0_iter10_reg;
        empty_36_reg_466_pp0_iter12_reg <= empty_36_reg_466_pp0_iter11_reg;
        empty_36_reg_466_pp0_iter2_reg <= empty_36_reg_466;
        empty_36_reg_466_pp0_iter3_reg <= empty_36_reg_466_pp0_iter2_reg;
        empty_36_reg_466_pp0_iter4_reg <= empty_36_reg_466_pp0_iter3_reg;
        empty_36_reg_466_pp0_iter5_reg <= empty_36_reg_466_pp0_iter4_reg;
        empty_36_reg_466_pp0_iter6_reg <= empty_36_reg_466_pp0_iter5_reg;
        empty_36_reg_466_pp0_iter7_reg <= empty_36_reg_466_pp0_iter6_reg;
        empty_36_reg_466_pp0_iter8_reg <= empty_36_reg_466_pp0_iter7_reg;
        empty_36_reg_466_pp0_iter9_reg <= empty_36_reg_466_pp0_iter8_reg;
        icmp_ln216_reg_489 <= icmp_ln216_fu_338_p2;
        select_ln221_2_reg_500 <= select_ln221_2_fu_381_p3;
        select_ln221_reg_494 <= select_ln221_fu_359_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_36_reg_466 <= empty_36_fu_328_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        conv1_load_1_reg_477 <= conv1_q1;
        conv1_load_2_reg_483 <= conv1_q0;
        conv1_load_reg_471 <= conv1_q2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1))) begin
        empty_fu_70 <= select_ln221_2_fu_381_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln214_fu_154_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln214_1_reg_433 <= select_ln214_1_fu_192_p3;
        sub_ln220_reg_439[11 : 3] <= sub_ln220_fu_220_p2[11 : 3];
        tmp_reg_446 <= {{mul_fu_236_p2[14:9]}};
    end
end

always @ (*) begin
    if (((icmp_ln214_fu_154_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_d_load = 4'd0;
    end else begin
        ap_sig_allocacmp_d_load = d_fu_78;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_74;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_82;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1))) begin
        ap_sig_allocacmp_p_load = select_ln221_2_fu_381_p3;
    end else begin
        ap_sig_allocacmp_p_load = empty_fu_70;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv1_ce0 = 1'b1;
    end else begin
        conv1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv1_ce1 = 1'b1;
    end else begin
        conv1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv1_ce2 = 1'b1;
    end else begin
        conv1_ce2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        max1_V_0_ce0 = 1'b1;
    end else begin
        max1_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        max1_V_0_we0 = 1'b1;
    end else begin
        max1_V_0_we0 = 1'b0;
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

assign add_ln214_1_fu_160_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);

assign add_ln214_fu_172_p2 = (ap_sig_allocacmp_d_load + 4'd1);

assign add_ln215_fu_252_p2 = (select_ln214_fu_184_p3 + 7'd1);

assign add_ln220_1_fu_289_p2 = (sub_ln220_reg_439 + 12'd8);

assign add_ln220_2_fu_294_p2 = (add_ln220_1_fu_289_p2 + select_ln214_1_cast_fu_276_p1);

assign add_ln220_3_fu_305_p2 = (sub_ln220_reg_439 + 12'd16);

assign add_ln220_4_fu_310_p2 = (add_ln220_3_fu_305_p2 + select_ln214_1_cast_fu_276_p1);

assign add_ln220_fu_279_p2 = (sub_ln220_reg_439 + select_ln214_1_cast_fu_276_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign conv1_address0 = zext_ln220_3_fu_316_p1;

assign conv1_address1 = zext_ln220_2_fu_300_p1;

assign conv1_address2 = zext_ln220_1_fu_284_p1;

assign empty_36_fu_328_p2 = (tmp_24_cast_fu_321_p3 + select_ln214_1_cast1_fu_273_p1);

assign grp_fu_226_p1 = 7'd3;

assign icmp_ln1548_1_fu_366_p2 = ((select_ln221_reg_494 < conv1_load_1_reg_477_pp0_iter11_reg) ? 1'b1 : 1'b0);

assign icmp_ln1548_2_fu_376_p2 = ((select_ln221_1_fu_370_p3 < conv1_load_2_reg_483_pp0_iter11_reg) ? 1'b1 : 1'b0);

assign icmp_ln1548_fu_354_p2 = ((select_ln216_fu_347_p3 < conv1_load_reg_471_pp0_iter10_reg) ? 1'b1 : 1'b0);

assign icmp_ln214_fu_154_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd1008) ? 1'b1 : 1'b0);

assign icmp_ln215_fu_178_p2 = ((ap_sig_allocacmp_i_load == 7'd126) ? 1'b1 : 1'b0);

assign icmp_ln216_fu_338_p2 = ((trunc_ln216_fu_334_p1 == 2'd0) ? 1'b1 : 1'b0);

assign max1_V_0_address0 = p_cast_fu_393_p1;

assign max1_V_0_d0 = select_ln221_2_reg_500;

assign mul_fu_236_p0 = mul_fu_236_p00;

assign mul_fu_236_p00 = select_ln214_fu_184_p3;

assign mul_fu_236_p1 = 15'd171;

assign p_cast_fu_393_p1 = empty_36_reg_466_pp0_iter12_reg;

assign select_ln214_1_cast1_fu_273_p1 = select_ln214_1_reg_433;

assign select_ln214_1_cast_fu_276_p1 = select_ln214_1_reg_433;

assign select_ln214_1_fu_192_p3 = ((icmp_ln215_fu_178_p2[0:0] == 1'b1) ? add_ln214_fu_172_p2 : ap_sig_allocacmp_d_load);

assign select_ln214_fu_184_p3 = ((icmp_ln215_fu_178_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_load);

assign select_ln216_fu_347_p3 = ((icmp_ln216_reg_489[0:0] == 1'b1) ? 35'd0 : ap_sig_allocacmp_p_load);

assign select_ln221_1_fu_370_p3 = ((icmp_ln1548_1_fu_366_p2[0:0] == 1'b1) ? conv1_load_1_reg_477_pp0_iter11_reg : select_ln221_reg_494);

assign select_ln221_2_fu_381_p3 = ((icmp_ln1548_2_fu_376_p2[0:0] == 1'b1) ? conv1_load_2_reg_483_pp0_iter11_reg : select_ln221_1_fu_370_p3);

assign select_ln221_fu_359_p3 = ((icmp_ln1548_fu_354_p2[0:0] == 1'b1) ? conv1_load_reg_471_pp0_iter10_reg : select_ln216_fu_347_p3);

assign sub_ln220_fu_220_p2 = (tmp_2_fu_200_p3 - zext_ln220_fu_216_p1);

assign tmp_24_cast_fu_321_p3 = {{tmp_reg_446}, {3'd0}};

assign tmp_2_fu_200_p3 = {{select_ln214_fu_184_p3}, {5'd0}};

assign tmp_s_fu_208_p3 = {{select_ln214_fu_184_p3}, {3'd0}};

assign trunc_ln216_fu_334_p1 = grp_fu_226_p2[1:0];

assign zext_ln220_1_fu_284_p1 = add_ln220_fu_279_p2;

assign zext_ln220_2_fu_300_p1 = add_ln220_2_fu_294_p2;

assign zext_ln220_3_fu_316_p1 = add_ln220_4_fu_310_p2;

assign zext_ln220_fu_216_p1 = tmp_s_fu_208_p3;

always @ (posedge ap_clk) begin
    sub_ln220_reg_439[2:0] <= 3'b000;
end

endmodule //master_fix_master_fix_Pipeline_VITIS_LOOP_214_1_VITIS_LOOP_215_2
