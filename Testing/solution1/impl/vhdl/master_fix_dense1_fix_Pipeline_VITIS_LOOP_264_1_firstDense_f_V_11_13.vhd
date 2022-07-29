-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_dense1_fix_Pipeline_VITIS_LOOP_264_1_firstDense_f_V_11_13 is 
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


architecture rtl of master_fix_dense1_fix_Pipeline_VITIS_LOOP_264_1_firstDense_f_V_11_13 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1111100001011110000", 1 => "0000110010100011111", 
    2 => "1010010001111000010", 3 => "0010000001001110111", 
    4 => "0000111101001111011", 5 => "0001101010100011011", 
    6 => "0001011111000010101", 7 => "1100110100011110111", 
    8 => "1110111100111100101", 9 => "0001001011101101011", 
    10 => "1101001010110101100", 11 => "1110101111111101110", 
    12 => "0110111110000110111", 13 => "1100111101110001000", 
    14 => "0000110100011111000", 15 => "1100100111111110110" );


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

