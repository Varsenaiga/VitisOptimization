// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_secondDense_f_V_H__
#define __master_fix_secondDense_f_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_secondDense_f_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 19;
  static const unsigned AddressRange = 64;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(master_fix_secondDense_f_V_ram) {
        ram[0] = "0b1011101011010001111";
        ram[1] = "0b0101010101000100011";
        ram[2] = "0b1101100000100010011";
        ram[3] = "0b0011011000001110100";
        ram[4] = "0b0101000111010010110";
        ram[5] = "0b0000110010011101101";
        ram[6] = "0b1111110000011110100";
        ram[7] = "0b1101010001011010111";
        ram[8] = "0b1100010001001000011";
        ram[9] = "0b1011000001101100000";
        ram[10] = "0b0001100000000100100";
        ram[11] = "0b0000001110011000110";
        ram[12] = "0b1011101110000011110";
        ram[13] = "0b1101100110111110010";
        ram[14] = "0b1010011001011010011";
        ram[15] = "0b0100011011101110010";
        ram[16] = "0b1011011000001001000";
        ram[17] = "0b1010000001000001101";
        ram[18] = "0b1100101111110001010";
        ram[19] = "0b0011101110100100010";
        ram[20] = "0b0100000011011110000";
        ram[21] = "0b1111111111100000001";
        ram[22] = "0b1011001001101001100";
        ram[23] = "0b1101000000100011001";
        ram[24] = "0b1010111001001010000";
        ram[25] = "0b1011100111011010011";
        ram[26] = "0b0001010000000100111";
        ram[27] = "0b0101111010000010011";
        ram[28] = "0b1100001111110000100";
        ram[29] = "0b1100010110001001000";
        ram[30] = "0b1011001110011111101";
        ram[31] = "0b0100000001101100111";
        ram[32] = "0b1100001011010101101";
        ram[33] = "0b1011111000001011010";
        ram[34] = "0b1100101011011011011";
        ram[35] = "0b0011000011010111011";
        ram[36] = "0b0011111011001101100";
        ram[37] = "0b0000101011101000001";
        ram[38] = "0b0001110110001101001";
        ram[39] = "0b1101100100100011011";
        ram[40] = "0b1010110111101111110";
        ram[41] = "0b1110111001011100001";
        ram[42] = "0b0001111100011010111";
        ram[43] = "0b0101100001000001111";
        ram[44] = "0b1011100110110011001";
        ram[45] = "0b1100111010110111101";
        ram[46] = "0b1011111011111101110";
        ram[47] = "0b0100010001101111101";
        ram[48] = "0b1100100100000110010";
        ram[49] = "0b0000111010000101010";
        ram[50] = "0b1100111111001100110";
        ram[51] = "0b0011010101111010101";
        ram[52] = "0b0100001011101100001";
        ram[53] = "0b0001000001010111010";
        ram[54] = "0b0111010011100000001";
        ram[55] = "0b1101010110001101000";
        ram[56] = "0b1010111011001000111";
        ram[57] = "0b0010010010010010101";
        ram[58] = "0b0001100101111011001";
        ram[59] = "0b0110101000001011011";
        ram[60] = "0b1011110100101011100";
        ram[61] = "0b1110011011111001100";
        ram[62] = "0b1010100111111110111";
        ram[63] = "0b0100111100001010101";


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


SC_MODULE(master_fix_secondDense_f_V) {


static const unsigned DataWidth = 19;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_secondDense_f_V_ram* meminst;


SC_CTOR(master_fix_secondDense_f_V) {
meminst = new master_fix_secondDense_f_V_ram("master_fix_secondDense_f_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_secondDense_f_V() {
    delete meminst;
}


};//endmodule
#endif
