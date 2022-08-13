// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_9_H__
#define __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_9_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_9_ram) {
        ram[0] = "0b001011010111101100000";
        ram[1] = "0b000010000100001100010";
        ram[2] = "0b101111011011000111101";
        ram[3] = "0b111111001110111110111";
        ram[4] = "0b101110010000010000110";
        ram[5] = "0b001000110101001010100";
        ram[6] = "0b000000000100001111010";
        ram[7] = "0b000000001000111100110";
        ram[8] = "0b111111011001110001111";
        ram[9] = "0b111111110010011110010";
        ram[10] = "0b111111010011100110111";
        ram[11] = "0b000111000100000010100";
        ram[12] = "0b111101110011010101110";
        ram[13] = "0b000110110110110000000";
        ram[14] = "0b000000010101001110100";
        ram[15] = "0b000101011101000000100";


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


SC_MODULE(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_9) {


static const unsigned DataWidth = 21;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_9_ram* meminst;


SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_9) {
meminst = new master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_9_ram("master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_9() {
    delete meminst;
}


};//endmodule
#endif
