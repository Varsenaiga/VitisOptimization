-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity master_fix_master_fix_Pipeline_VITIS_LOOP_256_2_VITIS_LOOP_257_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    sext_ln250 : IN STD_LOGIC_VECTOR (20 downto 0);
    sub_ln259 : IN STD_LOGIC_VECTOR (9 downto 0);
    max2_V_0_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    max2_V_0_ce0 : OUT STD_LOGIC;
    max2_V_0_q0 : IN STD_LOGIC_VECTOR (34 downto 0);
    num_V_8_out : OUT STD_LOGIC_VECTOR (35 downto 0);
    num_V_8_out_ap_vld : OUT STD_LOGIC;
    grp_fu_1096_p_din0 : OUT STD_LOGIC_VECTOR (20 downto 0);
    grp_fu_1096_p_din1 : OUT STD_LOGIC_VECTOR (34 downto 0);
    grp_fu_1096_p_dout0 : IN STD_LOGIC_VECTOR (54 downto 0);
    grp_fu_1096_p_ce : OUT STD_LOGIC );
end;


architecture behav of master_fix_master_fix_Pipeline_VITIS_LOOP_256_2_VITIS_LOOP_257_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_E0 : STD_LOGIC_VECTOR (7 downto 0) := "11100000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv19_0 : STD_LOGIC_VECTOR (18 downto 0) := "0000000000000000000";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_36 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110110";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv18_0 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000000";

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
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln256_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal firstDense_f_V_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal firstDense_f_V_ce0 : STD_LOGIC;
    signal firstDense_f_V_q0 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal trunc_ln259_fu_139_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln259_reg_407 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln256_reg_412 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln256_reg_412_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln256_reg_412_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln256_reg_412_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln256_fu_196_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln256_reg_416 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln256_1_fu_204_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln256_1_reg_422 : STD_LOGIC_VECTOR (3 downto 0);
    signal aux1_V_reg_438 : STD_LOGIC_VECTOR (34 downto 0);
    signal aux2_V_reg_443 : STD_LOGIC_VECTOR (20 downto 0);
    signal zext_ln1168_fu_284_p1 : STD_LOGIC_VECTOR (54 downto 0);
    signal sext_ln1171_fu_287_p1 : STD_LOGIC_VECTOR (54 downto 0);
    signal r_V_reg_458 : STD_LOGIC_VECTOR (54 downto 0);
    signal trunc_ln727_fu_296_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal trunc_ln727_reg_463 : STD_LOGIC_VECTOR (17 downto 0);
    signal zext_ln259_3_fu_268_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln258_fu_279_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lhs_fu_74 : STD_LOGIC_VECTOR (35 downto 0);
    signal num_V_fu_363_p2 : STD_LOGIC_VECTOR (35 downto 0);
    signal sext_ln250_cast_fu_135_p1 : STD_LOGIC_VECTOR (35 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal h_fu_78 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_sig_allocacmp_h_load : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln257_fu_212_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_2_fu_82 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_i_2_load : STD_LOGIC_VECTOR (3 downto 0);
    signal indvar_flatten17_fu_86 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_allocacmp_indvar_flatten17_load : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln256_1_fu_172_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal icmp_ln257_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln256_fu_184_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln259_fu_233_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln259_fu_236_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_32_cast_fu_241_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln259_2_fu_259_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln259_1_fu_262_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_s_fu_249_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln259_1_fu_256_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln258_fu_273_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal lhs_1_fu_303_p3 : STD_LOGIC_VECTOR (54 downto 0);
    signal ret_V_fu_311_p2 : STD_LOGIC_VECTOR (54 downto 0);
    signal p_Result_s_fu_326_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_fu_342_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln412_1_fu_347_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_9_fu_334_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln412_fu_353_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal num_V_2_fu_316_p4 : STD_LOGIC_VECTOR (35 downto 0);
    signal zext_ln415_1_fu_359_p1 : STD_LOGIC_VECTOR (35 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component master_fix_mul_21s_35ns_55_2_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (20 downto 0);
        din1 : IN STD_LOGIC_VECTOR (34 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (54 downto 0) );
    end component;


    component master_fix_master_fix_Pipeline_VITIS_LOOP_256_2_VITIS_LOOP_257_3_firstDense_f_V IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (11 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (20 downto 0) );
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
    firstDense_f_V_U : component master_fix_master_fix_Pipeline_VITIS_LOOP_256_2_VITIS_LOOP_257_3_firstDense_f_V
    generic map (
        DataWidth => 21,
        AddressRange => 3584,
        AddressWidth => 12)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => firstDense_f_V_address0,
        ce0 => firstDense_f_V_ce0,
        q0 => firstDense_f_V_q0);

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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
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


    h_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln256_fu_166_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    h_fu_78 <= add_ln257_fu_212_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    h_fu_78 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;

    i_2_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln256_fu_166_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_2_fu_82 <= select_ln256_1_fu_204_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_2_fu_82 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten17_fu_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln256_fu_166_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten17_fu_86 <= add_ln256_1_fu_172_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten17_fu_86 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;

    lhs_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    lhs_fu_74 <= sext_ln250_cast_fu_135_p1;
                elsif ((ap_enable_reg_pp0_iter5 = ap_const_logic_1)) then 
                    lhs_fu_74 <= num_V_fu_363_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                icmp_ln256_reg_412 <= icmp_ln256_fu_166_p2;
                icmp_ln256_reg_412_pp0_iter1_reg <= icmp_ln256_reg_412;
                trunc_ln259_reg_407 <= trunc_ln259_fu_139_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                aux1_V_reg_438 <= max2_V_0_q0;
                aux2_V_reg_443 <= firstDense_f_V_q0;
                icmp_ln256_reg_412_pp0_iter2_reg <= icmp_ln256_reg_412_pp0_iter1_reg;
                icmp_ln256_reg_412_pp0_iter3_reg <= icmp_ln256_reg_412_pp0_iter2_reg;
                r_V_reg_458 <= grp_fu_1096_p_dout0;
                trunc_ln727_reg_463 <= trunc_ln727_fu_296_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln256_fu_166_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                select_ln256_1_reg_422 <= select_ln256_1_fu_204_p3;
                select_ln256_reg_416 <= select_ln256_fu_196_p3;
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
    add_ln256_1_fu_172_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten17_load) + unsigned(ap_const_lv8_1));
    add_ln256_fu_184_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_2_load) + unsigned(ap_const_lv4_1));
    add_ln257_fu_212_p2 <= std_logic_vector(unsigned(select_ln256_fu_196_p3) + unsigned(ap_const_lv5_1));
    add_ln258_fu_273_p2 <= std_logic_vector(unsigned(tmp_s_fu_249_p3) + unsigned(zext_ln259_1_fu_256_p1));
    add_ln259_1_fu_262_p2 <= std_logic_vector(unsigned(tmp_32_cast_fu_241_p3) + unsigned(zext_ln259_2_fu_259_p1));
    add_ln259_fu_236_p2 <= std_logic_vector(unsigned(trunc_ln259_reg_407) + unsigned(zext_ln259_fu_233_p1));
    and_ln412_fu_353_p2 <= (p_Result_9_fu_334_p3 and or_ln412_1_fu_347_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln256_fu_166_p2)
    begin
        if (((icmp_ln256_fu_166_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter4_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5)
    begin
        if (((ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_h_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, h_fu_78)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_h_load <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_h_load <= h_fu_78;
        end if; 
    end process;


    ap_sig_allocacmp_i_2_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_2_fu_82)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_2_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_i_2_load <= i_2_fu_82;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten17_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten17_fu_86)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten17_load <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_indvar_flatten17_load <= indvar_flatten17_fu_86;
        end if; 
    end process;

    firstDense_f_V_address0 <= zext_ln259_3_fu_268_p1(12 - 1 downto 0);

    firstDense_f_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            firstDense_f_V_ce0 <= ap_const_logic_1;
        else 
            firstDense_f_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_1096_p_ce <= ap_const_logic_1;
    grp_fu_1096_p_din0 <= sext_ln1171_fu_287_p1(21 - 1 downto 0);
    grp_fu_1096_p_din1 <= zext_ln1168_fu_284_p1(35 - 1 downto 0);
    icmp_ln256_fu_166_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten17_load = ap_const_lv8_E0) else "0";
    icmp_ln257_fu_190_p2 <= "1" when (ap_sig_allocacmp_h_load = ap_const_lv5_10) else "0";
    lhs_1_fu_303_p3 <= (lhs_fu_74 & ap_const_lv19_0);
    max2_V_0_address0 <= zext_ln258_fu_279_p1(8 - 1 downto 0);

    max2_V_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            max2_V_0_ce0 <= ap_const_logic_1;
        else 
            max2_V_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    num_V_2_fu_316_p4 <= ret_V_fu_311_p2(54 downto 19);
    num_V_8_out <= lhs_fu_74;

    num_V_8_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln256_reg_412_pp0_iter3_reg)
    begin
        if (((icmp_ln256_reg_412_pp0_iter3_reg = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            num_V_8_out_ap_vld <= ap_const_logic_1;
        else 
            num_V_8_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    num_V_fu_363_p2 <= std_logic_vector(unsigned(num_V_2_fu_316_p4) + unsigned(zext_ln415_1_fu_359_p1));
    or_ln412_1_fu_347_p2 <= (r_fu_342_p2 or p_Result_s_fu_326_p3);
    p_Result_9_fu_334_p3 <= ret_V_fu_311_p2(18 downto 18);
    p_Result_s_fu_326_p3 <= ret_V_fu_311_p2(19 downto 19);
    r_fu_342_p2 <= "0" when (trunc_ln727_reg_463 = ap_const_lv18_0) else "1";
    ret_V_fu_311_p2 <= std_logic_vector(unsigned(lhs_1_fu_303_p3) + unsigned(r_V_reg_458));
    select_ln256_1_fu_204_p3 <= 
        add_ln256_fu_184_p2 when (icmp_ln257_fu_190_p2(0) = '1') else 
        ap_sig_allocacmp_i_2_load;
    select_ln256_fu_196_p3 <= 
        ap_const_lv5_0 when (icmp_ln257_fu_190_p2(0) = '1') else 
        ap_sig_allocacmp_h_load;
        sext_ln1171_fu_287_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(aux2_V_reg_443),55));

        sext_ln250_cast_fu_135_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sext_ln250),36));

    tmp_32_cast_fu_241_p3 <= (add_ln259_fu_236_p2 & ap_const_lv4_0);
    tmp_s_fu_249_p3 <= (select_ln256_1_reg_422 & ap_const_lv4_0);
    trunc_ln259_fu_139_p1 <= sub_ln259(8 - 1 downto 0);
    trunc_ln727_fu_296_p1 <= grp_fu_1096_p_dout0(18 - 1 downto 0);
    zext_ln1168_fu_284_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(aux1_V_reg_438),55));
    zext_ln258_fu_279_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln258_fu_273_p2),64));
    zext_ln259_1_fu_256_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln256_reg_416),8));
    zext_ln259_2_fu_259_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln256_reg_416),12));
    zext_ln259_3_fu_268_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln259_1_fu_262_p2),64));
    zext_ln259_fu_233_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln256_1_reg_422),8));
    zext_ln415_1_fu_359_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(and_ln412_fu_353_p2),36));
end behav;
