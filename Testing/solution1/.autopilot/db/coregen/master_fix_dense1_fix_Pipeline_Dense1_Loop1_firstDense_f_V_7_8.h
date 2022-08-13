// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_8_H__
#define __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_8_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_8_ram) {
        ram[0] = "0b1110111111101001110";
        ram[1] = "0b1110000001110110111";
        ram[2] = "0b0101000001010000101";
        ram[3] = "0b1001111011001010101";
        ram[4] = "0b0011001011000111111";
        ram[5] = "0b1111110001010111111";
        ram[6] = "0b1101100011111110100";
        ram[7] = "0b1111010010100001011";
        ram[8] = "0b0100010001011111001";
        ram[9] = "0b1101111111100000100";
        ram[10] = "0b1110110111101111100";
        ram[11] = "0b1101111010100111110";
        ram[12] = "0b1011000110101101000";
        ram[13] = "0b1101000000011101010";
        ram[14] = "0b1111000101010110000";
        ram[15] = "0b0000010010010000011";


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


SC_MODULE(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_8) {


static const unsigned DataWidth = 19;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_8_ram* meminst;


SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_8) {
meminst = new master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_8_ram("master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_7_8() {
    delete meminst;
}


};//endmodule
#endif
