-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_4 is 
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


architecture rtl of master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_4 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00001010011011101011", 1 => "00000010101111001101", 
    2 => "11101011110111000011", 3 => "11101010111111111011", 
    4 => "00010000111111101100", 5 => "11100000101001011011", 
    6 => "00001010101000110100", 7 => "00001010111010101100", 
    8 => "11100011100100001111", 9 => "11111100111101100000", 
    10 => "00011001010101101011", 11 => "00011011010111011100", 
    12 => "10001001111000001001", 13 => "11101011000110010001", 
    14 => "11100011100110101001", 15 => "00010110010101101010" );


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

