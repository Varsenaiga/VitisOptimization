// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution1_fix_Pipeline_Conv_loop_firstBias_f_V_H__
#define __master_fix_convolution1_fix_Pipeline_Conv_loop_firstBias_f_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution1_fix_Pipeline_Conv_loop_firstBias_f_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 22;
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


   SC_CTOR(master_fix_convolution1_fix_Pipeline_Conv_loop_firstBias_f_V_ram) {
        ram[0] = "0b1010000010001101000100";
        ram[1] = "0b0010010010111001110010";
        ram[2] = "0b1100100001111110111011";
        ram[3] = "0b0000010011100100100000";
        ram[4] = "0b1011110100100000010111";
        ram[5] = "0b1100110100010101001011";
        ram[6] = "0b1110001010110010101101";
        ram[7] = "0b1100011011111101000011";


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


SC_MODULE(master_fix_convolution1_fix_Pipeline_Conv_loop_firstBias_f_V) {


static const unsigned DataWidth = 22;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution1_fix_Pipeline_Conv_loop_firstBias_f_V_ram* meminst;


SC_CTOR(master_fix_convolution1_fix_Pipeline_Conv_loop_firstBias_f_V) {
meminst = new master_fix_convolution1_fix_Pipeline_Conv_loop_firstBias_f_V_ram("master_fix_convolution1_fix_Pipeline_Conv_loop_firstBias_f_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution1_fix_Pipeline_Conv_loop_firstBias_f_V() {
    delete meminst;
}


};//endmodule
#endif
