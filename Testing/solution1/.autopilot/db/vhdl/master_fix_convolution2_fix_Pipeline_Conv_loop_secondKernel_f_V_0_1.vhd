-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_1 is 
    generic(
             DataWidth     : integer := 19; 
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


architecture rtl of master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_1 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1001100110000111010", 1 => "0001101011001100110", 
    2 => "1110010111001000110", 3 => "0111010010001111011", 
    4 => "0000101011000111001", 5 => "1011010111111111001", 
    6 => "0001011010111110110", 7 => "0011000001010111111", 
    8 => "1110100110011110000", 9 => "1100010001100100110", 
    10 => "1010110000101110111", 11 => "1101111000100001110", 
    12 => "1110111100111110001", 13 => "0000100011110100110", 
    14 => "0011110111100101010", 15 => "0000011101100101011" );


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

