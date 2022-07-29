-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_dense1_fix_Pipeline_VITIS_LOOP_255_1_firstDense_f_V_2_0 is 
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


architecture rtl of master_fix_dense1_fix_Pipeline_VITIS_LOOP_255_1_firstDense_f_V_2_0 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11100101001110001100", 1 => "11110000101110100100", 
    2 => "00001111010100100000", 3 => "11011010101001010100", 
    4 => "00010110101100100000", 5 => "11000101110110000110", 
    6 => "11111011011100000001", 7 => "10101001011000100110", 
    8 => "11001000011100111010", 9 => "11100011011011111111", 
    10 => "11010100100010111110", 11 => "11110010010110010100", 
    12 => "00001101011010000100", 13 => "11101001110011001111", 
    14 => "11100010111101101100", 15 => "00000000111111111111" );


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

