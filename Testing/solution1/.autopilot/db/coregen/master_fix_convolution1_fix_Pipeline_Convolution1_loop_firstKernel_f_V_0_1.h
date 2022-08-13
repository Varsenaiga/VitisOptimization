// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_1_H__
#define __master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_1_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 19;
  static const unsigned AddressRange = 8;
  static const unsigned AddressWidth = 3;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_1_ram) {
        ram[0] = "0b1111111010000110010";
        ram[1] = "0b1101011011011000111";
        ram[2] = "0b1111000101011111100";
        ram[3] = "0b0011100001000110110";
        ram[4] = "0b1101100111101101101";
        ram[5] = "0b1011101111111011001";
        ram[6] = "0b0000110011010111000";
        ram[7] = "0b1110110000110110110";


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


SC_MODULE(master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_1) {


static const unsigned DataWidth = 19;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_1_ram* meminst;


SC_CTOR(master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_1) {
meminst = new master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_1_ram("master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution1_fix_Pipeline_Convolution1_loop_firstKernel_f_V_0_1() {
    delete meminst;
}


};//endmodule
#endif
