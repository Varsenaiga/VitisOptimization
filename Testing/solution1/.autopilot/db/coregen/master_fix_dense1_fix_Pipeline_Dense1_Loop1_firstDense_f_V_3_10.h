// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_10_H__
#define __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_10_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_10_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_10_ram) {
        ram[0] = "0b00000101110010100001";
        ram[1] = "0b11101001001011010100";
        ram[2] = "0b11111111110101110011";
        ram[3] = "0b00001010010011110010";
        ram[4] = "0b11111110100111110100";
        ram[5] = "0b00011111110000000111";
        ram[6] = "0b11110100111111100010";
        ram[7] = "0b11101101011100110010";
        ram[8] = "0b11111111111111001010";
        ram[9] = "0b00000000101010110100";
        ram[10] = "0b10111111101010110001";
        ram[11] = "0b00000001111100100010";
        ram[12] = "0b11110110000101101111";
        ram[13] = "0b11111001011000100100";
        ram[14] = "0b10111100100100101011";
        ram[15] = "0b00001101011110111010";


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


SC_MODULE(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_10) {


static const unsigned DataWidth = 20;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_10_ram* meminst;


SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_10) {
meminst = new master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_10_ram("master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_10_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_3_10() {
    delete meminst;
}


};//endmodule
#endif
