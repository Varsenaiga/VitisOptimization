-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_dense1_fix_Pipeline_Dense_Loop1_thirdBias_f_V is 
    generic(
             DataWidth     : integer := 21; 
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


architecture rtl of master_fix_dense1_fix_Pipeline_Dense_Loop1_thirdBias_f_V is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "010010011101010011011", 1 => "111101011110001001100", 
    2 => "000000101111011110010", 3 => "110100110000010010001", 
    4 => "110100000101100010110", 5 => "010100110010000001100", 
    6 => "111101011010101100011", 7 => "010010011010111100111", 
    8 => "111001110100101110111", 9 => "000010110011101010101", 
    10 => "001010000001100110110", 11 => "111100000001110110101", 
    12 => "111001001101101000010", 13 => "011001000011001001110", 
    14 => "111110111011011101100", 15 => "000100010010100100100" );


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

