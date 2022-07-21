-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_7 is 
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


architecture rtl of master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_7 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0101111100110101100", 1 => "1101100011111111001", 
    2 => "0001101110101001000", 3 => "0001111001101000100", 
    4 => "1110101001111010100", 5 => "0100000101011010101", 
    6 => "1111010101000011111", 7 => "1010110011010011101", 
    8 => "1101000100000101110", 9 => "1111010111010000111", 
    10 => "0000111001111100000", 11 => "1101110100011100111", 
    12 => "0000001100111100111", 13 => "0000001100011100001", 
    14 => "0000101101100110000", 15 => "1101110101101000000" );


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

