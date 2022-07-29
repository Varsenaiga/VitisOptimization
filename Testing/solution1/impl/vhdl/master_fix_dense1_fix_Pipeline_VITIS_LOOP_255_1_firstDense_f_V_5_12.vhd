-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_dense1_fix_Pipeline_VITIS_LOOP_255_1_firstDense_f_V_5_12 is 
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


architecture rtl of master_fix_dense1_fix_Pipeline_VITIS_LOOP_255_1_firstDense_f_V_5_12 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000111001110001001", 1 => "11110001100100010011", 
    2 => "00001101110110001011", 3 => "10111000101110001000", 
    4 => "11101101011000110101", 5 => "00001011101010000000", 
    6 => "11110011100100110111", 7 => "10101001010001000000", 
    8 => "11111010100100011011", 9 => "00010001000110011111", 
    10 => "11000111000011101011", 11 => "00011011110000111111", 
    12 => "00100001001111111011", 13 => "11111010111110010011", 
    14 => "11101100110010011000", 15 => "00001101100010110010" );


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

