// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_6_H__
#define __master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_6_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 18;
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


   SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_6_ram) {
        ram[0] = "0b110100010001100110";
        ram[1] = "0b101110011100101101";
        ram[2] = "0b101111110001000110";
        ram[3] = "0b001101100000011110";
        ram[4] = "0b110000010101101011";
        ram[5] = "0b001010100000011001";
        ram[6] = "0b111110111010111100";
        ram[7] = "0b110101101100001111";
        ram[8] = "0b111100001111111100";
        ram[9] = "0b101100101001110101";
        ram[10] = "0b000001110001101001";
        ram[11] = "0b000100001111011100";
        ram[12] = "0b111000111000101000";
        ram[13] = "0b101010100000000010";
        ram[14] = "0b111011110001100000";
        ram[15] = "0b000111101010010110";


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


SC_MODULE(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_6) {


static const unsigned DataWidth = 18;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_6_ram* meminst;


SC_CTOR(master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_6) {
meminst = new master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_6_ram("master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~master_fix_dense1_fix_Pipeline_Dense1_Loop1_firstDense_f_V_6_6() {
    delete meminst;
}


};//endmodule
#endif
