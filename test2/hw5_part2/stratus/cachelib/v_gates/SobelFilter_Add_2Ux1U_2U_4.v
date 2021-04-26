`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 26 2021 12:38:17 CST (Apr 26 2021 04:38:17 UTC)

module SobelFilter_Add_2Ux1U_2U_4(in2, in1, out1);
  input [1:0] in2;
  input in1;
  output [1:0] out1;
  wire [1:0] in2;
  wire in1;
  wire [1:0] out1;
  wire inc_add_23_2_n_0;
  XNOR2X1 inc_add_23_2_g14(.A (in2[1]), .B (inc_add_23_2_n_0), .Y
       (out1[1]));
  XOR2XL inc_add_23_2_g15(.A (in2[0]), .B (in1), .Y (out1[0]));
  NAND2X1 inc_add_23_2_g16(.A (in2[0]), .B (in1), .Y
       (inc_add_23_2_n_0));
endmodule


