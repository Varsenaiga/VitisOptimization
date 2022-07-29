-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_dense1_fix_Pipeline_Dense_Loop1_firstDense_f_V_5_3 is 
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


architecture rtl of master_fix_dense1_fix_Pipeline_Dense_Loop1_firstDense_f_V_5_3 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1110110011000010010", 1 => "1100100111110001001", 
    2 => "1111001110111111101", 3 => "0001010101010000100", 
    4 => "0000011011001100011", 5 => "1011011110000011001", 
    6 => "1100101001011110001", 7 => "0110101001011000111", 
    8 => "0010000100111101000", 9 => "0000110011101110000", 
    10 => "0100000011000101110", 11 => "0001010000100111001", 
    12 => "1110111111001100010", 13 => "1110111000010001100", 
    14 => "1110100010010001000", 15 => "0001110001101101110" );


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

