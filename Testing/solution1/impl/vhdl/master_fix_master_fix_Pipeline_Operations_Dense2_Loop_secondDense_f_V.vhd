-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity master_fix_master_fix_Pipeline_Operations_Dense2_Loop_secondDense_f_V is 
    generic(
             DataWidth     : integer := 19; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 64
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          address1      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of master_fix_master_fix_Pipeline_Operations_Dense2_Loop_secondDense_f_V is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1011101011010001111", 1 => "0101010101000100011", 
    2 => "1101100000100010011", 3 => "0011011000001110100", 
    4 => "0101000111010010110", 5 => "0000110010011101101", 
    6 => "1111110000011110100", 7 => "1101010001011010111", 
    8 => "1100010001001000011", 9 => "1011000001101100000", 
    10 => "0001100000000100100", 11 => "0000001110011000110", 
    12 => "1011101110000011110", 13 => "1101100110111110010", 
    14 => "1010011001011010011", 15 => "0100011011101110010", 
    16 => "1011011000001001000", 17 => "1010000001000001101", 
    18 => "1100101111110001010", 19 => "0011101110100100010", 
    20 => "0100000011011110000", 21 => "1111111111100000001", 
    22 => "1011001001101001100", 23 => "1101000000100011001", 
    24 => "1010111001001010000", 25 => "1011100111011010011", 
    26 => "0001010000000100111", 27 => "0101111010000010011", 
    28 => "1100001111110000100", 29 => "1100010110001001000", 
    30 => "1011001110011111101", 31 => "0100000001101100111", 
    32 => "1100001011010101101", 33 => "1011111000001011010", 
    34 => "1100101011011011011", 35 => "0011000011010111011", 
    36 => "0011111011001101100", 37 => "0000101011101000001", 
    38 => "0001110110001101001", 39 => "1101100100100011011", 
    40 => "1010110111101111110", 41 => "1110111001011100001", 
    42 => "0001111100011010111", 43 => "0101100001000001111", 
    44 => "1011100110110011001", 45 => "1100111010110111101", 
    46 => "1011111011111101110", 47 => "0100010001101111101", 
    48 => "1100100100000110010", 49 => "0000111010000101010", 
    50 => "1100111111001100110", 51 => "0011010101111010101", 
    52 => "0100001011101100001", 53 => "0001000001010111010", 
    54 => "0111010011100000001", 55 => "1101010110001101000", 
    56 => "1010111011001000111", 57 => "0010010010010010101", 
    58 => "0001100101111011001", 59 => "0110101000001011011", 
    60 => "1011110100101011100", 61 => "1110011011111001100", 
    62 => "1010100111111110111", 63 => "0100111100001010101" );


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

memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem(CONV_INTEGER(address1_tmp)); 
        end if;
    end if;
end process;

end rtl;

