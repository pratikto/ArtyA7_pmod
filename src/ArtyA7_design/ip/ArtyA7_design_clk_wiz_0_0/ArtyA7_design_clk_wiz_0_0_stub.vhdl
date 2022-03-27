-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Mar 27 23:24:31 2022
-- Host        : Unyil running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/toni/Workfiles/ArtyA7_pmod/src/ArtyA7_design/ip/ArtyA7_design_clk_wiz_0_0/ArtyA7_design_clk_wiz_0_0_stub.vhdl
-- Design      : ArtyA7_design_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArtyA7_design_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end ArtyA7_design_clk_wiz_0_0;

architecture stub of ArtyA7_design_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
