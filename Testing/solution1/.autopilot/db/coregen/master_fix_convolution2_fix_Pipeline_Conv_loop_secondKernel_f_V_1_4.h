// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_4_H__
#define __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_4_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 20;
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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_4_ram) {
        ram[0] = "0b00001010011011101011";
        ram[1] = "0b00000010101111001101";
        ram[2] = "0b11101011110111000011";
        ram[3] = "0b11101010111111111011";
        ram[4] = "0b00010000111111101100";
        ram[5] = "0b11100000101001011011";
        ram[6] = "0b00001010101000110100";
        ram[7] = "0b00001010111010101100";
        ram[8] = "0b11100011100100001111";
        ram[9] = "0b11111100111101100000";
        ram[10] = "0b00011001010101101011";
        ram[11] = "0b00011011010111011100";
        ram[12] = "0b10001001111000001001";
        ram[13] = "0b11101011000110010001";
        ram[14] = "0b11100011100110101001";
        ram[15] = "0b00010110010101101010";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_4) {


static const unsigned DataWidth = 20;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_4_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_4) {
meminst = new master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_4_ram("master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_4() {
    delete meminst;
}


};//endmodule
#endif
