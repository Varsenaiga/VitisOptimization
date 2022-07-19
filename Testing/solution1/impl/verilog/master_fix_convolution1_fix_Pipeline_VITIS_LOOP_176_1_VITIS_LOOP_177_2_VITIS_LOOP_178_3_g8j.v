// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module master_fix_convolution1_fix_Pipeline_VITIS_LOOP_176_1_VITIS_LOOP_177_2_VITIS_LOOP_178_3_g8j (
address0, ce0, q0, reset,clk);

parameter DataWidth = 20;
parameter AddressWidth = 3;
parameter AddressRange = 8;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./master_fix_convolution1_fix_Pipeline_VITIS_LOOP_176_1_VITIS_LOOP_177_2_VITIS_LOOP_178_3_g8j.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



endmodule

