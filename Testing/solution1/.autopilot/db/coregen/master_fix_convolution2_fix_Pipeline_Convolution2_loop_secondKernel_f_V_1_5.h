// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_5_H__
#define __master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_5_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_5_ram) {
        ram[0] = "0b1100101010101010001";
        ram[1] = "0b1111010001100110100";
        ram[2] = "0b1111010111110101010";
        ram[3] = "0b1110001011100000001";
        ram[4] = "0b1110101001111010100";
        ram[5] = "0b1001101001011010110";
        ram[6] = "0b1100000110100000111";
        ram[7] = "0b0110000010010000101";
        ram[8] = "0b1111100100110010111";
        ram[9] = "0b1101010110100001110";
        ram[10] = "0b0001001100011111011";
        ram[11] = "0b1101100111000011101";
        ram[12] = "0b1101110011110101001";
        ram[13] = "0b0000000011110101010";
        ram[14] = "0b1101111101100100111";
        ram[15] = "0b0100001110010100100";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_5) {


static const unsigned DataWidth = 19;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_5_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_5) {
meminst = new master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_5_ram("master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_1_5() {
    delete meminst;
}


};//endmodule
#endif
