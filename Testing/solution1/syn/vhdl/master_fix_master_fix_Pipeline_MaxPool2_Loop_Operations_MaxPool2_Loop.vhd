-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity master_fix_master_fix_Pipeline_MaxPool2_Loop_Operations_MaxPool2_Loop is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    conv2_0_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    conv2_0_ce0 : OUT STD_LOGIC;
    conv2_0_q0 : IN STD_LOGIC_VECTOR (34 downto 0);
    max2_V_0_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    max2_V_0_ce0 : OUT STD_LOGIC;
    max2_V_0_we0 : OUT STD_LOGIC;
    max2_V_0_d0 : OUT STD_LOGIC_VECTOR (34 downto 0) );
end;


architecture behav of master_fix_master_fix_Pipeline_MaxPool2_Loop_Operations_MaxPool2_Loop is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv10_2A0 : STD_LOGIC_VECTOR (9 downto 0) := "1010100000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv6_2A : STD_LOGIC_VECTOR (5 downto 0) := "101010";
    constant ap_const_lv6_3 : STD_LOGIC_VECTOR (5 downto 0) := "000011";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv13_56 : STD_LOGIC_VECTOR (12 downto 0) := "0000001010110";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv35_0 : STD_LOGIC_VECTOR (34 downto 0) := "00000000000000000000000000000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter6 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter7 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter8 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter9 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter10 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter11 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter6 : BOOLEAN;
    signal ap_block_state8_pp0_stage0_iter7 : BOOLEAN;
    signal ap_block_state9_pp0_stage0_iter8 : BOOLEAN;
    signal ap_block_state10_pp0_stage0_iter9 : BOOLEAN;
    signal ap_block_state11_pp0_stage0_iter10 : BOOLEAN;
    signal ap_block_state12_pp0_stage0_iter11 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln259_fu_122_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln261_fu_137_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln261_reg_325 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln261_reg_325_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln261_reg_325_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln261_reg_325_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln261_reg_325_pp0_iter4_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln261_reg_325_pp0_iter5_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln261_reg_325_pp0_iter6_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln261_reg_325_pp0_iter7_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln259_fu_143_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln259_reg_330 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln259_reg_330_pp0_iter1_reg : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln259_reg_330_pp0_iter2_reg : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln259_reg_330_pp0_iter3_reg : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln259_reg_330_pp0_iter4_reg : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln259_reg_330_pp0_iter5_reg : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln259_reg_330_pp0_iter6_reg : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln259_reg_330_pp0_iter7_reg : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln259_reg_330_pp0_iter8_reg : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln259_1_fu_182_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln259_1_reg_337 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln262_fu_222_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln262_reg_348 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln268_fu_255_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln268_reg_353 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln268_reg_353_pp0_iter10_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp1_fu_277_p3 : STD_LOGIC_VECTOR (34 downto 0);
    signal tmp1_reg_358 : STD_LOGIC_VECTOR (34 downto 0);
    signal zext_ln266_fu_213_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln268_fu_290_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp1_1_fu_62 : STD_LOGIC_VECTOR (34 downto 0);
    signal i_1_fu_66 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_1_load : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln261_fu_157_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal d_fu_70 : STD_LOGIC_VECTOR (4 downto 0);
    signal indvar_flatten9_fu_74 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_sig_allocacmp_indvar_flatten9_load : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln259_1_fu_128_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_151_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln259_fu_176_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_s_fu_200_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln259_1_cast_fu_197_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln266_fu_207_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_151_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln262_fu_218_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal mul3_fu_231_p0 : STD_LOGIC_VECTOR (5 downto 0);
    signal mul3_fu_231_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal mul3_fu_231_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_fu_237_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_27_cast_fu_247_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln259_1_cast1_fu_194_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln262_fu_264_p3 : STD_LOGIC_VECTOR (34 downto 0);
    signal icmp_ln1548_fu_271_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter6_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter7_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter8_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter9_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter10_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal mul3_fu_231_p00 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component master_fix_urem_6ns_3ns_2_10_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (5 downto 0);
        din1 : IN STD_LOGIC_VECTOR (2 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (1 downto 0) );
    end component;


    component master_fix_mul_6ns_8ns_13_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (5 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        dout : OUT STD_LOGIC_VECTOR (12 downto 0) );
    end component;


    component master_fix_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    urem_6ns_3ns_2_10_1_U305 : component master_fix_urem_6ns_3ns_2_10_1
    generic map (
        ID => 1,
        NUM_STAGE => 10,
        din0_WIDTH => 6,
        din1_WIDTH => 3,
        dout_WIDTH => 2)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => select_ln259_fu_143_p3,
        din1 => grp_fu_151_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_151_p2);

    mul_6ns_8ns_13_1_1_U306 : component master_fix_mul_6ns_8ns_13_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 6,
        din1_WIDTH => 8,
        dout_WIDTH => 13)
    port map (
        din0 => mul3_fu_231_p0,
        din1 => mul3_fu_231_p1,
        dout => mul3_fu_231_p2);

    flow_control_loop_pipe_sequential_init_U : component master_fix_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter10_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter10_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter10 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter11_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter11 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter6_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter6 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter7_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter7 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter8_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter8 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter9_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter9 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
                end if; 
            end if;
        end if;
    end process;


    d_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    d_fu_70 <= ap_const_lv5_0;
                elsif ((ap_enable_reg_pp0_iter8 = ap_const_logic_1)) then 
                    d_fu_70 <= select_ln259_1_fu_182_p3;
                end if;
            end if; 
        end if;
    end process;

    i_1_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln259_fu_122_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_1_fu_66 <= add_ln261_fu_157_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_1_fu_66 <= ap_const_lv6_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten9_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln259_fu_122_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten9_fu_74 <= add_ln259_1_fu_128_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten9_fu_74 <= ap_const_lv10_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                add_ln268_reg_353 <= add_ln268_fu_255_p2;
                add_ln268_reg_353_pp0_iter10_reg <= add_ln268_reg_353;
                ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
                ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
                ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
                ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
                ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
                icmp_ln261_reg_325_pp0_iter2_reg <= icmp_ln261_reg_325_pp0_iter1_reg;
                icmp_ln261_reg_325_pp0_iter3_reg <= icmp_ln261_reg_325_pp0_iter2_reg;
                icmp_ln261_reg_325_pp0_iter4_reg <= icmp_ln261_reg_325_pp0_iter3_reg;
                icmp_ln261_reg_325_pp0_iter5_reg <= icmp_ln261_reg_325_pp0_iter4_reg;
                icmp_ln261_reg_325_pp0_iter6_reg <= icmp_ln261_reg_325_pp0_iter5_reg;
                icmp_ln261_reg_325_pp0_iter7_reg <= icmp_ln261_reg_325_pp0_iter6_reg;
                icmp_ln262_reg_348 <= icmp_ln262_fu_222_p2;
                select_ln259_1_reg_337 <= select_ln259_1_fu_182_p3;
                select_ln259_reg_330_pp0_iter2_reg <= select_ln259_reg_330_pp0_iter1_reg;
                select_ln259_reg_330_pp0_iter3_reg <= select_ln259_reg_330_pp0_iter2_reg;
                select_ln259_reg_330_pp0_iter4_reg <= select_ln259_reg_330_pp0_iter3_reg;
                select_ln259_reg_330_pp0_iter5_reg <= select_ln259_reg_330_pp0_iter4_reg;
                select_ln259_reg_330_pp0_iter6_reg <= select_ln259_reg_330_pp0_iter5_reg;
                select_ln259_reg_330_pp0_iter7_reg <= select_ln259_reg_330_pp0_iter6_reg;
                select_ln259_reg_330_pp0_iter8_reg <= select_ln259_reg_330_pp0_iter7_reg;
                tmp1_reg_358 <= tmp1_fu_277_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                icmp_ln261_reg_325_pp0_iter1_reg <= icmp_ln261_reg_325;
                select_ln259_reg_330_pp0_iter1_reg <= select_ln259_reg_330;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln259_fu_122_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln261_reg_325 <= icmp_ln261_fu_137_p2;
                select_ln259_reg_330 <= select_ln259_fu_143_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter10 = ap_const_logic_1))) then
                tmp1_1_fu_62 <= tmp1_fu_277_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln259_1_fu_128_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten9_load) + unsigned(ap_const_lv10_1));
    add_ln259_fu_176_p2 <= std_logic_vector(unsigned(d_fu_70) + unsigned(ap_const_lv5_1));
    add_ln261_fu_157_p2 <= std_logic_vector(unsigned(select_ln259_fu_143_p3) + unsigned(ap_const_lv6_1));
    add_ln266_fu_207_p2 <= std_logic_vector(unsigned(tmp_s_fu_200_p3) + unsigned(select_ln259_1_cast_fu_197_p1));
    add_ln268_fu_255_p2 <= std_logic_vector(unsigned(tmp_27_cast_fu_247_p3) + unsigned(select_ln259_1_cast1_fu_194_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state10_pp0_stage0_iter9 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state11_pp0_stage0_iter10 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state12_pp0_stage0_iter11 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter6 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage0_iter7 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp0_stage0_iter8 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln259_fu_122_p2)
    begin
        if (((icmp_ln259_fu_122_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter10_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter10_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6, ap_enable_reg_pp0_iter7, ap_enable_reg_pp0_iter8, ap_enable_reg_pp0_iter9, ap_enable_reg_pp0_iter10, ap_enable_reg_pp0_iter11)
    begin
        if (((ap_enable_reg_pp0_iter11 = ap_const_logic_0) and (ap_enable_reg_pp0_iter10 = ap_const_logic_0) and (ap_enable_reg_pp0_iter9 = ap_const_logic_0) and (ap_enable_reg_pp0_iter8 = ap_const_logic_0) and (ap_enable_reg_pp0_iter7 = ap_const_logic_0) and (ap_enable_reg_pp0_iter6 = ap_const_logic_0) and (ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_1_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_1_fu_66, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_1_load <= ap_const_lv6_0;
        else 
            ap_sig_allocacmp_i_1_load <= i_1_fu_66;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten9_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten9_fu_74)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten9_load <= ap_const_lv10_0;
        else 
            ap_sig_allocacmp_indvar_flatten9_load <= indvar_flatten9_fu_74;
        end if; 
    end process;

    conv2_0_address0 <= zext_ln266_fu_213_p1(10 - 1 downto 0);

    conv2_0_ce0_assign_proc : process(ap_enable_reg_pp0_iter9, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter9 = ap_const_logic_1))) then 
            conv2_0_ce0 <= ap_const_logic_1;
        else 
            conv2_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_151_p1 <= ap_const_lv6_3(3 - 1 downto 0);
    icmp_ln1548_fu_271_p2 <= "1" when (unsigned(select_ln262_fu_264_p3) < unsigned(conv2_0_q0)) else "0";
    icmp_ln259_fu_122_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten9_load = ap_const_lv10_2A0) else "0";
    icmp_ln261_fu_137_p2 <= "1" when (ap_sig_allocacmp_i_1_load = ap_const_lv6_2A) else "0";
    icmp_ln262_fu_222_p2 <= "1" when (trunc_ln262_fu_218_p1 = ap_const_lv2_0) else "0";
    max2_V_0_address0 <= zext_ln268_fu_290_p1(8 - 1 downto 0);

    max2_V_0_ce0_assign_proc : process(ap_enable_reg_pp0_iter11, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter11 = ap_const_logic_1))) then 
            max2_V_0_ce0 <= ap_const_logic_1;
        else 
            max2_V_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    max2_V_0_d0 <= tmp1_reg_358;

    max2_V_0_we0_assign_proc : process(ap_enable_reg_pp0_iter11, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter11 = ap_const_logic_1))) then 
            max2_V_0_we0 <= ap_const_logic_1;
        else 
            max2_V_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    mul3_fu_231_p0 <= mul3_fu_231_p00(6 - 1 downto 0);
    mul3_fu_231_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln259_reg_330_pp0_iter8_reg),13));
    mul3_fu_231_p1 <= ap_const_lv13_56(8 - 1 downto 0);
    select_ln259_1_cast1_fu_194_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln259_1_reg_337),8));
    select_ln259_1_cast_fu_197_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln259_1_reg_337),10));
    select_ln259_1_fu_182_p3 <= 
        add_ln259_fu_176_p2 when (icmp_ln261_reg_325_pp0_iter7_reg(0) = '1') else 
        d_fu_70;
    select_ln259_fu_143_p3 <= 
        ap_const_lv6_0 when (icmp_ln261_fu_137_p2(0) = '1') else 
        ap_sig_allocacmp_i_1_load;
    select_ln262_fu_264_p3 <= 
        ap_const_lv35_0 when (icmp_ln262_reg_348(0) = '1') else 
        tmp1_1_fu_62;
    tmp1_fu_277_p3 <= 
        conv2_0_q0 when (icmp_ln1548_fu_271_p2(0) = '1') else 
        select_ln262_fu_264_p3;
    tmp_27_cast_fu_247_p3 <= (tmp_fu_237_p4 & ap_const_lv4_0);
    tmp_fu_237_p4 <= mul3_fu_231_p2(11 downto 8);
    tmp_s_fu_200_p3 <= (select_ln259_reg_330_pp0_iter8_reg & ap_const_lv4_0);
    trunc_ln262_fu_218_p1 <= grp_fu_151_p2(2 - 1 downto 0);
    zext_ln266_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln266_fu_207_p2),64));
    zext_ln268_fu_290_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln268_reg_353_pp0_iter10_reg),64));
end behav;
