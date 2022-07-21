// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_3_H__
#define __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_3_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_3_ram) {
        ram[0] = "0b0000100111111110000";
        ram[1] = "0b1111011011111111111";
        ram[2] = "0b1011000001110011000";
        ram[3] = "0b1100100100001000010";
        ram[4] = "0b1111100011101001100";
        ram[5] = "0b1110010111010001011";
        ram[6] = "0b1110100110001000100";
        ram[7] = "0b1101000101111000000";
        ram[8] = "0b1111000011010110010";
        ram[9] = "0b1111111100001100100";
        ram[10] = "0b1110011100000000001";
        ram[11] = "0b1101101100101011100";
        ram[12] = "0b0000010011001000011";
        ram[13] = "0b1110010010101100000";
        ram[14] = "0b0011110001001100100";
        ram[15] = "0b1111011001100001000";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_3) {


static const unsigned DataWidth = 19;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_3_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_3) {
meminst = new master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_3_ram("master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_2_3() {
    delete meminst;
}


};//endmodule
#endif
