-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_dense1_fix_Pipeline_VITIS_LOOP_255_1_firstDense_f_V_3_7 is 
    generic(
             DataWidth     : integer := 20; 
             AddressWidth     : integer := 4; 
             AddressRange    : integer := 16
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of master_fix_dense1_fix_Pipeline_VITIS_LOOP_255_1_firstDense_f_V_3_7 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10110110011010001001", 1 => "11111111111010011010", 
    2 => "11101001001100000010", 3 => "11111001010110110101", 
    4 => "11011000101010010100", 5 => "00010001000001100010", 
    6 => "11111100000110010101", 7 => "11111011010001111000", 
    8 => "00000101011010011111", 9 => "11110101101010100111", 
    10 => "00000001100111010101", 11 => "00000100010110011101", 
    12 => "11110100100100001110", 13 => "11111111010001000111", 
    14 => "11100001001111100001", 15 => "11110101001110000110" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;

