-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_master_fix_Pipeline_Operations_Dense2_Loop8_secondDense_f_V_3 is 
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


architecture rtl of master_fix_master_fix_Pipeline_Operations_Dense2_Loop8_secondDense_f_V_3 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1100100100000110010", 1 => "0000111010000101010", 
    2 => "1100111111001100110", 3 => "0011010101111010101", 
    4 => "0100001011101100001", 5 => "0001000001010111010", 
    6 => "0111010011100000001", 7 => "1101010110001101000", 
    8 => "1010111011001000111", 9 => "0010010010010010101", 
    10 => "0001100101111011001", 11 => "0110101000001011011", 
    12 => "1011110100101011100", 13 => "1110011011111001100", 
    14 => "1010100111111110111", 15 => "0100111100001010101" );


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

