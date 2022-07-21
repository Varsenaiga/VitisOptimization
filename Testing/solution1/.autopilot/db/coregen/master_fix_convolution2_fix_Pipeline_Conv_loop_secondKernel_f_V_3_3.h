// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_3_H__
#define __master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_3_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_3_ram) {
        ram[0] = "0b000100000110011011";
        ram[1] = "0b000011111000110011";
        ram[2] = "0b100101111011000110";
        ram[3] = "0b001000000100001001";
        ram[4] = "0b000111000101111001";
        ram[5] = "0b000100000000111010";
        ram[6] = "0b101010111110110001";
        ram[7] = "0b101000011111000001";
        ram[8] = "0b101110001000000111";
        ram[9] = "0b111101100000100111";
        ram[10] = "0b001111001000000100";
        ram[11] = "0b100001101101001000";
        ram[12] = "0b110100100011101100";
        ram[13] = "0b001011110001001110";
        ram[14] = "0b001110110010011011";
        ram[15] = "0b010010011110101010";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_3) {


static const unsigned DataWidth = 18;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_3_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_3) {
meminst = new master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_3_ram("master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Conv_loop_secondKernel_f_V_3_3() {
    delete meminst;
}


};//endmodule
#endif
