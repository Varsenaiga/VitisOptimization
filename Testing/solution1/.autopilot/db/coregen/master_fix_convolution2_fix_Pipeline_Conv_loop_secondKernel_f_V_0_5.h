// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_5_H__
#define __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_5_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_5_ram) {
        ram[0] = "0b11000100101101011000";
        ram[1] = "0b11111001111000100001";
        ram[2] = "0b11110100000001000010";
        ram[3] = "0b11111001010111101111";
        ram[4] = "0b01100101101000101011";
        ram[5] = "0b11011010100111010100";
        ram[6] = "0b11100010000011100011";
        ram[7] = "0b11111100011111110111";
        ram[8] = "0b11101011001010010110";
        ram[9] = "0b11101010010011001111";
        ram[10] = "0b00000101010000110001";
        ram[11] = "0b00001100011100010101";
        ram[12] = "0b11100111011101100011";
        ram[13] = "0b00000010011101110011";
        ram[14] = "0b00010110001100111101";
        ram[15] = "0b11110101010110100001";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_5) {


static const unsigned DataWidth = 20;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_5_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_5) {
meminst = new master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_5_ram("master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_5() {
    delete meminst;
}


};//endmodule
#endif
