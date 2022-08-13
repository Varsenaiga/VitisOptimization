// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_7_H__
#define __master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_7_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_7_ram) {
        ram[0] = "0b0000000011000000101";
        ram[1] = "0b0001111001110001110";
        ram[2] = "0b1110111000011100101";
        ram[3] = "0b1111100100110101111";
        ram[4] = "0b1100010001111110111";
        ram[5] = "0b0011101101010101110";
        ram[6] = "0b0010100011110010110";
        ram[7] = "0b1100111000111001100";
        ram[8] = "0b0101001001001011101";
        ram[9] = "0b1011010011011010001";
        ram[10] = "0b1110000100110010100";
        ram[11] = "0b0000011101000101000";
        ram[12] = "0b1111110111000001100";
        ram[13] = "0b0010000101011101100";
        ram[14] = "0b0011011100011000111";
        ram[15] = "0b1110101011011011010";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_7) {


static const unsigned DataWidth = 19;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_7_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_7) {
meminst = new master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_7_ram("master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_0_7() {
    delete meminst;
}


};//endmodule
#endif
