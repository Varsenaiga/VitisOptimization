// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_13_H__
#define __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_13_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_13_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_13_ram) {
        ram[0] = "0b0001111001011000111";
        ram[1] = "0b0000111000001111001";
        ram[2] = "0b1011101010001111001";
        ram[3] = "0b0100100011101100011";
        ram[4] = "0b1101011100101110110";
        ram[5] = "0b0001000001100110110";
        ram[6] = "0b1111001001111110101";
        ram[7] = "0b1111011001010000000";
        ram[8] = "0b1110010100001010011";
        ram[9] = "0b1111000111111011111";
        ram[10] = "0b1111110010000111100";
        ram[11] = "0b0001100011010110010";
        ram[12] = "0b1001011010011001110";
        ram[13] = "0b1010000110110001000";
        ram[14] = "0b0000100000000000010";
        ram[15] = "0b1111111101111100010";


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


SC_MODULE(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_13) {


static const unsigned DataWidth = 19;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_13_ram* meminst;


SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_13) {
meminst = new master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_13_ram("master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_13_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_13() {
    delete meminst;
}


};//endmodule
#endif
