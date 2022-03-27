// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Mar 27 23:25:58 2022
// Host        : Unyil running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/toni/Workfiles/ArtyA7_pmod/src/ArtyA7_design/ip/ArtyA7_design_PmodAMP2_0_0/ArtyA7_design_PmodAMP2_0_0_stub.v
// Design      : ArtyA7_design_PmodAMP2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "PmodAMP2,Vivado 2018.3" *)
module ArtyA7_design_PmodAMP2_0_0(AXI_LITE_GPIO_araddr, 
  AXI_LITE_GPIO_arready, AXI_LITE_GPIO_arvalid, AXI_LITE_GPIO_awaddr, 
  AXI_LITE_GPIO_awready, AXI_LITE_GPIO_awvalid, AXI_LITE_GPIO_bready, 
  AXI_LITE_GPIO_bresp, AXI_LITE_GPIO_bvalid, AXI_LITE_GPIO_rdata, AXI_LITE_GPIO_rready, 
  AXI_LITE_GPIO_rresp, AXI_LITE_GPIO_rvalid, AXI_LITE_GPIO_wdata, AXI_LITE_GPIO_wready, 
  AXI_LITE_GPIO_wstrb, AXI_LITE_GPIO_wvalid, AXI_LITE_PWM_araddr, AXI_LITE_PWM_arprot, 
  AXI_LITE_PWM_arready, AXI_LITE_PWM_arvalid, AXI_LITE_PWM_awaddr, AXI_LITE_PWM_awprot, 
  AXI_LITE_PWM_awready, AXI_LITE_PWM_awvalid, AXI_LITE_PWM_bready, AXI_LITE_PWM_bresp, 
  AXI_LITE_PWM_bvalid, AXI_LITE_PWM_rdata, AXI_LITE_PWM_rready, AXI_LITE_PWM_rresp, 
  AXI_LITE_PWM_rvalid, AXI_LITE_PWM_wdata, AXI_LITE_PWM_wready, AXI_LITE_PWM_wstrb, 
  AXI_LITE_PWM_wvalid, AXI_LITE_TIMER_araddr, AXI_LITE_TIMER_arready, 
  AXI_LITE_TIMER_arvalid, AXI_LITE_TIMER_awaddr, AXI_LITE_TIMER_awready, 
  AXI_LITE_TIMER_awvalid, AXI_LITE_TIMER_bready, AXI_LITE_TIMER_bresp, 
  AXI_LITE_TIMER_bvalid, AXI_LITE_TIMER_rdata, AXI_LITE_TIMER_rready, 
  AXI_LITE_TIMER_rresp, AXI_LITE_TIMER_rvalid, AXI_LITE_TIMER_wdata, 
  AXI_LITE_TIMER_wready, AXI_LITE_TIMER_wstrb, AXI_LITE_TIMER_wvalid, Pmod_out_pin10_i, 
  Pmod_out_pin10_o, Pmod_out_pin10_t, Pmod_out_pin1_i, Pmod_out_pin1_o, Pmod_out_pin1_t, 
  Pmod_out_pin2_i, Pmod_out_pin2_o, Pmod_out_pin2_t, Pmod_out_pin3_i, Pmod_out_pin3_o, 
  Pmod_out_pin3_t, Pmod_out_pin4_i, Pmod_out_pin4_o, Pmod_out_pin4_t, Pmod_out_pin7_i, 
  Pmod_out_pin7_o, Pmod_out_pin7_t, Pmod_out_pin8_i, Pmod_out_pin8_o, Pmod_out_pin8_t, 
  Pmod_out_pin9_i, Pmod_out_pin9_o, Pmod_out_pin9_t, s_axi_aclk, s_axi_aresetn, 
  timer_interrupt)
/* synthesis syn_black_box black_box_pad_pin="AXI_LITE_GPIO_araddr[8:0],AXI_LITE_GPIO_arready,AXI_LITE_GPIO_arvalid,AXI_LITE_GPIO_awaddr[8:0],AXI_LITE_GPIO_awready,AXI_LITE_GPIO_awvalid,AXI_LITE_GPIO_bready,AXI_LITE_GPIO_bresp[1:0],AXI_LITE_GPIO_bvalid,AXI_LITE_GPIO_rdata[31:0],AXI_LITE_GPIO_rready,AXI_LITE_GPIO_rresp[1:0],AXI_LITE_GPIO_rvalid,AXI_LITE_GPIO_wdata[31:0],AXI_LITE_GPIO_wready,AXI_LITE_GPIO_wstrb[3:0],AXI_LITE_GPIO_wvalid,AXI_LITE_PWM_araddr[6:0],AXI_LITE_PWM_arprot[2:0],AXI_LITE_PWM_arready,AXI_LITE_PWM_arvalid,AXI_LITE_PWM_awaddr[6:0],AXI_LITE_PWM_awprot[2:0],AXI_LITE_PWM_awready,AXI_LITE_PWM_awvalid,AXI_LITE_PWM_bready,AXI_LITE_PWM_bresp[1:0],AXI_LITE_PWM_bvalid,AXI_LITE_PWM_rdata[31:0],AXI_LITE_PWM_rready,AXI_LITE_PWM_rresp[1:0],AXI_LITE_PWM_rvalid,AXI_LITE_PWM_wdata[31:0],AXI_LITE_PWM_wready,AXI_LITE_PWM_wstrb[3:0],AXI_LITE_PWM_wvalid,AXI_LITE_TIMER_araddr[4:0],AXI_LITE_TIMER_arready,AXI_LITE_TIMER_arvalid,AXI_LITE_TIMER_awaddr[4:0],AXI_LITE_TIMER_awready,AXI_LITE_TIMER_awvalid,AXI_LITE_TIMER_bready,AXI_LITE_TIMER_bresp[1:0],AXI_LITE_TIMER_bvalid,AXI_LITE_TIMER_rdata[31:0],AXI_LITE_TIMER_rready,AXI_LITE_TIMER_rresp[1:0],AXI_LITE_TIMER_rvalid,AXI_LITE_TIMER_wdata[31:0],AXI_LITE_TIMER_wready,AXI_LITE_TIMER_wstrb[3:0],AXI_LITE_TIMER_wvalid,Pmod_out_pin10_i,Pmod_out_pin10_o,Pmod_out_pin10_t,Pmod_out_pin1_i,Pmod_out_pin1_o,Pmod_out_pin1_t,Pmod_out_pin2_i,Pmod_out_pin2_o,Pmod_out_pin2_t,Pmod_out_pin3_i,Pmod_out_pin3_o,Pmod_out_pin3_t,Pmod_out_pin4_i,Pmod_out_pin4_o,Pmod_out_pin4_t,Pmod_out_pin7_i,Pmod_out_pin7_o,Pmod_out_pin7_t,Pmod_out_pin8_i,Pmod_out_pin8_o,Pmod_out_pin8_t,Pmod_out_pin9_i,Pmod_out_pin9_o,Pmod_out_pin9_t,s_axi_aclk,s_axi_aresetn,timer_interrupt" */;
  input [8:0]AXI_LITE_GPIO_araddr;
  output AXI_LITE_GPIO_arready;
  input AXI_LITE_GPIO_arvalid;
  input [8:0]AXI_LITE_GPIO_awaddr;
  output AXI_LITE_GPIO_awready;
  input AXI_LITE_GPIO_awvalid;
  input AXI_LITE_GPIO_bready;
  output [1:0]AXI_LITE_GPIO_bresp;
  output AXI_LITE_GPIO_bvalid;
  output [31:0]AXI_LITE_GPIO_rdata;
  input AXI_LITE_GPIO_rready;
  output [1:0]AXI_LITE_GPIO_rresp;
  output AXI_LITE_GPIO_rvalid;
  input [31:0]AXI_LITE_GPIO_wdata;
  output AXI_LITE_GPIO_wready;
  input [3:0]AXI_LITE_GPIO_wstrb;
  input AXI_LITE_GPIO_wvalid;
  input [6:0]AXI_LITE_PWM_araddr;
  input [2:0]AXI_LITE_PWM_arprot;
  output AXI_LITE_PWM_arready;
  input AXI_LITE_PWM_arvalid;
  input [6:0]AXI_LITE_PWM_awaddr;
  input [2:0]AXI_LITE_PWM_awprot;
  output AXI_LITE_PWM_awready;
  input AXI_LITE_PWM_awvalid;
  input AXI_LITE_PWM_bready;
  output [1:0]AXI_LITE_PWM_bresp;
  output AXI_LITE_PWM_bvalid;
  output [31:0]AXI_LITE_PWM_rdata;
  input AXI_LITE_PWM_rready;
  output [1:0]AXI_LITE_PWM_rresp;
  output AXI_LITE_PWM_rvalid;
  input [31:0]AXI_LITE_PWM_wdata;
  output AXI_LITE_PWM_wready;
  input [3:0]AXI_LITE_PWM_wstrb;
  input AXI_LITE_PWM_wvalid;
  input [4:0]AXI_LITE_TIMER_araddr;
  output AXI_LITE_TIMER_arready;
  input AXI_LITE_TIMER_arvalid;
  input [4:0]AXI_LITE_TIMER_awaddr;
  output AXI_LITE_TIMER_awready;
  input AXI_LITE_TIMER_awvalid;
  input AXI_LITE_TIMER_bready;
  output [1:0]AXI_LITE_TIMER_bresp;
  output AXI_LITE_TIMER_bvalid;
  output [31:0]AXI_LITE_TIMER_rdata;
  input AXI_LITE_TIMER_rready;
  output [1:0]AXI_LITE_TIMER_rresp;
  output AXI_LITE_TIMER_rvalid;
  input [31:0]AXI_LITE_TIMER_wdata;
  output AXI_LITE_TIMER_wready;
  input [3:0]AXI_LITE_TIMER_wstrb;
  input AXI_LITE_TIMER_wvalid;
  input Pmod_out_pin10_i;
  output Pmod_out_pin10_o;
  output Pmod_out_pin10_t;
  input Pmod_out_pin1_i;
  output Pmod_out_pin1_o;
  output Pmod_out_pin1_t;
  input Pmod_out_pin2_i;
  output Pmod_out_pin2_o;
  output Pmod_out_pin2_t;
  input Pmod_out_pin3_i;
  output Pmod_out_pin3_o;
  output Pmod_out_pin3_t;
  input Pmod_out_pin4_i;
  output Pmod_out_pin4_o;
  output Pmod_out_pin4_t;
  input Pmod_out_pin7_i;
  output Pmod_out_pin7_o;
  output Pmod_out_pin7_t;
  input Pmod_out_pin8_i;
  output Pmod_out_pin8_o;
  output Pmod_out_pin8_t;
  input Pmod_out_pin9_i;
  output Pmod_out_pin9_o;
  output Pmod_out_pin9_t;
  input s_axi_aclk;
  input s_axi_aresetn;
  output timer_interrupt;
endmodule
