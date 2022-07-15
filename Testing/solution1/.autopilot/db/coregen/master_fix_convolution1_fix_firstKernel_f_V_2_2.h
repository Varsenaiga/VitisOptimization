// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution1_fix_firstKernel_f_V_2_2_H__
#define __master_fix_convolution1_fix_firstKernel_f_V_2_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution1_fix_firstKernel_f_V_2_2_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_convolution1_fix_firstKernel_f_V_2_2_ram) {
        ram[0] = "0b000101010101010010";
        ram[1] = "0b000101100010111010";
        ram[2] = "0b111011111000011100";
        ram[3] = "0b110101000010001111";
        ram[4] = "0b101010100100101001";
        ram[5] = "0b101100000001111100";
        ram[6] = "0b101001111010000010";
        ram[7] = "0b010100010010100011";


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


SC_MODULE(master_fix_convolution1_fix_firstKernel_f_V_2_2) {


static const unsigned DataWidth = 18;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution1_fix_firstKernel_f_V_2_2_ram* meminst;


SC_CTOR(master_fix_convolution1_fix_firstKernel_f_V_2_2) {
meminst = new master_fix_convolution1_fix_firstKernel_f_V_2_2_ram("master_fix_convolution1_fix_firstKernel_f_V_2_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution1_fix_firstKernel_f_V_2_2() {
    delete meminst;
}


};//endmodule
#endif
