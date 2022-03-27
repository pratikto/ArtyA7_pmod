-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Mar 27 23:25:58 2022
-- Host        : Unyil running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/toni/Workfiles/ArtyA7_pmod/src/ArtyA7_design/ip/ArtyA7_design_PmodAMP2_0_0/ArtyA7_design_PmodAMP2_0_0_stub.vhdl
-- Design      : ArtyA7_design_PmodAMP2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArtyA7_design_PmodAMP2_0_0 is
  Port ( 
    AXI_LITE_GPIO_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_LITE_GPIO_arready : out STD_LOGIC;
    AXI_LITE_GPIO_arvalid : in STD_LOGIC;
    AXI_LITE_GPIO_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    AXI_LITE_GPIO_awready : out STD_LOGIC;
    AXI_LITE_GPIO_awvalid : in STD_LOGIC;
    AXI_LITE_GPIO_bready : in STD_LOGIC;
    AXI_LITE_GPIO_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_GPIO_bvalid : out STD_LOGIC;
    AXI_LITE_GPIO_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_GPIO_rready : in STD_LOGIC;
    AXI_LITE_GPIO_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_GPIO_rvalid : out STD_LOGIC;
    AXI_LITE_GPIO_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_GPIO_wready : out STD_LOGIC;
    AXI_LITE_GPIO_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_GPIO_wvalid : in STD_LOGIC;
    AXI_LITE_PWM_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    AXI_LITE_PWM_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_LITE_PWM_arready : out STD_LOGIC;
    AXI_LITE_PWM_arvalid : in STD_LOGIC;
    AXI_LITE_PWM_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    AXI_LITE_PWM_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    AXI_LITE_PWM_awready : out STD_LOGIC;
    AXI_LITE_PWM_awvalid : in STD_LOGIC;
    AXI_LITE_PWM_bready : in STD_LOGIC;
    AXI_LITE_PWM_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_PWM_bvalid : out STD_LOGIC;
    AXI_LITE_PWM_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_PWM_rready : in STD_LOGIC;
    AXI_LITE_PWM_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_PWM_rvalid : out STD_LOGIC;
    AXI_LITE_PWM_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_PWM_wready : out STD_LOGIC;
    AXI_LITE_PWM_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_PWM_wvalid : in STD_LOGIC;
    AXI_LITE_TIMER_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AXI_LITE_TIMER_arready : out STD_LOGIC;
    AXI_LITE_TIMER_arvalid : in STD_LOGIC;
    AXI_LITE_TIMER_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AXI_LITE_TIMER_awready : out STD_LOGIC;
    AXI_LITE_TIMER_awvalid : in STD_LOGIC;
    AXI_LITE_TIMER_bready : in STD_LOGIC;
    AXI_LITE_TIMER_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_TIMER_bvalid : out STD_LOGIC;
    AXI_LITE_TIMER_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_TIMER_rready : in STD_LOGIC;
    AXI_LITE_TIMER_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AXI_LITE_TIMER_rvalid : out STD_LOGIC;
    AXI_LITE_TIMER_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_LITE_TIMER_wready : out STD_LOGIC;
    AXI_LITE_TIMER_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_LITE_TIMER_wvalid : in STD_LOGIC;
    Pmod_out_pin10_i : in STD_LOGIC;
    Pmod_out_pin10_o : out STD_LOGIC;
    Pmod_out_pin10_t : out STD_LOGIC;
    Pmod_out_pin1_i : in STD_LOGIC;
    Pmod_out_pin1_o : out STD_LOGIC;
    Pmod_out_pin1_t : out STD_LOGIC;
    Pmod_out_pin2_i : in STD_LOGIC;
    Pmod_out_pin2_o : out STD_LOGIC;
    Pmod_out_pin2_t : out STD_LOGIC;
    Pmod_out_pin3_i : in STD_LOGIC;
    Pmod_out_pin3_o : out STD_LOGIC;
    Pmod_out_pin3_t : out STD_LOGIC;
    Pmod_out_pin4_i : in STD_LOGIC;
    Pmod_out_pin4_o : out STD_LOGIC;
    Pmod_out_pin4_t : out STD_LOGIC;
    Pmod_out_pin7_i : in STD_LOGIC;
    Pmod_out_pin7_o : out STD_LOGIC;
    Pmod_out_pin7_t : out STD_LOGIC;
    Pmod_out_pin8_i : in STD_LOGIC;
    Pmod_out_pin8_o : out STD_LOGIC;
    Pmod_out_pin8_t : out STD_LOGIC;
    Pmod_out_pin9_i : in STD_LOGIC;
    Pmod_out_pin9_o : out STD_LOGIC;
    Pmod_out_pin9_t : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    timer_interrupt : out STD_LOGIC
  );

end ArtyA7_design_PmodAMP2_0_0;

architecture stub of ArtyA7_design_PmodAMP2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "AXI_LITE_GPIO_araddr[8:0],AXI_LITE_GPIO_arready,AXI_LITE_GPIO_arvalid,AXI_LITE_GPIO_awaddr[8:0],AXI_LITE_GPIO_awready,AXI_LITE_GPIO_awvalid,AXI_LITE_GPIO_bready,AXI_LITE_GPIO_bresp[1:0],AXI_LITE_GPIO_bvalid,AXI_LITE_GPIO_rdata[31:0],AXI_LITE_GPIO_rready,AXI_LITE_GPIO_rresp[1:0],AXI_LITE_GPIO_rvalid,AXI_LITE_GPIO_wdata[31:0],AXI_LITE_GPIO_wready,AXI_LITE_GPIO_wstrb[3:0],AXI_LITE_GPIO_wvalid,AXI_LITE_PWM_araddr[6:0],AXI_LITE_PWM_arprot[2:0],AXI_LITE_PWM_arready,AXI_LITE_PWM_arvalid,AXI_LITE_PWM_awaddr[6:0],AXI_LITE_PWM_awprot[2:0],AXI_LITE_PWM_awready,AXI_LITE_PWM_awvalid,AXI_LITE_PWM_bready,AXI_LITE_PWM_bresp[1:0],AXI_LITE_PWM_bvalid,AXI_LITE_PWM_rdata[31:0],AXI_LITE_PWM_rready,AXI_LITE_PWM_rresp[1:0],AXI_LITE_PWM_rvalid,AXI_LITE_PWM_wdata[31:0],AXI_LITE_PWM_wready,AXI_LITE_PWM_wstrb[3:0],AXI_LITE_PWM_wvalid,AXI_LITE_TIMER_araddr[4:0],AXI_LITE_TIMER_arready,AXI_LITE_TIMER_arvalid,AXI_LITE_TIMER_awaddr[4:0],AXI_LITE_TIMER_awready,AXI_LITE_TIMER_awvalid,AXI_LITE_TIMER_bready,AXI_LITE_TIMER_bresp[1:0],AXI_LITE_TIMER_bvalid,AXI_LITE_TIMER_rdata[31:0],AXI_LITE_TIMER_rready,AXI_LITE_TIMER_rresp[1:0],AXI_LITE_TIMER_rvalid,AXI_LITE_TIMER_wdata[31:0],AXI_LITE_TIMER_wready,AXI_LITE_TIMER_wstrb[3:0],AXI_LITE_TIMER_wvalid,Pmod_out_pin10_i,Pmod_out_pin10_o,Pmod_out_pin10_t,Pmod_out_pin1_i,Pmod_out_pin1_o,Pmod_out_pin1_t,Pmod_out_pin2_i,Pmod_out_pin2_o,Pmod_out_pin2_t,Pmod_out_pin3_i,Pmod_out_pin3_o,Pmod_out_pin3_t,Pmod_out_pin4_i,Pmod_out_pin4_o,Pmod_out_pin4_t,Pmod_out_pin7_i,Pmod_out_pin7_o,Pmod_out_pin7_t,Pmod_out_pin8_i,Pmod_out_pin8_o,Pmod_out_pin8_t,Pmod_out_pin9_i,Pmod_out_pin9_o,Pmod_out_pin9_t,s_axi_aclk,s_axi_aresetn,timer_interrupt";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "PmodAMP2,Vivado 2018.3";
begin
end;
