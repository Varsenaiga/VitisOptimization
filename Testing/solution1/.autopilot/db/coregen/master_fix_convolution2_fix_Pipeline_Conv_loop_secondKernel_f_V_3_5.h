// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_5_H__
#define __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_5_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_5_ram) {
        ram[0] = "0b11110101011000000110";
        ram[1] = "0b11111100111001000011";
        ram[2] = "0b11111101110101001001";
        ram[3] = "0b10101000111100101000";
        ram[4] = "0b11101010100000010101";
        ram[5] = "0b00100000100000001101";
        ram[6] = "0b11101111001101110000";
        ram[7] = "0b11111010111000101111";
        ram[8] = "0b11010011000011011101";
        ram[9] = "0b11111000010111111111";
        ram[10] = "0b11101100000010011101";
        ram[11] = "0b00010001100110000111";
        ram[12] = "0b00010101110000101001";
        ram[13] = "0b10001011000110101111";
        ram[14] = "0b11011110111111110100";
        ram[15] = "0b11111001010011101010";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_5) {


static const unsigned DataWidth = 20;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_5_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_5) {
meminst = new master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_5_ram("master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_5() {
    delete meminst;
}


};//endmodule
#endif
