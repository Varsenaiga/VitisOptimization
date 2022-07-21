// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_2_H__
#define __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_2_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_2_ram) {
        ram[0] = "0b0001001110010001010";
        ram[1] = "0b1111110011011000111";
        ram[2] = "0b1101101001110101010";
        ram[3] = "0b1111000000101101111";
        ram[4] = "0b1101000110001010111";
        ram[5] = "0b1110011000111100110";
        ram[6] = "0b1101011011100111010";
        ram[7] = "0b1111011101001100011";
        ram[8] = "0b0011011000100100011";
        ram[9] = "0b1010000010100111000";
        ram[10] = "0b0000001100000000100";
        ram[11] = "0b1110010011000111111";
        ram[12] = "0b1111000001100110010";
        ram[13] = "0b0001000010100110111";
        ram[14] = "0b0000000110101011111";
        ram[15] = "0b0001110000111011011";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_2) {


static const unsigned DataWidth = 19;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_2_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_2) {
meminst = new master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_2_ram("master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_2() {
    delete meminst;
}


};//endmodule
#endif
