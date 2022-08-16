-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_master_fix_Pipeline_Operations_Dense2_Loop7_secondDense_f_V_2 is 
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


architecture rtl of master_fix_master_fix_Pipeline_Operations_Dense2_Loop7_secondDense_f_V_2 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1100001011010101101", 1 => "1011111000001011010", 
    2 => "1100101011011011011", 3 => "0011000011010111011", 
    4 => "0011111011001101100", 5 => "0000101011101000001", 
    6 => "0001110110001101001", 7 => "1101100100100011011", 
    8 => "1010110111101111110", 9 => "1110111001011100001", 
    10 => "0001111100011010111", 11 => "0101100001000001111", 
    12 => "1011100110110011001", 13 => "1100111010110111101", 
    14 => "1011111011111101110", 15 => "0100010001101111101" );


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

