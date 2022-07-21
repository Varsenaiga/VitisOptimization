// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_2_H__
#define __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_2_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 19;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_2_ram) {
        ram[0] = "0b1110100001010111011";
        ram[1] = "0b1110011001101000000";
        ram[2] = "0b1101101010011100010";
        ram[3] = "0b0001011001011101111";
        ram[4] = "0b1110000100101001001";
        ram[5] = "0b0010011010010110101";
        ram[6] = "0b1111010101111011000";
        ram[7] = "0b1101100010010101111";
        ram[8] = "0b1111101010100001101";
        ram[9] = "0b1001111111000101001";
        ram[10] = "0b1100101101000110010";
        ram[11] = "0b0000101111100111010";
        ram[12] = "0b0010100011011101100";
        ram[13] = "0b0000101110110111110";
        ram[14] = "0b0000110111011010001";
        ram[15] = "0b1111001000111100000";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_2) {


static const unsigned DataWidth = 19;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_2_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_2) {
meminst = new master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_2_ram("master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_2() {
    delete meminst;
}


};//endmodule
#endif
