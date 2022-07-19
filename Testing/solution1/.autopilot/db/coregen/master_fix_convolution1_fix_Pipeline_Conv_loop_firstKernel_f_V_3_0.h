// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_0_H__
#define __master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_0_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 18;
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


   SC_CTOR(master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_0_ram) {
        ram[0] = "0b001001001010100111";
        ram[1] = "0b101001010100111111";
        ram[2] = "0b001000111111100000";
        ram[3] = "0b011000010111111001";
        ram[4] = "0b111110000001001111";
        ram[5] = "0b000011011000110100";
        ram[6] = "0b111110011111110111";
        ram[7] = "0b111111111111110110";


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


SC_MODULE(master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_0) {


static const unsigned DataWidth = 18;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_0_ram* meminst;


SC_CTOR(master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_0) {
meminst = new master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_0_ram("master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution1_fix_Pipeline_Conv_loop_firstKernel_f_V_3_0() {
    delete meminst;
}


};//endmodule
#endif
