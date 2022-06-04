// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __cpp_FIR_CFir_int_int_int_c_H__
#define __cpp_FIR_CFir_int_int_int_c_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct cpp_FIR_CFir_int_int_int_c_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 85;
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


   SC_CTOR(cpp_FIR_CFir_int_int_int_c_ram) {
        ram[0] = "0b0000000110001100";
        ram[1] = "0b0000000100100010";
        ram[2] = "0b0000000011001001";
        ram[3] = "0b1111111110111111";
        ram[4] = "0b1111111000100011";
        ram[5] = "0b1111110001011110";
        ram[6] = "0b1111101100001010";
        ram[7] = "0b1111101010111001";
        ram[8] = "0b1111101110110100";
        ram[9] = "0b1111110111001101";
        ram[10] = "0b0000000001011100";
        ram[11] = "0b0000001001110011";
        ram[12] = "0b0000001100111110";
        ram[13] = "0b0000001001011011";
        ram[14] = "0b0000000000011000";
        ram[15] = "0b1111110101101000";
        ram[16] = "0b1111101110000101";
        ram[17] = "0b1111101101110001";
        ram[18] = "0b1111110101110011";
        ram[19] = "0b0000000011100110";
        ram[20] = "0b0000010001100000";
        ram[21] = "0b0000011001000001";
        ram[22] = "0b0000010101101111";
        ram[23] = "0b0000000111101010";
        ram[24] = "0b1111110011110000";
        ram[25] = "0b1111100010100010";
        ram[26] = "0b1111011100100011";
        ram[27] = "0b1111100110100001";
        ram[28] = "0b1111111110011101";
        ram[29] = "0b0000011011100101";
        ram[30] = "0b0000110001000010";
        ram[31] = "0b0000110011000101";
        ram[32] = "0b0000011100011110";
        ram[33] = "0b1111110010001011";
        ram[34] = "0b1111000011010100";
        ram[35] = "0b1110100101000011";
        ram[36] = "0b1110101011011001";
        ram[37] = "0b1111100001100100";
        ram[38] = "0b0001000100100001";
        ram[39] = "0b0011000010000111";
        ram[40] = "0b0100111101100100";
        ram[41] = "0b0110010111101100";
        ram[42] = "0b0110111000101100";
        ram[43] = "0b0110010111101100";
        ram[44] = "0b0100111101100100";
        ram[45] = "0b0011000010000111";
        ram[46] = "0b0001000100100001";
        ram[47] = "0b1111100001100100";
        ram[48] = "0b1110101011011001";
        ram[49] = "0b1110100101000011";
        ram[50] = "0b1111000011010100";
        ram[51] = "0b1111110010001011";
        ram[52] = "0b0000011100011110";
        ram[53] = "0b0000110011000101";
        ram[54] = "0b0000110001000010";
        ram[55] = "0b0000011011100101";
        ram[56] = "0b1111111110011101";
        ram[57] = "0b1111100110100001";
        ram[58] = "0b1111011100100011";
        ram[59] = "0b1111100010100010";
        ram[60] = "0b1111110011110000";
        ram[61] = "0b0000000111101010";
        ram[62] = "0b0000010101101111";
        ram[63] = "0b0000011001000001";
        ram[64] = "0b0000010001100000";
        ram[65] = "0b0000000011100110";
        ram[66] = "0b1111110101110011";
        ram[67] = "0b1111101101110001";
        ram[68] = "0b1111101110000101";
        ram[69] = "0b1111110101101000";
        ram[70] = "0b0000000000011000";
        ram[71] = "0b0000001001011011";
        ram[72] = "0b0000001100111110";
        ram[73] = "0b0000001001110011";
        ram[74] = "0b0000000001011100";
        ram[75] = "0b1111110111001101";
        ram[76] = "0b1111101110110100";
        ram[77] = "0b1111101010111001";
        ram[78] = "0b1111101100001010";
        ram[79] = "0b1111110001011110";
        ram[80] = "0b1111111000100011";
        ram[81] = "0b1111111110111111";
        ram[82] = "0b0000000011001001";
        ram[83] = "0b0000000100100010";
        ram[84] = "0b0000000110001100";


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


SC_MODULE(cpp_FIR_CFir_int_int_int_c) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 85;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


cpp_FIR_CFir_int_int_int_c_ram* meminst;


SC_CTOR(cpp_FIR_CFir_int_int_int_c) {
meminst = new cpp_FIR_CFir_int_int_int_c_ram("cpp_FIR_CFir_int_int_int_c_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~cpp_FIR_CFir_int_int_int_c() {
    delete meminst;
}


};//endmodule
#endif
