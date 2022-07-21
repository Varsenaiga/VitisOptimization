// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_1_H__
#define __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_1_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 21;
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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_1_ram) {
        ram[0] = "0b000001011000111010011";
        ram[1] = "0b111111001010111110010";
        ram[2] = "0b111111110011101000110";
        ram[3] = "0b000011111001000111101";
        ram[4] = "0b000001000011111111010";
        ram[5] = "0b000000101010011111000";
        ram[6] = "0b111110000110100101110";
        ram[7] = "0b000000010100010110110";
        ram[8] = "0b111111110110110100010";
        ram[9] = "0b000110000100010001011";
        ram[10] = "0b111111001111011010101";
        ram[11] = "0b111011110000101000111";
        ram[12] = "0b111101000010111011010";
        ram[13] = "0b000011001111111111011";
        ram[14] = "0b101110111001101111110";
        ram[15] = "0b111110101010001001101";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_1) {


static const unsigned DataWidth = 21;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_1_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_1) {
meminst = new master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_1_ram("master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_1() {
    delete meminst;
}


};//endmodule
#endif
