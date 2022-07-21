// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_0_H__
#define __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_0_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 18;
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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_0_ram) {
        ram[0] = "0b100101010001100010";
        ram[1] = "0b111101100011001010";
        ram[2] = "0b001001001100100100";
        ram[3] = "0b010100000101010101";
        ram[4] = "0b101110001101001101";
        ram[5] = "0b000010001011101011";
        ram[6] = "0b011000010111100010";
        ram[7] = "0b110000111010010110";
        ram[8] = "0b011010011010001100";
        ram[9] = "0b010101110101010101";
        ram[10] = "0b111100100011111011";
        ram[11] = "0b000010101100010110";
        ram[12] = "0b111001110101100110";
        ram[13] = "0b110101001010110101";
        ram[14] = "0b000110011101010011";
        ram[15] = "0b110001111101110010";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_0) {


static const unsigned DataWidth = 18;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_0_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_0) {
meminst = new master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_0_ram("master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_1_0() {
    delete meminst;
}


};//endmodule
#endif
