-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_dense1_fix_Pipeline_VITIS_LOOP_264_1_firstDense_f_V_6_14 is 
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


architecture rtl of master_fix_dense1_fix_Pipeline_VITIS_LOOP_264_1_firstDense_f_V_6_14 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0010001100111111011", 1 => "0000101010000100001", 
    2 => "1101011110111100100", 3 => "0000100010000001101", 
    4 => "1111010100110110110", 5 => "1110010111000010101", 
    6 => "1111010010010010110", 7 => "0010001111000010100", 
    8 => "1111001100000100001", 9 => "0000011000011100101", 
    10 => "0001110101110111110", 11 => "1101011101111101100", 
    12 => "1100010110000110111", 13 => "1010001011010001010", 
    14 => "1101001110110011000", 15 => "0010011111110000101" );


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

