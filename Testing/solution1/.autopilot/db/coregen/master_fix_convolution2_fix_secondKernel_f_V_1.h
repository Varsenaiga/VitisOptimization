// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_secondKernel_f_V_1_H__
#define __master_fix_convolution2_fix_secondKernel_f_V_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_secondKernel_f_V_1_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_convolution2_fix_secondKernel_f_V_1_ram) {
        ram[0] = "0b11100101010001100010";
        ram[1] = "0b00111011010000101111";
        ram[2] = "0b11011111111000010101";
        ram[3] = "0b00000000001011000101";
        ram[4] = "0b00001010011011101011";
        ram[5] = "0b11100101010101010001";
        ram[6] = "0b11001000111001111000";
        ram[7] = "0b00101111100110101100";
        ram[8] = "0b11111101100011001010";
        ram[9] = "0b00101100000001101110";
        ram[10] = "0b11110111011111100000";
        ram[11] = "0b00110001011001111100";
        ram[12] = "0b00000010101111001101";
        ram[13] = "0b11111010001100110100";
        ram[14] = "0b11111011110111001000";
        ram[15] = "0b11101100011111111001";
        ram[16] = "0b00001001001100100100";
        ram[17] = "0b11110011101110011101";
        ram[18] = "0b11100001101001000100";
        ram[19] = "0b11010100110010011101";
        ram[20] = "0b11101011110111000011";
        ram[21] = "0b11111010111110101010";
        ram[22] = "0b00001001000011101010";
        ram[23] = "0b00001101110101001000";
        ram[24] = "0b00010100000101010101";
        ram[25] = "0b00100101010001111010";
        ram[26] = "0b11111110110110111100";
        ram[27] = "0b00001100111100100001";
        ram[28] = "0b11101010111111111011";
        ram[29] = "0b11110001011100000001";
        ram[30] = "0b11011111001101011000";
        ram[31] = "0b00001111001101000100";
        ram[32] = "0b11101110001101001101";
        ram[33] = "0b00000111110101111110";
        ram[34] = "0b11110101110110001110";
        ram[35] = "0b11101010001100100001";
        ram[36] = "0b00010000111111101100";
        ram[37] = "0b11110101001111010100";
        ram[38] = "0b11110000100111001010";
        ram[39] = "0b11110101001111010100";
        ram[40] = "0b00000010001011101011";
        ram[41] = "0b00100011010111101110";
        ram[42] = "0b00001001010100111001";
        ram[43] = "0b11100110100000001100";
        ram[44] = "0b11100000101001011011";
        ram[45] = "0b11001101001011010110";
        ram[46] = "0b10111101111101111000";
        ram[47] = "0b00100000101011010101";
        ram[48] = "0b00011000010111100010";
        ram[49] = "0b00000101011001000011";
        ram[50] = "0b11111111110100100001";
        ram[51] = "0b11111001011000110110";
        ram[52] = "0b00001010101000110100";
        ram[53] = "0b11100000110100000111";
        ram[54] = "0b11100001110010011011";
        ram[55] = "0b11111010101000011111";
        ram[56] = "0b11110000111010010110";
        ram[57] = "0b00001000001001101000";
        ram[58] = "0b00000111010010011010";
        ram[59] = "0b11101011010011011110";
        ram[60] = "0b00001010111010101100";
        ram[61] = "0b00110000010010000101";
        ram[62] = "0b11111001000100011110";
        ram[63] = "0b11010110011010011101";
        ram[64] = "0b00011010011010001100";
        ram[65] = "0b00001010000011011000";
        ram[66] = "0b11011100111110010100";
        ram[67] = "0b11110010100110110100";
        ram[68] = "0b11100011100100001111";
        ram[69] = "0b11111100100110010111";
        ram[70] = "0b00000101101111010101";
        ram[71] = "0b11101000100000101110";
        ram[72] = "0b00010101110101010101";
        ram[73] = "0b01000000100011001101";
        ram[74] = "0b11011100000001001101";
        ram[75] = "0b00010100100110100100";
        ram[76] = "0b11111100111101100000";
        ram[77] = "0b11101010110100001110";
        ram[78] = "0b11100011100111000100";
        ram[79] = "0b11111010111010000111";
        ram[80] = "0b11111100100011111011";
        ram[81] = "0b11110010001110000010";
        ram[82] = "0b11111000010100100101";
        ram[83] = "0b11010101110101101100";
        ram[84] = "0b00011001010101101011";
        ram[85] = "0b00001001100011111011";
        ram[86] = "0b00000101110011101011";
        ram[87] = "0b00000111001111100000";
        ram[88] = "0b00000010101100010110";
        ram[89] = "0b11011100101111110100";
        ram[90] = "0b00000110000101011000";
        ram[91] = "0b00000100011100011101";
        ram[92] = "0b00011011010111011100";
        ram[93] = "0b11101100111000011101";
        ram[94] = "0b11111111001101111110";
        ram[95] = "0b11101110100011100111";
        ram[96] = "0b11111001110101100110";
        ram[97] = "0b11111001101110000010";
        ram[98] = "0b00000010001100100110";
        ram[99] = "0b00010001000000111101";
        ram[100] = "0b10001001111000001001";
        ram[101] = "0b11101110011110101001";
        ram[102] = "0b11111111101011100001";
        ram[103] = "0b00000001100111100111";
        ram[104] = "0b11110101001010110101";
        ram[105] = "0b00011011100000111011";
        ram[106] = "0b11111010110110011010";
        ram[107] = "0b11101001001001100100";
        ram[108] = "0b11101011000110010001";
        ram[109] = "0b00000000011110101010";
        ram[110] = "0b11111010100110100110";
        ram[111] = "0b00000001100011100001";
        ram[112] = "0b00000110011101010011";
        ram[113] = "0b00001000110101000000";
        ram[114] = "0b11100010111001000000";
        ram[115] = "0b11100000011000111101";
        ram[116] = "0b11100011100110101001";
        ram[117] = "0b11101111101100100111";
        ram[118] = "0b11101001001110011110";
        ram[119] = "0b00000101101100110000";
        ram[120] = "0b11110001111101110010";
        ram[121] = "0b00000010001111010100";
        ram[122] = "0b00001011100101111110";
        ram[123] = "0b00000110100000001001";
        ram[124] = "0b00010110010101101010";
        ram[125] = "0b00100001110010100100";
        ram[126] = "0b00010001001100000111";
        ram[127] = "0b11101110101101000000";


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


SC_MODULE(master_fix_convolution2_fix_secondKernel_f_V_1) {


static const unsigned DataWidth = 20;
static const unsigned AddressRange = 128;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_secondKernel_f_V_1_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_secondKernel_f_V_1) {
meminst = new master_fix_convolution2_fix_secondKernel_f_V_1_ram("master_fix_convolution2_fix_secondKernel_f_V_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_secondKernel_f_V_1() {
    delete meminst;
}


};//endmodule
#endif
