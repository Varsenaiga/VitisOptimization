-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity master_fix_convolution1_fix_Pipeline_VITIS_LOOP_218_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    tmp1_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    tmp1_V_ce0 : OUT STD_LOGIC;
    tmp1_V_we0 : OUT STD_LOGIC;
    tmp1_V_d0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    tmp1_V_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    tmp1_V_ce1 : OUT STD_LOGIC;
    tmp1_V_we1 : OUT STD_LOGIC;
    tmp1_V_d1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    input_r_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    input_r_ce0 : OUT STD_LOGIC;
    input_r_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    tmp2_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    tmp2_V_ce0 : OUT STD_LOGIC;
    tmp2_V_we0 : OUT STD_LOGIC;
    tmp2_V_d0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    tmp2_V_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    tmp2_V_ce1 : OUT STD_LOGIC;
    tmp2_V_we1 : OUT STD_LOGIC;
    tmp2_V_d1 : OUT STD_LOGIC_VECTOR (11 downto 0) );
end;


architecture behav of master_fix_convolution1_fix_Pipeline_VITIS_LOOP_218_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv16_FFFF : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";
    constant ap_const_lv12_FF9 : STD_LOGIC_VECTOR (11 downto 0) := "111111111001";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv17_1 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv7_7F : STD_LOGIC_VECTOR (6 downto 0) := "1111111";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv4_B : STD_LOGIC_VECTOR (3 downto 0) := "1011";
    constant ap_const_lv4_6 : STD_LOGIC_VECTOR (3 downto 0) := "0110";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln218_fu_161_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal zext_ln219_fu_179_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln219_reg_368 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln219_reg_368_pp0_iter1_reg : STD_LOGIC_VECTOR (3 downto 0);
    signal j_fu_195_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal j_reg_373 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln219_cast6_fu_173_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln225_fu_285_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln223_2_fu_329_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln223_1_fu_339_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal r_fu_70 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_r_5 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln218_fu_167_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_fu_74 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (15 downto 0);
    signal select_ln220_fu_266_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln220_fu_203_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_fu_157_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln219_fu_183_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln219_fu_189_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal sext_ln220_fu_212_p0 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln220_fu_216_p0 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln220_fu_212_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln220_fu_220_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal trunc_ln220_fu_216_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal xor_ln220_fu_238_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_and_t_cast_fu_244_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln220_1_fu_234_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_fu_226_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln220_fu_252_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_s_fu_258_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal sub_ln225_fu_279_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln223_1_fu_302_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_33_cast_fu_306_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal trunc_ln223_fu_298_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sub_ln223_fu_314_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln223_fu_320_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln223_1_fu_323_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln223_fu_334_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_292 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    i_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_const_boolean_1 = ap_condition_292)) then 
                    i_fu_74 <= select_ln220_fu_266_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_74 <= ap_const_lv16_FFFF;
                end if;
            end if; 
        end if;
    end process;

    r_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln218_fu_161_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    r_fu_70 <= add_ln218_fu_167_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    r_fu_70 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                    zext_ln219_reg_368_pp0_iter1_reg(2 downto 0) <= zext_ln219_reg_368(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln218_fu_161_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                j_reg_373 <= j_fu_195_p3;
                    zext_ln219_reg_368(2 downto 0) <= zext_ln219_fu_179_p1(2 downto 0);
            end if;
        end if;
    end process;
    zext_ln219_reg_368(3) <= '0';
    zext_ln219_reg_368_pp0_iter1_reg(3) <= '0';

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln218_fu_167_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_r_5) + unsigned(ap_const_lv3_1));
    add_ln219_fu_189_p2 <= std_logic_vector(unsigned(empty_fu_157_p1) + unsigned(ap_const_lv2_1));
    add_ln220_fu_220_p2 <= std_logic_vector(signed(sext_ln220_fu_212_p1) + signed(ap_const_lv17_1));
    add_ln223_1_fu_323_p2 <= std_logic_vector(unsigned(sub_ln223_fu_314_p2) + unsigned(zext_ln223_fu_320_p1));
    add_ln223_fu_334_p2 <= std_logic_vector(unsigned(zext_ln219_reg_368_pp0_iter1_reg) + unsigned(ap_const_lv4_6));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_292_assign_proc : process(ap_enable_reg_pp0_iter0, icmp_ln218_fu_161_p2, icmp_ln220_fu_203_p2)
    begin
                ap_condition_292 <= ((icmp_ln218_fu_161_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln220_fu_203_p2 = ap_const_lv1_1));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln218_fu_161_p2)
    begin
        if (((icmp_ln218_fu_161_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_fu_74)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_load <= ap_const_lv16_FFFF;
        else 
            ap_sig_allocacmp_i_load <= i_fu_74;
        end if; 
    end process;


    ap_sig_allocacmp_r_5_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, r_fu_70, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_r_5 <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_r_5 <= r_fu_70;
        end if; 
    end process;

    empty_fu_157_p1 <= ap_sig_allocacmp_r_5(2 - 1 downto 0);
    icmp_ln218_fu_161_p2 <= "1" when (ap_sig_allocacmp_r_5 = ap_const_lv3_6) else "0";
    icmp_ln219_fu_183_p2 <= "1" when (unsigned(ap_sig_allocacmp_r_5) < unsigned(ap_const_lv3_3)) else "0";
    icmp_ln220_fu_203_p2 <= "1" when (j_fu_195_p3 = ap_const_lv2_0) else "0";
    input_r_address0 <= zext_ln223_2_fu_329_p1(9 - 1 downto 0);

    input_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    j_fu_195_p3 <= 
        empty_fu_157_p1 when (icmp_ln219_fu_183_p2(0) = '1') else 
        add_ln219_fu_189_p2;
    p_and_t_cast_fu_244_p3 <= (ap_const_lv9_0 & xor_ln220_fu_238_p2);
    select_ln220_fu_266_p3 <= 
        sub_ln220_fu_252_p2 when (tmp_fu_226_p3(0) = '1') else 
        tmp_s_fu_258_p3;
    sext_ln220_fu_212_p0 <= ap_sig_allocacmp_i_load;
        sext_ln220_fu_212_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sext_ln220_fu_212_p0),17));

    sub_ln220_fu_252_p2 <= std_logic_vector(unsigned(ap_const_lv16_0) - unsigned(p_and_t_cast_fu_244_p3));
    sub_ln223_fu_314_p2 <= std_logic_vector(unsigned(tmp_33_cast_fu_306_p3) - unsigned(trunc_ln223_fu_298_p1));
    sub_ln225_fu_279_p2 <= std_logic_vector(signed(ap_const_lv4_B) - signed(zext_ln219_fu_179_p1));
    tmp1_V_address0 <= zext_ln223_1_fu_339_p1(4 - 1 downto 0);
    tmp1_V_address1 <= trunc_ln219_cast6_fu_173_p1(4 - 1 downto 0);

    tmp1_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            tmp1_V_ce0 <= ap_const_logic_1;
        else 
            tmp1_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    tmp1_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            tmp1_V_ce1 <= ap_const_logic_1;
        else 
            tmp1_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    tmp1_V_d0 <= input_r_q0(12 - 1 downto 0);
    tmp1_V_d1 <= ap_const_lv12_FF9;

    tmp1_V_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            tmp1_V_we0 <= ap_const_logic_1;
        else 
            tmp1_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    tmp1_V_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, icmp_ln218_fu_161_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln218_fu_161_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            tmp1_V_we1 <= ap_const_logic_1;
        else 
            tmp1_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    tmp2_V_address0 <= zext_ln225_fu_285_p1(4 - 1 downto 0);
    tmp2_V_address1 <= trunc_ln219_cast6_fu_173_p1(4 - 1 downto 0);

    tmp2_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            tmp2_V_ce0 <= ap_const_logic_1;
        else 
            tmp2_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    tmp2_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            tmp2_V_ce1 <= ap_const_logic_1;
        else 
            tmp2_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    tmp2_V_d0 <= ap_const_lv12_0;
    tmp2_V_d1 <= ap_const_lv12_0;

    tmp2_V_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, icmp_ln218_fu_161_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln218_fu_161_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            tmp2_V_we0 <= ap_const_logic_1;
        else 
            tmp2_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    tmp2_V_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, icmp_ln218_fu_161_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln218_fu_161_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            tmp2_V_we1 <= ap_const_logic_1;
        else 
            tmp2_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_33_cast_fu_306_p3 <= (trunc_ln223_1_fu_302_p1 & ap_const_lv2_0);
    tmp_fu_226_p3 <= add_ln220_fu_220_p2(16 downto 16);
    tmp_s_fu_258_p3 <= (ap_const_lv9_0 & trunc_ln220_1_fu_234_p1);
    trunc_ln219_cast6_fu_173_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_r_5),64));
    trunc_ln220_1_fu_234_p1 <= add_ln220_fu_220_p2(7 - 1 downto 0);
    trunc_ln220_fu_216_p0 <= ap_sig_allocacmp_i_load;
    trunc_ln220_fu_216_p1 <= trunc_ln220_fu_216_p0(7 - 1 downto 0);
    trunc_ln223_1_fu_302_p1 <= i_fu_74(7 - 1 downto 0);
    trunc_ln223_fu_298_p1 <= i_fu_74(9 - 1 downto 0);
    xor_ln220_fu_238_p2 <= (trunc_ln220_fu_216_p1 xor ap_const_lv7_7F);
    zext_ln219_fu_179_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_r_5),4));
    zext_ln223_1_fu_339_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln223_fu_334_p2),64));
    zext_ln223_2_fu_329_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln223_1_fu_323_p2),64));
    zext_ln223_fu_320_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_373),9));
    zext_ln225_fu_285_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sub_ln225_fu_279_p2),64));
end behav;
