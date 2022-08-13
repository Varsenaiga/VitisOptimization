// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_2_H__
#define __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_2_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_2_ram) {
        ram[0] = "0b11111011100101001111";
        ram[1] = "0b00000101101010010111";
        ram[2] = "0b00101101101101111001";
        ram[3] = "0b11000110100010001100";
        ram[4] = "0b10011111001000000111";
        ram[5] = "0b00001101000110000110";
        ram[6] = "0b11111101101010000101";
        ram[7] = "0b00100010110111101000";
        ram[8] = "0b00011111001111001010";
        ram[9] = "0b00001110010011010100";
        ram[10] = "0b00100100001010110010";
        ram[11] = "0b10111011111011110010";
        ram[12] = "0b11110000001101011001";
        ram[13] = "0b11110000011011001100";
        ram[14] = "0b00001100110010000001";
        ram[15] = "0b00010101000000000010";


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


SC_MODULE(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_2) {


static const unsigned DataWidth = 20;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_2_ram* meminst;


SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_2) {
meminst = new master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_2_ram("master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_11_2() {
    delete meminst;
}


};//endmodule
#endif
