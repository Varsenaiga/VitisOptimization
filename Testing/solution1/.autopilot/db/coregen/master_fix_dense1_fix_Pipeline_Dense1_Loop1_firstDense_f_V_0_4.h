// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_4_H__
#define __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_4_ram : public sc_core::sc_module {

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


   SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_4_ram) {
        ram[0] = "0b0001111010100011111";
        ram[1] = "0b1110100111001111101";
        ram[2] = "0b0011001000010110100";
        ram[3] = "0b1110001010011001011";
        ram[4] = "0b0010110001100010011";
        ram[5] = "0b1100100101100001100";
        ram[6] = "0b0000011000011001111";
        ram[7] = "0b0110100010101111101";
        ram[8] = "0b1010101101111001011";
        ram[9] = "0b1011010100011001111";
        ram[10] = "0b0100110101101010111";
        ram[11] = "0b1110110010111000001";
        ram[12] = "0b1010110001000100011";
        ram[13] = "0b1011011100111000111";
        ram[14] = "0b0101010110010000001";
        ram[15] = "0b1011010010011111100";


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


SC_MODULE(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_4) {


static const unsigned DataWidth = 19;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_4_ram* meminst;


SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_4) {
meminst = new master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_4_ram("master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_0_4() {
    delete meminst;
}


};//endmodule
#endif
