-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_dense1_fix_Pipeline_Dense1_Loop28_firstDense_f_V_4_14 is 
    generic(
             DataWidth     : integer := 21; 
             AddressWidth     : integer := 4; 
             AddressRange    : integer := 14
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of master_fix_dense1_fix_Pipeline_Dense1_Loop28_firstDense_f_V_4_14 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "000001001111111101100", 1 => "111110100101011001111", 
    2 => "000000101011001110010", 3 => "111111000000011000011", 
    4 => "000000011100010010011", 5 => "000001100001110111011", 
    6 => "111111010100110110110", 7 => "000000101010101101011", 
    8 => "111110010111010100100", 9 => "111111010010100111100", 
    10 => "000000110001101100100", 11 => "110111001000101010100", 
    12 => "101011111000011110011", 13 => "111000000111110001111" );


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

