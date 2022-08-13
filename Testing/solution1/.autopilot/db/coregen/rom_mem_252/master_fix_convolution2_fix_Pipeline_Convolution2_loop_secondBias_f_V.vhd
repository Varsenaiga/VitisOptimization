-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondBias_f_V is 
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


architecture rtl of master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondBias_f_V is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "000101101110001010111", 1 => "010010101011001110011", 
    2 => "111100011101011010011", 3 => "000111111000101111110", 
    4 => "110100000100101011011", 5 => "110111001011100011110", 
    6 => "111100001111001000110", 7 => "101101000100010100110", 
    8 => "111100010000111101010", 9 => "001010010101010110110", 
    10 => "101100111010100110010", 11 => "101110100111000111111", 
    12 => "010001100110110001010", 13 => "000000011010101010001", 
    14 => "110000010101110001011", 15 => "111100001110001001001" );


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

