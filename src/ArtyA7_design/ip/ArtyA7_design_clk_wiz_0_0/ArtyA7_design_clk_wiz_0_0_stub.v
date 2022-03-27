// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Mar 27 23:24:31 2022
// Host        : Unyil running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/toni/Workfiles/ArtyA7_pmod/src/ArtyA7_design/ip/ArtyA7_design_clk_wiz_0_0/ArtyA7_design_clk_wiz_0_0_stub.v
// Design      : ArtyA7_design_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ArtyA7_design_clk_wiz_0_0(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;
endmodule
