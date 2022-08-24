// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V_H__
#define __master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 21;
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


   SC_CTOR(master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V_ram) {
        ram[0] = "0b010010011101010011011";
        ram[1] = "0b111101011110001001100";
        ram[2] = "0b000000101111011110010";
        ram[3] = "0b110100110000010010001";
        ram[4] = "0b110100000101100010110";
        ram[5] = "0b010100110010000001100";
        ram[6] = "0b111101011010101100011";
        ram[7] = "0b010010011010111100111";
        ram[8] = "0b111001110100101110111";
        ram[9] = "0b000010110011101010101";
        ram[10] = "0b001010000001100110110";
        ram[11] = "0b111100000001110110101";
        ram[12] = "0b111001001101101000010";
        ram[13] = "0b011001000011001001110";
        ram[14] = "0b111110111011011101100";
        ram[15] = "0b000100010010100100100";


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


SC_MODULE(master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V) {


static const unsigned DataWidth = 21;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V_ram* meminst;


SC_CTOR(master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V) {
meminst = new master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V_ram("master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_convolution2_fix_Pipeline_Initialization_Conv2_Loop_thirdBias_f_V() {
    delete meminst;
}


};//endmodule
#endif
