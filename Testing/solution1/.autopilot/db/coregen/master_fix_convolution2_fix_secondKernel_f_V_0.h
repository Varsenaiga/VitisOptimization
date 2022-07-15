// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_secondKernel_f_V_0_H__
#define __master_fix_convolution2_fix_secondKernel_f_V_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_secondKernel_f_V_0_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 20;
  static const unsigned AddressRange = 128;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(master_fix_convolution2_fix_secondKernel_f_V_0_ram) {
        ram[0] = "0b10110111110000101110";
        ram[1] = "0b11001100110000111010";
        ram[2] = "0b10110001001110111100";
        ram[3] = "0b10111011001001000010";
        ram[4] = "0b11010100000010100101";
        ram[5] = "0b11000100101101011000";
        ram[6] = "0b11100001111111001111";
        ram[7] = "0b00000000011000000101";
        ram[8] = "0b00000111001000110001";
        ram[9] = "0b00001101011001100110";
        ram[10] = "0b11111010001010100001";
        ram[11] = "0b00000110100110010110";
        ram[12] = "0b11110000011110100111";
        ram[13] = "0b11111001111000100001";
        ram[14] = "0b11111100111111000110";
        ram[15] = "0b00001111001110001110";
        ram[16] = "0b11110000111101111101";
        ram[17] = "0b11110010111001000110";
        ram[18] = "0b11011011111100011100";
        ram[19] = "0b11110010011110011110";
        ram[20] = "0b11101111000110110000";
        ram[21] = "0b11110100000001000010";
        ram[22] = "0b11111111010101110011";
        ram[23] = "0b11110111000011100101";
        ram[24] = "0b00001000100101100100";
        ram[25] = "0b00111010010001111011";
        ram[26] = "0b11110110000110111110";
        ram[27] = "0b11101010100110100111";
        ram[28] = "0b00001011111101110100";
        ram[29] = "0b11111001010111101111";
        ram[30] = "0b11101010011010100001";
        ram[31] = "0b11111100100110101111";
        ram[32] = "0b11110001010100010110";
        ram[33] = "0b00000101011000111001";
        ram[34] = "0b11111111100101010100";
        ram[35] = "0b11101011011011010001";
        ram[36] = "0b11111111110001111100";
        ram[37] = "0b01100101101000101011";
        ram[38] = "0b00010111000001001101";
        ram[39] = "0b11100010001111110111";
        ram[40] = "0b11101000011010000010";
        ram[41] = "0b11011010111111111001";
        ram[42] = "0b11111111011010001110";
        ram[43] = "0b11100110001011111000";
        ram[44] = "0b11110110101111100111";
        ram[45] = "0b11011010100111010100";
        ram[46] = "0b11011110010101010001";
        ram[47] = "0b00011101101010101110";
        ram[48] = "0b00001110001100010010";
        ram[49] = "0b00001011010111110110";
        ram[50] = "0b00000101101101001101";
        ram[51] = "0b00110111101010110101";
        ram[52] = "0b00001100000101110101";
        ram[53] = "0b11100010000011100011";
        ram[54] = "0b11101001101010110011";
        ram[55] = "0b00010100011110010110";
        ram[56] = "0b11101101110100001010";
        ram[57] = "0b00011000001010111111";
        ram[58] = "0b11110000010101010111";
        ram[59] = "0b11111000011100010111";
        ram[60] = "0b11110101000011011100";
        ram[61] = "0b11111100011111110111";
        ram[62] = "0b00100111010110001011";
        ram[63] = "0b11100111000111001100";
        ram[64] = "0b11110000111111001100";
        ram[65] = "0b11110100110011110000";
        ram[66] = "0b11100100001010100100";
        ram[67] = "0b00000010110010001010";
        ram[68] = "0b11101111000110101101";
        ram[69] = "0b11101011001010010110";
        ram[70] = "0b00010100111111110100";
        ram[71] = "0b00101001001001011101";
        ram[72] = "0b11101011110011000111";
        ram[73] = "0b11100010001100100110";
        ram[74] = "0b10110101001011001110";
        ram[75] = "0b10111111010001001001";
        ram[76] = "0b11010101001100000110";
        ram[77] = "0b11101010010011001111";
        ram[78] = "0b11100110111111111010";
        ram[79] = "0b11011010011011010001";
        ram[80] = "0b11111111111111100011";
        ram[81] = "0b11010110000101110111";
        ram[82] = "0b00001010010100100101";
        ram[83] = "0b11010011010111100111";
        ram[84] = "0b00110000100011000111";
        ram[85] = "0b00000101010000110001";
        ram[86] = "0b00001011101011111111";
        ram[87] = "0b11110000100110010100";
        ram[88] = "0b00000110110110000000";
        ram[89] = "0b11101111000100001110";
        ram[90] = "0b00101110101111101100";
        ram[91] = "0b11110111100100110000";
        ram[92] = "0b00010101001001101101";
        ram[93] = "0b00001100011100010101";
        ram[94] = "0b00000000010000111000";
        ram[95] = "0b00000011101000101000";
        ram[96] = "0b00000100000011011100";
        ram[97] = "0b11110111100111110001";
        ram[98] = "0b00011010110001000110";
        ram[99] = "0b11111110110111110010";
        ram[100] = "0b10011110101100111110";
        ram[101] = "0b11100111011101100011";
        ram[102] = "0b11101110100110111110";
        ram[103] = "0b11111110111000001100";
        ram[104] = "0b01010001011001001101";
        ram[105] = "0b00000100011110100110";
        ram[106] = "0b11101010110111000111";
        ram[107] = "0b11011011001000011000";
        ram[108] = "0b00001011011000011000";
        ram[109] = "0b00000010011101110011";
        ram[110] = "0b11111100000010010001";
        ram[111] = "0b00010000101011101100";
        ram[112] = "0b00100111011000001011";
        ram[113] = "0b00011110111100101010";
        ram[114] = "0b11011110111000101100";
        ram[115] = "0b11011000111001100110";
        ram[116] = "0b11110000111010110001";
        ram[117] = "0b00010110001100111101";
        ram[118] = "0b00000110010011100101";
        ram[119] = "0b00011011100011000111";
        ram[120] = "0b11111000010100010101";
        ram[121] = "0b00000011101100101011";
        ram[122] = "0b00000110001010100111";
        ram[123] = "0b11111111100010110111";
        ram[124] = "0b00011010000101100001";
        ram[125] = "0b11110101010110100001";
        ram[126] = "0b11110100000110001101";
        ram[127] = "0b11110101011011011010";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(master_fix_convolution2_fix_secondKernel_f_V_0) {


static const unsigned DataWidth = 20;
static const unsigned AddressRange = 128;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_secondKernel_f_V_0_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_secondKernel_f_V_0) {
meminst = new master_fix_convolution2_fix_secondKernel_f_V_0_ram("master_fix_convolution2_fix_secondKernel_f_V_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_secondKernel_f_V_0() {
    delete meminst;
}


};//endmodule
#endif
