// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_2_H__
#define __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_2_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_2_ram) {
        ram[0] = "0b10110001001110111100";
        ram[1] = "0b11111010001010100001";
        ram[2] = "0b11011011111100011100";
        ram[3] = "0b11110110000110111110";
        ram[4] = "0b11111111100101010100";
        ram[5] = "0b11111111011010001110";
        ram[6] = "0b00000101101101001101";
        ram[7] = "0b11110000010101010111";
        ram[8] = "0b11100100001010100100";
        ram[9] = "0b10110101001011001110";
        ram[10] = "0b00001010010100100101";
        ram[11] = "0b00101110101111101100";
        ram[12] = "0b00011010110001000110";
        ram[13] = "0b11101010110111000111";
        ram[14] = "0b11011110111000101100";
        ram[15] = "0b00000110001010100111";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_2) {


static const unsigned DataWidth = 20;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_2_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_2) {
meminst = new master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_2_ram("master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_0_2() {
    delete meminst;
}


};//endmodule
#endif
