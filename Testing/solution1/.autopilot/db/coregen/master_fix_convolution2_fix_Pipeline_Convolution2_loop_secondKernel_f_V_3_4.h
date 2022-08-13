// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_4_H__
#define __master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_4_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_4_ram) {
        ram[0] = "0b00000000010101000001";
        ram[1] = "0b00010101101111011011";
        ram[2] = "0b00011100011101011001";
        ram[3] = "0b11100001010110101110";
        ram[4] = "0b11001111001100001000";
        ram[5] = "0b00010000100010000001";
        ram[6] = "0b11101010100100111011";
        ram[7] = "0b00000010000011001110";
        ram[8] = "0b00110011101100100001";
        ram[9] = "0b00001101110100100000";
        ram[10] = "0b00001010101001110101";
        ram[11] = "0b11101110000000101101";
        ram[12] = "0b11101100101001100101";
        ram[13] = "0b10000000000110010011";
        ram[14] = "0b11111110101110010001";
        ram[15] = "0b11110001010100101001";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_4) {


static const unsigned DataWidth = 20;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_4_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_4) {
meminst = new master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_4_ram("master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Convolution2_loop_secondKernel_f_V_3_4() {
    delete meminst;
}


};//endmodule
#endif
