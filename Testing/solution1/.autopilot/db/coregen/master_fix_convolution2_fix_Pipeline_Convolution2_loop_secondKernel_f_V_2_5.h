// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_5_H__
#define __master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_5_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_5_ram) {
        ram[0] = "0b11101000101000110000";
        ram[1] = "0b00000001100000010101";
        ram[2] = "0b00000001110000010000";
        ram[3] = "0b10101011010110100101";
        ram[4] = "0b11110100111000001011";
        ram[5] = "0b11100011100001010111";
        ram[6] = "0b11011111010110001011";
        ram[7] = "0b00001000000110100010";
        ram[8] = "0b11110010110001000101";
        ram[9] = "0b11110000000110001111";
        ram[10] = "0b11110011011101000110";
        ram[11] = "0b00010001110000000111";
        ram[12] = "0b11100010011100101100";
        ram[13] = "0b11110000110010000111";
        ram[14] = "0b11101011000110000111";
        ram[15] = "0b00000001001101001010";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_5) {


static const unsigned DataWidth = 20;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_5_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_5) {
meminst = new master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_5_ram("master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_2_5() {
    delete meminst;
}


};//endmodule
#endif
