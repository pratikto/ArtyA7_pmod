-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Mar 27 23:25:58 2022
-- Host        : Unyil running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/toni/Workfiles/ArtyA7_pmod/src/ArtyA7_design/ip/ArtyA7_design_PmodAMP2_0_0/ArtyA7_design_PmodAMP2_0_0_sim_netlist.vhdl
-- Design      : ArtyA7_design_PmodAMP2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_GPIO_Core is
  port (
    ip2bus_wrack_i : out STD_LOGIC;
    ip2bus_rdack_i : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_cs : in STD_LOGIC;
    bus2ip_rnw : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Not_Dual.gpio_Data_Out_reg[0]_0\ : in STD_LOGIC;
    \Not_Dual.gpio_OE_reg[0]_0\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_GPIO_Core : entity is "GPIO_Core";
end ArtyA7_design_PmodAMP2_0_0_GPIO_Core;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_GPIO_Core is
  signal GPIO_xferAck_i : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[29]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1[30]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.gpio_Data_Out[0]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.gpio_Data_Out[1]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.gpio_Data_Out[2]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.gpio_OE[0]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.gpio_OE[1]_i_1_n_0\ : STD_LOGIC;
  signal \Not_Dual.gpio_OE[2]_i_1_n_0\ : STD_LOGIC;
  signal \^gpio_io_o\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^gpio_io_t\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gpio_xferAck_Reg : STD_LOGIC;
  signal \iGPIO_xferAck__0\ : STD_LOGIC;
  signal reg1 : STD_LOGIC_VECTOR ( 29 to 31 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[29]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1[30]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of ip2bus_rdack_i_D1_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of ip2bus_wrack_i_D1_i_1 : label is "soft_lutpair6";
begin
  gpio_io_o(2 downto 0) <= \^gpio_io_o\(2 downto 0);
  gpio_io_t(2 downto 0) <= \^gpio_io_t\(2 downto 0);
\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \^gpio_io_o\(2),
      I1 => gpio_xferAck_Reg,
      I2 => bus2ip_cs,
      I3 => GPIO_xferAck_i,
      I4 => bus2ip_rnw,
      O => \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[29]_i_1_n_0\
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1[29]_i_1_n_0\,
      Q => reg1(29),
      R => '0'
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \^gpio_io_o\(1),
      I1 => gpio_xferAck_Reg,
      I2 => bus2ip_cs,
      I3 => GPIO_xferAck_i,
      I4 => bus2ip_rnw,
      O => \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1[30]_i_1_n_0\
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1[30]_i_1_n_0\,
      Q => reg1(30),
      R => '0'
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \^gpio_io_o\(0),
      I1 => gpio_xferAck_Reg,
      I2 => bus2ip_cs,
      I3 => GPIO_xferAck_i,
      I4 => bus2ip_rnw,
      O => \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1[31]_i_1_n_0\
    );
\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1[31]_i_1_n_0\,
      Q => reg1(31),
      R => '0'
    );
\Not_Dual.gpio_Data_Out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => bus2ip_cs,
      I2 => Q(0),
      I3 => s_axi_wdata(5),
      I4 => \Not_Dual.gpio_Data_Out_reg[0]_0\,
      I5 => \^gpio_io_o\(2),
      O => \Not_Dual.gpio_Data_Out[0]_i_1_n_0\
    );
\Not_Dual.gpio_Data_Out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => bus2ip_cs,
      I2 => Q(0),
      I3 => s_axi_wdata(4),
      I4 => \Not_Dual.gpio_Data_Out_reg[0]_0\,
      I5 => \^gpio_io_o\(1),
      O => \Not_Dual.gpio_Data_Out[1]_i_1_n_0\
    );
\Not_Dual.gpio_Data_Out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => bus2ip_cs,
      I2 => Q(0),
      I3 => s_axi_wdata(3),
      I4 => \Not_Dual.gpio_Data_Out_reg[0]_0\,
      I5 => \^gpio_io_o\(0),
      O => \Not_Dual.gpio_Data_Out[2]_i_1_n_0\
    );
\Not_Dual.gpio_Data_Out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.gpio_Data_Out[0]_i_1_n_0\,
      Q => \^gpio_io_o\(2),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.gpio_Data_Out[1]_i_1_n_0\,
      Q => \^gpio_io_o\(1),
      R => bus2ip_reset
    );
\Not_Dual.gpio_Data_Out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.gpio_Data_Out[2]_i_1_n_0\,
      Q => \^gpio_io_o\(0),
      R => bus2ip_reset
    );
\Not_Dual.gpio_OE[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => bus2ip_cs,
      I2 => Q(0),
      I3 => s_axi_wdata(5),
      I4 => \Not_Dual.gpio_OE_reg[0]_0\,
      I5 => \^gpio_io_t\(2),
      O => \Not_Dual.gpio_OE[0]_i_1_n_0\
    );
\Not_Dual.gpio_OE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => bus2ip_cs,
      I2 => Q(0),
      I3 => s_axi_wdata(4),
      I4 => \Not_Dual.gpio_OE_reg[0]_0\,
      I5 => \^gpio_io_t\(1),
      O => \Not_Dual.gpio_OE[1]_i_1_n_0\
    );
\Not_Dual.gpio_OE[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => bus2ip_cs,
      I2 => Q(0),
      I3 => s_axi_wdata(3),
      I4 => \Not_Dual.gpio_OE_reg[0]_0\,
      I5 => \^gpio_io_t\(0),
      O => \Not_Dual.gpio_OE[2]_i_1_n_0\
    );
\Not_Dual.gpio_OE_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.gpio_OE[0]_i_1_n_0\,
      Q => \^gpio_io_t\(2),
      S => bus2ip_reset
    );
\Not_Dual.gpio_OE_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.gpio_OE[1]_i_1_n_0\,
      Q => \^gpio_io_t\(1),
      S => bus2ip_reset
    );
\Not_Dual.gpio_OE_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Not_Dual.gpio_OE[2]_i_1_n_0\,
      Q => \^gpio_io_t\(0),
      S => bus2ip_reset
    );
gpio_xferAck_Reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => GPIO_xferAck_i,
      Q => gpio_xferAck_Reg,
      R => bus2ip_reset
    );
iGPIO_xferAck: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => bus2ip_cs,
      I1 => gpio_xferAck_Reg,
      I2 => GPIO_xferAck_i,
      O => \iGPIO_xferAck__0\
    );
iGPIO_xferAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \iGPIO_xferAck__0\,
      Q => GPIO_xferAck_i,
      R => bus2ip_reset
    );
\ip2bus_data_i_D1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001400"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => Bus_RNW_reg,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => D(3)
    );
\ip2bus_data_i_D1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011000011400000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => reg1(29),
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I4 => Bus_RNW_reg,
      I5 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      O => D(2)
    );
\ip2bus_data_i_D1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011000011400000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => reg1(30),
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I4 => Bus_RNW_reg,
      I5 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      O => D(1)
    );
\ip2bus_data_i_D1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011000011400000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => reg1(31),
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I4 => Bus_RNW_reg,
      I5 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      O => D(0)
    );
ip2bus_rdack_i_D1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => GPIO_xferAck_i,
      I1 => bus2ip_rnw,
      O => ip2bus_rdack_i
    );
ip2bus_wrack_i_D1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => GPIO_xferAck_i,
      I1 => bus2ip_rnw,
      O => ip2bus_wrack_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_PWM_AXI is
  port (
    pwm_axi_awready : out STD_LOGIC;
    pwm_axi_wready : out STD_LOGIC;
    pwm_axi_arready : out STD_LOGIC;
    pwm_axi_bvalid : out STD_LOGIC;
    pwm_axi_rvalid : out STD_LOGIC;
    pwm_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \period_reg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \duty_reg_reg[0][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_aclk : in STD_LOGIC;
    pwm_axi_aresetn : in STD_LOGIC;
    pwm_axi_bready : in STD_LOGIC;
    pwm_axi_awvalid : in STD_LOGIC;
    pwm_axi_wvalid : in STD_LOGIC;
    pwm_axi_arvalid : in STD_LOGIC;
    pwm_axi_rready : in STD_LOGIC;
    pwm_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pwm_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pwm_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_PWM_AXI : entity is "PWM_AXI";
end ArtyA7_design_PmodAMP2_0_0_PWM_AXI;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_PWM_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \ctrl_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \duty_reg[0][31]_i_2_n_0\ : STD_LOGIC;
  signal \^duty_reg_reg[0][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \period_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \period_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \period_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \period_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \period_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \^period_reg_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^pwm_axi_arready\ : STD_LOGIC;
  signal \^pwm_axi_awready\ : STD_LOGIC;
  signal \^pwm_axi_bvalid\ : STD_LOGIC;
  signal \^pwm_axi_rvalid\ : STD_LOGIC;
  signal \^pwm_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal status_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \status_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \status_reg[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ctrl_reg[31]_i_3\ : label is "soft_lutpair0";
begin
  Q(0) <= \^q\(0);
  \duty_reg_reg[0][31]_0\(31 downto 0) <= \^duty_reg_reg[0][31]_0\(31 downto 0);
  \period_reg_reg[31]_0\(31 downto 0) <= \^period_reg_reg[31]_0\(31 downto 0);
  pwm_axi_arready <= \^pwm_axi_arready\;
  pwm_axi_awready <= \^pwm_axi_awready\;
  pwm_axi_bvalid <= \^pwm_axi_bvalid\;
  pwm_axi_rvalid <= \^pwm_axi_rvalid\;
  pwm_axi_wready <= \^pwm_axi_wready\;
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_arready0,
      D => pwm_axi_araddr(0),
      Q => sel0(0),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_arready0,
      D => pwm_axi_araddr(1),
      Q => sel0(1),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_arready0,
      D => pwm_axi_araddr(2),
      Q => sel0(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_arready0,
      D => pwm_axi_araddr(3),
      Q => sel0(3),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_arready0,
      D => pwm_axi_araddr(4),
      Q => sel0(4),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwm_axi_arvalid,
      I1 => \^pwm_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^pwm_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_awready0,
      D => pwm_axi_awaddr(0),
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_awready0,
      D => pwm_axi_awaddr(1),
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_awready0,
      D => pwm_axi_awaddr(2),
      Q => p_0_in(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_awready0,
      D => pwm_axi_awaddr(3),
      Q => p_0_in(3),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_awready0,
      D => pwm_axi_awaddr(4),
      Q => p_0_in(4),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => pwm_axi_awvalid,
      I1 => pwm_axi_wvalid,
      I2 => \^pwm_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^pwm_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => pwm_axi_bready,
      I1 => \^pwm_axi_bvalid\,
      I2 => \^pwm_axi_awready\,
      I3 => \^pwm_axi_wready\,
      I4 => pwm_axi_awvalid,
      I5 => pwm_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^pwm_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(0),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[0]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[0]_i_1_n_0\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(0),
      I1 => sel0(1),
      I2 => status_reg(0),
      I3 => sel0(0),
      I4 => \^q\(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(10),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[10]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(10),
      I1 => sel0(1),
      I2 => status_reg(10),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[10]\,
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(11),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[11]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(11),
      I1 => sel0(1),
      I2 => status_reg(11),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[11]\,
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(12),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[12]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(12),
      I1 => sel0(1),
      I2 => status_reg(12),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[12]\,
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(13),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[13]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(13),
      I1 => sel0(1),
      I2 => status_reg(13),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[13]\,
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(14),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[14]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(14),
      I1 => sel0(1),
      I2 => status_reg(14),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[14]\,
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(15),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[15]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(15),
      I1 => sel0(1),
      I2 => status_reg(15),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[15]\,
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(16),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[16]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(16),
      I1 => sel0(1),
      I2 => status_reg(16),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[16]\,
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(17),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[17]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(17),
      I1 => sel0(1),
      I2 => status_reg(17),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[17]\,
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(18),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[18]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(18),
      I1 => sel0(1),
      I2 => status_reg(18),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[18]\,
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(19),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[19]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(19),
      I1 => sel0(1),
      I2 => status_reg(19),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[19]\,
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(1),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[1]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[1]_i_1_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(1),
      I1 => sel0(1),
      I2 => status_reg(1),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[1]\,
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(20),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[20]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(20),
      I1 => sel0(1),
      I2 => status_reg(20),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[20]\,
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(21),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[21]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(21),
      I1 => sel0(1),
      I2 => status_reg(21),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[21]\,
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(22),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[22]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(22),
      I1 => sel0(1),
      I2 => status_reg(22),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[22]\,
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(23),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[23]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(23),
      I1 => sel0(1),
      I2 => status_reg(23),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[23]\,
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(24),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[24]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(24),
      I1 => sel0(1),
      I2 => status_reg(24),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[24]\,
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(25),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[25]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(25),
      I1 => sel0(1),
      I2 => status_reg(25),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[25]\,
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(26),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[26]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(26),
      I1 => sel0(1),
      I2 => status_reg(26),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[26]\,
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(27),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[27]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(27),
      I1 => sel0(1),
      I2 => status_reg(27),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[27]\,
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(28),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[28]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(28),
      I1 => sel0(1),
      I2 => status_reg(28),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[28]\,
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(29),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[29]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(29),
      I1 => sel0(1),
      I2 => status_reg(29),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[29]\,
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(2),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[2]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[2]_i_1_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(2),
      I1 => sel0(1),
      I2 => status_reg(2),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[2]\,
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(30),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[30]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(30),
      I1 => sel0(1),
      I2 => status_reg(30),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[30]\,
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(31),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[31]_i_3_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(3),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(31),
      I1 => sel0(1),
      I2 => status_reg(31),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[31]\,
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(3),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[3]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[3]_i_1_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(3),
      I1 => sel0(1),
      I2 => status_reg(3),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[3]\,
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(4),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[4]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[4]_i_1_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(4),
      I1 => sel0(1),
      I2 => status_reg(4),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[4]\,
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(5),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[5]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[5]_i_1_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(5),
      I1 => sel0(1),
      I2 => status_reg(5),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[5]\,
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(6),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[6]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[6]_i_1_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(6),
      I1 => sel0(1),
      I2 => status_reg(6),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[6]\,
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(7),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[7]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[7]_i_1_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(7),
      I1 => sel0(1),
      I2 => status_reg(7),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[7]\,
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(8),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[8]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[8]_i_1_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(8),
      I1 => sel0(1),
      I2 => status_reg(8),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[8]\,
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88008800880F8800"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^duty_reg_reg[0][31]_0\(9),
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \axi_rdata[9]_i_2_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(9),
      I1 => sel0(1),
      I2 => status_reg(9),
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[9]\,
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[0]_i_1_n_0\,
      Q => pwm_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => pwm_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => pwm_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => pwm_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => pwm_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => pwm_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => pwm_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => pwm_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => pwm_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => pwm_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => pwm_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[1]_i_1_n_0\,
      Q => pwm_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => pwm_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => pwm_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => pwm_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => pwm_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => pwm_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => pwm_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => pwm_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => pwm_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => pwm_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => pwm_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[2]_i_1_n_0\,
      Q => pwm_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => pwm_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[31]_i_1_n_0\,
      Q => pwm_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[3]_i_1_n_0\,
      Q => pwm_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[4]_i_1_n_0\,
      Q => pwm_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[5]_i_1_n_0\,
      Q => pwm_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[6]_i_1_n_0\,
      Q => pwm_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[7]_i_1_n_0\,
      Q => pwm_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[8]_i_1_n_0\,
      Q => pwm_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => pwm_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^pwm_axi_arready\,
      I1 => pwm_axi_arvalid,
      I2 => pwm_axi_rready,
      I3 => \^pwm_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^pwm_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => pwm_axi_awvalid,
      I1 => pwm_axi_wvalid,
      I2 => \^pwm_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^pwm_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ctrl_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \ctrl_reg[15]_i_1_n_0\
    );
\ctrl_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ctrl_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \ctrl_reg[23]_i_1_n_0\
    );
\ctrl_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ctrl_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \ctrl_reg[31]_i_1_n_0\
    );
\ctrl_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(3),
      I4 => p_0_in(2),
      I5 => \ctrl_reg[31]_i_3_n_0\,
      O => \ctrl_reg[31]_i_2_n_0\
    );
\ctrl_reg[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^pwm_axi_awready\,
      I1 => \^pwm_axi_wready\,
      I2 => pwm_axi_awvalid,
      I3 => pwm_axi_wvalid,
      O => \ctrl_reg[31]_i_3_n_0\
    );
\ctrl_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ctrl_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \ctrl_reg[7]_i_1_n_0\
    );
\ctrl_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \ctrl_reg_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \ctrl_reg_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \ctrl_reg_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \ctrl_reg_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \ctrl_reg_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \ctrl_reg_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \ctrl_reg_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \ctrl_reg_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \ctrl_reg_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \ctrl_reg_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \ctrl_reg_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \ctrl_reg_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \ctrl_reg_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \ctrl_reg_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \ctrl_reg_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \ctrl_reg_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \ctrl_reg_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \ctrl_reg_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \ctrl_reg_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \ctrl_reg_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \ctrl_reg_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \ctrl_reg_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \ctrl_reg_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \ctrl_reg_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \ctrl_reg_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \ctrl_reg_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \ctrl_reg_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \ctrl_reg_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \ctrl_reg_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \ctrl_reg_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \ctrl_reg_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\duty_reg[0][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[0][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => p_1_in(15)
    );
\duty_reg[0][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[0][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => p_1_in(23)
    );
\duty_reg[0][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[0][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => p_1_in(31)
    );
\duty_reg[0][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(4),
      I2 => p_0_in(0),
      I3 => p_0_in(3),
      I4 => p_0_in(2),
      I5 => \ctrl_reg[31]_i_3_n_0\,
      O => \duty_reg[0][31]_i_2_n_0\
    );
\duty_reg[0][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[0][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => p_1_in(7)
    );
\duty_reg_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(0),
      Q => \^duty_reg_reg[0][31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(10),
      Q => \^duty_reg_reg[0][31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(11),
      Q => \^duty_reg_reg[0][31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(12),
      Q => \^duty_reg_reg[0][31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(13),
      Q => \^duty_reg_reg[0][31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(14),
      Q => \^duty_reg_reg[0][31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(15),
      Q => \^duty_reg_reg[0][31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(16),
      Q => \^duty_reg_reg[0][31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(17),
      Q => \^duty_reg_reg[0][31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(18),
      Q => \^duty_reg_reg[0][31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(19),
      Q => \^duty_reg_reg[0][31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(1),
      Q => \^duty_reg_reg[0][31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(20),
      Q => \^duty_reg_reg[0][31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(21),
      Q => \^duty_reg_reg[0][31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(22),
      Q => \^duty_reg_reg[0][31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(23),
      Q => \^duty_reg_reg[0][31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(24),
      Q => \^duty_reg_reg[0][31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(25),
      Q => \^duty_reg_reg[0][31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(26),
      Q => \^duty_reg_reg[0][31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(27),
      Q => \^duty_reg_reg[0][31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(28),
      Q => \^duty_reg_reg[0][31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(29),
      Q => \^duty_reg_reg[0][31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(2),
      Q => \^duty_reg_reg[0][31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(30),
      Q => \^duty_reg_reg[0][31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(31),
      Q => \^duty_reg_reg[0][31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(3),
      Q => \^duty_reg_reg[0][31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(4),
      Q => \^duty_reg_reg[0][31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(5),
      Q => \^duty_reg_reg[0][31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(6),
      Q => \^duty_reg_reg[0][31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(7),
      Q => \^duty_reg_reg[0][31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(8),
      Q => \^duty_reg_reg[0][31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(9),
      Q => \^duty_reg_reg[0][31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\period_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \period_reg[15]_i_1_n_0\
    );
\period_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \period_reg[23]_i_1_n_0\
    );
\period_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \period_reg[31]_i_1_n_0\
    );
\period_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(3),
      I4 => p_0_in(2),
      I5 => \ctrl_reg[31]_i_3_n_0\,
      O => \period_reg[31]_i_2_n_0\
    );
\period_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \period_reg[7]_i_1_n_0\
    );
\period_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^period_reg_reg[31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^period_reg_reg[31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^period_reg_reg[31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^period_reg_reg[31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^period_reg_reg[31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^period_reg_reg[31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^period_reg_reg[31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^period_reg_reg[31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^period_reg_reg[31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^period_reg_reg[31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^period_reg_reg[31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^period_reg_reg[31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^period_reg_reg[31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^period_reg_reg[31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^period_reg_reg[31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^period_reg_reg[31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^period_reg_reg[31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^period_reg_reg[31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^period_reg_reg[31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^period_reg_reg[31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^period_reg_reg[31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^period_reg_reg[31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^period_reg_reg[31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^period_reg_reg[31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^period_reg_reg[31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^period_reg_reg[31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^period_reg_reg[31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^period_reg_reg[31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^period_reg_reg[31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^period_reg_reg[31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^period_reg_reg[31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^period_reg_reg[31]_0\(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => pwm_axi_arvalid,
      I1 => \^pwm_axi_rvalid\,
      I2 => \^pwm_axi_arready\,
      O => \slv_reg_rden__0\
    );
\status_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \status_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \status_reg[15]_i_1_n_0\
    );
\status_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \status_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \status_reg[23]_i_1_n_0\
    );
\status_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \status_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \status_reg[31]_i_1_n_0\
    );
\status_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(4),
      I3 => \ctrl_reg[31]_i_3_n_0\,
      I4 => p_0_in(2),
      I5 => p_0_in(3),
      O => \status_reg[31]_i_2_n_0\
    );
\status_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \status_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \status_reg[7]_i_1_n_0\
    );
\status_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => status_reg(0),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => status_reg(10),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => status_reg(11),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => status_reg(12),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => status_reg(13),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => status_reg(14),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => status_reg(15),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => status_reg(16),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => status_reg(17),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => status_reg(18),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => status_reg(19),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => status_reg(1),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => status_reg(20),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => status_reg(21),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => status_reg(22),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => status_reg(23),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => status_reg(24),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => status_reg(25),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => status_reg(26),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => status_reg(27),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => status_reg(28),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => status_reg(29),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => status_reg(2),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => status_reg(30),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => status_reg(31),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => status_reg(3),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => status_reg(4),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => status_reg(5),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => status_reg(6),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => status_reg(7),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => status_reg(8),
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => status_reg(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconcat_0_0 : entity is "PmodAMP2_xlconcat_0_0,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconcat_0_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconcat_0_0 : entity is "PmodAMP2_xlconcat_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconcat_0_0 : entity is "xlconcat_v2_1_1_xlconcat,Vivado 2018.3";
end ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconcat_0_0;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconcat_0_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  \^in0\(0) <= In0(0);
  \^in1\(2 downto 0) <= In1(2 downto 0);
  dout(3 downto 1) <= \^in1\(2 downto 0);
  dout(0) <= \^in0\(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconstant_0_0 : entity is "PmodAMP2_xlconstant_0_0,xlconstant_v1_1_5_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconstant_0_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconstant_0_0 : entity is "PmodAMP2_xlconstant_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconstant_0_0 : entity is "xlconstant_v1_1_5_xlconstant,Vivado 2018.3";
end ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconstant_0_0;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconstant_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0\ is
  port (
    captureTrig0_d0 : out STD_LOGIC;
    tCSR0_Reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    capturetrig0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0\ : entity is "cdc_sync";
end \ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0\ is
  signal CaptureTrig0_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => capturetrig0,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => CaptureTrig0_int,
      R => '0'
    );
captureTrig0_d_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CaptureTrig0_int,
      I1 => tCSR0_Reg(0),
      O => captureTrig0_d0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0_1\ is
  port (
    captureTrig1_d0 : out STD_LOGIC;
    tCSR1_Reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    capturetrig1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0_1\ : entity is "cdc_sync";
end \ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0_1\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0_1\ is
  signal CaptureTrig1_int : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => capturetrig1,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => CaptureTrig1_int,
      R => '0'
    );
captureTrig1_d_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CaptureTrig1_int,
      I1 => tCSR1_Reg(0),
      O => captureTrig1_d0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0_2\ is
  port (
    generateOutPre0_reg : out STD_LOGIC;
    \TCSR0_GENERATE[20].TCSR0_FF_I\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \INFERRED_GEN.icount_out_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \INFERRED_GEN.icount_out_reg[0]\ : in STD_LOGIC;
    generateOutPre0 : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_0\ : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_1\ : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_2\ : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_3\ : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_4\ : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_5\ : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_6\ : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_7\ : in STD_LOGIC;
    \icount_out0_carry_i_5__0_0\ : in STD_LOGIC;
    tCSR0_Reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    counter_TC : in STD_LOGIC_VECTOR ( 0 to 0 );
    counterReg_DBus_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    tCSR1_Reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    counterReg_DBus_32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0_2\ : entity is "cdc_sync";
end \ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0_2\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0_2\ is
  signal Freeze_int : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[31]_i_3__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[31]_i_4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[31]_i_5_n_0\ : STD_LOGIC;
  signal \icount_out0_carry_i_6__0_n_0\ : STD_LOGIC;
  signal icount_out0_carry_i_6_n_0 : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[31]_i_3__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \icount_out0_carry_i_6__0\ : label is "soft_lutpair59";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => freeze,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => Freeze_int,
      R => '0'
    );
\INFERRED_GEN.icount_out[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF22F2"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[0]\,
      I1 => \INFERRED_GEN.icount_out[31]_i_4_n_0\,
      I2 => generateOutPre0,
      I3 => \INFERRED_GEN.icount_out[31]_i_5_n_0\,
      I4 => \INFERRED_GEN.icount_out_reg[0]_0\,
      I5 => \INFERRED_GEN.icount_out_reg[0]_1\,
      O => generateOutPre0_reg
    );
\INFERRED_GEN.icount_out[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5755575F"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out[31]_i_5_n_0\,
      I1 => \INFERRED_GEN.icount_out[31]_i_3__0_n_0\,
      I2 => \INFERRED_GEN.icount_out_reg[0]_3\,
      I3 => \INFERRED_GEN.icount_out_reg[0]_4\,
      I4 => \INFERRED_GEN.icount_out_reg[0]_5\,
      I5 => \INFERRED_GEN.icount_out_reg[0]_6\,
      O => \TCSR0_GENERATE[20].TCSR0_FF_I\
    );
\INFERRED_GEN.icount_out[31]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Freeze_int,
      I1 => \INFERRED_GEN.icount_out_reg[0]_7\,
      O => \INFERRED_GEN.icount_out[31]_i_3__0_n_0\
    );
\INFERRED_GEN.icount_out[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => Freeze_int,
      I1 => \INFERRED_GEN.icount_out_reg[0]_2\,
      I2 => \INFERRED_GEN.icount_out_reg[0]_3\,
      O => \INFERRED_GEN.icount_out[31]_i_4_n_0\
    );
\INFERRED_GEN.icount_out[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF04FFFFFFFFFF"
    )
        port map (
      I0 => tCSR0_Reg(0),
      I1 => counter_TC(0),
      I2 => tCSR0_Reg(2),
      I3 => \INFERRED_GEN.icount_out_reg[0]_3\,
      I4 => Freeze_int,
      I5 => \INFERRED_GEN.icount_out_reg[0]_7\,
      O => \INFERRED_GEN.icount_out[31]_i_5_n_0\
    );
icount_out0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"656AAAAA"
    )
        port map (
      I0 => counterReg_DBus_0(0),
      I1 => tCSR0_Reg(1),
      I2 => \INFERRED_GEN.icount_out_reg[0]_3\,
      I3 => tCSR1_Reg(0),
      I4 => icount_out0_carry_i_6_n_0,
      O => S(0)
    );
\icount_out0_carry_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counterReg_DBus_32(0),
      I1 => \icount_out0_carry_i_6__0_n_0\,
      I2 => tCSR0_Reg(1),
      O => \INFERRED_GEN.icount_out_reg[1]\(0)
    );
icount_out0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out[31]_i_5_n_0\,
      I1 => generateOutPre0,
      I2 => Freeze_int,
      I3 => \INFERRED_GEN.icount_out_reg[0]_2\,
      I4 => \INFERRED_GEN.icount_out_reg[0]_3\,
      I5 => \INFERRED_GEN.icount_out_reg[0]\,
      O => icount_out0_carry_i_6_n_0
    );
\icount_out0_carry_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0400FFFF"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[0]_3\,
      I1 => \INFERRED_GEN.icount_out_reg[0]_7\,
      I2 => Freeze_int,
      I3 => \icount_out0_carry_i_5__0_0\,
      I4 => \INFERRED_GEN.icount_out[31]_i_5_n_0\,
      O => \icount_out0_carry_i_6__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_counter_f is
  port (
    \INFERRED_GEN.icount_out_reg[31]_0\ : out STD_LOGIC;
    s_axi_aresetn_0 : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[30]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[29]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[28]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[27]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[26]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[25]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[24]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[23]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[22]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[21]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[20]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[19]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[18]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[17]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[16]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[15]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[14]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[13]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[12]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[11]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[10]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[9]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[8]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[7]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[6]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[5]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[4]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[3]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[2]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[1]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_0\ : out STD_LOGIC;
    counter_TC : out STD_LOGIC_VECTOR ( 0 to 0 );
    generateOutPre10 : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[31]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[30]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[29]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[28]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[27]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[24]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[19]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[18]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[17]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[16]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[15]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[14]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[12]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[11]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[8]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[7]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[6]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[2]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[1]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[26]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[25]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[23]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[22]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[21]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[20]_1\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[13]_1\ : out STD_LOGIC;
    \LOAD_REG_GEN[21].LOAD_REG_I\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[9]_1\ : out STD_LOGIC;
    \LOAD_REG_GEN[26].LOAD_REG_I\ : out STD_LOGIC;
    \LOAD_REG_GEN[27].LOAD_REG_I\ : out STD_LOGIC;
    \LOAD_REG_GEN[28].LOAD_REG_I\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_2\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[31]_2\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    counterReg_DBus_32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    loadReg_DBus_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_counter_f : entity is "counter_f";
end ArtyA7_design_PmodAMP2_0_0_counter_f;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_counter_f is
  signal \INFERRED_GEN.icount_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[16]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[17]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[18]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[19]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[20]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[21]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[22]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[23]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[24]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[25]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[26]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[27]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[28]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[29]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[30]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[31]_i_2_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[32]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[0]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[10]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[11]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[12]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[13]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[14]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[15]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[16]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[17]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[18]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[19]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[1]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[20]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[21]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[22]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[23]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[24]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[25]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[26]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[27]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[28]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[29]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[2]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[30]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[31]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[3]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[4]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[5]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[6]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[7]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[8]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[9]_0\ : STD_LOGIC;
  signal \^counter_tc\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \icount_out0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_7\ : STD_LOGIC;
  signal \icount_out0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_7\ : STD_LOGIC;
  signal \icount_out0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_7\ : STD_LOGIC;
  signal \icount_out0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_7\ : STD_LOGIC;
  signal \icount_out0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_7\ : STD_LOGIC;
  signal \icount_out0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_7\ : STD_LOGIC;
  signal \icount_out0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_7\ : STD_LOGIC;
  signal icount_out0_carry_i_1_n_0 : STD_LOGIC;
  signal icount_out0_carry_i_2_n_0 : STD_LOGIC;
  signal icount_out0_carry_i_3_n_0 : STD_LOGIC;
  signal icount_out0_carry_i_4_n_0 : STD_LOGIC;
  signal icount_out0_carry_n_0 : STD_LOGIC;
  signal icount_out0_carry_n_1 : STD_LOGIC;
  signal icount_out0_carry_n_2 : STD_LOGIC;
  signal icount_out0_carry_n_3 : STD_LOGIC;
  signal icount_out0_carry_n_4 : STD_LOGIC;
  signal icount_out0_carry_n_5 : STD_LOGIC;
  signal icount_out0_carry_n_6 : STD_LOGIC;
  signal icount_out0_carry_n_7 : STD_LOGIC;
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  signal \NLW_icount_out0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[10]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[11]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[12]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[13]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[14]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[15]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[16]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[17]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[18]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[19]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[20]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[21]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[22]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[23]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[24]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[25]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[26]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[27]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[28]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[29]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[2]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[30]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[31]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[4]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[5]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[6]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[7]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[8]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[9]_i_1\ : label is "soft_lutpair54";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of icount_out0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__6\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \INFERRED_GEN.icount_out_reg[0]_0\ <= \^inferred_gen.icount_out_reg[0]_0\;
  \INFERRED_GEN.icount_out_reg[10]_0\ <= \^inferred_gen.icount_out_reg[10]_0\;
  \INFERRED_GEN.icount_out_reg[11]_0\ <= \^inferred_gen.icount_out_reg[11]_0\;
  \INFERRED_GEN.icount_out_reg[12]_0\ <= \^inferred_gen.icount_out_reg[12]_0\;
  \INFERRED_GEN.icount_out_reg[13]_0\ <= \^inferred_gen.icount_out_reg[13]_0\;
  \INFERRED_GEN.icount_out_reg[14]_0\ <= \^inferred_gen.icount_out_reg[14]_0\;
  \INFERRED_GEN.icount_out_reg[15]_0\ <= \^inferred_gen.icount_out_reg[15]_0\;
  \INFERRED_GEN.icount_out_reg[16]_0\ <= \^inferred_gen.icount_out_reg[16]_0\;
  \INFERRED_GEN.icount_out_reg[17]_0\ <= \^inferred_gen.icount_out_reg[17]_0\;
  \INFERRED_GEN.icount_out_reg[18]_0\ <= \^inferred_gen.icount_out_reg[18]_0\;
  \INFERRED_GEN.icount_out_reg[19]_0\ <= \^inferred_gen.icount_out_reg[19]_0\;
  \INFERRED_GEN.icount_out_reg[1]_0\ <= \^inferred_gen.icount_out_reg[1]_0\;
  \INFERRED_GEN.icount_out_reg[20]_0\ <= \^inferred_gen.icount_out_reg[20]_0\;
  \INFERRED_GEN.icount_out_reg[21]_0\ <= \^inferred_gen.icount_out_reg[21]_0\;
  \INFERRED_GEN.icount_out_reg[22]_0\ <= \^inferred_gen.icount_out_reg[22]_0\;
  \INFERRED_GEN.icount_out_reg[23]_0\ <= \^inferred_gen.icount_out_reg[23]_0\;
  \INFERRED_GEN.icount_out_reg[24]_0\ <= \^inferred_gen.icount_out_reg[24]_0\;
  \INFERRED_GEN.icount_out_reg[25]_0\ <= \^inferred_gen.icount_out_reg[25]_0\;
  \INFERRED_GEN.icount_out_reg[26]_0\ <= \^inferred_gen.icount_out_reg[26]_0\;
  \INFERRED_GEN.icount_out_reg[27]_0\ <= \^inferred_gen.icount_out_reg[27]_0\;
  \INFERRED_GEN.icount_out_reg[28]_0\ <= \^inferred_gen.icount_out_reg[28]_0\;
  \INFERRED_GEN.icount_out_reg[29]_0\ <= \^inferred_gen.icount_out_reg[29]_0\;
  \INFERRED_GEN.icount_out_reg[2]_0\ <= \^inferred_gen.icount_out_reg[2]_0\;
  \INFERRED_GEN.icount_out_reg[30]_0\ <= \^inferred_gen.icount_out_reg[30]_0\;
  \INFERRED_GEN.icount_out_reg[31]_0\ <= \^inferred_gen.icount_out_reg[31]_0\;
  \INFERRED_GEN.icount_out_reg[3]_0\ <= \^inferred_gen.icount_out_reg[3]_0\;
  \INFERRED_GEN.icount_out_reg[4]_0\ <= \^inferred_gen.icount_out_reg[4]_0\;
  \INFERRED_GEN.icount_out_reg[5]_0\ <= \^inferred_gen.icount_out_reg[5]_0\;
  \INFERRED_GEN.icount_out_reg[6]_0\ <= \^inferred_gen.icount_out_reg[6]_0\;
  \INFERRED_GEN.icount_out_reg[7]_0\ <= \^inferred_gen.icount_out_reg[7]_0\;
  \INFERRED_GEN.icount_out_reg[8]_0\ <= \^inferred_gen.icount_out_reg[8]_0\;
  \INFERRED_GEN.icount_out_reg[9]_0\ <= \^inferred_gen.icount_out_reg[9]_0\;
  counter_TC(0) <= \^counter_tc\(0);
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(31),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(31),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[31]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[21]_0\,
      I1 => \s_axi_rdata_i_reg[0]_1\,
      I2 => counterReg_DBus_32(21),
      I3 => \s_axi_rdata_i_reg[0]\,
      I4 => loadReg_DBus_0(21),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \INFERRED_GEN.icount_out_reg[21]_1\
    );
\GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[20]_0\,
      I1 => \s_axi_rdata_i_reg[0]_1\,
      I2 => counterReg_DBus_32(20),
      I3 => \s_axi_rdata_i_reg[0]\,
      I4 => loadReg_DBus_0(20),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \INFERRED_GEN.icount_out_reg[20]_1\
    );
\GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(19),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(19),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[19]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[19]_1\
    );
\GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(18),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(18),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[18]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[18]_1\
    );
\GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(17),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(17),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[17]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[17]_1\
    );
\GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(16),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => \^inferred_gen.icount_out_reg[16]_0\,
      I3 => \s_axi_rdata_i_reg[0]_1\,
      I4 => loadReg_DBus_0(16),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \INFERRED_GEN.icount_out_reg[16]_1\
    );
\GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(15),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(15),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[15]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[15]_1\
    );
\GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(14),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => \^inferred_gen.icount_out_reg[14]_0\,
      I3 => \s_axi_rdata_i_reg[0]_1\,
      I4 => loadReg_DBus_0(14),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \INFERRED_GEN.icount_out_reg[14]_1\
    );
\GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[13]_0\,
      I1 => \s_axi_rdata_i_reg[0]_1\,
      I2 => counterReg_DBus_32(13),
      I3 => \s_axi_rdata_i_reg[0]\,
      I4 => loadReg_DBus_0(13),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \INFERRED_GEN.icount_out_reg[13]_1\
    );
\GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(12),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(12),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[12]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[12]_1\
    );
\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(30),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => \^inferred_gen.icount_out_reg[30]_0\,
      I3 => \s_axi_rdata_i_reg[0]_1\,
      I4 => loadReg_DBus_0(30),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \INFERRED_GEN.icount_out_reg[30]_1\
    );
\GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(11),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(11),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[11]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[11]_1\
    );
\GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => loadReg_DBus_0(10),
      I1 => \s_axi_rdata_i_reg[0]_0\,
      I2 => counterReg_DBus_32(10),
      I3 => \s_axi_rdata_i_reg[0]\,
      I4 => \^inferred_gen.icount_out_reg[10]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \LOAD_REG_GEN[21].LOAD_REG_I\
    );
\GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[9]_0\,
      I1 => \s_axi_rdata_i_reg[0]_1\,
      I2 => counterReg_DBus_32(9),
      I3 => \s_axi_rdata_i_reg[0]\,
      I4 => loadReg_DBus_0(9),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \INFERRED_GEN.icount_out_reg[9]_1\
    );
\GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(8),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(8),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[8]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[8]_1\
    );
\GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(7),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(7),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[7]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[7]_1\
    );
\GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(6),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(6),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[6]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[6]_1\
    );
\GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => loadReg_DBus_0(5),
      I1 => \s_axi_rdata_i_reg[0]_0\,
      I2 => \^inferred_gen.icount_out_reg[5]_0\,
      I3 => \s_axi_rdata_i_reg[0]_1\,
      I4 => counterReg_DBus_32(5),
      I5 => \s_axi_rdata_i_reg[0]\,
      O => \LOAD_REG_GEN[26].LOAD_REG_I\
    );
\GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => loadReg_DBus_0(4),
      I1 => \s_axi_rdata_i_reg[0]_0\,
      I2 => \^inferred_gen.icount_out_reg[4]_0\,
      I3 => \s_axi_rdata_i_reg[0]_1\,
      I4 => counterReg_DBus_32(4),
      I5 => \s_axi_rdata_i_reg[0]\,
      O => \LOAD_REG_GEN[27].LOAD_REG_I\
    );
\GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => loadReg_DBus_0(3),
      I1 => \s_axi_rdata_i_reg[0]_0\,
      I2 => counterReg_DBus_32(3),
      I3 => \s_axi_rdata_i_reg[0]\,
      I4 => \^inferred_gen.icount_out_reg[3]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \LOAD_REG_GEN[28].LOAD_REG_I\
    );
\GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(2),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(2),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[2]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[2]_1\
    );
\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(29),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => \^inferred_gen.icount_out_reg[29]_0\,
      I3 => \s_axi_rdata_i_reg[0]_1\,
      I4 => loadReg_DBus_0(29),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \INFERRED_GEN.icount_out_reg[29]_1\
    );
\GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(1),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(1),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[1]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[1]_1\
    );
\GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(0),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(0),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[0]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[0]_1\
    );
\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(28),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(28),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[28]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[28]_1\
    );
\GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(27),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(27),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[27]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[27]_1\
    );
\GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[26]_0\,
      I1 => \s_axi_rdata_i_reg[0]_1\,
      I2 => counterReg_DBus_32(26),
      I3 => \s_axi_rdata_i_reg[0]\,
      I4 => loadReg_DBus_0(26),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \INFERRED_GEN.icount_out_reg[26]_1\
    );
\GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[25]_0\,
      I1 => \s_axi_rdata_i_reg[0]_1\,
      I2 => counterReg_DBus_32(25),
      I3 => \s_axi_rdata_i_reg[0]\,
      I4 => loadReg_DBus_0(25),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \INFERRED_GEN.icount_out_reg[25]_1\
    );
\GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => counterReg_DBus_32(24),
      I1 => \s_axi_rdata_i_reg[0]\,
      I2 => loadReg_DBus_0(24),
      I3 => \s_axi_rdata_i_reg[0]_0\,
      I4 => \^inferred_gen.icount_out_reg[24]_0\,
      I5 => \s_axi_rdata_i_reg[0]_1\,
      O => \INFERRED_GEN.icount_out_reg[24]_1\
    );
\GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[23]_0\,
      I1 => \s_axi_rdata_i_reg[0]_1\,
      I2 => counterReg_DBus_32(23),
      I3 => \s_axi_rdata_i_reg[0]\,
      I4 => loadReg_DBus_0(23),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \INFERRED_GEN.icount_out_reg[23]_1\
    );
\GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[22]_0\,
      I1 => \s_axi_rdata_i_reg[0]_1\,
      I2 => counterReg_DBus_32(22),
      I3 => \s_axi_rdata_i_reg[0]\,
      I4 => loadReg_DBus_0(22),
      I5 => \s_axi_rdata_i_reg[0]_0\,
      O => \INFERRED_GEN.icount_out_reg[22]_1\
    );
GenerateOut0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => loadReg_DBus_0(0),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \^inferred_gen.icount_out_reg[0]_0\,
      O => \INFERRED_GEN.icount_out[0]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(10),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__1_n_6\,
      O => \INFERRED_GEN.icount_out[10]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(11),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__1_n_5\,
      O => \INFERRED_GEN.icount_out[11]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(12),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__1_n_4\,
      O => \INFERRED_GEN.icount_out[12]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(13),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__2_n_7\,
      O => \INFERRED_GEN.icount_out[13]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(14),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__2_n_6\,
      O => \INFERRED_GEN.icount_out[14]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(15),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__2_n_5\,
      O => \INFERRED_GEN.icount_out[15]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(16),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__2_n_4\,
      O => \INFERRED_GEN.icount_out[16]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(17),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__3_n_7\,
      O => \INFERRED_GEN.icount_out[17]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(18),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__3_n_6\,
      O => \INFERRED_GEN.icount_out[18]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(19),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__3_n_5\,
      O => \INFERRED_GEN.icount_out[19]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(1),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => icount_out0_carry_n_7,
      O => \INFERRED_GEN.icount_out[1]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(20),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__3_n_4\,
      O => \INFERRED_GEN.icount_out[20]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(21),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__4_n_7\,
      O => \INFERRED_GEN.icount_out[21]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(22),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__4_n_6\,
      O => \INFERRED_GEN.icount_out[22]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(23),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__4_n_5\,
      O => \INFERRED_GEN.icount_out[23]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(24),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__4_n_4\,
      O => \INFERRED_GEN.icount_out[24]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(25),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__5_n_7\,
      O => \INFERRED_GEN.icount_out[25]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(26),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__5_n_6\,
      O => \INFERRED_GEN.icount_out[26]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(27),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__5_n_5\,
      O => \INFERRED_GEN.icount_out[27]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(28),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__5_n_4\,
      O => \INFERRED_GEN.icount_out[28]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(29),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__6_n_7\,
      O => \INFERRED_GEN.icount_out[29]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(2),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => icount_out0_carry_n_6,
      O => \INFERRED_GEN.icount_out[2]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(30),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__6_n_6\,
      O => \INFERRED_GEN.icount_out[30]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(31),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__6_n_5\,
      O => \INFERRED_GEN.icount_out[31]_i_2_n_0\
    );
\INFERRED_GEN.icount_out[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \icount_out0_carry__6_n_4\,
      I1 => \INFERRED_GEN.icount_out_reg[0]_2\,
      I2 => \^counter_tc\(0),
      I3 => s_axi_aresetn,
      I4 => \INFERRED_GEN.icount_out_reg[31]_2\,
      O => \INFERRED_GEN.icount_out[32]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(3),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => icount_out0_carry_n_5,
      O => \INFERRED_GEN.icount_out[3]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(4),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => icount_out0_carry_n_4,
      O => \INFERRED_GEN.icount_out[4]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(5),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__0_n_7\,
      O => \INFERRED_GEN.icount_out[5]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(6),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__0_n_6\,
      O => \INFERRED_GEN.icount_out[6]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(7),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__0_n_5\,
      O => \INFERRED_GEN.icount_out[7]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(8),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__0_n_4\,
      O => \INFERRED_GEN.icount_out[8]_i_1_n_0\
    );
\INFERRED_GEN.icount_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_0(9),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__1_n_7\,
      O => \INFERRED_GEN.icount_out[9]_i_1_n_0\
    );
\INFERRED_GEN.icount_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[0]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[0]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[10]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[10]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[11]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[11]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[12]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[12]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[13]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[13]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[14]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[14]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[15]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[15]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[16]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[16]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[17]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[17]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[18]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[18]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[19]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[19]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[1]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[1]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[20]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[20]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[21]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[21]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[22]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[22]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[23]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[23]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[24]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[24]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[25]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[25]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[26]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[26]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[27]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[27]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[28]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[28]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[29]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[29]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[2]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[2]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[30]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[30]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[31]_i_2_n_0\,
      Q => \^inferred_gen.icount_out_reg[31]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INFERRED_GEN.icount_out[32]_i_1_n_0\,
      Q => \^counter_tc\(0),
      R => '0'
    );
\INFERRED_GEN.icount_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[3]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[3]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[4]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[4]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[5]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[5]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[6]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[6]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[7]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[7]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[8]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[8]_0\,
      R => \^s_axi_aresetn_0\
    );
\INFERRED_GEN.icount_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_2\,
      D => \INFERRED_GEN.icount_out[9]_i_1_n_0\,
      Q => \^inferred_gen.icount_out_reg[9]_0\,
      R => \^s_axi_aresetn_0\
    );
generateOutPre1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_tc\(0),
      I1 => Q(0),
      O => generateOutPre10
    );
icount_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icount_out0_carry_n_0,
      CO(2) => icount_out0_carry_n_1,
      CO(1) => icount_out0_carry_n_2,
      CO(0) => icount_out0_carry_n_3,
      CYINIT => \^inferred_gen.icount_out_reg[0]_0\,
      DI(3) => \^inferred_gen.icount_out_reg[3]_0\,
      DI(2) => \^inferred_gen.icount_out_reg[2]_0\,
      DI(1) => \^inferred_gen.icount_out_reg[1]_0\,
      DI(0) => icount_out0_carry_i_1_n_0,
      O(3) => icount_out0_carry_n_4,
      O(2) => icount_out0_carry_n_5,
      O(1) => icount_out0_carry_n_6,
      O(0) => icount_out0_carry_n_7,
      S(3) => icount_out0_carry_i_2_n_0,
      S(2) => icount_out0_carry_i_3_n_0,
      S(1) => icount_out0_carry_i_4_n_0,
      S(0) => S(0)
    );
\icount_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => icount_out0_carry_n_0,
      CO(3) => \icount_out0_carry__0_n_0\,
      CO(2) => \icount_out0_carry__0_n_1\,
      CO(1) => \icount_out0_carry__0_n_2\,
      CO(0) => \icount_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \^inferred_gen.icount_out_reg[7]_0\,
      DI(2) => \^inferred_gen.icount_out_reg[6]_0\,
      DI(1) => \^inferred_gen.icount_out_reg[5]_0\,
      DI(0) => \^inferred_gen.icount_out_reg[4]_0\,
      O(3) => \icount_out0_carry__0_n_4\,
      O(2) => \icount_out0_carry__0_n_5\,
      O(1) => \icount_out0_carry__0_n_6\,
      O(0) => \icount_out0_carry__0_n_7\,
      S(3) => \icount_out0_carry__0_i_1_n_0\,
      S(2) => \icount_out0_carry__0_i_2_n_0\,
      S(1) => \icount_out0_carry__0_i_3_n_0\,
      S(0) => \icount_out0_carry__0_i_4_n_0\
    );
\icount_out0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[7]_0\,
      I1 => \^inferred_gen.icount_out_reg[8]_0\,
      O => \icount_out0_carry__0_i_1_n_0\
    );
\icount_out0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[6]_0\,
      I1 => \^inferred_gen.icount_out_reg[7]_0\,
      O => \icount_out0_carry__0_i_2_n_0\
    );
\icount_out0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[5]_0\,
      I1 => \^inferred_gen.icount_out_reg[6]_0\,
      O => \icount_out0_carry__0_i_3_n_0\
    );
\icount_out0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[4]_0\,
      I1 => \^inferred_gen.icount_out_reg[5]_0\,
      O => \icount_out0_carry__0_i_4_n_0\
    );
\icount_out0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \icount_out0_carry__0_n_0\,
      CO(3) => \icount_out0_carry__1_n_0\,
      CO(2) => \icount_out0_carry__1_n_1\,
      CO(1) => \icount_out0_carry__1_n_2\,
      CO(0) => \icount_out0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \^inferred_gen.icount_out_reg[11]_0\,
      DI(2) => \^inferred_gen.icount_out_reg[10]_0\,
      DI(1) => \^inferred_gen.icount_out_reg[9]_0\,
      DI(0) => \^inferred_gen.icount_out_reg[8]_0\,
      O(3) => \icount_out0_carry__1_n_4\,
      O(2) => \icount_out0_carry__1_n_5\,
      O(1) => \icount_out0_carry__1_n_6\,
      O(0) => \icount_out0_carry__1_n_7\,
      S(3) => \icount_out0_carry__1_i_1_n_0\,
      S(2) => \icount_out0_carry__1_i_2_n_0\,
      S(1) => \icount_out0_carry__1_i_3_n_0\,
      S(0) => \icount_out0_carry__1_i_4_n_0\
    );
\icount_out0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[11]_0\,
      I1 => \^inferred_gen.icount_out_reg[12]_0\,
      O => \icount_out0_carry__1_i_1_n_0\
    );
\icount_out0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[10]_0\,
      I1 => \^inferred_gen.icount_out_reg[11]_0\,
      O => \icount_out0_carry__1_i_2_n_0\
    );
\icount_out0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[9]_0\,
      I1 => \^inferred_gen.icount_out_reg[10]_0\,
      O => \icount_out0_carry__1_i_3_n_0\
    );
\icount_out0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[8]_0\,
      I1 => \^inferred_gen.icount_out_reg[9]_0\,
      O => \icount_out0_carry__1_i_4_n_0\
    );
\icount_out0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \icount_out0_carry__1_n_0\,
      CO(3) => \icount_out0_carry__2_n_0\,
      CO(2) => \icount_out0_carry__2_n_1\,
      CO(1) => \icount_out0_carry__2_n_2\,
      CO(0) => \icount_out0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \^inferred_gen.icount_out_reg[15]_0\,
      DI(2) => \^inferred_gen.icount_out_reg[14]_0\,
      DI(1) => \^inferred_gen.icount_out_reg[13]_0\,
      DI(0) => \^inferred_gen.icount_out_reg[12]_0\,
      O(3) => \icount_out0_carry__2_n_4\,
      O(2) => \icount_out0_carry__2_n_5\,
      O(1) => \icount_out0_carry__2_n_6\,
      O(0) => \icount_out0_carry__2_n_7\,
      S(3) => \icount_out0_carry__2_i_1_n_0\,
      S(2) => \icount_out0_carry__2_i_2_n_0\,
      S(1) => \icount_out0_carry__2_i_3_n_0\,
      S(0) => \icount_out0_carry__2_i_4_n_0\
    );
\icount_out0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[15]_0\,
      I1 => \^inferred_gen.icount_out_reg[16]_0\,
      O => \icount_out0_carry__2_i_1_n_0\
    );
\icount_out0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[14]_0\,
      I1 => \^inferred_gen.icount_out_reg[15]_0\,
      O => \icount_out0_carry__2_i_2_n_0\
    );
\icount_out0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[13]_0\,
      I1 => \^inferred_gen.icount_out_reg[14]_0\,
      O => \icount_out0_carry__2_i_3_n_0\
    );
\icount_out0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[12]_0\,
      I1 => \^inferred_gen.icount_out_reg[13]_0\,
      O => \icount_out0_carry__2_i_4_n_0\
    );
\icount_out0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \icount_out0_carry__2_n_0\,
      CO(3) => \icount_out0_carry__3_n_0\,
      CO(2) => \icount_out0_carry__3_n_1\,
      CO(1) => \icount_out0_carry__3_n_2\,
      CO(0) => \icount_out0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \^inferred_gen.icount_out_reg[19]_0\,
      DI(2) => \^inferred_gen.icount_out_reg[18]_0\,
      DI(1) => \^inferred_gen.icount_out_reg[17]_0\,
      DI(0) => \^inferred_gen.icount_out_reg[16]_0\,
      O(3) => \icount_out0_carry__3_n_4\,
      O(2) => \icount_out0_carry__3_n_5\,
      O(1) => \icount_out0_carry__3_n_6\,
      O(0) => \icount_out0_carry__3_n_7\,
      S(3) => \icount_out0_carry__3_i_1_n_0\,
      S(2) => \icount_out0_carry__3_i_2_n_0\,
      S(1) => \icount_out0_carry__3_i_3_n_0\,
      S(0) => \icount_out0_carry__3_i_4_n_0\
    );
\icount_out0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[19]_0\,
      I1 => \^inferred_gen.icount_out_reg[20]_0\,
      O => \icount_out0_carry__3_i_1_n_0\
    );
\icount_out0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[18]_0\,
      I1 => \^inferred_gen.icount_out_reg[19]_0\,
      O => \icount_out0_carry__3_i_2_n_0\
    );
\icount_out0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[17]_0\,
      I1 => \^inferred_gen.icount_out_reg[18]_0\,
      O => \icount_out0_carry__3_i_3_n_0\
    );
\icount_out0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[16]_0\,
      I1 => \^inferred_gen.icount_out_reg[17]_0\,
      O => \icount_out0_carry__3_i_4_n_0\
    );
\icount_out0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \icount_out0_carry__3_n_0\,
      CO(3) => \icount_out0_carry__4_n_0\,
      CO(2) => \icount_out0_carry__4_n_1\,
      CO(1) => \icount_out0_carry__4_n_2\,
      CO(0) => \icount_out0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \^inferred_gen.icount_out_reg[23]_0\,
      DI(2) => \^inferred_gen.icount_out_reg[22]_0\,
      DI(1) => \^inferred_gen.icount_out_reg[21]_0\,
      DI(0) => \^inferred_gen.icount_out_reg[20]_0\,
      O(3) => \icount_out0_carry__4_n_4\,
      O(2) => \icount_out0_carry__4_n_5\,
      O(1) => \icount_out0_carry__4_n_6\,
      O(0) => \icount_out0_carry__4_n_7\,
      S(3) => \icount_out0_carry__4_i_1_n_0\,
      S(2) => \icount_out0_carry__4_i_2_n_0\,
      S(1) => \icount_out0_carry__4_i_3_n_0\,
      S(0) => \icount_out0_carry__4_i_4_n_0\
    );
\icount_out0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[23]_0\,
      I1 => \^inferred_gen.icount_out_reg[24]_0\,
      O => \icount_out0_carry__4_i_1_n_0\
    );
\icount_out0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[22]_0\,
      I1 => \^inferred_gen.icount_out_reg[23]_0\,
      O => \icount_out0_carry__4_i_2_n_0\
    );
\icount_out0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[21]_0\,
      I1 => \^inferred_gen.icount_out_reg[22]_0\,
      O => \icount_out0_carry__4_i_3_n_0\
    );
\icount_out0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[20]_0\,
      I1 => \^inferred_gen.icount_out_reg[21]_0\,
      O => \icount_out0_carry__4_i_4_n_0\
    );
\icount_out0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \icount_out0_carry__4_n_0\,
      CO(3) => \icount_out0_carry__5_n_0\,
      CO(2) => \icount_out0_carry__5_n_1\,
      CO(1) => \icount_out0_carry__5_n_2\,
      CO(0) => \icount_out0_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \^inferred_gen.icount_out_reg[27]_0\,
      DI(2) => \^inferred_gen.icount_out_reg[26]_0\,
      DI(1) => \^inferred_gen.icount_out_reg[25]_0\,
      DI(0) => \^inferred_gen.icount_out_reg[24]_0\,
      O(3) => \icount_out0_carry__5_n_4\,
      O(2) => \icount_out0_carry__5_n_5\,
      O(1) => \icount_out0_carry__5_n_6\,
      O(0) => \icount_out0_carry__5_n_7\,
      S(3) => \icount_out0_carry__5_i_1_n_0\,
      S(2) => \icount_out0_carry__5_i_2_n_0\,
      S(1) => \icount_out0_carry__5_i_3_n_0\,
      S(0) => \icount_out0_carry__5_i_4_n_0\
    );
\icount_out0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[27]_0\,
      I1 => \^inferred_gen.icount_out_reg[28]_0\,
      O => \icount_out0_carry__5_i_1_n_0\
    );
\icount_out0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[26]_0\,
      I1 => \^inferred_gen.icount_out_reg[27]_0\,
      O => \icount_out0_carry__5_i_2_n_0\
    );
\icount_out0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[25]_0\,
      I1 => \^inferred_gen.icount_out_reg[26]_0\,
      O => \icount_out0_carry__5_i_3_n_0\
    );
\icount_out0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[24]_0\,
      I1 => \^inferred_gen.icount_out_reg[25]_0\,
      O => \icount_out0_carry__5_i_4_n_0\
    );
\icount_out0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \icount_out0_carry__5_n_0\,
      CO(3) => \NLW_icount_out0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \icount_out0_carry__6_n_1\,
      CO(1) => \icount_out0_carry__6_n_2\,
      CO(0) => \icount_out0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \^inferred_gen.icount_out_reg[30]_0\,
      DI(1) => \^inferred_gen.icount_out_reg[29]_0\,
      DI(0) => \^inferred_gen.icount_out_reg[28]_0\,
      O(3) => \icount_out0_carry__6_n_4\,
      O(2) => \icount_out0_carry__6_n_5\,
      O(1) => \icount_out0_carry__6_n_6\,
      O(0) => \icount_out0_carry__6_n_7\,
      S(3) => \icount_out0_carry__6_i_1_n_0\,
      S(2) => \icount_out0_carry__6_i_2_n_0\,
      S(1) => \icount_out0_carry__6_i_3_n_0\,
      S(0) => \icount_out0_carry__6_i_4_n_0\
    );
\icount_out0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[31]_0\,
      O => \icount_out0_carry__6_i_1_n_0\
    );
\icount_out0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[30]_0\,
      I1 => \^inferred_gen.icount_out_reg[31]_0\,
      O => \icount_out0_carry__6_i_2_n_0\
    );
\icount_out0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[29]_0\,
      I1 => \^inferred_gen.icount_out_reg[30]_0\,
      O => \icount_out0_carry__6_i_3_n_0\
    );
\icount_out0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[28]_0\,
      I1 => \^inferred_gen.icount_out_reg[29]_0\,
      O => \icount_out0_carry__6_i_4_n_0\
    );
icount_out0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[1]_0\,
      O => icount_out0_carry_i_1_n_0
    );
icount_out0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[3]_0\,
      I1 => \^inferred_gen.icount_out_reg[4]_0\,
      O => icount_out0_carry_i_2_n_0
    );
icount_out0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[2]_0\,
      I1 => \^inferred_gen.icount_out_reg[3]_0\,
      O => icount_out0_carry_i_3_n_0
    );
icount_out0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[1]_0\,
      I1 => \^inferred_gen.icount_out_reg[2]_0\,
      O => icount_out0_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_counter_f_3 is
  port (
    \INFERRED_GEN.icount_out_reg[31]_0\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \INFERRED_GEN.icount_out_reg[27]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \INFERRED_GEN.icount_out_reg[0]_0\ : out STD_LOGIC;
    counter_TC : out STD_LOGIC_VECTOR ( 0 to 0 );
    generateOutPre00 : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[31]_1\ : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_1\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[31]_2\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    loadReg_DBus_32 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \INFERRED_GEN.icount_out_reg[31]_3\ : in STD_LOGIC_VECTOR ( 20 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_counter_f_3 : entity is "counter_f";
end ArtyA7_design_PmodAMP2_0_0_counter_f_3;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_counter_f_3 is
  signal \^di\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \INFERRED_GEN.icount_out[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[0]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[11]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^inferred_gen.icount_out_reg[15]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^inferred_gen.icount_out_reg[19]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^inferred_gen.icount_out_reg[23]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^inferred_gen.icount_out_reg[27]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^inferred_gen.icount_out_reg[31]_0\ : STD_LOGIC;
  signal \^inferred_gen.icount_out_reg[3]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^inferred_gen.icount_out_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^counter_tc\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \icount_out0_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_7\ : STD_LOGIC;
  signal \icount_out0_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__1_n_7\ : STD_LOGIC;
  signal \icount_out0_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__2_n_7\ : STD_LOGIC;
  signal \icount_out0_carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__3_i_3__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__3_i_4__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__3_n_7\ : STD_LOGIC;
  signal \icount_out0_carry__4_i_1__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__4_i_2__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__4_i_3__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__4_i_4__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__4_n_7\ : STD_LOGIC;
  signal \icount_out0_carry__5_i_1__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__5_i_2__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__5_i_3__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__5_i_4__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__5_n_7\ : STD_LOGIC;
  signal \icount_out0_carry__6_i_1__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__6_i_2__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__6_i_3__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__6_i_4__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_1\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_4\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__6_n_7\ : STD_LOGIC;
  signal \icount_out0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \icount_out0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal icount_out0_carry_n_0 : STD_LOGIC;
  signal icount_out0_carry_n_1 : STD_LOGIC;
  signal icount_out0_carry_n_2 : STD_LOGIC;
  signal icount_out0_carry_n_3 : STD_LOGIC;
  signal icount_out0_carry_n_4 : STD_LOGIC;
  signal icount_out0_carry_n_5 : STD_LOGIC;
  signal icount_out0_carry_n_6 : STD_LOGIC;
  signal icount_out0_carry_n_7 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_icount_out0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[0]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[10]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[11]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[12]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[13]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[14]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[15]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[16]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[17]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[18]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[19]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[1]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[20]_i_1__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[21]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[22]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[23]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[24]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[25]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[26]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[27]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[28]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[29]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[2]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[30]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[31]_i_2__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[3]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[4]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[5]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[6]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[7]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[8]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[9]_i_1__0\ : label is "soft_lutpair38";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of icount_out0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__6\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  DI(2 downto 0) <= \^di\(2 downto 0);
  \INFERRED_GEN.icount_out_reg[0]_0\ <= \^inferred_gen.icount_out_reg[0]_0\;
  \INFERRED_GEN.icount_out_reg[11]_0\(3 downto 0) <= \^inferred_gen.icount_out_reg[11]_0\(3 downto 0);
  \INFERRED_GEN.icount_out_reg[15]_0\(3 downto 0) <= \^inferred_gen.icount_out_reg[15]_0\(3 downto 0);
  \INFERRED_GEN.icount_out_reg[19]_0\(3 downto 0) <= \^inferred_gen.icount_out_reg[19]_0\(3 downto 0);
  \INFERRED_GEN.icount_out_reg[23]_0\(3 downto 0) <= \^inferred_gen.icount_out_reg[23]_0\(3 downto 0);
  \INFERRED_GEN.icount_out_reg[27]_0\(3 downto 0) <= \^inferred_gen.icount_out_reg[27]_0\(3 downto 0);
  \INFERRED_GEN.icount_out_reg[31]_0\ <= \^inferred_gen.icount_out_reg[31]_0\;
  \INFERRED_GEN.icount_out_reg[3]_0\(2 downto 0) <= \^inferred_gen.icount_out_reg[3]_0\(2 downto 0);
  \INFERRED_GEN.icount_out_reg[7]_0\(3 downto 0) <= \^inferred_gen.icount_out_reg[7]_0\(3 downto 0);
  counter_TC(0) <= \^counter_tc\(0);
\INFERRED_GEN.icount_out[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => loadReg_DBus_32(0),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \^inferred_gen.icount_out_reg[0]_0\,
      O => p_1_in(0)
    );
\INFERRED_GEN.icount_out[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_32(10),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__1_n_6\,
      O => p_1_in(10)
    );
\INFERRED_GEN.icount_out[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(0),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__1_n_5\,
      O => p_1_in(11)
    );
\INFERRED_GEN.icount_out[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(1),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__1_n_4\,
      O => p_1_in(12)
    );
\INFERRED_GEN.icount_out[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(2),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__2_n_7\,
      O => p_1_in(13)
    );
\INFERRED_GEN.icount_out[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(3),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__2_n_6\,
      O => p_1_in(14)
    );
\INFERRED_GEN.icount_out[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(4),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__2_n_5\,
      O => p_1_in(15)
    );
\INFERRED_GEN.icount_out[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(5),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__2_n_4\,
      O => p_1_in(16)
    );
\INFERRED_GEN.icount_out[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(6),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__3_n_7\,
      O => p_1_in(17)
    );
\INFERRED_GEN.icount_out[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(7),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__3_n_6\,
      O => p_1_in(18)
    );
\INFERRED_GEN.icount_out[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(8),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__3_n_5\,
      O => p_1_in(19)
    );
\INFERRED_GEN.icount_out[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_32(1),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => icount_out0_carry_n_7,
      O => p_1_in(1)
    );
\INFERRED_GEN.icount_out[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(9),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__3_n_4\,
      O => p_1_in(20)
    );
\INFERRED_GEN.icount_out[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(10),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__4_n_7\,
      O => p_1_in(21)
    );
\INFERRED_GEN.icount_out[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(11),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__4_n_6\,
      O => p_1_in(22)
    );
\INFERRED_GEN.icount_out[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(12),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__4_n_5\,
      O => p_1_in(23)
    );
\INFERRED_GEN.icount_out[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(13),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__4_n_4\,
      O => p_1_in(24)
    );
\INFERRED_GEN.icount_out[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(14),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__5_n_7\,
      O => p_1_in(25)
    );
\INFERRED_GEN.icount_out[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(15),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__5_n_6\,
      O => p_1_in(26)
    );
\INFERRED_GEN.icount_out[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(16),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__5_n_5\,
      O => p_1_in(27)
    );
\INFERRED_GEN.icount_out[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(17),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__5_n_4\,
      O => p_1_in(28)
    );
\INFERRED_GEN.icount_out[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(18),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__6_n_7\,
      O => p_1_in(29)
    );
\INFERRED_GEN.icount_out[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_32(2),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => icount_out0_carry_n_6,
      O => p_1_in(2)
    );
\INFERRED_GEN.icount_out[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(19),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__6_n_6\,
      O => p_1_in(30)
    );
\INFERRED_GEN.icount_out[31]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out_reg[31]_3\(20),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__6_n_5\,
      O => p_1_in(31)
    );
\INFERRED_GEN.icount_out[32]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \icount_out0_carry__6_n_4\,
      I1 => \INFERRED_GEN.icount_out_reg[0]_1\,
      I2 => \^counter_tc\(0),
      I3 => s_axi_aresetn,
      I4 => \INFERRED_GEN.icount_out_reg[31]_2\,
      O => \INFERRED_GEN.icount_out[32]_i_1__0_n_0\
    );
\INFERRED_GEN.icount_out[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_32(3),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => icount_out0_carry_n_5,
      O => p_1_in(3)
    );
\INFERRED_GEN.icount_out[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_32(4),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => icount_out0_carry_n_4,
      O => p_1_in(4)
    );
\INFERRED_GEN.icount_out[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_32(5),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__0_n_7\,
      O => p_1_in(5)
    );
\INFERRED_GEN.icount_out[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_32(6),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__0_n_6\,
      O => p_1_in(6)
    );
\INFERRED_GEN.icount_out[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_32(7),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__0_n_5\,
      O => p_1_in(7)
    );
\INFERRED_GEN.icount_out[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_32(8),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__0_n_4\,
      O => p_1_in(8)
    );
\INFERRED_GEN.icount_out[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => loadReg_DBus_32(9),
      I1 => \INFERRED_GEN.icount_out_reg[31]_2\,
      I2 => \icount_out0_carry__1_n_7\,
      O => p_1_in(9)
    );
\INFERRED_GEN.icount_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(0),
      Q => \^inferred_gen.icount_out_reg[0]_0\,
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(10),
      Q => \^inferred_gen.icount_out_reg[11]_0\(2),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(11),
      Q => \^inferred_gen.icount_out_reg[11]_0\(3),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(12),
      Q => \^inferred_gen.icount_out_reg[15]_0\(0),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(13),
      Q => \^inferred_gen.icount_out_reg[15]_0\(1),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(14),
      Q => \^inferred_gen.icount_out_reg[15]_0\(2),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(15),
      Q => \^inferred_gen.icount_out_reg[15]_0\(3),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(16),
      Q => \^inferred_gen.icount_out_reg[19]_0\(0),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(17),
      Q => \^inferred_gen.icount_out_reg[19]_0\(1),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(18),
      Q => \^inferred_gen.icount_out_reg[19]_0\(2),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(19),
      Q => \^inferred_gen.icount_out_reg[19]_0\(3),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(1),
      Q => \^inferred_gen.icount_out_reg[3]_0\(0),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(20),
      Q => \^inferred_gen.icount_out_reg[23]_0\(0),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(21),
      Q => \^inferred_gen.icount_out_reg[23]_0\(1),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(22),
      Q => \^inferred_gen.icount_out_reg[23]_0\(2),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(23),
      Q => \^inferred_gen.icount_out_reg[23]_0\(3),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(24),
      Q => \^inferred_gen.icount_out_reg[27]_0\(0),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(25),
      Q => \^inferred_gen.icount_out_reg[27]_0\(1),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(26),
      Q => \^inferred_gen.icount_out_reg[27]_0\(2),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(27),
      Q => \^inferred_gen.icount_out_reg[27]_0\(3),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(28),
      Q => \^di\(0),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(29),
      Q => \^di\(1),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(2),
      Q => \^inferred_gen.icount_out_reg[3]_0\(1),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(30),
      Q => \^di\(2),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(31),
      Q => \^inferred_gen.icount_out_reg[31]_0\,
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INFERRED_GEN.icount_out[32]_i_1__0_n_0\,
      Q => \^counter_tc\(0),
      R => '0'
    );
\INFERRED_GEN.icount_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(3),
      Q => \^inferred_gen.icount_out_reg[3]_0\(2),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(4),
      Q => \^inferred_gen.icount_out_reg[7]_0\(0),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(5),
      Q => \^inferred_gen.icount_out_reg[7]_0\(1),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(6),
      Q => \^inferred_gen.icount_out_reg[7]_0\(2),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(7),
      Q => \^inferred_gen.icount_out_reg[7]_0\(3),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(8),
      Q => \^inferred_gen.icount_out_reg[11]_0\(0),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
\INFERRED_GEN.icount_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \INFERRED_GEN.icount_out_reg[0]_1\,
      D => p_1_in(9),
      Q => \^inferred_gen.icount_out_reg[11]_0\(1),
      R => \INFERRED_GEN.icount_out_reg[31]_1\
    );
generateOutPre0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_tc\(0),
      I1 => Q(0),
      O => generateOutPre00
    );
icount_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icount_out0_carry_n_0,
      CO(2) => icount_out0_carry_n_1,
      CO(1) => icount_out0_carry_n_2,
      CO(0) => icount_out0_carry_n_3,
      CYINIT => \^inferred_gen.icount_out_reg[0]_0\,
      DI(3 downto 1) => \^inferred_gen.icount_out_reg[3]_0\(2 downto 0),
      DI(0) => \icount_out0_carry_i_1__0_n_0\,
      O(3) => icount_out0_carry_n_4,
      O(2) => icount_out0_carry_n_5,
      O(1) => icount_out0_carry_n_6,
      O(0) => icount_out0_carry_n_7,
      S(3) => \icount_out0_carry_i_2__0_n_0\,
      S(2) => \icount_out0_carry_i_3__0_n_0\,
      S(1) => \icount_out0_carry_i_4__0_n_0\,
      S(0) => S(0)
    );
\icount_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => icount_out0_carry_n_0,
      CO(3) => \icount_out0_carry__0_n_0\,
      CO(2) => \icount_out0_carry__0_n_1\,
      CO(1) => \icount_out0_carry__0_n_2\,
      CO(0) => \icount_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^inferred_gen.icount_out_reg[7]_0\(3 downto 0),
      O(3) => \icount_out0_carry__0_n_4\,
      O(2) => \icount_out0_carry__0_n_5\,
      O(1) => \icount_out0_carry__0_n_6\,
      O(0) => \icount_out0_carry__0_n_7\,
      S(3) => \icount_out0_carry__0_i_1__0_n_0\,
      S(2) => \icount_out0_carry__0_i_2__0_n_0\,
      S(1) => \icount_out0_carry__0_i_3__0_n_0\,
      S(0) => \icount_out0_carry__0_i_4__0_n_0\
    );
\icount_out0_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[7]_0\(3),
      I1 => \^inferred_gen.icount_out_reg[11]_0\(0),
      O => \icount_out0_carry__0_i_1__0_n_0\
    );
\icount_out0_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[7]_0\(2),
      I1 => \^inferred_gen.icount_out_reg[7]_0\(3),
      O => \icount_out0_carry__0_i_2__0_n_0\
    );
\icount_out0_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[7]_0\(1),
      I1 => \^inferred_gen.icount_out_reg[7]_0\(2),
      O => \icount_out0_carry__0_i_3__0_n_0\
    );
\icount_out0_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[7]_0\(0),
      I1 => \^inferred_gen.icount_out_reg[7]_0\(1),
      O => \icount_out0_carry__0_i_4__0_n_0\
    );
\icount_out0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \icount_out0_carry__0_n_0\,
      CO(3) => \icount_out0_carry__1_n_0\,
      CO(2) => \icount_out0_carry__1_n_1\,
      CO(1) => \icount_out0_carry__1_n_2\,
      CO(0) => \icount_out0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^inferred_gen.icount_out_reg[11]_0\(3 downto 0),
      O(3) => \icount_out0_carry__1_n_4\,
      O(2) => \icount_out0_carry__1_n_5\,
      O(1) => \icount_out0_carry__1_n_6\,
      O(0) => \icount_out0_carry__1_n_7\,
      S(3) => \icount_out0_carry__1_i_1__0_n_0\,
      S(2) => \icount_out0_carry__1_i_2__0_n_0\,
      S(1) => \icount_out0_carry__1_i_3__0_n_0\,
      S(0) => \icount_out0_carry__1_i_4__0_n_0\
    );
\icount_out0_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[11]_0\(3),
      I1 => \^inferred_gen.icount_out_reg[15]_0\(0),
      O => \icount_out0_carry__1_i_1__0_n_0\
    );
\icount_out0_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[11]_0\(2),
      I1 => \^inferred_gen.icount_out_reg[11]_0\(3),
      O => \icount_out0_carry__1_i_2__0_n_0\
    );
\icount_out0_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[11]_0\(1),
      I1 => \^inferred_gen.icount_out_reg[11]_0\(2),
      O => \icount_out0_carry__1_i_3__0_n_0\
    );
\icount_out0_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[11]_0\(0),
      I1 => \^inferred_gen.icount_out_reg[11]_0\(1),
      O => \icount_out0_carry__1_i_4__0_n_0\
    );
\icount_out0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \icount_out0_carry__1_n_0\,
      CO(3) => \icount_out0_carry__2_n_0\,
      CO(2) => \icount_out0_carry__2_n_1\,
      CO(1) => \icount_out0_carry__2_n_2\,
      CO(0) => \icount_out0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^inferred_gen.icount_out_reg[15]_0\(3 downto 0),
      O(3) => \icount_out0_carry__2_n_4\,
      O(2) => \icount_out0_carry__2_n_5\,
      O(1) => \icount_out0_carry__2_n_6\,
      O(0) => \icount_out0_carry__2_n_7\,
      S(3) => \icount_out0_carry__2_i_1__0_n_0\,
      S(2) => \icount_out0_carry__2_i_2__0_n_0\,
      S(1) => \icount_out0_carry__2_i_3__0_n_0\,
      S(0) => \icount_out0_carry__2_i_4__0_n_0\
    );
\icount_out0_carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[15]_0\(3),
      I1 => \^inferred_gen.icount_out_reg[19]_0\(0),
      O => \icount_out0_carry__2_i_1__0_n_0\
    );
\icount_out0_carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[15]_0\(2),
      I1 => \^inferred_gen.icount_out_reg[15]_0\(3),
      O => \icount_out0_carry__2_i_2__0_n_0\
    );
\icount_out0_carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[15]_0\(1),
      I1 => \^inferred_gen.icount_out_reg[15]_0\(2),
      O => \icount_out0_carry__2_i_3__0_n_0\
    );
\icount_out0_carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[15]_0\(0),
      I1 => \^inferred_gen.icount_out_reg[15]_0\(1),
      O => \icount_out0_carry__2_i_4__0_n_0\
    );
\icount_out0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \icount_out0_carry__2_n_0\,
      CO(3) => \icount_out0_carry__3_n_0\,
      CO(2) => \icount_out0_carry__3_n_1\,
      CO(1) => \icount_out0_carry__3_n_2\,
      CO(0) => \icount_out0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^inferred_gen.icount_out_reg[19]_0\(3 downto 0),
      O(3) => \icount_out0_carry__3_n_4\,
      O(2) => \icount_out0_carry__3_n_5\,
      O(1) => \icount_out0_carry__3_n_6\,
      O(0) => \icount_out0_carry__3_n_7\,
      S(3) => \icount_out0_carry__3_i_1__0_n_0\,
      S(2) => \icount_out0_carry__3_i_2__0_n_0\,
      S(1) => \icount_out0_carry__3_i_3__0_n_0\,
      S(0) => \icount_out0_carry__3_i_4__0_n_0\
    );
\icount_out0_carry__3_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[19]_0\(3),
      I1 => \^inferred_gen.icount_out_reg[23]_0\(0),
      O => \icount_out0_carry__3_i_1__0_n_0\
    );
\icount_out0_carry__3_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[19]_0\(2),
      I1 => \^inferred_gen.icount_out_reg[19]_0\(3),
      O => \icount_out0_carry__3_i_2__0_n_0\
    );
\icount_out0_carry__3_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[19]_0\(1),
      I1 => \^inferred_gen.icount_out_reg[19]_0\(2),
      O => \icount_out0_carry__3_i_3__0_n_0\
    );
\icount_out0_carry__3_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[19]_0\(0),
      I1 => \^inferred_gen.icount_out_reg[19]_0\(1),
      O => \icount_out0_carry__3_i_4__0_n_0\
    );
\icount_out0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \icount_out0_carry__3_n_0\,
      CO(3) => \icount_out0_carry__4_n_0\,
      CO(2) => \icount_out0_carry__4_n_1\,
      CO(1) => \icount_out0_carry__4_n_2\,
      CO(0) => \icount_out0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^inferred_gen.icount_out_reg[23]_0\(3 downto 0),
      O(3) => \icount_out0_carry__4_n_4\,
      O(2) => \icount_out0_carry__4_n_5\,
      O(1) => \icount_out0_carry__4_n_6\,
      O(0) => \icount_out0_carry__4_n_7\,
      S(3) => \icount_out0_carry__4_i_1__0_n_0\,
      S(2) => \icount_out0_carry__4_i_2__0_n_0\,
      S(1) => \icount_out0_carry__4_i_3__0_n_0\,
      S(0) => \icount_out0_carry__4_i_4__0_n_0\
    );
\icount_out0_carry__4_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[23]_0\(3),
      I1 => \^inferred_gen.icount_out_reg[27]_0\(0),
      O => \icount_out0_carry__4_i_1__0_n_0\
    );
\icount_out0_carry__4_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[23]_0\(2),
      I1 => \^inferred_gen.icount_out_reg[23]_0\(3),
      O => \icount_out0_carry__4_i_2__0_n_0\
    );
\icount_out0_carry__4_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[23]_0\(1),
      I1 => \^inferred_gen.icount_out_reg[23]_0\(2),
      O => \icount_out0_carry__4_i_3__0_n_0\
    );
\icount_out0_carry__4_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[23]_0\(0),
      I1 => \^inferred_gen.icount_out_reg[23]_0\(1),
      O => \icount_out0_carry__4_i_4__0_n_0\
    );
\icount_out0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \icount_out0_carry__4_n_0\,
      CO(3) => \icount_out0_carry__5_n_0\,
      CO(2) => \icount_out0_carry__5_n_1\,
      CO(1) => \icount_out0_carry__5_n_2\,
      CO(0) => \icount_out0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^inferred_gen.icount_out_reg[27]_0\(3 downto 0),
      O(3) => \icount_out0_carry__5_n_4\,
      O(2) => \icount_out0_carry__5_n_5\,
      O(1) => \icount_out0_carry__5_n_6\,
      O(0) => \icount_out0_carry__5_n_7\,
      S(3) => \icount_out0_carry__5_i_1__0_n_0\,
      S(2) => \icount_out0_carry__5_i_2__0_n_0\,
      S(1) => \icount_out0_carry__5_i_3__0_n_0\,
      S(0) => \icount_out0_carry__5_i_4__0_n_0\
    );
\icount_out0_carry__5_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[27]_0\(3),
      I1 => \^di\(0),
      O => \icount_out0_carry__5_i_1__0_n_0\
    );
\icount_out0_carry__5_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[27]_0\(2),
      I1 => \^inferred_gen.icount_out_reg[27]_0\(3),
      O => \icount_out0_carry__5_i_2__0_n_0\
    );
\icount_out0_carry__5_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[27]_0\(1),
      I1 => \^inferred_gen.icount_out_reg[27]_0\(2),
      O => \icount_out0_carry__5_i_3__0_n_0\
    );
\icount_out0_carry__5_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[27]_0\(0),
      I1 => \^inferred_gen.icount_out_reg[27]_0\(1),
      O => \icount_out0_carry__5_i_4__0_n_0\
    );
\icount_out0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \icount_out0_carry__5_n_0\,
      CO(3) => \NLW_icount_out0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \icount_out0_carry__6_n_1\,
      CO(1) => \icount_out0_carry__6_n_2\,
      CO(0) => \icount_out0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^di\(2 downto 0),
      O(3) => \icount_out0_carry__6_n_4\,
      O(2) => \icount_out0_carry__6_n_5\,
      O(1) => \icount_out0_carry__6_n_6\,
      O(0) => \icount_out0_carry__6_n_7\,
      S(3) => \icount_out0_carry__6_i_1__0_n_0\,
      S(2) => \icount_out0_carry__6_i_2__0_n_0\,
      S(1) => \icount_out0_carry__6_i_3__0_n_0\,
      S(0) => \icount_out0_carry__6_i_4__0_n_0\
    );
\icount_out0_carry__6_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[31]_0\,
      O => \icount_out0_carry__6_i_1__0_n_0\
    );
\icount_out0_carry__6_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(2),
      I1 => \^inferred_gen.icount_out_reg[31]_0\,
      O => \icount_out0_carry__6_i_2__0_n_0\
    );
\icount_out0_carry__6_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^di\(2),
      O => \icount_out0_carry__6_i_3__0_n_0\
    );
\icount_out0_carry__6_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^di\(1),
      O => \icount_out0_carry__6_i_4__0_n_0\
    );
\icount_out0_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[3]_0\(0),
      O => \icount_out0_carry_i_1__0_n_0\
    );
\icount_out0_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[3]_0\(2),
      I1 => \^inferred_gen.icount_out_reg[7]_0\(0),
      O => \icount_out0_carry_i_2__0_n_0\
    );
\icount_out0_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[3]_0\(1),
      I1 => \^inferred_gen.icount_out_reg[3]_0\(2),
      O => \icount_out0_carry_i_3__0_n_0\
    );
\icount_out0_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^inferred_gen.icount_out_reg[3]_0\(0),
      I1 => \^inferred_gen.icount_out_reg[3]_0\(1),
      O => \icount_out0_carry_i_4__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_mux_onehot_f is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[30]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[30]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[29]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[29]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[28]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[28]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[27]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[27]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[26]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[26]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[25]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[25]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[24]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[24]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[23]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[23]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[22]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[22]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[21]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[21]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[20]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[20]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[19]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[19]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[18]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[18]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[16]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[16]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[15]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[15]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[14]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[14]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[12]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[12]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[11]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[11]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[10]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[9]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[9]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[8]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[8]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[7]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[6]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[5]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[4]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[3]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[1]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_mux_onehot_f : entity is "mux_onehot_f";
end ArtyA7_design_PmodAMP2_0_0_mux_onehot_f;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_mux_onehot_f is
  signal \GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal \GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\ : STD_LOGIC;
  signal cyout_1 : STD_LOGIC;
  signal \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\ : label is "PRIMITIVE";
begin
\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(31),
      CO(0) => cyout_1,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[31]_0\,
      S(0) => \s_axi_rdata_i_reg[31]\
    );
\GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(21),
      CO(0) => \GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[21]_0\,
      S(0) => \s_axi_rdata_i_reg[21]\
    );
\GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(20),
      CO(0) => \GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[20]_0\,
      S(0) => \s_axi_rdata_i_reg[20]\
    );
\GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(19),
      CO(0) => \GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[19]_0\,
      S(0) => \s_axi_rdata_i_reg[19]\
    );
\GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(18),
      CO(0) => \GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[18]_0\,
      S(0) => \s_axi_rdata_i_reg[18]\
    );
\GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(17),
      CO(0) => \GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[17]_0\,
      S(0) => \s_axi_rdata_i_reg[17]\
    );
\GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(16),
      CO(0) => \GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[16]_0\,
      S(0) => \s_axi_rdata_i_reg[16]\
    );
\GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(15),
      CO(0) => \GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[15]_0\,
      S(0) => \s_axi_rdata_i_reg[15]\
    );
\GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(14),
      CO(0) => \GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[14]_0\,
      S(0) => \s_axi_rdata_i_reg[14]\
    );
\GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(13),
      CO(0) => \GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[13]_0\,
      S(0) => \s_axi_rdata_i_reg[13]\
    );
\GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(12),
      CO(0) => \GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[12]_0\,
      S(0) => \s_axi_rdata_i_reg[12]\
    );
\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(30),
      CO(0) => \GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[30]_0\,
      S(0) => \s_axi_rdata_i_reg[30]\
    );
\GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(11),
      CO(0) => \GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[11]_0\,
      S(0) => \s_axi_rdata_i_reg[11]\
    );
\GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(10),
      CO(0) => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[10]_0\,
      S(0) => \s_axi_rdata_i_reg[10]\
    );
\GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(9),
      CO(0) => \GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[9]_0\,
      S(0) => \s_axi_rdata_i_reg[9]\
    );
\GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(8),
      CO(0) => \GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[8]_0\,
      S(0) => \s_axi_rdata_i_reg[8]\
    );
\GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(7),
      CO(0) => \GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[7]_0\,
      S(0) => \s_axi_rdata_i_reg[7]\
    );
\GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(6),
      CO(0) => \GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[6]_0\,
      S(0) => \s_axi_rdata_i_reg[6]\
    );
\GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(5),
      CO(0) => \GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[5]_0\,
      S(0) => \s_axi_rdata_i_reg[5]\
    );
\GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(4),
      CO(0) => \GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[4]_0\,
      S(0) => \s_axi_rdata_i_reg[4]\
    );
\GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(3),
      CO(0) => \GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[3]_0\,
      S(0) => \s_axi_rdata_i_reg[3]\
    );
\GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(2),
      CO(0) => \GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[2]_0\,
      S(0) => \s_axi_rdata_i_reg[2]\
    );
\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(29),
      CO(0) => \GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[29]_0\,
      S(0) => \s_axi_rdata_i_reg[29]\
    );
\GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(1),
      CO(0) => \GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[1]_0\,
      S(0) => \s_axi_rdata_i_reg[1]\
    );
\GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(0),
      CO(0) => \GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[0]_0\,
      S(0) => \s_axi_rdata_i_reg[0]\
    );
\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(28),
      CO(0) => \GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[28]_0\,
      S(0) => \s_axi_rdata_i_reg[28]\
    );
\GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(27),
      CO(0) => \GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[27]_0\,
      S(0) => \s_axi_rdata_i_reg[27]\
    );
\GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(26),
      CO(0) => \GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[26]_0\,
      S(0) => \s_axi_rdata_i_reg[26]\
    );
\GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(25),
      CO(0) => \GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[25]_0\,
      S(0) => \s_axi_rdata_i_reg[25]\
    );
\GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(24),
      CO(0) => \GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[24]_0\,
      S(0) => \s_axi_rdata_i_reg[24]\
    );
\GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(23),
      CO(0) => \GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[23]_0\,
      S(0) => \s_axi_rdata_i_reg[23]\
    );
\GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => D(22),
      CO(0) => \GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => \NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => \s_axi_rdata_i_reg[22]_0\,
      S(0) => \s_axi_rdata_i_reg[22]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_pmod_concat is
  port (
    in_top_bus_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_bus_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_bus_T : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_uart_gpio_bus_I : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_uart_gpio_bus_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_uart_gpio_bus_T : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_i2c_gpio_bus_I : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_i2c_gpio_bus_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_top_i2c_gpio_bus_T : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_bus_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_bottom_bus_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_bottom_bus_T : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_bottom_uart_gpio_bus_I : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_uart_gpio_bus_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_uart_gpio_bus_T : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_i2c_gpio_bus_I : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_i2c_gpio_bus_O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_bottom_i2c_gpio_bus_T : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in0_I : out STD_LOGIC;
    in1_I : out STD_LOGIC;
    in2_I : out STD_LOGIC;
    in3_I : out STD_LOGIC;
    in4_I : out STD_LOGIC;
    in5_I : out STD_LOGIC;
    in6_I : out STD_LOGIC;
    in7_I : out STD_LOGIC;
    in0_O : in STD_LOGIC;
    in1_O : in STD_LOGIC;
    in2_O : in STD_LOGIC;
    in3_O : in STD_LOGIC;
    in4_O : in STD_LOGIC;
    in5_O : in STD_LOGIC;
    in6_O : in STD_LOGIC;
    in7_O : in STD_LOGIC;
    in0_T : in STD_LOGIC;
    in1_T : in STD_LOGIC;
    in2_T : in STD_LOGIC;
    in3_T : in STD_LOGIC;
    in4_T : in STD_LOGIC;
    in5_T : in STD_LOGIC;
    in6_T : in STD_LOGIC;
    in7_T : in STD_LOGIC;
    out0_I : in STD_LOGIC;
    out1_I : in STD_LOGIC;
    out2_I : in STD_LOGIC;
    out3_I : in STD_LOGIC;
    out4_I : in STD_LOGIC;
    out5_I : in STD_LOGIC;
    out6_I : in STD_LOGIC;
    out7_I : in STD_LOGIC;
    out0_O : out STD_LOGIC;
    out1_O : out STD_LOGIC;
    out2_O : out STD_LOGIC;
    out3_O : out STD_LOGIC;
    out4_O : out STD_LOGIC;
    out5_O : out STD_LOGIC;
    out6_O : out STD_LOGIC;
    out7_O : out STD_LOGIC;
    out0_T : out STD_LOGIC;
    out1_T : out STD_LOGIC;
    out2_T : out STD_LOGIC;
    out3_T : out STD_LOGIC;
    out4_T : out STD_LOGIC;
    out5_T : out STD_LOGIC;
    out6_T : out STD_LOGIC;
    out7_T : out STD_LOGIC
  );
  attribute Bottom_Row_Interface : string;
  attribute Bottom_Row_Interface of ArtyA7_design_PmodAMP2_0_0_pmod_concat : entity is "Disabled";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_pmod_concat : entity is "pmod_concat";
  attribute Top_Row_Interface : string;
  attribute Top_Row_Interface of ArtyA7_design_PmodAMP2_0_0_pmod_concat : entity is "GPIO";
end ArtyA7_design_PmodAMP2_0_0_pmod_concat;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_pmod_concat is
  signal \<const0>\ : STD_LOGIC;
  signal \^in4_o\ : STD_LOGIC;
  signal \^in4_t\ : STD_LOGIC;
  signal \^in5_o\ : STD_LOGIC;
  signal \^in5_t\ : STD_LOGIC;
  signal \^in6_o\ : STD_LOGIC;
  signal \^in6_t\ : STD_LOGIC;
  signal \^in7_o\ : STD_LOGIC;
  signal \^in7_t\ : STD_LOGIC;
  signal \^in_top_bus_o\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^in_top_bus_t\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^out0_i\ : STD_LOGIC;
  signal \^out1_i\ : STD_LOGIC;
  signal \^out2_i\ : STD_LOGIC;
  signal \^out3_i\ : STD_LOGIC;
  signal \^out4_i\ : STD_LOGIC;
  signal \^out5_i\ : STD_LOGIC;
  signal \^out6_i\ : STD_LOGIC;
  signal \^out7_i\ : STD_LOGIC;
begin
  \^in4_o\ <= in4_O;
  \^in4_t\ <= in4_T;
  \^in5_o\ <= in5_O;
  \^in5_t\ <= in5_T;
  \^in6_o\ <= in6_O;
  \^in6_t\ <= in6_T;
  \^in7_o\ <= in7_O;
  \^in7_t\ <= in7_T;
  \^in_top_bus_o\(3 downto 0) <= in_top_bus_O(3 downto 0);
  \^in_top_bus_t\(3 downto 0) <= in_top_bus_T(3 downto 0);
  \^out0_i\ <= out0_I;
  \^out1_i\ <= out1_I;
  \^out2_i\ <= out2_I;
  \^out3_i\ <= out3_I;
  \^out4_i\ <= out4_I;
  \^out5_i\ <= out5_I;
  \^out6_i\ <= out6_I;
  \^out7_i\ <= out7_I;
  in0_I <= \<const0>\;
  in1_I <= \<const0>\;
  in2_I <= \<const0>\;
  in3_I <= \<const0>\;
  in4_I <= \^out4_i\;
  in5_I <= \^out5_i\;
  in6_I <= \^out6_i\;
  in7_I <= \^out7_i\;
  in_bottom_bus_I(3) <= \<const0>\;
  in_bottom_bus_I(2) <= \<const0>\;
  in_bottom_bus_I(1) <= \<const0>\;
  in_bottom_bus_I(0) <= \<const0>\;
  in_bottom_i2c_gpio_bus_I(1) <= \<const0>\;
  in_bottom_i2c_gpio_bus_I(0) <= \<const0>\;
  in_bottom_uart_gpio_bus_I(1) <= \<const0>\;
  in_bottom_uart_gpio_bus_I(0) <= \<const0>\;
  in_top_bus_I(3) <= \^out3_i\;
  in_top_bus_I(2) <= \^out2_i\;
  in_top_bus_I(1) <= \^out1_i\;
  in_top_bus_I(0) <= \^out0_i\;
  in_top_i2c_gpio_bus_I(1) <= \<const0>\;
  in_top_i2c_gpio_bus_I(0) <= \<const0>\;
  in_top_uart_gpio_bus_I(1) <= \<const0>\;
  in_top_uart_gpio_bus_I(0) <= \<const0>\;
  out0_O <= \^in_top_bus_o\(0);
  out0_T <= \^in_top_bus_t\(0);
  out1_O <= \^in_top_bus_o\(1);
  out1_T <= \^in_top_bus_t\(1);
  out2_O <= \^in_top_bus_o\(2);
  out2_T <= \^in_top_bus_t\(2);
  out3_O <= \^in_top_bus_o\(3);
  out3_T <= \^in_top_bus_t\(3);
  out4_O <= \^in4_o\;
  out4_T <= \^in4_t\;
  out5_O <= \^in5_o\;
  out5_T <= \^in5_t\;
  out6_O <= \^in6_o\;
  out6_T <= \^in6_t\;
  out7_O <= \^in7_o\;
  out7_T <= \^in7_t\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_pselect_f is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_pselect_f : entity is "pselect_f";
end ArtyA7_design_PmodAMP2_0_0_pselect_f;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_pselect_f is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(1),
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized1\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized1\ : entity is "pselect_f";
end \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized1\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(0),
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized10\ is
  port (
    ce_expnd_i_0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized10\ : entity is "pselect_f";
end \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized10\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized10\ is
begin
CS: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(2),
      O => ce_expnd_i_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized3\ is
  port (
    ce_expnd_i_7 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized3\ : entity is "pselect_f";
end \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized3\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized3\ is
begin
CS: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(0),
      O => ce_expnd_i_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized5\ is
  port (
    ce_expnd_i_5 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized5\ : entity is "pselect_f";
end \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized5\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized5\ is
begin
CS: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(1),
      O => ce_expnd_i_5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized7\ is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized7\ : entity is "pselect_f";
end \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized7\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized7\ is
begin
CS: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(2),
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized8\ is
  port (
    ce_expnd_i_2 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized8\ : entity is "pselect_f";
end \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized8\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized8\ is
begin
CS: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(0),
      O => ce_expnd_i_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized9\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized9\ : entity is "pselect_f";
end \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized9\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized9\ is
begin
CS: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(1),
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_PWM_v2_0 is
  port (
    pwm_axi_awready : out STD_LOGIC;
    pwm_axi_wready : out STD_LOGIC;
    pwm_axi_arready : out STD_LOGIC;
    pwm_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_rvalid : out STD_LOGIC;
    pwm : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_axi_bvalid : out STD_LOGIC;
    pwm_axi_aclk : in STD_LOGIC;
    pwm_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pwm_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pwm_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pwm_axi_awvalid : in STD_LOGIC;
    pwm_axi_wvalid : in STD_LOGIC;
    pwm_axi_arvalid : in STD_LOGIC;
    pwm_axi_aresetn : in STD_LOGIC;
    pwm_axi_bready : in STD_LOGIC;
    pwm_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_PWM_v2_0 : entity is "PWM_v2_0";
end ArtyA7_design_PmodAMP2_0_0_PWM_v2_0;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_PWM_v2_0 is
  signal PWM_AXI_inst_n_37 : STD_LOGIC;
  signal count1 : STD_LOGIC;
  signal \count1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_0\ : STD_LOGIC;
  signal \count1_carry__0_n_1\ : STD_LOGIC;
  signal \count1_carry__0_n_2\ : STD_LOGIC;
  signal \count1_carry__0_n_3\ : STD_LOGIC;
  signal \count1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_0\ : STD_LOGIC;
  signal \count1_carry__1_n_1\ : STD_LOGIC;
  signal \count1_carry__1_n_2\ : STD_LOGIC;
  signal \count1_carry__1_n_3\ : STD_LOGIC;
  signal \count1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \count1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \count1_carry__2_n_1\ : STD_LOGIC;
  signal \count1_carry__2_n_2\ : STD_LOGIC;
  signal \count1_carry__2_n_3\ : STD_LOGIC;
  signal count1_carry_i_1_n_0 : STD_LOGIC;
  signal count1_carry_i_2_n_0 : STD_LOGIC;
  signal count1_carry_i_3_n_0 : STD_LOGIC;
  signal count1_carry_i_4_n_0 : STD_LOGIC;
  signal count1_carry_i_5_n_0 : STD_LOGIC;
  signal count1_carry_i_6_n_0 : STD_LOGIC;
  signal count1_carry_i_7_n_0 : STD_LOGIC;
  signal count1_carry_i_8_n_0 : STD_LOGIC;
  signal count1_carry_n_0 : STD_LOGIC;
  signal count1_carry_n_1 : STD_LOGIC;
  signal count1_carry_n_2 : STD_LOGIC;
  signal count1_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \duty_reg_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal enable : STD_LOGIC;
  signal \genblk1[0].duty_reg_latch_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal max : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \max[31]_i_1_n_0\ : STD_LOGIC;
  signal period_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \pwm1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pwm1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pwm1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pwm1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pwm1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pwm1_carry__0_n_0\ : STD_LOGIC;
  signal \pwm1_carry__0_n_1\ : STD_LOGIC;
  signal \pwm1_carry__0_n_2\ : STD_LOGIC;
  signal \pwm1_carry__0_n_3\ : STD_LOGIC;
  signal \pwm1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pwm1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pwm1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pwm1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pwm1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \pwm1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \pwm1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \pwm1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \pwm1_carry__1_n_0\ : STD_LOGIC;
  signal \pwm1_carry__1_n_1\ : STD_LOGIC;
  signal \pwm1_carry__1_n_2\ : STD_LOGIC;
  signal \pwm1_carry__1_n_3\ : STD_LOGIC;
  signal \pwm1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \pwm1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \pwm1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \pwm1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \pwm1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \pwm1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \pwm1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \pwm1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \pwm1_carry__2_n_0\ : STD_LOGIC;
  signal \pwm1_carry__2_n_1\ : STD_LOGIC;
  signal \pwm1_carry__2_n_2\ : STD_LOGIC;
  signal \pwm1_carry__2_n_3\ : STD_LOGIC;
  signal pwm1_carry_i_1_n_0 : STD_LOGIC;
  signal pwm1_carry_i_2_n_0 : STD_LOGIC;
  signal pwm1_carry_i_3_n_0 : STD_LOGIC;
  signal pwm1_carry_i_4_n_0 : STD_LOGIC;
  signal pwm1_carry_i_5_n_0 : STD_LOGIC;
  signal pwm1_carry_i_6_n_0 : STD_LOGIC;
  signal pwm1_carry_i_7_n_0 : STD_LOGIC;
  signal pwm1_carry_i_8_n_0 : STD_LOGIC;
  signal pwm1_carry_n_0 : STD_LOGIC;
  signal pwm1_carry_n_1 : STD_LOGIC;
  signal pwm1_carry_n_2 : STD_LOGIC;
  signal pwm1_carry_n_3 : STD_LOGIC;
  signal NLW_count1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwm1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
PWM_AXI_inst: entity work.ArtyA7_design_PmodAMP2_0_0_PWM_AXI
     port map (
      Q(0) => PWM_AXI_inst_n_37,
      \duty_reg_reg[0][31]_0\(31 downto 0) => \duty_reg_reg[0]\(31 downto 0),
      \period_reg_reg[31]_0\(31 downto 0) => period_reg(31 downto 0),
      pwm_axi_aclk => pwm_axi_aclk,
      pwm_axi_araddr(4 downto 0) => pwm_axi_araddr(4 downto 0),
      pwm_axi_aresetn => pwm_axi_aresetn,
      pwm_axi_arready => pwm_axi_arready,
      pwm_axi_arvalid => pwm_axi_arvalid,
      pwm_axi_awaddr(4 downto 0) => pwm_axi_awaddr(4 downto 0),
      pwm_axi_awready => pwm_axi_awready,
      pwm_axi_awvalid => pwm_axi_awvalid,
      pwm_axi_bready => pwm_axi_bready,
      pwm_axi_bvalid => pwm_axi_bvalid,
      pwm_axi_rdata(31 downto 0) => pwm_axi_rdata(31 downto 0),
      pwm_axi_rready => pwm_axi_rready,
      pwm_axi_rvalid => pwm_axi_rvalid,
      pwm_axi_wdata(31 downto 0) => pwm_axi_wdata(31 downto 0),
      pwm_axi_wready => pwm_axi_wready,
      pwm_axi_wstrb(3 downto 0) => pwm_axi_wstrb(3 downto 0),
      pwm_axi_wvalid => pwm_axi_wvalid
    );
count1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count1_carry_n_0,
      CO(2) => count1_carry_n_1,
      CO(1) => count1_carry_n_2,
      CO(0) => count1_carry_n_3,
      CYINIT => '0',
      DI(3) => count1_carry_i_1_n_0,
      DI(2) => count1_carry_i_2_n_0,
      DI(1) => count1_carry_i_3_n_0,
      DI(0) => count1_carry_i_4_n_0,
      O(3 downto 0) => NLW_count1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count1_carry_i_5_n_0,
      S(2) => count1_carry_i_6_n_0,
      S(1) => count1_carry_i_7_n_0,
      S(0) => count1_carry_i_8_n_0
    );
\count1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count1_carry_n_0,
      CO(3) => \count1_carry__0_n_0\,
      CO(2) => \count1_carry__0_n_1\,
      CO(1) => \count1_carry__0_n_2\,
      CO(0) => \count1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__0_i_1_n_0\,
      DI(2) => \count1_carry__0_i_2_n_0\,
      DI(1) => \count1_carry__0_i_3_n_0\,
      DI(0) => \count1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_count1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__0_i_5_n_0\,
      S(2) => \count1_carry__0_i_6_n_0\,
      S(1) => \count1_carry__0_i_7_n_0\,
      S(0) => \count1_carry__0_i_8_n_0\
    );
\count1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => max(15),
      O => \count1_carry__0_i_1_n_0\
    );
\count1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => max(13),
      O => \count1_carry__0_i_2_n_0\
    );
\count1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => max(11),
      O => \count1_carry__0_i_3_n_0\
    );
\count1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => max(9),
      O => \count1_carry__0_i_4_n_0\
    );
\count1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(14),
      I1 => count_reg(14),
      I2 => max(15),
      I3 => count_reg(15),
      O => \count1_carry__0_i_5_n_0\
    );
\count1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(12),
      I1 => count_reg(12),
      I2 => max(13),
      I3 => count_reg(13),
      O => \count1_carry__0_i_6_n_0\
    );
\count1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(10),
      I1 => count_reg(10),
      I2 => max(11),
      I3 => count_reg(11),
      O => \count1_carry__0_i_7_n_0\
    );
\count1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(8),
      I1 => count_reg(8),
      I2 => max(9),
      I3 => count_reg(9),
      O => \count1_carry__0_i_8_n_0\
    );
\count1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__0_n_0\,
      CO(3) => \count1_carry__1_n_0\,
      CO(2) => \count1_carry__1_n_1\,
      CO(1) => \count1_carry__1_n_2\,
      CO(0) => \count1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__1_i_1_n_0\,
      DI(2) => \count1_carry__1_i_2_n_0\,
      DI(1) => \count1_carry__1_i_3_n_0\,
      DI(0) => \count1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_count1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__1_i_5_n_0\,
      S(2) => \count1_carry__1_i_6_n_0\,
      S(1) => \count1_carry__1_i_7_n_0\,
      S(0) => \count1_carry__1_i_8_n_0\
    );
\count1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => max(23),
      O => \count1_carry__1_i_1_n_0\
    );
\count1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => max(21),
      O => \count1_carry__1_i_2_n_0\
    );
\count1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => max(19),
      O => \count1_carry__1_i_3_n_0\
    );
\count1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => max(17),
      O => \count1_carry__1_i_4_n_0\
    );
\count1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(22),
      I1 => count_reg(22),
      I2 => max(23),
      I3 => count_reg(23),
      O => \count1_carry__1_i_5_n_0\
    );
\count1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(20),
      I1 => count_reg(20),
      I2 => max(21),
      I3 => count_reg(21),
      O => \count1_carry__1_i_6_n_0\
    );
\count1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(18),
      I1 => count_reg(18),
      I2 => max(19),
      I3 => count_reg(19),
      O => \count1_carry__1_i_7_n_0\
    );
\count1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(16),
      I1 => count_reg(16),
      I2 => max(17),
      I3 => count_reg(17),
      O => \count1_carry__1_i_8_n_0\
    );
\count1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count1_carry__1_n_0\,
      CO(3) => count1,
      CO(2) => \count1_carry__2_n_1\,
      CO(1) => \count1_carry__2_n_2\,
      CO(0) => \count1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \count1_carry__2_i_1_n_0\,
      DI(2) => \count1_carry__2_i_2_n_0\,
      DI(1) => \count1_carry__2_i_3_n_0\,
      DI(0) => \count1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_count1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \count1_carry__2_i_5_n_0\,
      S(2) => \count1_carry__2_i_6_n_0\,
      S(1) => \count1_carry__2_i_7_n_0\,
      S(0) => \count1_carry__2_i_8_n_0\
    );
\count1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => max(31),
      O => \count1_carry__2_i_1_n_0\
    );
\count1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => max(29),
      O => \count1_carry__2_i_2_n_0\
    );
\count1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => max(27),
      O => \count1_carry__2_i_3_n_0\
    );
\count1_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => max(25),
      O => \count1_carry__2_i_4_n_0\
    );
\count1_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(30),
      I1 => count_reg(30),
      I2 => max(31),
      I3 => count_reg(31),
      O => \count1_carry__2_i_5_n_0\
    );
\count1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(28),
      I1 => count_reg(28),
      I2 => max(29),
      I3 => count_reg(29),
      O => \count1_carry__2_i_6_n_0\
    );
\count1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(26),
      I1 => count_reg(26),
      I2 => max(27),
      I3 => count_reg(27),
      O => \count1_carry__2_i_7_n_0\
    );
\count1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(24),
      I1 => count_reg(24),
      I2 => max(25),
      I3 => count_reg(25),
      O => \count1_carry__2_i_8_n_0\
    );
count1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => max(7),
      O => count1_carry_i_1_n_0
    );
count1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => max(5),
      O => count1_carry_i_2_n_0
    );
count1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => max(3),
      O => count1_carry_i_3_n_0
    );
count1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => max(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => max(1),
      O => count1_carry_i_4_n_0
    );
count1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(6),
      I1 => count_reg(6),
      I2 => max(7),
      I3 => count_reg(7),
      O => count1_carry_i_5_n_0
    );
count1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(4),
      I1 => count_reg(4),
      I2 => max(5),
      I3 => count_reg(5),
      O => count1_carry_i_6_n_0
    );
count1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(2),
      I1 => count_reg(2),
      I2 => max(3),
      I3 => count_reg(3),
      O => count1_carry_i_7_n_0
    );
count1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => max(0),
      I1 => count_reg(0),
      I2 => max(1),
      I3 => count_reg(1),
      O => count1_carry_i_8_n_0
    );
\count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[0]_i_1_n_7\,
      Q => count_reg(0),
      R => \max[31]_i_1_n_0\
    );
\count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_1_n_0\,
      CO(2) => \count_reg[0]_i_1_n_1\,
      CO(1) => \count_reg[0]_i_1_n_2\,
      CO(0) => \count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_1_n_4\,
      O(2) => \count_reg[0]_i_1_n_5\,
      O(1) => \count_reg[0]_i_1_n_6\,
      O(0) => \count_reg[0]_i_1_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_2_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => \max[31]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => \max[31]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12),
      R => \max[31]_i_1_n_0\
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13),
      R => \max[31]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14),
      R => \max[31]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15),
      R => \max[31]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16),
      R => \max[31]_i_1_n_0\
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17),
      R => \max[31]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18),
      R => \max[31]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19),
      R => \max[31]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[0]_i_1_n_6\,
      Q => count_reg(1),
      R => \max[31]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20),
      R => \max[31]_i_1_n_0\
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \count_reg[20]_i_1_n_0\,
      CO(2) => \count_reg[20]_i_1_n_1\,
      CO(1) => \count_reg[20]_i_1_n_2\,
      CO(0) => \count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]_i_1_n_4\,
      O(2) => \count_reg[20]_i_1_n_5\,
      O(1) => \count_reg[20]_i_1_n_6\,
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3 downto 0) => count_reg(23 downto 20)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[20]_i_1_n_6\,
      Q => count_reg(21),
      R => \max[31]_i_1_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[20]_i_1_n_5\,
      Q => count_reg(22),
      R => \max[31]_i_1_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[20]_i_1_n_4\,
      Q => count_reg(23),
      R => \max[31]_i_1_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[24]_i_1_n_7\,
      Q => count_reg(24),
      R => \max[31]_i_1_n_0\
    );
\count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1_n_0\,
      CO(3) => \count_reg[24]_i_1_n_0\,
      CO(2) => \count_reg[24]_i_1_n_1\,
      CO(1) => \count_reg[24]_i_1_n_2\,
      CO(0) => \count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[24]_i_1_n_4\,
      O(2) => \count_reg[24]_i_1_n_5\,
      O(1) => \count_reg[24]_i_1_n_6\,
      O(0) => \count_reg[24]_i_1_n_7\,
      S(3 downto 0) => count_reg(27 downto 24)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[24]_i_1_n_6\,
      Q => count_reg(25),
      R => \max[31]_i_1_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[24]_i_1_n_5\,
      Q => count_reg(26),
      R => \max[31]_i_1_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[24]_i_1_n_4\,
      Q => count_reg(27),
      R => \max[31]_i_1_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[28]_i_1_n_7\,
      Q => count_reg(28),
      R => \max[31]_i_1_n_0\
    );
\count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[28]_i_1_n_1\,
      CO(1) => \count_reg[28]_i_1_n_2\,
      CO(0) => \count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[28]_i_1_n_4\,
      O(2) => \count_reg[28]_i_1_n_5\,
      O(1) => \count_reg[28]_i_1_n_6\,
      O(0) => \count_reg[28]_i_1_n_7\,
      S(3 downto 0) => count_reg(31 downto 28)
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[28]_i_1_n_6\,
      Q => count_reg(29),
      R => \max[31]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[0]_i_1_n_5\,
      Q => count_reg(2),
      R => \max[31]_i_1_n_0\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[28]_i_1_n_5\,
      Q => count_reg(30),
      R => \max[31]_i_1_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[28]_i_1_n_4\,
      Q => count_reg(31),
      R => \max[31]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[0]_i_1_n_4\,
      Q => count_reg(3),
      R => \max[31]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4),
      R => \max[31]_i_1_n_0\
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_1_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5),
      R => \max[31]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6),
      R => \max[31]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => \max[31]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => \max[31]_i_1_n_0\
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => \max[31]_i_1_n_0\
    );
enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => PWM_AXI_inst_n_37,
      Q => enable,
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(0),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(0),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(10),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(10),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(11),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(11),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(12),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(12),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(13),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(13),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(14),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(14),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(15),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(15),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(16),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(16),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(17),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(17),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(18),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(18),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(19),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(19),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(1),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(1),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(20),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(20),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(21),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(21),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(22),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(22),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(23),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(23),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(24),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(24),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(25),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(25),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(26),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(26),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(27),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(27),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(28),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(28),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(29),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(29),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(2),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(2),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(30),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(30),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(31),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(31),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(3),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(3),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(4),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(4),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(5),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(5),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(6),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(6),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(7),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(7),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(8),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(8),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg_reg[0]\(9),
      Q => \genblk1[0].duty_reg_latch_reg[0]\(9),
      R => '0'
    );
\max[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => enable,
      I1 => count1,
      O => \max[31]_i_1_n_0\
    );
\max_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(0),
      Q => max(0),
      R => '0'
    );
\max_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(10),
      Q => max(10),
      R => '0'
    );
\max_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(11),
      Q => max(11),
      R => '0'
    );
\max_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(12),
      Q => max(12),
      R => '0'
    );
\max_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(13),
      Q => max(13),
      R => '0'
    );
\max_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(14),
      Q => max(14),
      R => '0'
    );
\max_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(15),
      Q => max(15),
      R => '0'
    );
\max_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(16),
      Q => max(16),
      R => '0'
    );
\max_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(17),
      Q => max(17),
      R => '0'
    );
\max_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(18),
      Q => max(18),
      R => '0'
    );
\max_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(19),
      Q => max(19),
      R => '0'
    );
\max_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(1),
      Q => max(1),
      R => '0'
    );
\max_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(20),
      Q => max(20),
      R => '0'
    );
\max_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(21),
      Q => max(21),
      R => '0'
    );
\max_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(22),
      Q => max(22),
      R => '0'
    );
\max_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(23),
      Q => max(23),
      R => '0'
    );
\max_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(24),
      Q => max(24),
      R => '0'
    );
\max_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(25),
      Q => max(25),
      R => '0'
    );
\max_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(26),
      Q => max(26),
      R => '0'
    );
\max_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(27),
      Q => max(27),
      R => '0'
    );
\max_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(28),
      Q => max(28),
      R => '0'
    );
\max_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(29),
      Q => max(29),
      R => '0'
    );
\max_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(2),
      Q => max(2),
      R => '0'
    );
\max_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(30),
      Q => max(30),
      R => '0'
    );
\max_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(31),
      Q => max(31),
      R => '0'
    );
\max_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(3),
      Q => max(3),
      R => '0'
    );
\max_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(4),
      Q => max(4),
      R => '0'
    );
\max_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(5),
      Q => max(5),
      R => '0'
    );
\max_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(6),
      Q => max(6),
      R => '0'
    );
\max_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(7),
      Q => max(7),
      R => '0'
    );
\max_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(8),
      Q => max(8),
      R => '0'
    );
\max_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(9),
      Q => max(9),
      R => '0'
    );
pwm1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm1_carry_n_0,
      CO(2) => pwm1_carry_n_1,
      CO(1) => pwm1_carry_n_2,
      CO(0) => pwm1_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm1_carry_i_1_n_0,
      DI(2) => pwm1_carry_i_2_n_0,
      DI(1) => pwm1_carry_i_3_n_0,
      DI(0) => pwm1_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm1_carry_i_5_n_0,
      S(2) => pwm1_carry_i_6_n_0,
      S(1) => pwm1_carry_i_7_n_0,
      S(0) => pwm1_carry_i_8_n_0
    );
\pwm1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm1_carry_n_0,
      CO(3) => \pwm1_carry__0_n_0\,
      CO(2) => \pwm1_carry__0_n_1\,
      CO(1) => \pwm1_carry__0_n_2\,
      CO(0) => \pwm1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pwm1_carry__0_i_1_n_0\,
      DI(2) => \pwm1_carry__0_i_2_n_0\,
      DI(1) => \pwm1_carry__0_i_3_n_0\,
      DI(0) => \pwm1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_pwm1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm1_carry__0_i_5_n_0\,
      S(2) => \pwm1_carry__0_i_6_n_0\,
      S(1) => \pwm1_carry__0_i_7_n_0\,
      S(0) => \pwm1_carry__0_i_8_n_0\
    );
\pwm1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(15),
      O => \pwm1_carry__0_i_1_n_0\
    );
\pwm1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(13),
      O => \pwm1_carry__0_i_2_n_0\
    );
\pwm1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(11),
      O => \pwm1_carry__0_i_3_n_0\
    );
\pwm1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(9),
      O => \pwm1_carry__0_i_4_n_0\
    );
\pwm1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(14),
      I1 => count_reg(14),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(15),
      I3 => count_reg(15),
      O => \pwm1_carry__0_i_5_n_0\
    );
\pwm1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(12),
      I1 => count_reg(12),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(13),
      I3 => count_reg(13),
      O => \pwm1_carry__0_i_6_n_0\
    );
\pwm1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(10),
      I1 => count_reg(10),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(11),
      I3 => count_reg(11),
      O => \pwm1_carry__0_i_7_n_0\
    );
\pwm1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(8),
      I1 => count_reg(8),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(9),
      I3 => count_reg(9),
      O => \pwm1_carry__0_i_8_n_0\
    );
\pwm1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm1_carry__0_n_0\,
      CO(3) => \pwm1_carry__1_n_0\,
      CO(2) => \pwm1_carry__1_n_1\,
      CO(1) => \pwm1_carry__1_n_2\,
      CO(0) => \pwm1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm1_carry__1_i_1_n_0\,
      DI(2) => \pwm1_carry__1_i_2_n_0\,
      DI(1) => \pwm1_carry__1_i_3_n_0\,
      DI(0) => \pwm1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_pwm1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm1_carry__1_i_5_n_0\,
      S(2) => \pwm1_carry__1_i_6_n_0\,
      S(1) => \pwm1_carry__1_i_7_n_0\,
      S(0) => \pwm1_carry__1_i_8_n_0\
    );
\pwm1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(23),
      O => \pwm1_carry__1_i_1_n_0\
    );
\pwm1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(21),
      O => \pwm1_carry__1_i_2_n_0\
    );
\pwm1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(19),
      O => \pwm1_carry__1_i_3_n_0\
    );
\pwm1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(17),
      O => \pwm1_carry__1_i_4_n_0\
    );
\pwm1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(22),
      I1 => count_reg(22),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(23),
      I3 => count_reg(23),
      O => \pwm1_carry__1_i_5_n_0\
    );
\pwm1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(20),
      I1 => count_reg(20),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(21),
      I3 => count_reg(21),
      O => \pwm1_carry__1_i_6_n_0\
    );
\pwm1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(18),
      I1 => count_reg(18),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(19),
      I3 => count_reg(19),
      O => \pwm1_carry__1_i_7_n_0\
    );
\pwm1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(16),
      I1 => count_reg(16),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(17),
      I3 => count_reg(17),
      O => \pwm1_carry__1_i_8_n_0\
    );
\pwm1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm1_carry__1_n_0\,
      CO(3) => \pwm1_carry__2_n_0\,
      CO(2) => \pwm1_carry__2_n_1\,
      CO(1) => \pwm1_carry__2_n_2\,
      CO(0) => \pwm1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm1_carry__2_i_1_n_0\,
      DI(2) => \pwm1_carry__2_i_2_n_0\,
      DI(1) => \pwm1_carry__2_i_3_n_0\,
      DI(0) => \pwm1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_pwm1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm1_carry__2_i_5_n_0\,
      S(2) => \pwm1_carry__2_i_6_n_0\,
      S(1) => \pwm1_carry__2_i_7_n_0\,
      S(0) => \pwm1_carry__2_i_8_n_0\
    );
\pwm1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(31),
      O => \pwm1_carry__2_i_1_n_0\
    );
\pwm1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(29),
      O => \pwm1_carry__2_i_2_n_0\
    );
\pwm1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(27),
      O => \pwm1_carry__2_i_3_n_0\
    );
\pwm1_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(25),
      O => \pwm1_carry__2_i_4_n_0\
    );
\pwm1_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(30),
      I1 => count_reg(30),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(31),
      I3 => count_reg(31),
      O => \pwm1_carry__2_i_5_n_0\
    );
\pwm1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(28),
      I1 => count_reg(28),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(29),
      I3 => count_reg(29),
      O => \pwm1_carry__2_i_6_n_0\
    );
\pwm1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(26),
      I1 => count_reg(26),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(27),
      I3 => count_reg(27),
      O => \pwm1_carry__2_i_7_n_0\
    );
\pwm1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(24),
      I1 => count_reg(24),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(25),
      I3 => count_reg(25),
      O => \pwm1_carry__2_i_8_n_0\
    );
pwm1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(7),
      O => pwm1_carry_i_1_n_0
    );
pwm1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(5),
      O => pwm1_carry_i_2_n_0
    );
pwm1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(3),
      O => pwm1_carry_i_3_n_0
    );
pwm1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[0].duty_reg_latch_reg[0]\(1),
      O => pwm1_carry_i_4_n_0
    );
pwm1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(6),
      I1 => count_reg(6),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(7),
      I3 => count_reg(7),
      O => pwm1_carry_i_5_n_0
    );
pwm1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(4),
      I1 => count_reg(4),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(5),
      I3 => count_reg(5),
      O => pwm1_carry_i_6_n_0
    );
pwm1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(2),
      I1 => count_reg(2),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(3),
      I3 => count_reg(3),
      O => pwm1_carry_i_7_n_0
    );
pwm1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]\(0),
      I1 => count_reg(0),
      I2 => \genblk1[0].duty_reg_latch_reg[0]\(1),
      I3 => count_reg(1),
      O => pwm1_carry_i_8_n_0
    );
\pwm[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pwm1_carry__2_n_0\,
      I1 => enable,
      O => pwm(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_PmodAMP2_pmod_bridge_0_0 is
  port (
    in_top_bus_I : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_bus_O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    in_top_bus_T : in STD_LOGIC_VECTOR ( 3 downto 0 );
    out0_I : in STD_LOGIC;
    out1_I : in STD_LOGIC;
    out2_I : in STD_LOGIC;
    out3_I : in STD_LOGIC;
    out4_I : in STD_LOGIC;
    out5_I : in STD_LOGIC;
    out6_I : in STD_LOGIC;
    out7_I : in STD_LOGIC;
    out0_O : out STD_LOGIC;
    out1_O : out STD_LOGIC;
    out2_O : out STD_LOGIC;
    out3_O : out STD_LOGIC;
    out4_O : out STD_LOGIC;
    out5_O : out STD_LOGIC;
    out6_O : out STD_LOGIC;
    out7_O : out STD_LOGIC;
    out0_T : out STD_LOGIC;
    out1_T : out STD_LOGIC;
    out2_T : out STD_LOGIC;
    out3_T : out STD_LOGIC;
    out4_T : out STD_LOGIC;
    out5_T : out STD_LOGIC;
    out6_T : out STD_LOGIC;
    out7_T : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_pmod_bridge_0_0 : entity is "PmodAMP2_pmod_bridge_0_0,pmod_concat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_pmod_bridge_0_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_pmod_bridge_0_0 : entity is "PmodAMP2_pmod_bridge_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_pmod_bridge_0_0 : entity is "pmod_concat,Vivado 2018.3";
end ArtyA7_design_PmodAMP2_0_0_PmodAMP2_pmod_bridge_0_0;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_pmod_bridge_0_0 is
  signal NLW_inst_in0_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in1_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in2_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in3_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in4_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in5_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in6_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in7_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_in_bottom_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute Bottom_Row_Interface : string;
  attribute Bottom_Row_Interface of inst : label is "Disabled";
  attribute Top_Row_Interface : string;
  attribute Top_Row_Interface of inst : label is "GPIO";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of out0_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_I";
  attribute X_INTERFACE_INFO of out0_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_O";
  attribute X_INTERFACE_INFO of out0_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_T";
  attribute X_INTERFACE_INFO of out1_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_I";
  attribute X_INTERFACE_INFO of out1_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_O";
  attribute X_INTERFACE_INFO of out1_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_T";
  attribute X_INTERFACE_INFO of out2_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_I";
  attribute X_INTERFACE_INFO of out2_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_O";
  attribute X_INTERFACE_INFO of out2_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_T";
  attribute X_INTERFACE_INFO of out3_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_I";
  attribute X_INTERFACE_INFO of out3_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_O";
  attribute X_INTERFACE_INFO of out3_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_T";
  attribute X_INTERFACE_INFO of out4_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_I";
  attribute X_INTERFACE_INFO of out4_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_O";
  attribute X_INTERFACE_INFO of out4_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_T";
  attribute X_INTERFACE_INFO of out5_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_I";
  attribute X_INTERFACE_INFO of out5_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_O";
  attribute X_INTERFACE_INFO of out5_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_T";
  attribute X_INTERFACE_INFO of out6_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_I";
  attribute X_INTERFACE_INFO of out6_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_O";
  attribute X_INTERFACE_INFO of out6_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_T";
  attribute X_INTERFACE_INFO of out7_I : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_I";
  attribute X_INTERFACE_INFO of out7_O : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_O";
  attribute X_INTERFACE_INFO of out7_T : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_T";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of out7_T : signal is "XIL_INTERFACENAME Pmod_out, BOARD.ASSOCIATED_PARAM PMOD";
  attribute X_INTERFACE_INFO of in_top_bus_I : signal is "xilinx.com:interface:gpio:1.0 GPIO_Top_Row TRI_I";
  attribute X_INTERFACE_INFO of in_top_bus_O : signal is "xilinx.com:interface:gpio:1.0 GPIO_Top_Row TRI_O";
  attribute X_INTERFACE_INFO of in_top_bus_T : signal is "xilinx.com:interface:gpio:1.0 GPIO_Top_Row TRI_T";
begin
inst: entity work.ArtyA7_design_PmodAMP2_0_0_pmod_concat
     port map (
      in0_I => NLW_inst_in0_I_UNCONNECTED,
      in0_O => '1',
      in0_T => '1',
      in1_I => NLW_inst_in1_I_UNCONNECTED,
      in1_O => '1',
      in1_T => '1',
      in2_I => NLW_inst_in2_I_UNCONNECTED,
      in2_O => '1',
      in2_T => '1',
      in3_I => NLW_inst_in3_I_UNCONNECTED,
      in3_O => '1',
      in3_T => '1',
      in4_I => NLW_inst_in4_I_UNCONNECTED,
      in4_O => '1',
      in4_T => '1',
      in5_I => NLW_inst_in5_I_UNCONNECTED,
      in5_O => '1',
      in5_T => '1',
      in6_I => NLW_inst_in6_I_UNCONNECTED,
      in6_O => '1',
      in6_T => '1',
      in7_I => NLW_inst_in7_I_UNCONNECTED,
      in7_O => '1',
      in7_T => '1',
      in_bottom_bus_I(3 downto 0) => NLW_inst_in_bottom_bus_I_UNCONNECTED(3 downto 0),
      in_bottom_bus_O(3 downto 0) => B"0001",
      in_bottom_bus_T(3 downto 0) => B"0001",
      in_bottom_i2c_gpio_bus_I(1 downto 0) => NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED(1 downto 0),
      in_bottom_i2c_gpio_bus_O(1 downto 0) => B"01",
      in_bottom_i2c_gpio_bus_T(1 downto 0) => B"01",
      in_bottom_uart_gpio_bus_I(1 downto 0) => NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED(1 downto 0),
      in_bottom_uart_gpio_bus_O(1 downto 0) => B"01",
      in_bottom_uart_gpio_bus_T(1 downto 0) => B"01",
      in_top_bus_I(3 downto 0) => in_top_bus_I(3 downto 0),
      in_top_bus_O(3 downto 0) => in_top_bus_O(3 downto 0),
      in_top_bus_T(3 downto 0) => in_top_bus_T(3 downto 0),
      in_top_i2c_gpio_bus_I(1 downto 0) => NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED(1 downto 0),
      in_top_i2c_gpio_bus_O(1 downto 0) => B"01",
      in_top_i2c_gpio_bus_T(1 downto 0) => B"01",
      in_top_uart_gpio_bus_I(1 downto 0) => NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED(1 downto 0),
      in_top_uart_gpio_bus_O(1 downto 0) => B"01",
      in_top_uart_gpio_bus_T(1 downto 0) => B"01",
      out0_I => out0_I,
      out0_O => out0_O,
      out0_T => out0_T,
      out1_I => out1_I,
      out1_O => out1_O,
      out1_T => out1_T,
      out2_I => out2_I,
      out2_O => out2_O,
      out2_T => out2_T,
      out3_I => out3_I,
      out3_O => out3_O,
      out3_T => out3_T,
      out4_I => out4_I,
      out4_O => out4_O,
      out4_T => out4_T,
      out5_I => out5_I,
      out5_O => out5_O,
      out5_T => out5_T,
      out6_I => out6_I,
      out6_O => out6_O,
      out6_T => out6_T,
      out7_I => out7_I,
      out7_O => out7_O,
      out7_T => out7_T
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_address_decoder is
  port (
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    rst_reg : out STD_LOGIC;
    rst_reg_0 : out STD_LOGIC;
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \Not_Dual.gpio_Data_Out_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Not_Dual.gpio_Data_Out_reg[0]_0\ : in STD_LOGIC;
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    AXI_LITE_GPIO_arready : in STD_LOGIC;
    AXI_LITE_GPIO_arready_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    AXI_LITE_GPIO_wready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_address_decoder : entity is "address_decoder";
end ArtyA7_design_PmodAMP2_0_0_address_decoder;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_address_decoder is
  signal \^bus_rnw_reg\ : STD_LOGIC;
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \^mem_decode_gen[0].cs_out_i_reg[0]_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \^ip2bus_rdack_i_d1_reg\ : STD_LOGIC;
  signal \^ip2bus_wrack_i_d1_reg\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\ : label is "soft_lutpair1";
begin
  Bus_RNW_reg <= \^bus_rnw_reg\;
  \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ <= \^mem_decode_gen[0].cs_out_i_reg[0]_0\;
  ip2bus_rdack_i_D1_reg <= \^ip2bus_rdack_i_d1_reg\;
  ip2bus_wrack_i_D1_reg <= \^ip2bus_wrack_i_d1_reg\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Bus_RNW_reg_reg_0,
      I1 => Q,
      I2 => \^bus_rnw_reg\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg\,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Not_Dual.gpio_Data_Out_reg[0]\(0),
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => \^ip2bus_rdack_i_d1_reg\,
      I2 => s_axi_aresetn,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(0),
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      R => cs_ce_clr
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.ArtyA7_design_PmodAMP2_0_0_pselect_f
     port map (
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(1 downto 0) => \Not_Dual.gpio_Data_Out_reg[0]\(1 downto 0),
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized1\
     port map (
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(1 downto 0) => \Not_Dual.gpio_Data_Out_reg[0]\(1 downto 0),
      ce_expnd_i_1 => ce_expnd_i_1
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => Q,
      I2 => s_axi_aresetn,
      I3 => \^ip2bus_rdack_i_d1_reg\,
      I4 => \^ip2bus_wrack_i_d1_reg\,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      R => '0'
    );
\Not_Dual.gpio_Data_Out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \Not_Dual.gpio_Data_Out_reg[0]_0\,
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(2),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => \Not_Dual.gpio_Data_Out_reg[0]\(0),
      I4 => Bus_RNW_reg_reg_0,
      I5 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      O => rst_reg
    );
\Not_Dual.gpio_OE[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAABAAA"
    )
        port map (
      I0 => \Not_Dual.gpio_Data_Out_reg[0]_0\,
      I1 => \Not_Dual.gpio_Data_Out_reg[0]\(2),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => \Not_Dual.gpio_Data_Out_reg[0]\(0),
      I4 => Bus_RNW_reg_reg_0,
      I5 => \Not_Dual.gpio_Data_Out_reg[0]\(1),
      O => rst_reg_0
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_rdack_i_D1,
      I1 => AXI_LITE_GPIO_arready,
      I2 => AXI_LITE_GPIO_arready_0(2),
      I3 => AXI_LITE_GPIO_arready_0(1),
      I4 => AXI_LITE_GPIO_arready_0(3),
      I5 => AXI_LITE_GPIO_arready_0(0),
      O => \^ip2bus_rdack_i_d1_reg\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_wrack_i_D1,
      I1 => AXI_LITE_GPIO_wready,
      I2 => AXI_LITE_GPIO_arready_0(2),
      I3 => AXI_LITE_GPIO_arready_0(1),
      I4 => AXI_LITE_GPIO_arready_0(3),
      I5 => AXI_LITE_GPIO_arready_0(0),
      O => \^ip2bus_wrack_i_d1_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_address_decoder__parameterized0\ is
  port (
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    is_write_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pair0_Select : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[7]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \AXI_LITE_TIMER_wdata[7]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[0]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[1]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[2]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[3]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[4]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[5]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[6]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[7]_1\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[8]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[9]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[10]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[11]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[12]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[13]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[14]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[15]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[16]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[17]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[18]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[19]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[20]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[21]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[22]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[23]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[24]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[25]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[26]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[27]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[28]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[29]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[30]\ : out STD_LOGIC;
    D_0 : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[0]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[1]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[2]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[3]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[4]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[5]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[6]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[7]_2\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[8]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[9]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[10]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[11]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[12]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[13]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[14]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[15]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[16]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[17]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[18]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[19]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[20]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[21]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[22]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[23]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[24]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[25]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[26]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[27]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[28]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[29]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[30]_0\ : out STD_LOGIC;
    D_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20\ : out STD_LOGIC;
    \LOAD_REG_GEN[20].LOAD_REG_I\ : out STD_LOGIC;
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    Bus_RNW_reg_reg_6 : out STD_LOGIC;
    AXI_LITE_TIMER_rready : out STD_LOGIC;
    AXI_LITE_TIMER_bready : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rvalid_i_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    AXI_LITE_TIMER_wready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tCSR0_Reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tCSR1_Reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    counterReg_DBus_32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counterReg_DBus_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \state_reg[1]\ : in STD_LOGIC;
    AXI_LITE_TIMER_arready : in STD_LOGIC;
    loadReg_DBus_32 : in STD_LOGIC_VECTOR ( 20 downto 0 );
    AXI_LITE_TIMER_arready_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid_i_reg_0 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid_i_reg : in STD_LOGIC;
    D_2 : in STD_LOGIC;
    read_done1 : in STD_LOGIC;
    bus2ip_rnw_i : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_address_decoder__parameterized0\ : entity is "address_decoder";
end \ArtyA7_design_PmodAMP2_0_0_address_decoder__parameterized0\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_address_decoder__parameterized0\ is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \^bus_rnw_reg_reg_1\ : STD_LOGIC;
  signal \^bus_rnw_reg_reg_2\ : STD_LOGIC;
  signal \^bus_rnw_reg_reg_3\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \^is_read_reg\ : STD_LOGIC;
  signal \^is_write_reg\ : STD_LOGIC;
  signal \^pair0_select\ : STD_LOGIC;
  signal s_axi_arready_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_4_n_0 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[0].LOAD_REG_I_i_2__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[10].LOAD_REG_I_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[11].LOAD_REG_I_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[1].LOAD_REG_I_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[2].LOAD_REG_I_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[3].LOAD_REG_I_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[3].LOAD_REG_I_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[4].LOAD_REG_I_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[4].LOAD_REG_I_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[5].LOAD_REG_I_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of READ_DONE0_I_i_2 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of READ_DONE1_I_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \TCSR0_GENERATE[20].TCSR0_FF_I_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \TCSR0_GENERATE[23].TCSR0_FF_I_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \TCSR0_GENERATE[24].TCSR0_FF_I_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \TCSR1_GENERATE[22].TCSR1_FF_I_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \TCSR1_GENERATE[23].TCSR1_FF_I_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \TCSR1_GENERATE[24].TCSR1_FF_I_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0_i_3 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0_i_4 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0_i_5 : label is "soft_lutpair9";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  Bus_RNW_reg_reg_1 <= \^bus_rnw_reg_reg_1\;
  Bus_RNW_reg_reg_2 <= \^bus_rnw_reg_reg_2\;
  Bus_RNW_reg_reg_3 <= \^bus_rnw_reg_reg_3\;
  \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ <= \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\;
  \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0\ <= \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\;
  is_read_reg <= \^is_read_reg\;
  is_write_reg <= \^is_write_reg\;
  pair0_Select <= \^pair0_select\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => Q,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_state_reg[3]\(0),
      I1 => s_axi_arvalid,
      I2 => \^is_read_reg\,
      I3 => \FSM_onehot_state_reg[3]\(1),
      O => \FSM_onehot_state_reg[2]\(0)
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg[3]\(0),
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => \^is_write_reg\,
      I5 => \FSM_onehot_state_reg[3]\(2),
      O => \FSM_onehot_state_reg[2]\(1)
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^is_write_reg\,
      I1 => \FSM_onehot_state_reg[3]\(2),
      I2 => \FSM_onehot_state_reg[3]\(3),
      I3 => \state_reg[0]\,
      I4 => \FSM_onehot_state_reg[3]\(1),
      I5 => \^is_read_reg\,
      O => \FSM_onehot_state_reg[2]\(2)
    );
\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(20),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\
    );
\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => Bus_RNW_reg_reg_4
    );
\GEN.DATA_WIDTH_GEN[0].NUM_BUSES_GEN[1].MUXCY_GEN.MUXCY_I_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      O => Bus_RNW_reg_reg_6
    );
\GEN.DATA_WIDTH_GEN[10].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(10),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\
    );
\GEN.DATA_WIDTH_GEN[11].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(9),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\
    );
\GEN.DATA_WIDTH_GEN[12].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(8),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\
    );
\GEN.DATA_WIDTH_GEN[13].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(7),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\
    );
\GEN.DATA_WIDTH_GEN[14].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(6),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15\
    );
\GEN.DATA_WIDTH_GEN[15].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(5),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16\
    );
\GEN.DATA_WIDTH_GEN[16].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(4),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17\
    );
\GEN.DATA_WIDTH_GEN[17].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(3),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18\
    );
\GEN.DATA_WIDTH_GEN[18].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(2),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19\
    );
\GEN.DATA_WIDTH_GEN[19].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(1),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20\
    );
\GEN.DATA_WIDTH_GEN[1].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(19),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\
    );
\GEN.DATA_WIDTH_GEN[20].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F7F7F7F"
    )
        port map (
      I0 => loadReg_DBus_32(0),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => tCSR0_Reg(1),
      O => \LOAD_REG_GEN[20].LOAD_REG_I\
    );
\GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      O => Bus_RNW_reg_reg_5
    );
\GEN.DATA_WIDTH_GEN[2].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(18),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\
    );
\GEN.DATA_WIDTH_GEN[3].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(17),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\
    );
\GEN.DATA_WIDTH_GEN[4].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(16),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\
    );
\GEN.DATA_WIDTH_GEN[5].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(15),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\
    );
\GEN.DATA_WIDTH_GEN[6].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(14),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\
    );
\GEN.DATA_WIDTH_GEN[7].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(13),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\
    );
\GEN.DATA_WIDTH_GEN[8].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(12),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\
    );
\GEN.DATA_WIDTH_GEN[9].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => loadReg_DBus_32(11),
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_7,
      Q => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(0),
      O => ce_expnd_i_6
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_6,
      Q => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_5,
      Q => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^is_write_reg\,
      I1 => s_axi_aresetn,
      I2 => \^is_read_reg\,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      R => cs_ce_clr
    );
\LOAD_REG_GEN[0].LOAD_REG_I_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(31),
      O => D_0
    );
\LOAD_REG_GEN[0].LOAD_REG_I_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(31),
      O => D_1
    );
\LOAD_REG_GEN[10].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(21),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(21),
      O => \AXI_LITE_TIMER_wdata[21]\
    );
\LOAD_REG_GEN[10].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(21),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(21),
      O => \AXI_LITE_TIMER_wdata[21]_0\
    );
\LOAD_REG_GEN[11].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(20),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(20),
      O => \AXI_LITE_TIMER_wdata[20]\
    );
\LOAD_REG_GEN[11].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(20),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(20),
      O => \AXI_LITE_TIMER_wdata[20]_0\
    );
\LOAD_REG_GEN[12].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(19),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(19),
      O => \AXI_LITE_TIMER_wdata[19]\
    );
\LOAD_REG_GEN[12].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(19),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(19),
      O => \AXI_LITE_TIMER_wdata[19]_0\
    );
\LOAD_REG_GEN[13].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(18),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(18),
      O => \AXI_LITE_TIMER_wdata[18]\
    );
\LOAD_REG_GEN[13].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(18),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(18),
      O => \AXI_LITE_TIMER_wdata[18]_0\
    );
\LOAD_REG_GEN[14].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(17),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(17),
      O => \AXI_LITE_TIMER_wdata[17]\
    );
\LOAD_REG_GEN[14].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(17),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(17),
      O => \AXI_LITE_TIMER_wdata[17]_0\
    );
\LOAD_REG_GEN[15].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(16),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(16),
      O => \AXI_LITE_TIMER_wdata[16]\
    );
\LOAD_REG_GEN[15].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(16),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(16),
      O => \AXI_LITE_TIMER_wdata[16]_0\
    );
\LOAD_REG_GEN[16].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(15),
      O => \AXI_LITE_TIMER_wdata[15]\
    );
\LOAD_REG_GEN[16].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(15),
      O => \AXI_LITE_TIMER_wdata[15]_0\
    );
\LOAD_REG_GEN[17].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(14),
      O => \AXI_LITE_TIMER_wdata[14]\
    );
\LOAD_REG_GEN[17].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(14),
      O => \AXI_LITE_TIMER_wdata[14]_0\
    );
\LOAD_REG_GEN[18].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(13),
      O => \AXI_LITE_TIMER_wdata[13]\
    );
\LOAD_REG_GEN[18].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(13),
      O => \AXI_LITE_TIMER_wdata[13]_0\
    );
\LOAD_REG_GEN[19].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(12),
      O => \AXI_LITE_TIMER_wdata[12]\
    );
\LOAD_REG_GEN[19].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(12),
      O => \AXI_LITE_TIMER_wdata[12]_0\
    );
\LOAD_REG_GEN[1].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(30),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(30),
      O => \AXI_LITE_TIMER_wdata[30]\
    );
\LOAD_REG_GEN[1].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(30),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(30),
      O => \AXI_LITE_TIMER_wdata[30]_0\
    );
\LOAD_REG_GEN[20].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(11),
      O => \AXI_LITE_TIMER_wdata[11]\
    );
\LOAD_REG_GEN[20].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(11),
      O => \AXI_LITE_TIMER_wdata[11]_0\
    );
\LOAD_REG_GEN[21].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(10),
      O => \AXI_LITE_TIMER_wdata[10]\
    );
\LOAD_REG_GEN[21].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(10),
      O => \AXI_LITE_TIMER_wdata[10]_0\
    );
\LOAD_REG_GEN[22].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(9),
      O => \AXI_LITE_TIMER_wdata[9]\
    );
\LOAD_REG_GEN[22].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(9),
      O => \AXI_LITE_TIMER_wdata[9]_0\
    );
\LOAD_REG_GEN[23].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(8),
      O => \AXI_LITE_TIMER_wdata[8]\
    );
\LOAD_REG_GEN[23].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(8),
      O => \AXI_LITE_TIMER_wdata[8]_0\
    );
\LOAD_REG_GEN[24].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(7),
      O => \AXI_LITE_TIMER_wdata[7]_1\
    );
\LOAD_REG_GEN[24].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(7),
      O => \AXI_LITE_TIMER_wdata[7]_2\
    );
\LOAD_REG_GEN[25].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(6),
      O => \AXI_LITE_TIMER_wdata[6]\
    );
\LOAD_REG_GEN[25].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(6),
      O => \AXI_LITE_TIMER_wdata[6]_0\
    );
\LOAD_REG_GEN[26].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(5),
      O => \AXI_LITE_TIMER_wdata[5]\
    );
\LOAD_REG_GEN[26].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(5),
      O => \AXI_LITE_TIMER_wdata[5]_0\
    );
\LOAD_REG_GEN[27].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(4),
      O => \AXI_LITE_TIMER_wdata[4]\
    );
\LOAD_REG_GEN[27].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(4),
      O => \AXI_LITE_TIMER_wdata[4]_0\
    );
\LOAD_REG_GEN[28].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(3),
      O => \AXI_LITE_TIMER_wdata[3]\
    );
\LOAD_REG_GEN[28].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(3),
      O => \AXI_LITE_TIMER_wdata[3]_0\
    );
\LOAD_REG_GEN[29].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(2),
      O => \AXI_LITE_TIMER_wdata[2]\
    );
\LOAD_REG_GEN[29].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(2),
      O => \AXI_LITE_TIMER_wdata[2]_0\
    );
\LOAD_REG_GEN[2].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(29),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(29),
      O => \AXI_LITE_TIMER_wdata[29]\
    );
\LOAD_REG_GEN[2].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(29),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(29),
      O => \AXI_LITE_TIMER_wdata[29]_0\
    );
\LOAD_REG_GEN[30].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(1),
      O => \AXI_LITE_TIMER_wdata[1]\
    );
\LOAD_REG_GEN[30].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(1),
      O => \AXI_LITE_TIMER_wdata[1]_0\
    );
\LOAD_REG_GEN[31].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(0),
      O => \AXI_LITE_TIMER_wdata[0]\
    );
\LOAD_REG_GEN[31].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(0),
      O => \AXI_LITE_TIMER_wdata[0]_0\
    );
\LOAD_REG_GEN[3].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(28),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(28),
      O => \AXI_LITE_TIMER_wdata[28]\
    );
\LOAD_REG_GEN[3].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(28),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(28),
      O => \AXI_LITE_TIMER_wdata[28]_0\
    );
\LOAD_REG_GEN[4].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(27),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(27),
      O => \AXI_LITE_TIMER_wdata[27]\
    );
\LOAD_REG_GEN[4].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(27),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(27),
      O => \AXI_LITE_TIMER_wdata[27]_0\
    );
\LOAD_REG_GEN[5].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(26),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(26),
      O => \AXI_LITE_TIMER_wdata[26]\
    );
\LOAD_REG_GEN[5].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(26),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(26),
      O => \AXI_LITE_TIMER_wdata[26]_0\
    );
\LOAD_REG_GEN[6].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(25),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(25),
      O => \AXI_LITE_TIMER_wdata[25]\
    );
\LOAD_REG_GEN[6].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(25),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(25),
      O => \AXI_LITE_TIMER_wdata[25]_0\
    );
\LOAD_REG_GEN[7].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(24),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(24),
      O => \AXI_LITE_TIMER_wdata[24]\
    );
\LOAD_REG_GEN[7].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(24),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(24),
      O => \AXI_LITE_TIMER_wdata[24]_0\
    );
\LOAD_REG_GEN[8].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(23),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(23),
      O => \AXI_LITE_TIMER_wdata[23]\
    );
\LOAD_REG_GEN[8].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(23),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(23),
      O => \AXI_LITE_TIMER_wdata[23]_0\
    );
\LOAD_REG_GEN[9].LOAD_REG_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(22),
      I1 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_32(22),
      O => \AXI_LITE_TIMER_wdata[22]\
    );
\LOAD_REG_GEN[9].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(22),
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => counterReg_DBus_0(22),
      O => \AXI_LITE_TIMER_wdata[22]_0\
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized3\
     port map (
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\(2 downto 0) => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(2 downto 0),
      ce_expnd_i_7 => ce_expnd_i_7
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized5\
     port map (
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\(2 downto 0) => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(2 downto 0),
      ce_expnd_i_5 => ce_expnd_i_5
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized7\
     port map (
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\(2 downto 0) => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(2 downto 0),
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized8\
     port map (
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\(2 downto 0) => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(2 downto 0),
      ce_expnd_i_2 => ce_expnd_i_2
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized9\
     port map (
      \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\(2 downto 0) => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(2 downto 0),
      ce_expnd_i_1 => ce_expnd_i_1
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\ArtyA7_design_PmodAMP2_0_0_pselect_f__parameterized10\
     port map (
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\(2 downto 0) => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(2 downto 0),
      ce_expnd_i_0 => ce_expnd_i_0
    );
READ_DONE0_I_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => D_2,
      O => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21\
    );
READ_DONE1_I_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I1 => read_done1,
      O => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1\
    );
\TCSR0_GENERATE[20].TCSR0_FF_I_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce(1)
    );
\TCSR0_GENERATE[23].TCSR0_FF_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => s_axi_wdata(8),
      I3 => s_axi_aresetn,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\TCSR0_GENERATE[24].TCSR0_FF_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCACC"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => tCSR0_Reg(0),
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => s_axi_wdata(10),
      O => \AXI_LITE_TIMER_wdata[7]\
    );
\TCSR1_GENERATE[22].TCSR1_FF_I_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce(0)
    );
\TCSR1_GENERATE[23].TCSR1_FF_I_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => s_axi_wdata(8),
      I3 => s_axi_aresetn,
      O => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0\
    );
\TCSR1_GENERATE[24].TCSR1_FF_I_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCACC"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => tCSR1_Reg(0),
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      I4 => s_axi_wdata(10),
      O => \AXI_LITE_TIMER_wdata[7]_0\
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFFFFFFFFFFFFF"
    )
        port map (
      I0 => s_axi_wready_INST_0_i_1_n_0,
      I1 => AXI_LITE_TIMER_arready,
      I2 => s_axi_arready_INST_0_i_1_n_0,
      I3 => \^bus_rnw_reg_reg_1\,
      I4 => \^bus_rnw_reg_reg_2\,
      I5 => \^bus_rnw_reg_reg_3\,
      O => \^is_read_reg\
    );
s_axi_arready_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0E0"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I4 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      O => s_axi_arready_INST_0_i_1_n_0
    );
s_axi_arready_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      O => \^bus_rnw_reg_reg_1\
    );
s_axi_arready_INST_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      O => \^bus_rnw_reg_reg_2\
    );
s_axi_arready_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      O => \^bus_rnw_reg_reg_3\
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75553000"
    )
        port map (
      I0 => s_axi_bready,
      I1 => s_axi_rvalid_i_reg(0),
      I2 => s_axi_rvalid_i_reg(1),
      I3 => \^is_write_reg\,
      I4 => s_axi_bvalid_i_reg,
      O => AXI_LITE_TIMER_bready
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75553000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => s_axi_rvalid_i_reg(1),
      I2 => s_axi_rvalid_i_reg(0),
      I3 => \^is_read_reg\,
      I4 => s_axi_rvalid_i_reg_0,
      O => AXI_LITE_TIMER_rready
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => s_axi_wready_INST_0_i_1_n_0,
      I1 => AXI_LITE_TIMER_wready,
      I2 => \^pair0_select\,
      I3 => \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\,
      I4 => s_axi_wready_INST_0_i_4_n_0,
      I5 => s_axi_wready_INST_0_i_5_n_0,
      O => \^is_write_reg\
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => AXI_LITE_TIMER_arready_0(1),
      I1 => AXI_LITE_TIMER_arready_0(0),
      I2 => AXI_LITE_TIMER_arready_0(2),
      I3 => AXI_LITE_TIMER_arready_0(5),
      I4 => AXI_LITE_TIMER_arready_0(3),
      I5 => AXI_LITE_TIMER_arready_0(4),
      O => s_axi_wready_INST_0_i_1_n_0
    );
s_axi_wready_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg\,
      O => \^pair0_select\
    );
s_axi_wready_INST_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => \^gen_bkend_ce_registers[5].ce_out_i_reg[5]_0\
    );
s_axi_wready_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[1].ce_out_i_reg[1]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      O => s_axi_wready_INST_0_i_4_n_0
    );
s_axi_wready_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg\,
      O => s_axi_wready_INST_0_i_5_n_0
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBF83B38"
    )
        port map (
      I0 => \^is_write_reg\,
      I1 => s_axi_rvalid_i_reg(1),
      I2 => s_axi_rvalid_i_reg(0),
      I3 => s_axi_arvalid,
      I4 => \state_reg[0]\,
      O => D(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECFEECC22CF22CC"
    )
        port map (
      I0 => \^is_read_reg\,
      I1 => s_axi_rvalid_i_reg(1),
      I2 => s_axi_arvalid,
      I3 => s_axi_rvalid_i_reg(0),
      I4 => \state_reg[1]\,
      I5 => \state_reg[0]\,
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_count_module is
  port (
    \LOAD_REG_GEN[0].LOAD_REG_I_0\ : out STD_LOGIC_VECTOR ( 20 downto 0 );
    loadReg_DBus_32 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \INFERRED_GEN.icount_out_reg[31]\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \INFERRED_GEN.icount_out_reg[27]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \INFERRED_GEN.icount_out_reg[0]\ : out STD_LOGIC;
    counter_TC : out STD_LOGIC_VECTOR ( 0 to 0 );
    generateOutPre00 : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[31]_0\ : in STD_LOGIC;
    CE : in STD_LOGIC;
    D_1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \LOAD_REG_GEN[1].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[2].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[3].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[4].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[5].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[6].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[7].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[8].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[9].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[10].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[11].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[12].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[13].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[14].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[15].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[16].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[17].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[18].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[19].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[20].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[21].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[22].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[23].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[24].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[25].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[26].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[27].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[28].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[29].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[30].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[31].LOAD_REG_I_0\ : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_0\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[31]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_count_module : entity is "count_module";
end ArtyA7_design_PmodAMP2_0_0_count_module;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_count_module is
  signal \^load_reg_gen[0].load_reg_i_0\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \^loadreg_dbus_32\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute box_type : string;
  attribute box_type of \LOAD_REG_GEN[0].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[10].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[11].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[12].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[13].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[14].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[15].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[16].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[17].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[18].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[19].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[1].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[20].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[21].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[22].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[23].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[24].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[25].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[26].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[27].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[28].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[29].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[2].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[30].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[31].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[3].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[4].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[5].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[6].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[7].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[8].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[9].LOAD_REG_I\ : label is "PRIMITIVE";
begin
  \LOAD_REG_GEN[0].LOAD_REG_I_0\(20 downto 0) <= \^load_reg_gen[0].load_reg_i_0\(20 downto 0);
  loadReg_DBus_32(10 downto 0) <= \^loadreg_dbus_32\(10 downto 0);
COUNTER_I: entity work.ArtyA7_design_PmodAMP2_0_0_counter_f_3
     port map (
      DI(2 downto 0) => DI(2 downto 0),
      \INFERRED_GEN.icount_out_reg[0]_0\ => \INFERRED_GEN.icount_out_reg[0]\,
      \INFERRED_GEN.icount_out_reg[0]_1\ => \INFERRED_GEN.icount_out_reg[0]_0\,
      \INFERRED_GEN.icount_out_reg[11]_0\(3 downto 0) => \INFERRED_GEN.icount_out_reg[11]\(3 downto 0),
      \INFERRED_GEN.icount_out_reg[15]_0\(3 downto 0) => \INFERRED_GEN.icount_out_reg[15]\(3 downto 0),
      \INFERRED_GEN.icount_out_reg[19]_0\(3 downto 0) => \INFERRED_GEN.icount_out_reg[19]\(3 downto 0),
      \INFERRED_GEN.icount_out_reg[23]_0\(3 downto 0) => \INFERRED_GEN.icount_out_reg[23]\(3 downto 0),
      \INFERRED_GEN.icount_out_reg[27]_0\(3 downto 0) => \INFERRED_GEN.icount_out_reg[27]\(3 downto 0),
      \INFERRED_GEN.icount_out_reg[31]_0\ => \INFERRED_GEN.icount_out_reg[31]\,
      \INFERRED_GEN.icount_out_reg[31]_1\ => \INFERRED_GEN.icount_out_reg[31]_0\,
      \INFERRED_GEN.icount_out_reg[31]_2\ => \INFERRED_GEN.icount_out_reg[31]_1\,
      \INFERRED_GEN.icount_out_reg[31]_3\(20 downto 0) => \^load_reg_gen[0].load_reg_i_0\(20 downto 0),
      \INFERRED_GEN.icount_out_reg[3]_0\(2 downto 0) => \INFERRED_GEN.icount_out_reg[3]\(2 downto 0),
      \INFERRED_GEN.icount_out_reg[7]_0\(3 downto 0) => \INFERRED_GEN.icount_out_reg[7]\(3 downto 0),
      Q(0) => Q(0),
      S(0) => S(0),
      counter_TC(0) => counter_TC(0),
      generateOutPre00 => generateOutPre00,
      loadReg_DBus_32(10 downto 0) => \^loadreg_dbus_32\(10 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
\LOAD_REG_GEN[0].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => D_1,
      Q => \^load_reg_gen[0].load_reg_i_0\(20),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[10].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[10].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(10),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[11].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[11].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(9),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[12].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[12].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(8),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[13].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[13].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(7),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[14].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[14].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(6),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[15].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[15].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(5),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[16].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[16].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(4),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[17].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[17].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(3),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[18].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[18].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(2),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[19].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[19].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(1),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[1].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[1].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(19),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[20].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[20].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(0),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[21].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[21].LOAD_REG_I_0\,
      Q => \^loadreg_dbus_32\(10),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[22].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[22].LOAD_REG_I_0\,
      Q => \^loadreg_dbus_32\(9),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[23].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[23].LOAD_REG_I_0\,
      Q => \^loadreg_dbus_32\(8),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[24].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[24].LOAD_REG_I_0\,
      Q => \^loadreg_dbus_32\(7),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[25].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[25].LOAD_REG_I_0\,
      Q => \^loadreg_dbus_32\(6),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[26].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[26].LOAD_REG_I_0\,
      Q => \^loadreg_dbus_32\(5),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[27].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[27].LOAD_REG_I_0\,
      Q => \^loadreg_dbus_32\(4),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[28].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[28].LOAD_REG_I_0\,
      Q => \^loadreg_dbus_32\(3),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[29].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[29].LOAD_REG_I_0\,
      Q => \^loadreg_dbus_32\(2),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[2].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[2].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(18),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[30].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[30].LOAD_REG_I_0\,
      Q => \^loadreg_dbus_32\(1),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[31].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[31].LOAD_REG_I_0\,
      Q => \^loadreg_dbus_32\(0),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[3].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[3].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(17),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[4].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[4].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(16),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[5].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[5].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(15),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[6].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[6].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(14),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[7].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[7].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(13),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[8].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[8].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(12),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
\LOAD_REG_GEN[9].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[9].LOAD_REG_I_0\,
      Q => \^load_reg_gen[0].load_reg_i_0\(11),
      R => \INFERRED_GEN.icount_out_reg[31]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_count_module_0 is
  port (
    s_axi_aresetn_0 : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[31]\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \INFERRED_GEN.icount_out_reg[27]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[23]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \INFERRED_GEN.icount_out_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \INFERRED_GEN.icount_out_reg[0]\ : out STD_LOGIC;
    counter_TC : out STD_LOGIC_VECTOR ( 0 to 0 );
    generateOutPre10 : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[31]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[30]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[29]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[28]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[27]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[24]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[19]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[18]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[17]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[16]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[15]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[14]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[12]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[11]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[8]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[7]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[6]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[2]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[1]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[26]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[25]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[23]_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[22]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[21]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[20]\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[13]\ : out STD_LOGIC;
    \LOAD_REG_GEN[21].LOAD_REG_I_0\ : out STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[9]\ : out STD_LOGIC;
    \LOAD_REG_GEN[26].LOAD_REG_I_0\ : out STD_LOGIC;
    \LOAD_REG_GEN[27].LOAD_REG_I_0\ : out STD_LOGIC;
    \LOAD_REG_GEN[28].LOAD_REG_I_0\ : out STD_LOGIC;
    CE : in STD_LOGIC;
    D_2 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \LOAD_REG_GEN[1].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[2].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[3].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[4].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[5].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[6].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[7].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[8].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[9].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[10].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[11].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[12].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[13].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[14].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[15].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[16].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[17].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[18].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[19].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[20].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[21].LOAD_REG_I_1\ : in STD_LOGIC;
    \LOAD_REG_GEN[22].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[23].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[24].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[25].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[26].LOAD_REG_I_1\ : in STD_LOGIC;
    \LOAD_REG_GEN[27].LOAD_REG_I_1\ : in STD_LOGIC;
    \LOAD_REG_GEN[28].LOAD_REG_I_1\ : in STD_LOGIC;
    \LOAD_REG_GEN[29].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[30].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[31].LOAD_REG_I_0\ : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[0]_1\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aresetn : in STD_LOGIC;
    \INFERRED_GEN.icount_out_reg[31]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    counterReg_DBus_32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_count_module_0 : entity is "count_module";
end ArtyA7_design_PmodAMP2_0_0_count_module_0;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_count_module_0 is
  signal loadReg_DBus_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_aresetn_0\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \LOAD_REG_GEN[0].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[10].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[11].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[12].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[13].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[14].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[15].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[16].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[17].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[18].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[19].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[1].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[20].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[21].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[22].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[23].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[24].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[25].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[26].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[27].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[28].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[29].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[2].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[30].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[31].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[3].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[4].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[5].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[6].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[7].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[8].LOAD_REG_I\ : label is "PRIMITIVE";
  attribute box_type of \LOAD_REG_GEN[9].LOAD_REG_I\ : label is "PRIMITIVE";
begin
  s_axi_aresetn_0 <= \^s_axi_aresetn_0\;
COUNTER_I: entity work.ArtyA7_design_PmodAMP2_0_0_counter_f
     port map (
      \INFERRED_GEN.icount_out_reg[0]_0\ => \INFERRED_GEN.icount_out_reg[0]\,
      \INFERRED_GEN.icount_out_reg[0]_1\ => \INFERRED_GEN.icount_out_reg[0]_0\,
      \INFERRED_GEN.icount_out_reg[0]_2\ => \INFERRED_GEN.icount_out_reg[0]_1\,
      \INFERRED_GEN.icount_out_reg[10]_0\ => \INFERRED_GEN.icount_out_reg[11]\(2),
      \INFERRED_GEN.icount_out_reg[11]_0\ => \INFERRED_GEN.icount_out_reg[11]\(3),
      \INFERRED_GEN.icount_out_reg[11]_1\ => \INFERRED_GEN.icount_out_reg[11]_0\,
      \INFERRED_GEN.icount_out_reg[12]_0\ => \INFERRED_GEN.icount_out_reg[15]\(0),
      \INFERRED_GEN.icount_out_reg[12]_1\ => \INFERRED_GEN.icount_out_reg[12]\,
      \INFERRED_GEN.icount_out_reg[13]_0\ => \INFERRED_GEN.icount_out_reg[15]\(1),
      \INFERRED_GEN.icount_out_reg[13]_1\ => \INFERRED_GEN.icount_out_reg[13]\,
      \INFERRED_GEN.icount_out_reg[14]_0\ => \INFERRED_GEN.icount_out_reg[15]\(2),
      \INFERRED_GEN.icount_out_reg[14]_1\ => \INFERRED_GEN.icount_out_reg[14]\,
      \INFERRED_GEN.icount_out_reg[15]_0\ => \INFERRED_GEN.icount_out_reg[15]\(3),
      \INFERRED_GEN.icount_out_reg[15]_1\ => \INFERRED_GEN.icount_out_reg[15]_0\,
      \INFERRED_GEN.icount_out_reg[16]_0\ => \INFERRED_GEN.icount_out_reg[19]\(0),
      \INFERRED_GEN.icount_out_reg[16]_1\ => \INFERRED_GEN.icount_out_reg[16]\,
      \INFERRED_GEN.icount_out_reg[17]_0\ => \INFERRED_GEN.icount_out_reg[19]\(1),
      \INFERRED_GEN.icount_out_reg[17]_1\ => \INFERRED_GEN.icount_out_reg[17]\,
      \INFERRED_GEN.icount_out_reg[18]_0\ => \INFERRED_GEN.icount_out_reg[19]\(2),
      \INFERRED_GEN.icount_out_reg[18]_1\ => \INFERRED_GEN.icount_out_reg[18]\,
      \INFERRED_GEN.icount_out_reg[19]_0\ => \INFERRED_GEN.icount_out_reg[19]\(3),
      \INFERRED_GEN.icount_out_reg[19]_1\ => \INFERRED_GEN.icount_out_reg[19]_0\,
      \INFERRED_GEN.icount_out_reg[1]_0\ => \INFERRED_GEN.icount_out_reg[3]\(0),
      \INFERRED_GEN.icount_out_reg[1]_1\ => \INFERRED_GEN.icount_out_reg[1]\,
      \INFERRED_GEN.icount_out_reg[20]_0\ => \INFERRED_GEN.icount_out_reg[23]\(0),
      \INFERRED_GEN.icount_out_reg[20]_1\ => \INFERRED_GEN.icount_out_reg[20]\,
      \INFERRED_GEN.icount_out_reg[21]_0\ => \INFERRED_GEN.icount_out_reg[23]\(1),
      \INFERRED_GEN.icount_out_reg[21]_1\ => \INFERRED_GEN.icount_out_reg[21]\,
      \INFERRED_GEN.icount_out_reg[22]_0\ => \INFERRED_GEN.icount_out_reg[23]\(2),
      \INFERRED_GEN.icount_out_reg[22]_1\ => \INFERRED_GEN.icount_out_reg[22]\,
      \INFERRED_GEN.icount_out_reg[23]_0\ => \INFERRED_GEN.icount_out_reg[23]\(3),
      \INFERRED_GEN.icount_out_reg[23]_1\ => \INFERRED_GEN.icount_out_reg[23]_0\,
      \INFERRED_GEN.icount_out_reg[24]_0\ => \INFERRED_GEN.icount_out_reg[27]\(0),
      \INFERRED_GEN.icount_out_reg[24]_1\ => \INFERRED_GEN.icount_out_reg[24]\,
      \INFERRED_GEN.icount_out_reg[25]_0\ => \INFERRED_GEN.icount_out_reg[27]\(1),
      \INFERRED_GEN.icount_out_reg[25]_1\ => \INFERRED_GEN.icount_out_reg[25]\,
      \INFERRED_GEN.icount_out_reg[26]_0\ => \INFERRED_GEN.icount_out_reg[27]\(2),
      \INFERRED_GEN.icount_out_reg[26]_1\ => \INFERRED_GEN.icount_out_reg[26]\,
      \INFERRED_GEN.icount_out_reg[27]_0\ => \INFERRED_GEN.icount_out_reg[27]\(3),
      \INFERRED_GEN.icount_out_reg[27]_1\ => \INFERRED_GEN.icount_out_reg[27]_0\,
      \INFERRED_GEN.icount_out_reg[28]_0\ => DI(0),
      \INFERRED_GEN.icount_out_reg[28]_1\ => \INFERRED_GEN.icount_out_reg[28]\,
      \INFERRED_GEN.icount_out_reg[29]_0\ => DI(1),
      \INFERRED_GEN.icount_out_reg[29]_1\ => \INFERRED_GEN.icount_out_reg[29]\,
      \INFERRED_GEN.icount_out_reg[2]_0\ => \INFERRED_GEN.icount_out_reg[3]\(1),
      \INFERRED_GEN.icount_out_reg[2]_1\ => \INFERRED_GEN.icount_out_reg[2]\,
      \INFERRED_GEN.icount_out_reg[30]_0\ => DI(2),
      \INFERRED_GEN.icount_out_reg[30]_1\ => \INFERRED_GEN.icount_out_reg[30]\,
      \INFERRED_GEN.icount_out_reg[31]_0\ => \INFERRED_GEN.icount_out_reg[31]\,
      \INFERRED_GEN.icount_out_reg[31]_1\ => \INFERRED_GEN.icount_out_reg[31]_0\,
      \INFERRED_GEN.icount_out_reg[31]_2\ => \INFERRED_GEN.icount_out_reg[31]_1\,
      \INFERRED_GEN.icount_out_reg[3]_0\ => \INFERRED_GEN.icount_out_reg[3]\(2),
      \INFERRED_GEN.icount_out_reg[4]_0\ => \INFERRED_GEN.icount_out_reg[7]\(0),
      \INFERRED_GEN.icount_out_reg[5]_0\ => \INFERRED_GEN.icount_out_reg[7]\(1),
      \INFERRED_GEN.icount_out_reg[6]_0\ => \INFERRED_GEN.icount_out_reg[7]\(2),
      \INFERRED_GEN.icount_out_reg[6]_1\ => \INFERRED_GEN.icount_out_reg[6]\,
      \INFERRED_GEN.icount_out_reg[7]_0\ => \INFERRED_GEN.icount_out_reg[7]\(3),
      \INFERRED_GEN.icount_out_reg[7]_1\ => \INFERRED_GEN.icount_out_reg[7]_0\,
      \INFERRED_GEN.icount_out_reg[8]_0\ => \INFERRED_GEN.icount_out_reg[11]\(0),
      \INFERRED_GEN.icount_out_reg[8]_1\ => \INFERRED_GEN.icount_out_reg[8]\,
      \INFERRED_GEN.icount_out_reg[9]_0\ => \INFERRED_GEN.icount_out_reg[11]\(1),
      \INFERRED_GEN.icount_out_reg[9]_1\ => \INFERRED_GEN.icount_out_reg[9]\,
      \LOAD_REG_GEN[21].LOAD_REG_I\ => \LOAD_REG_GEN[21].LOAD_REG_I_0\,
      \LOAD_REG_GEN[26].LOAD_REG_I\ => \LOAD_REG_GEN[26].LOAD_REG_I_0\,
      \LOAD_REG_GEN[27].LOAD_REG_I\ => \LOAD_REG_GEN[27].LOAD_REG_I_0\,
      \LOAD_REG_GEN[28].LOAD_REG_I\ => \LOAD_REG_GEN[28].LOAD_REG_I_0\,
      Q(0) => Q(0),
      S(0) => S(0),
      counterReg_DBus_32(31 downto 0) => counterReg_DBus_32(31 downto 0),
      counter_TC(0) => counter_TC(0),
      generateOutPre10 => generateOutPre10,
      loadReg_DBus_0(31 downto 0) => loadReg_DBus_0(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^s_axi_aresetn_0\,
      \s_axi_rdata_i_reg[0]\ => \s_axi_rdata_i_reg[0]\,
      \s_axi_rdata_i_reg[0]_0\ => \s_axi_rdata_i_reg[0]_0\,
      \s_axi_rdata_i_reg[0]_1\ => \s_axi_rdata_i_reg[0]_1\
    );
\LOAD_REG_GEN[0].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => D_2,
      Q => loadReg_DBus_0(31),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[10].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[10].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(21),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[11].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[11].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(20),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[12].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[12].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(19),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[13].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[13].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(18),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[14].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[14].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(17),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[15].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[15].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(16),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[16].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[16].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(15),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[17].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[17].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(14),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[18].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[18].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(13),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[19].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[19].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(12),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[1].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[1].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(30),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[20].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[20].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(11),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[21].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[21].LOAD_REG_I_1\,
      Q => loadReg_DBus_0(10),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[22].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[22].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(9),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[23].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[23].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(8),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[24].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[24].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(7),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[25].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[25].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(6),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[26].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[26].LOAD_REG_I_1\,
      Q => loadReg_DBus_0(5),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[27].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[27].LOAD_REG_I_1\,
      Q => loadReg_DBus_0(4),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[28].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[28].LOAD_REG_I_1\,
      Q => loadReg_DBus_0(3),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[29].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[29].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(2),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[2].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[2].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(29),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[30].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[30].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(1),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[31].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[31].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(0),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[3].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[3].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(28),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[4].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[4].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(27),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[5].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[5].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(26),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[6].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[6].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(25),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[7].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[7].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(24),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[8].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[8].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(23),
      R => \^s_axi_aresetn_0\
    );
\LOAD_REG_GEN[9].LOAD_REG_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => CE,
      D => \LOAD_REG_GEN[9].LOAD_REG_I_0\,
      Q => loadReg_DBus_0(22),
      R => \^s_axi_aresetn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_timer_control is
  port (
    generateout0 : out STD_LOGIC;
    generateout1 : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \TCSR0_GENERATE[20].TCSR0_FF_I_0\ : out STD_LOGIC;
    \TCSR0_GENERATE[24].TCSR0_FF_I_0\ : out STD_LOGIC;
    \TCSR1_GENERATE[24].TCSR1_FF_I_0\ : out STD_LOGIC;
    D_0 : out STD_LOGIC;
    read_done1 : out STD_LOGIC;
    CE : out STD_LOGIC;
    CE_0 : out STD_LOGIC;
    \TCSR1_GENERATE[21].TCSR1_FF_I_0\ : out STD_LOGIC;
    \TCSR1_GENERATE[22].TCSR1_FF_I_0\ : out STD_LOGIC;
    \TCSR0_GENERATE[23].TCSR0_FF_I_0\ : out STD_LOGIC;
    \TCSR1_GENERATE[24].TCSR1_FF_I_1\ : out STD_LOGIC;
    \TCSR1_GENERATE[25].TCSR1_FF_I_0\ : out STD_LOGIC;
    \TCSR0_GENERATE[26].TCSR0_FF_I_0\ : out STD_LOGIC;
    \TCSR0_GENERATE[27].TCSR0_FF_I_0\ : out STD_LOGIC;
    \TCSR1_GENERATE[28].TCSR1_FF_I_0\ : out STD_LOGIC;
    \TCSR1_GENERATE[29].TCSR1_FF_I_0\ : out STD_LOGIC;
    \TCSR1_GENERATE[30].TCSR1_FF_I_0\ : out STD_LOGIC;
    \TCSR1_GENERATE[31].TCSR1_FF_I_0\ : out STD_LOGIC;
    generateOutPre0_reg_0 : out STD_LOGIC;
    \TCSR0_GENERATE[31].TCSR0_FF_I_0\ : out STD_LOGIC;
    \TCSR0_GENERATE[20].TCSR0_FF_I_1\ : out STD_LOGIC;
    \TCSR0_GENERATE[31].TCSR0_FF_I_1\ : out STD_LOGIC;
    R : out STD_LOGIC;
    GenerateOut0_reg_0 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \INFERRED_GEN.icount_out_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    generateOutPre10 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    generateOutPre00 : in STD_LOGIC;
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pair0_Select : in STD_LOGIC;
    \TCSR0_GENERATE[24].TCSR0_FF_I_1\ : in STD_LOGIC;
    \TCSR1_GENERATE[24].TCSR1_FF_I_2\ : in STD_LOGIC;
    READ_DONE0_I_0 : in STD_LOGIC;
    READ_DONE1_I_0 : in STD_LOGIC;
    \TCSR0_GENERATE[23].TCSR0_FF_I_1\ : in STD_LOGIC;
    \TCSR1_GENERATE[23].TCSR1_FF_I_0\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC;
    counter_TC : in STD_LOGIC_VECTOR ( 0 to 1 );
    \LOAD_REG_GEN[7].LOAD_REG_I\ : in STD_LOGIC;
    \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\ : in STD_LOGIC;
    loadReg_DBus_32 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\ : in STD_LOGIC;
    \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\ : in STD_LOGIC;
    pwm0 : in STD_LOGIC;
    counterReg_DBus_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    counterReg_DBus_32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    freeze : in STD_LOGIC;
    capturetrig0 : in STD_LOGIC;
    capturetrig1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_timer_control : entity is "timer_control";
end ArtyA7_design_PmodAMP2_0_0_timer_control;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_timer_control is
  signal \^d_0\ : STD_LOGIC;
  signal GenerateOut00 : STD_LOGIC;
  signal GenerateOut10 : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[31]_i_3_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[31]_i_4__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[31]_i_5__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[31]_i_6__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[31]_i_6_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[31]_i_7__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.icount_out[31]_i_8__0_n_0\ : STD_LOGIC;
  signal Interrupt0 : STD_LOGIC;
  signal \LOAD_REG_GEN[0].LOAD_REG_I_i_3__0_n_0\ : STD_LOGIC;
  signal \LOAD_REG_GEN[0].LOAD_REG_I_i_3_n_0\ : STD_LOGIC;
  signal \LOAD_REG_GEN[0].LOAD_REG_I_i_4__0_n_0\ : STD_LOGIC;
  signal \LOAD_REG_GEN[0].LOAD_REG_I_i_4_n_0\ : STD_LOGIC;
  signal \LOAD_REG_GEN[0].LOAD_REG_I_i_5_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal READ_DONE1_I_i_1_n_0 : STD_LOGIC;
  signal R_0 : STD_LOGIC;
  signal \^tcsr0_generate[20].tcsr0_ff_i_0\ : STD_LOGIC;
  signal \TCSR0_GENERATE[23].TCSR0_FF_I_i_2_n_0\ : STD_LOGIC;
  signal \TCSR0_GENERATE[23].TCSR0_FF_I_i_3_n_0\ : STD_LOGIC;
  signal \^tcsr0_generate[24].tcsr0_ff_i_0\ : STD_LOGIC;
  signal \TCSR1_GENERATE[23].TCSR1_FF_I_i_2_n_0\ : STD_LOGIC;
  signal \TCSR1_GENERATE[23].TCSR1_FF_I_i_3_n_0\ : STD_LOGIC;
  signal \^tcsr1_generate[24].tcsr1_ff_i_0\ : STD_LOGIC;
  signal captureTrig0_d : STD_LOGIC;
  signal captureTrig0_d0 : STD_LOGIC;
  signal captureTrig0_d2 : STD_LOGIC;
  signal captureTrig0_pulse_d1 : STD_LOGIC;
  signal captureTrig0_pulse_d2 : STD_LOGIC;
  signal captureTrig1_d : STD_LOGIC;
  signal captureTrig1_d0 : STD_LOGIC;
  signal captureTrig1_d2 : STD_LOGIC;
  signal counter_TC_Reg2 : STD_LOGIC;
  signal generateOutPre0 : STD_LOGIC;
  signal generateOutPre1 : STD_LOGIC;
  signal \^generateout0\ : STD_LOGIC;
  signal \^generateout1\ : STD_LOGIC;
  signal icount_out0_carry_i_7_n_0 : STD_LOGIC;
  signal p_46_in : STD_LOGIC;
  signal \^read_done1\ : STD_LOGIC;
  signal tCSR0_Reg : STD_LOGIC_VECTOR ( 21 to 31 );
  signal tCSR1_Reg : STD_LOGIC_VECTOR ( 21 to 31 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of GenerateOut0_i_2 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of GenerateOut1_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \INFERRED_GEN.icount_out[31]_i_8__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[0].LOAD_REG_I_i_3__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[0].LOAD_REG_I_i_4\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \LOAD_REG_GEN[0].LOAD_REG_I_i_5\ : label is "soft_lutpair63";
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of READ_DONE0_I : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of READ_DONE0_I : label is "1'b0";
  attribute box_type : string;
  attribute box_type of READ_DONE0_I : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of READ_DONE1_I : label is "1'b0";
  attribute IS_S_INVERTED of READ_DONE1_I : label is "1'b0";
  attribute box_type of READ_DONE1_I : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR0_GENERATE[20].TCSR0_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR0_GENERATE[20].TCSR0_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR0_GENERATE[20].TCSR0_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR0_GENERATE[21].TCSR0_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR0_GENERATE[21].TCSR0_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR0_GENERATE[21].TCSR0_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR0_GENERATE[22].TCSR0_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR0_GENERATE[22].TCSR0_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR0_GENERATE[22].TCSR0_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR0_GENERATE[23].TCSR0_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR0_GENERATE[23].TCSR0_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR0_GENERATE[23].TCSR0_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR0_GENERATE[24].TCSR0_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR0_GENERATE[24].TCSR0_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR0_GENERATE[24].TCSR0_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR0_GENERATE[25].TCSR0_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR0_GENERATE[25].TCSR0_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR0_GENERATE[25].TCSR0_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR0_GENERATE[26].TCSR0_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR0_GENERATE[26].TCSR0_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR0_GENERATE[26].TCSR0_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR0_GENERATE[27].TCSR0_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR0_GENERATE[27].TCSR0_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR0_GENERATE[27].TCSR0_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR0_GENERATE[28].TCSR0_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR0_GENERATE[28].TCSR0_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR0_GENERATE[28].TCSR0_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR0_GENERATE[29].TCSR0_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR0_GENERATE[29].TCSR0_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR0_GENERATE[29].TCSR0_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR0_GENERATE[30].TCSR0_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR0_GENERATE[30].TCSR0_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR0_GENERATE[30].TCSR0_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR0_GENERATE[31].TCSR0_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR0_GENERATE[31].TCSR0_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR0_GENERATE[31].TCSR0_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR1_GENERATE[21].TCSR1_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR1_GENERATE[21].TCSR1_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR1_GENERATE[21].TCSR1_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR1_GENERATE[22].TCSR1_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR1_GENERATE[22].TCSR1_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR1_GENERATE[22].TCSR1_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR1_GENERATE[23].TCSR1_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR1_GENERATE[23].TCSR1_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR1_GENERATE[23].TCSR1_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR1_GENERATE[24].TCSR1_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR1_GENERATE[24].TCSR1_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR1_GENERATE[24].TCSR1_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR1_GENERATE[25].TCSR1_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR1_GENERATE[25].TCSR1_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR1_GENERATE[25].TCSR1_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR1_GENERATE[26].TCSR1_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR1_GENERATE[26].TCSR1_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR1_GENERATE[26].TCSR1_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR1_GENERATE[27].TCSR1_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR1_GENERATE[27].TCSR1_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR1_GENERATE[27].TCSR1_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR1_GENERATE[28].TCSR1_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR1_GENERATE[28].TCSR1_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR1_GENERATE[28].TCSR1_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR1_GENERATE[29].TCSR1_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR1_GENERATE[29].TCSR1_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR1_GENERATE[29].TCSR1_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR1_GENERATE[30].TCSR1_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR1_GENERATE[30].TCSR1_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR1_GENERATE[30].TCSR1_FF_I\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \TCSR1_GENERATE[31].TCSR1_FF_I\ : label is "1'b0";
  attribute IS_S_INVERTED of \TCSR1_GENERATE[31].TCSR1_FF_I\ : label is "1'b0";
  attribute box_type of \TCSR1_GENERATE[31].TCSR1_FF_I\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of captureTrig0_pulse_d1_i_1 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of icount_out0_carry_i_7 : label is "soft_lutpair62";
begin
  D_0 <= \^d_0\;
  Q(1 downto 0) <= \^q\(1 downto 0);
  \TCSR0_GENERATE[20].TCSR0_FF_I_0\ <= \^tcsr0_generate[20].tcsr0_ff_i_0\;
  \TCSR0_GENERATE[24].TCSR0_FF_I_0\ <= \^tcsr0_generate[24].tcsr0_ff_i_0\;
  \TCSR1_GENERATE[24].TCSR1_FF_I_0\ <= \^tcsr1_generate[24].tcsr1_ff_i_0\;
  generateout0 <= \^generateout0\;
  generateout1 <= \^generateout1\;
  read_done1 <= \^read_done1\;
\GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => tCSR1_Reg(21),
      I1 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\,
      I2 => loadReg_DBus_32(10),
      I3 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\,
      I4 => tCSR0_Reg(21),
      I5 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\,
      O => \TCSR1_GENERATE[21].TCSR1_FF_I_0\
    );
\GEN.DATA_WIDTH_GEN[22].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => tCSR1_Reg(22),
      I1 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\,
      I2 => loadReg_DBus_32(9),
      I3 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\,
      I4 => tCSR0_Reg(22),
      I5 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\,
      O => \TCSR1_GENERATE[22].TCSR1_FF_I_0\
    );
\GEN.DATA_WIDTH_GEN[23].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => tCSR0_Reg(23),
      I1 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\,
      I2 => loadReg_DBus_32(8),
      I3 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\,
      I4 => tCSR1_Reg(23),
      I5 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\,
      O => \TCSR0_GENERATE[23].TCSR0_FF_I_0\
    );
\GEN.DATA_WIDTH_GEN[24].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \^tcsr1_generate[24].tcsr1_ff_i_0\,
      I1 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\,
      I2 => loadReg_DBus_32(7),
      I3 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\,
      I4 => \^tcsr0_generate[24].tcsr0_ff_i_0\,
      I5 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\,
      O => \TCSR1_GENERATE[24].TCSR1_FF_I_1\
    );
\GEN.DATA_WIDTH_GEN[25].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => tCSR1_Reg(25),
      I1 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\,
      I2 => loadReg_DBus_32(6),
      I3 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\,
      I4 => tCSR0_Reg(25),
      I5 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\,
      O => \TCSR1_GENERATE[25].TCSR1_FF_I_0\
    );
\GEN.DATA_WIDTH_GEN[26].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => tCSR0_Reg(26),
      I1 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\,
      I2 => loadReg_DBus_32(5),
      I3 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\,
      I4 => tCSR1_Reg(26),
      I5 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\,
      O => \TCSR0_GENERATE[26].TCSR0_FF_I_0\
    );
\GEN.DATA_WIDTH_GEN[27].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => tCSR0_Reg(27),
      I1 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\,
      I2 => loadReg_DBus_32(4),
      I3 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\,
      I4 => tCSR1_Reg(27),
      I5 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\,
      O => \TCSR0_GENERATE[27].TCSR0_FF_I_0\
    );
\GEN.DATA_WIDTH_GEN[28].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => tCSR1_Reg(28),
      I1 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\,
      I2 => loadReg_DBus_32(3),
      I3 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\,
      I4 => tCSR0_Reg(28),
      I5 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\,
      O => \TCSR1_GENERATE[28].TCSR1_FF_I_0\
    );
\GEN.DATA_WIDTH_GEN[29].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => tCSR1_Reg(29),
      I1 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\,
      I2 => loadReg_DBus_32(2),
      I3 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\,
      I4 => tCSR0_Reg(29),
      I5 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\,
      O => \TCSR1_GENERATE[29].TCSR1_FF_I_0\
    );
\GEN.DATA_WIDTH_GEN[30].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => tCSR1_Reg(30),
      I1 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\,
      I2 => loadReg_DBus_32(1),
      I3 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\,
      I4 => tCSR0_Reg(30),
      I5 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\,
      O => \TCSR1_GENERATE[30].TCSR1_FF_I_0\
    );
\GEN.DATA_WIDTH_GEN[31].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => tCSR1_Reg(31),
      I1 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\,
      I2 => loadReg_DBus_32(0),
      I3 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\,
      I4 => tCSR0_Reg(31),
      I5 => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\,
      O => \TCSR1_GENERATE[31].TCSR1_FF_I_0\
    );
GenerateOut0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => tCSR0_Reg(29),
      I1 => generateOutPre0,
      I2 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I3 => generateOutPre1,
      O => GenerateOut00
    );
GenerateOut0_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => GenerateOut00,
      Q => \^generateout0\,
      R => SR(0)
    );
GenerateOut1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => tCSR0_Reg(29),
      I1 => generateOutPre0,
      I2 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I3 => tCSR1_Reg(29),
      I4 => generateOutPre1,
      O => GenerateOut10
    );
GenerateOut1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => GenerateOut10,
      Q => \^generateout1\,
      R => SR(0)
    );
\INFERRED_GEN.icount_out[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter_TC(1),
      I1 => tCSR1_Reg(31),
      I2 => tCSR1_Reg(22),
      I3 => tCSR1_Reg(27),
      O => \INFERRED_GEN.icount_out[31]_i_3_n_0\
    );
\INFERRED_GEN.icount_out[31]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => tCSR0_Reg(31),
      I1 => counter_TC(0),
      O => \INFERRED_GEN.icount_out[31]_i_4__0_n_0\
    );
\INFERRED_GEN.icount_out[31]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tCSR0_Reg(22),
      I1 => tCSR0_Reg(27),
      O => \INFERRED_GEN.icount_out[31]_i_5__0_n_0\
    );
\INFERRED_GEN.icount_out[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEAAA"
    )
        port map (
      I0 => tCSR1_Reg(26),
      I1 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I2 => tCSR0_Reg(27),
      I3 => counter_TC(1),
      I4 => tCSR0_Reg(31),
      O => \INFERRED_GEN.icount_out[31]_i_6_n_0\
    );
\INFERRED_GEN.icount_out[31]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEAAA"
    )
        port map (
      I0 => tCSR0_Reg(26),
      I1 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I2 => tCSR0_Reg(27),
      I3 => counter_TC(1),
      I4 => tCSR0_Reg(31),
      O => \INFERRED_GEN.icount_out[31]_i_6__0_n_0\
    );
\INFERRED_GEN.icount_out[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4000FFFFFFFF"
    )
        port map (
      I0 => tCSR0_Reg(31),
      I1 => counter_TC(1),
      I2 => tCSR0_Reg(27),
      I3 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I4 => tCSR0_Reg(26),
      I5 => \INFERRED_GEN.icount_out[31]_i_8__0_n_0\,
      O => \TCSR0_GENERATE[31].TCSR0_FF_I_1\
    );
\INFERRED_GEN.icount_out[31]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040454040404040"
    )
        port map (
      I0 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I1 => counter_TC(0),
      I2 => tCSR1_Reg(22),
      I3 => counter_TC(1),
      I4 => tCSR1_Reg(31),
      I5 => tCSR1_Reg(27),
      O => \INFERRED_GEN.icount_out[31]_i_7__0_n_0\
    );
\INFERRED_GEN.icount_out[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAAAAAAA"
    )
        port map (
      I0 => \INFERRED_GEN.icount_out[31]_i_7__0_n_0\,
      I1 => tCSR0_Reg(31),
      I2 => counter_TC(1),
      I3 => tCSR0_Reg(27),
      I4 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I5 => tCSR1_Reg(26),
      O => \TCSR0_GENERATE[31].TCSR0_FF_I_0\
    );
\INFERRED_GEN.icount_out[31]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFEFFF"
    )
        port map (
      I0 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I1 => tCSR0_Reg(31),
      I2 => counter_TC(0),
      I3 => tCSR0_Reg(22),
      I4 => tCSR0_Reg(27),
      O => \INFERRED_GEN.icount_out[31]_i_8__0_n_0\
    );
INPUT_DOUBLE_REGS: entity work.\ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0\
     port map (
      captureTrig0_d0 => captureTrig0_d0,
      capturetrig0 => capturetrig0,
      s_axi_aclk => s_axi_aclk,
      tCSR0_Reg(0) => tCSR0_Reg(28)
    );
INPUT_DOUBLE_REGS2: entity work.\ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0_1\
     port map (
      captureTrig1_d0 => captureTrig1_d0,
      capturetrig1 => capturetrig1,
      s_axi_aclk => s_axi_aclk,
      tCSR1_Reg(0) => tCSR1_Reg(28)
    );
INPUT_DOUBLE_REGS3: entity work.\ArtyA7_design_PmodAMP2_0_0_cdc_sync__parameterized0_2\
     port map (
      \INFERRED_GEN.icount_out_reg[0]\ => \INFERRED_GEN.icount_out[31]_i_3_n_0\,
      \INFERRED_GEN.icount_out_reg[0]_0\ => \INFERRED_GEN.icount_out[31]_i_6_n_0\,
      \INFERRED_GEN.icount_out_reg[0]_1\ => \INFERRED_GEN.icount_out[31]_i_7__0_n_0\,
      \INFERRED_GEN.icount_out_reg[0]_2\ => \^tcsr1_generate[24].tcsr1_ff_i_0\,
      \INFERRED_GEN.icount_out_reg[0]_3\ => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      \INFERRED_GEN.icount_out_reg[0]_4\ => \INFERRED_GEN.icount_out[31]_i_4__0_n_0\,
      \INFERRED_GEN.icount_out_reg[0]_5\ => \INFERRED_GEN.icount_out[31]_i_5__0_n_0\,
      \INFERRED_GEN.icount_out_reg[0]_6\ => \INFERRED_GEN.icount_out[31]_i_6__0_n_0\,
      \INFERRED_GEN.icount_out_reg[0]_7\ => \^tcsr0_generate[24].tcsr0_ff_i_0\,
      \INFERRED_GEN.icount_out_reg[1]\(0) => \INFERRED_GEN.icount_out_reg[1]\(0),
      S(0) => S(0),
      \TCSR0_GENERATE[20].TCSR0_FF_I\ => \TCSR0_GENERATE[20].TCSR0_FF_I_1\,
      counterReg_DBus_0(0) => counterReg_DBus_0(0),
      counterReg_DBus_32(0) => counterReg_DBus_32(0),
      counter_TC(0) => counter_TC(1),
      freeze => freeze,
      generateOutPre0 => generateOutPre0,
      generateOutPre0_reg => generateOutPre0_reg_0,
      \icount_out0_carry_i_5__0_0\ => icount_out0_carry_i_7_n_0,
      s_axi_aclk => s_axi_aclk,
      tCSR0_Reg(2) => tCSR0_Reg(27),
      tCSR0_Reg(1) => tCSR0_Reg(30),
      tCSR0_Reg(0) => tCSR0_Reg(31),
      tCSR1_Reg(0) => tCSR1_Reg(30)
    );
Interrupt_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tCSR1_Reg(23),
      I1 => tCSR1_Reg(25),
      I2 => tCSR0_Reg(23),
      I3 => tCSR0_Reg(25),
      O => Interrupt0
    );
Interrupt_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Interrupt0,
      Q => interrupt,
      R => SR(0)
    );
\LOAD_REG_GEN[0].LOAD_REG_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F444F444444"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \LOAD_REG_GEN[0].LOAD_REG_I_i_3_n_0\,
      I3 => tCSR0_Reg(31),
      I4 => tCSR0_Reg(27),
      I5 => \^d_0\,
      O => CE
    );
\LOAD_REG_GEN[0].LOAD_REG_I_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFE000"
    )
        port map (
      I0 => \^read_done1\,
      I1 => tCSR0_Reg(27),
      I2 => tCSR0_Reg(31),
      I3 => \LOAD_REG_GEN[0].LOAD_REG_I_i_3__0_n_0\,
      I4 => \LOAD_REG_GEN[7].LOAD_REG_I\,
      I5 => \LOAD_REG_GEN[0].LOAD_REG_I_i_4__0_n_0\,
      O => CE_0
    );
\LOAD_REG_GEN[0].LOAD_REG_I_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFDDDDDDDDD"
    )
        port map (
      I0 => captureTrig0_d,
      I1 => captureTrig0_d2,
      I2 => counter_TC(0),
      I3 => \^q\(1),
      I4 => \LOAD_REG_GEN[0].LOAD_REG_I_i_4_n_0\,
      I5 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      O => \LOAD_REG_GEN[0].LOAD_REG_I_i_3_n_0\
    );
\LOAD_REG_GEN[0].LOAD_REG_I_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8880AAAA"
    )
        port map (
      I0 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I1 => counter_TC_Reg2,
      I2 => captureTrig0_pulse_d1,
      I3 => captureTrig0_pulse_d2,
      I4 => \LOAD_REG_GEN[0].LOAD_REG_I_i_5_n_0\,
      O => \LOAD_REG_GEN[0].LOAD_REG_I_i_3__0_n_0\
    );
\LOAD_REG_GEN[0].LOAD_REG_I_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => counter_TC_Reg2,
      I1 => captureTrig0_pulse_d1,
      I2 => captureTrig0_pulse_d2,
      O => \LOAD_REG_GEN[0].LOAD_REG_I_i_4_n_0\
    );
\LOAD_REG_GEN[0].LOAD_REG_I_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000E00000"
    )
        port map (
      I0 => \^read_done1\,
      I1 => tCSR1_Reg(27),
      I2 => tCSR1_Reg(31),
      I3 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I4 => captureTrig1_d,
      I5 => captureTrig1_d2,
      O => \LOAD_REG_GEN[0].LOAD_REG_I_i_4__0_n_0\
    );
\LOAD_REG_GEN[0].LOAD_REG_I_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => counter_TC(0),
      I2 => captureTrig0_d2,
      I3 => captureTrig0_d,
      O => \LOAD_REG_GEN[0].LOAD_REG_I_i_5_n_0\
    );
PWM_FF_I_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^generateout1\,
      I1 => tCSR1_Reg(22),
      I2 => tCSR0_Reg(22),
      O => R
    );
PWM_FF_I_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^generateout0\,
      I1 => pwm0,
      O => GenerateOut0_reg_0
    );
READ_DONE0_I: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => READ_DONE0_I_0,
      Q => \^d_0\,
      R => R_0
    );
READ_DONE0_I_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \LOAD_REG_GEN[0].LOAD_REG_I_i_3__0_n_0\,
      I1 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I2 => captureTrig0_d2,
      I3 => captureTrig0_d,
      O => R_0
    );
READ_DONE1_I: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => READ_DONE1_I_0,
      Q => \^read_done1\,
      R => READ_DONE1_I_i_1_n_0
    );
READ_DONE1_I_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => \LOAD_REG_GEN[0].LOAD_REG_I_i_3__0_n_0\,
      I1 => captureTrig1_d2,
      I2 => captureTrig1_d,
      I3 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      O => READ_DONE1_I_i_1_n_0
    );
\TCSR0_GENERATE[20].TCSR0_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(9),
      Q => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      R => SR(0)
    );
\TCSR0_GENERATE[21].TCSR0_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => pair0_Select,
      D => s_axi_wdata(8),
      Q => tCSR0_Reg(21),
      R => SR(0)
    );
\TCSR0_GENERATE[22].TCSR0_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(7),
      Q => tCSR0_Reg(22),
      R => SR(0)
    );
\TCSR0_GENERATE[23].TCSR0_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \TCSR0_GENERATE[23].TCSR0_FF_I_i_2_n_0\,
      Q => tCSR0_Reg(23),
      R => \TCSR0_GENERATE[23].TCSR0_FF_I_1\
    );
\TCSR0_GENERATE[23].TCSR0_FF_I_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF22E2"
    )
        port map (
      I0 => \TCSR0_GENERATE[23].TCSR0_FF_I_i_3_n_0\,
      I1 => tCSR0_Reg(31),
      I2 => \^tcsr0_generate[24].tcsr0_ff_i_0\,
      I3 => \LOAD_REG_GEN[0].LOAD_REG_I_i_3_n_0\,
      I4 => tCSR0_Reg(23),
      O => \TCSR0_GENERATE[23].TCSR0_FF_I_i_2_n_0\
    );
\TCSR0_GENERATE[23].TCSR0_FF_I_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => generateOutPre1,
      I1 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I2 => generateOutPre0,
      O => \TCSR0_GENERATE[23].TCSR0_FF_I_i_3_n_0\
    );
\TCSR0_GENERATE[24].TCSR0_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => pair0_Select,
      D => \TCSR0_GENERATE[24].TCSR0_FF_I_1\,
      Q => \^tcsr0_generate[24].tcsr0_ff_i_0\,
      R => SR(0)
    );
\TCSR0_GENERATE[25].TCSR0_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(6),
      Q => tCSR0_Reg(25),
      R => SR(0)
    );
\TCSR0_GENERATE[26].TCSR0_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(5),
      Q => tCSR0_Reg(26),
      R => SR(0)
    );
\TCSR0_GENERATE[27].TCSR0_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(4),
      Q => tCSR0_Reg(27),
      R => SR(0)
    );
\TCSR0_GENERATE[28].TCSR0_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(3),
      Q => tCSR0_Reg(28),
      R => SR(0)
    );
\TCSR0_GENERATE[29].TCSR0_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(2),
      Q => tCSR0_Reg(29),
      R => SR(0)
    );
\TCSR0_GENERATE[30].TCSR0_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(1),
      Q => tCSR0_Reg(30),
      R => SR(0)
    );
\TCSR0_GENERATE[31].TCSR0_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(0),
      Q => tCSR0_Reg(31),
      R => SR(0)
    );
\TCSR1_GENERATE[21].TCSR1_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => pair0_Select,
      D => s_axi_wdata(8),
      Q => tCSR1_Reg(21),
      R => SR(0)
    );
\TCSR1_GENERATE[22].TCSR1_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(7),
      Q => tCSR1_Reg(22),
      R => SR(0)
    );
\TCSR1_GENERATE[23].TCSR1_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \TCSR1_GENERATE[23].TCSR1_FF_I_i_2_n_0\,
      Q => tCSR1_Reg(23),
      R => \TCSR1_GENERATE[23].TCSR1_FF_I_0\
    );
\TCSR1_GENERATE[23].TCSR1_FF_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0404FF04"
    )
        port map (
      I0 => tCSR1_Reg(31),
      I1 => generateOutPre1,
      I2 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I3 => \^tcsr1_generate[24].tcsr1_ff_i_0\,
      I4 => \TCSR1_GENERATE[23].TCSR1_FF_I_i_3_n_0\,
      I5 => tCSR1_Reg(23),
      O => \TCSR1_GENERATE[23].TCSR1_FF_I_i_2_n_0\
    );
\TCSR1_GENERATE[23].TCSR1_FF_I_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => captureTrig1_d2,
      I1 => captureTrig1_d,
      I2 => \^tcsr0_generate[20].tcsr0_ff_i_0\,
      I3 => tCSR1_Reg(31),
      O => \TCSR1_GENERATE[23].TCSR1_FF_I_i_3_n_0\
    );
\TCSR1_GENERATE[24].TCSR1_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => pair0_Select,
      D => \TCSR1_GENERATE[24].TCSR1_FF_I_2\,
      Q => \^tcsr1_generate[24].tcsr1_ff_i_0\,
      R => SR(0)
    );
\TCSR1_GENERATE[25].TCSR1_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(6),
      Q => tCSR1_Reg(25),
      R => SR(0)
    );
\TCSR1_GENERATE[26].TCSR1_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(5),
      Q => tCSR1_Reg(26),
      R => SR(0)
    );
\TCSR1_GENERATE[27].TCSR1_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(4),
      Q => tCSR1_Reg(27),
      R => SR(0)
    );
\TCSR1_GENERATE[28].TCSR1_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(3),
      Q => tCSR1_Reg(28),
      R => SR(0)
    );
\TCSR1_GENERATE[29].TCSR1_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(2),
      Q => tCSR1_Reg(29),
      R => SR(0)
    );
\TCSR1_GENERATE[30].TCSR1_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(1),
      Q => tCSR1_Reg(30),
      R => SR(0)
    );
\TCSR1_GENERATE[31].TCSR1_FF_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(0),
      Q => tCSR1_Reg(31),
      R => SR(0)
    );
captureTrig0_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => captureTrig0_d,
      Q => captureTrig0_d2,
      R => SR(0)
    );
captureTrig0_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => captureTrig0_d0,
      Q => captureTrig0_d,
      R => SR(0)
    );
captureTrig0_pulse_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => captureTrig0_d,
      I1 => captureTrig0_d2,
      O => p_46_in
    );
captureTrig0_pulse_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_46_in,
      Q => captureTrig0_pulse_d1,
      R => SR(0)
    );
captureTrig0_pulse_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => captureTrig0_pulse_d1,
      Q => captureTrig0_pulse_d2,
      R => SR(0)
    );
captureTrig1_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => captureTrig1_d,
      Q => captureTrig1_d2,
      R => SR(0)
    );
captureTrig1_d_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => captureTrig1_d0,
      Q => captureTrig1_d,
      R => SR(0)
    );
counter_TC_Reg2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(1),
      Q => counter_TC_Reg2,
      R => SR(0)
    );
\counter_TC_Reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_TC(0),
      Q => \^q\(1),
      R => SR(0)
    );
\counter_TC_Reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_TC(1),
      Q => \^q\(0),
      R => SR(0)
    );
generateOutPre0_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => generateOutPre00,
      Q => generateOutPre0,
      R => SR(0)
    );
generateOutPre1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => generateOutPre10,
      Q => generateOutPre1,
      R => SR(0)
    );
icount_out0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter_TC(0),
      I1 => tCSR0_Reg(31),
      I2 => tCSR0_Reg(27),
      I3 => tCSR0_Reg(22),
      O => icount_out0_carry_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_PmodAMP2_PWM_0_0 is
  port (
    pwm : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwm_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pwm_axi_awvalid : in STD_LOGIC;
    pwm_axi_awready : out STD_LOGIC;
    pwm_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pwm_axi_wvalid : in STD_LOGIC;
    pwm_axi_wready : out STD_LOGIC;
    pwm_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pwm_axi_bvalid : out STD_LOGIC;
    pwm_axi_bready : in STD_LOGIC;
    pwm_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwm_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pwm_axi_arvalid : in STD_LOGIC;
    pwm_axi_arready : out STD_LOGIC;
    pwm_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pwm_axi_rvalid : out STD_LOGIC;
    pwm_axi_rready : in STD_LOGIC;
    pwm_axi_aclk : in STD_LOGIC;
    pwm_axi_aresetn : in STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_PWM_0_0 : entity is "PmodAMP2_PWM_0_0,PWM_v2_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_PWM_0_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_PWM_0_0 : entity is "PmodAMP2_PWM_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_PWM_0_0 : entity is "PWM_v2_0,Vivado 2018.3";
end ArtyA7_design_PmodAMP2_0_0_PmodAMP2_PWM_0_0;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_PWM_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of pwm_axi_aclk : signal is "xilinx.com:signal:clock:1.0 PWM_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of pwm_axi_aclk : signal is "XIL_INTERFACENAME PWM_AXI_CLK, ASSOCIATED_BUSIF PWM_AXI, ASSOCIATED_RESET pwm_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pwm_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 PWM_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of pwm_axi_aresetn : signal is "XIL_INTERFACENAME PWM_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pwm_axi_arready : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI ARREADY";
  attribute X_INTERFACE_INFO of pwm_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI ARVALID";
  attribute X_INTERFACE_INFO of pwm_axi_awready : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI AWREADY";
  attribute X_INTERFACE_INFO of pwm_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI AWVALID";
  attribute X_INTERFACE_INFO of pwm_axi_bready : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI BREADY";
  attribute X_INTERFACE_INFO of pwm_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI BVALID";
  attribute X_INTERFACE_INFO of pwm_axi_rready : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of pwm_axi_rready : signal is "XIL_INTERFACENAME PWM_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pwm_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI RVALID";
  attribute X_INTERFACE_INFO of pwm_axi_wready : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI WREADY";
  attribute X_INTERFACE_INFO of pwm_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI WVALID";
  attribute X_INTERFACE_INFO of pwm_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI ARADDR";
  attribute X_INTERFACE_INFO of pwm_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI ARPROT";
  attribute X_INTERFACE_INFO of pwm_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI AWADDR";
  attribute X_INTERFACE_INFO of pwm_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI AWPROT";
  attribute X_INTERFACE_INFO of pwm_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI BRESP";
  attribute X_INTERFACE_INFO of pwm_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI RDATA";
  attribute X_INTERFACE_INFO of pwm_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI RRESP";
  attribute X_INTERFACE_INFO of pwm_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI WDATA";
  attribute X_INTERFACE_INFO of pwm_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI WSTRB";
begin
  pwm_axi_bresp(1) <= \<const0>\;
  pwm_axi_bresp(0) <= \<const0>\;
  pwm_axi_rresp(1) <= \<const0>\;
  pwm_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.ArtyA7_design_PmodAMP2_0_0_PWM_v2_0
     port map (
      pwm(0) => pwm(0),
      pwm_axi_aclk => pwm_axi_aclk,
      pwm_axi_araddr(4 downto 0) => pwm_axi_araddr(6 downto 2),
      pwm_axi_aresetn => pwm_axi_aresetn,
      pwm_axi_arready => pwm_axi_arready,
      pwm_axi_arvalid => pwm_axi_arvalid,
      pwm_axi_awaddr(4 downto 0) => pwm_axi_awaddr(6 downto 2),
      pwm_axi_awready => pwm_axi_awready,
      pwm_axi_awvalid => pwm_axi_awvalid,
      pwm_axi_bready => pwm_axi_bready,
      pwm_axi_bvalid => pwm_axi_bvalid,
      pwm_axi_rdata(31 downto 0) => pwm_axi_rdata(31 downto 0),
      pwm_axi_rready => pwm_axi_rready,
      pwm_axi_rvalid => pwm_axi_rvalid,
      pwm_axi_wdata(31 downto 0) => pwm_axi_wdata(31 downto 0),
      pwm_axi_wready => pwm_axi_wready,
      pwm_axi_wstrb(3 downto 0) => pwm_axi_wstrb(3 downto 0),
      pwm_axi_wvalid => pwm_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_slave_attachment is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw_i_reg_0 : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    rst_reg_0 : out STD_LOGIC;
    rst_reg_1 : out STD_LOGIC;
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_slave_attachment : entity is "slave_attachment";
end ArtyA7_design_PmodAMP2_0_0_slave_attachment;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 0 to 6 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \^bus2ip_rnw_i_reg_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^ip2bus_rdack_i_d1_reg\ : STD_LOGIC;
  signal \^ip2bus_wrack_i_d1_reg\ : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_i_2_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_bresp_i : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state1__2\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair2";
begin
  Q(0) <= \^q\(0);
  SR(0) <= \^sr\(0);
  bus2ip_rnw_i_reg_0 <= \^bus2ip_rnw_i_reg_0\;
  ip2bus_rdack_i_D1_reg <= \^ip2bus_rdack_i_d1_reg\;
  ip2bus_wrack_i_D1_reg <= \^ip2bus_wrack_i_d1_reg\;
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF150015001500"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^ip2bus_rdack_i_d1_reg\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \^ip2bus_wrack_i_d1_reg\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => s_axi_bresp_i,
      I2 => s_axi_rresp_i,
      I3 => \^ip2bus_rdack_i_d1_reg\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \state1__2\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid_i_reg_0\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      R => clear
    );
I_DECODER: entity work.ArtyA7_design_PmodAMP2_0_0_address_decoder
     port map (
      AXI_LITE_GPIO_arready => is_read_reg_n_0,
      AXI_LITE_GPIO_arready_0(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3 downto 0),
      AXI_LITE_GPIO_wready => is_write_reg_n_0,
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg_0 => \^bus2ip_rnw_i_reg_0\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \Not_Dual.gpio_Data_Out_reg[0]\(2) => bus2ip_addr(0),
      \Not_Dual.gpio_Data_Out_reg[0]\(1) => \^q\(0),
      \Not_Dual.gpio_Data_Out_reg[0]\(0) => bus2ip_addr(6),
      \Not_Dual.gpio_Data_Out_reg[0]_0\ => \^sr\(0),
      Q => start2,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => \^ip2bus_rdack_i_d1_reg\,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => \^ip2bus_wrack_i_d1_reg\,
      rst_reg => rst_reg_0,
      rst_reg_0 => rst_reg_1,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => state(1),
      I4 => state(0),
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[8]_i_2_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => bus2ip_addr(6),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \^q\(0),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[8]_i_2_n_0\,
      Q => bus2ip_addr(0),
      R => \^sr\(0)
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => \^bus2ip_rnw_i_reg_0\,
      R => \^sr\(0)
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8888"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \state1__2\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => is_read_reg_n_0,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read_reg_n_0,
      R => \^sr\(0)
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => is_write_i_2_n_0,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid_i_reg_0\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => is_write_i_2_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => \^sr\(0)
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => p_0_in
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in,
      Q => \^sr\(0),
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid_i_reg_0\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(0),
      Q => s_axi_rdata(0),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(1),
      Q => s_axi_rdata(1),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(2),
      Q => s_axi_rdata(2),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(3),
      Q => s_axi_rdata(3),
      R => \^sr\(0)
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^ip2bus_rdack_i_d1_reg\,
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => \^sr\(0)
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => state(0),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => \^sr\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77FC44FC"
    )
        port map (
      I0 => \state1__2\,
      I1 => state(0),
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => \^ip2bus_wrack_i_d1_reg\,
      O => p_0_out(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFF0C5500FF0C"
    )
        port map (
      I0 => \state1__2\,
      I1 => p_5_in,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => state(0),
      I5 => \^ip2bus_rdack_i_d1_reg\,
      O => p_0_out(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => p_5_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(0),
      Q => state(0),
      R => \^sr\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(1),
      Q => state(1),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_slave_attachment__parameterized0\ is
  port (
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    is_write_reg_0 : out STD_LOGIC;
    is_read_reg_0 : out STD_LOGIC;
    pair0_Select : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[7]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \AXI_LITE_TIMER_wdata[7]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[0]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[1]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[2]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[3]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[4]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[5]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[6]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[7]_1\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[8]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[9]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[10]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[11]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[12]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[13]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[14]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[15]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[16]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[17]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[18]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[19]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[20]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[21]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[22]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[23]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[24]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[25]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[26]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[27]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[28]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[29]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[30]\ : out STD_LOGIC;
    D_0 : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[0]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[1]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[2]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[3]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[4]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[5]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[6]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[7]_2\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[8]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[9]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[10]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[11]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[12]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[13]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[14]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[15]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[16]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[17]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[18]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[19]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[20]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[21]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[22]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[23]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[24]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[25]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[26]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[27]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[28]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[29]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[30]_0\ : out STD_LOGIC;
    D_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19\ : out STD_LOGIC;
    \LOAD_REG_GEN[20].LOAD_REG_I\ : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tCSR0_Reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tCSR1_Reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    counterReg_DBus_32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counterReg_DBus_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    loadReg_DBus_32 : in STD_LOGIC_VECTOR ( 20 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D_2 : in STD_LOGIC;
    read_done1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_slave_attachment__parameterized0\ : entity is "slave_attachment";
end \ArtyA7_design_PmodAMP2_0_0_slave_attachment__parameterized0\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_slave_attachment__parameterized0\ is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal I_DECODER_n_106 : STD_LOGIC;
  signal I_DECODER_n_107 : STD_LOGIC;
  signal I_DECODER_n_4 : STD_LOGIC;
  signal I_DECODER_n_5 : STD_LOGIC;
  signal I_DECODER_n_6 : STD_LOGIC;
  signal I_DECODER_n_7 : STD_LOGIC;
  signal I_DECODER_n_8 : STD_LOGIC;
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 0 to 2 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_2_n_0\ : STD_LOGIC;
  signal bus2ip_rnw_i : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_i_2_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rst : STD_LOGIC;
  signal s_axi_bresp_i : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair24";
begin
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F444F444F44"
    )
        port map (
      I0 => \FSM_onehot_state[3]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => s_axi_wvalid,
      I5 => s_axi_awvalid,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^s_axi_rvalid_i_reg_0\,
      I1 => s_axi_rready,
      I2 => \^s_axi_bvalid_i_reg_0\,
      I3 => s_axi_bready,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_8,
      Q => s_axi_rresp_i,
      R => rst
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_7,
      Q => s_axi_bresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_6,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => rst
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(4),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(5),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I5 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(4),
      O => plusOp(5)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(4),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(5),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(5),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[5]_i_1_n_0\
    );
I_DECODER: entity work.\ArtyA7_design_PmodAMP2_0_0_address_decoder__parameterized0\
     port map (
      AXI_LITE_TIMER_arready => is_read_reg_n_0,
      AXI_LITE_TIMER_arready_0(5 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(5 downto 0),
      AXI_LITE_TIMER_bready => I_DECODER_n_107,
      AXI_LITE_TIMER_rready => I_DECODER_n_106,
      \AXI_LITE_TIMER_wdata[0]\ => \AXI_LITE_TIMER_wdata[0]\,
      \AXI_LITE_TIMER_wdata[0]_0\ => \AXI_LITE_TIMER_wdata[0]_0\,
      \AXI_LITE_TIMER_wdata[10]\ => \AXI_LITE_TIMER_wdata[10]\,
      \AXI_LITE_TIMER_wdata[10]_0\ => \AXI_LITE_TIMER_wdata[10]_0\,
      \AXI_LITE_TIMER_wdata[11]\ => \AXI_LITE_TIMER_wdata[11]\,
      \AXI_LITE_TIMER_wdata[11]_0\ => \AXI_LITE_TIMER_wdata[11]_0\,
      \AXI_LITE_TIMER_wdata[12]\ => \AXI_LITE_TIMER_wdata[12]\,
      \AXI_LITE_TIMER_wdata[12]_0\ => \AXI_LITE_TIMER_wdata[12]_0\,
      \AXI_LITE_TIMER_wdata[13]\ => \AXI_LITE_TIMER_wdata[13]\,
      \AXI_LITE_TIMER_wdata[13]_0\ => \AXI_LITE_TIMER_wdata[13]_0\,
      \AXI_LITE_TIMER_wdata[14]\ => \AXI_LITE_TIMER_wdata[14]\,
      \AXI_LITE_TIMER_wdata[14]_0\ => \AXI_LITE_TIMER_wdata[14]_0\,
      \AXI_LITE_TIMER_wdata[15]\ => \AXI_LITE_TIMER_wdata[15]\,
      \AXI_LITE_TIMER_wdata[15]_0\ => \AXI_LITE_TIMER_wdata[15]_0\,
      \AXI_LITE_TIMER_wdata[16]\ => \AXI_LITE_TIMER_wdata[16]\,
      \AXI_LITE_TIMER_wdata[16]_0\ => \AXI_LITE_TIMER_wdata[16]_0\,
      \AXI_LITE_TIMER_wdata[17]\ => \AXI_LITE_TIMER_wdata[17]\,
      \AXI_LITE_TIMER_wdata[17]_0\ => \AXI_LITE_TIMER_wdata[17]_0\,
      \AXI_LITE_TIMER_wdata[18]\ => \AXI_LITE_TIMER_wdata[18]\,
      \AXI_LITE_TIMER_wdata[18]_0\ => \AXI_LITE_TIMER_wdata[18]_0\,
      \AXI_LITE_TIMER_wdata[19]\ => \AXI_LITE_TIMER_wdata[19]\,
      \AXI_LITE_TIMER_wdata[19]_0\ => \AXI_LITE_TIMER_wdata[19]_0\,
      \AXI_LITE_TIMER_wdata[1]\ => \AXI_LITE_TIMER_wdata[1]\,
      \AXI_LITE_TIMER_wdata[1]_0\ => \AXI_LITE_TIMER_wdata[1]_0\,
      \AXI_LITE_TIMER_wdata[20]\ => \AXI_LITE_TIMER_wdata[20]\,
      \AXI_LITE_TIMER_wdata[20]_0\ => \AXI_LITE_TIMER_wdata[20]_0\,
      \AXI_LITE_TIMER_wdata[21]\ => \AXI_LITE_TIMER_wdata[21]\,
      \AXI_LITE_TIMER_wdata[21]_0\ => \AXI_LITE_TIMER_wdata[21]_0\,
      \AXI_LITE_TIMER_wdata[22]\ => \AXI_LITE_TIMER_wdata[22]\,
      \AXI_LITE_TIMER_wdata[22]_0\ => \AXI_LITE_TIMER_wdata[22]_0\,
      \AXI_LITE_TIMER_wdata[23]\ => \AXI_LITE_TIMER_wdata[23]\,
      \AXI_LITE_TIMER_wdata[23]_0\ => \AXI_LITE_TIMER_wdata[23]_0\,
      \AXI_LITE_TIMER_wdata[24]\ => \AXI_LITE_TIMER_wdata[24]\,
      \AXI_LITE_TIMER_wdata[24]_0\ => \AXI_LITE_TIMER_wdata[24]_0\,
      \AXI_LITE_TIMER_wdata[25]\ => \AXI_LITE_TIMER_wdata[25]\,
      \AXI_LITE_TIMER_wdata[25]_0\ => \AXI_LITE_TIMER_wdata[25]_0\,
      \AXI_LITE_TIMER_wdata[26]\ => \AXI_LITE_TIMER_wdata[26]\,
      \AXI_LITE_TIMER_wdata[26]_0\ => \AXI_LITE_TIMER_wdata[26]_0\,
      \AXI_LITE_TIMER_wdata[27]\ => \AXI_LITE_TIMER_wdata[27]\,
      \AXI_LITE_TIMER_wdata[27]_0\ => \AXI_LITE_TIMER_wdata[27]_0\,
      \AXI_LITE_TIMER_wdata[28]\ => \AXI_LITE_TIMER_wdata[28]\,
      \AXI_LITE_TIMER_wdata[28]_0\ => \AXI_LITE_TIMER_wdata[28]_0\,
      \AXI_LITE_TIMER_wdata[29]\ => \AXI_LITE_TIMER_wdata[29]\,
      \AXI_LITE_TIMER_wdata[29]_0\ => \AXI_LITE_TIMER_wdata[29]_0\,
      \AXI_LITE_TIMER_wdata[2]\ => \AXI_LITE_TIMER_wdata[2]\,
      \AXI_LITE_TIMER_wdata[2]_0\ => \AXI_LITE_TIMER_wdata[2]_0\,
      \AXI_LITE_TIMER_wdata[30]\ => \AXI_LITE_TIMER_wdata[30]\,
      \AXI_LITE_TIMER_wdata[30]_0\ => \AXI_LITE_TIMER_wdata[30]_0\,
      \AXI_LITE_TIMER_wdata[3]\ => \AXI_LITE_TIMER_wdata[3]\,
      \AXI_LITE_TIMER_wdata[3]_0\ => \AXI_LITE_TIMER_wdata[3]_0\,
      \AXI_LITE_TIMER_wdata[4]\ => \AXI_LITE_TIMER_wdata[4]\,
      \AXI_LITE_TIMER_wdata[4]_0\ => \AXI_LITE_TIMER_wdata[4]_0\,
      \AXI_LITE_TIMER_wdata[5]\ => \AXI_LITE_TIMER_wdata[5]\,
      \AXI_LITE_TIMER_wdata[5]_0\ => \AXI_LITE_TIMER_wdata[5]_0\,
      \AXI_LITE_TIMER_wdata[6]\ => \AXI_LITE_TIMER_wdata[6]\,
      \AXI_LITE_TIMER_wdata[6]_0\ => \AXI_LITE_TIMER_wdata[6]_0\,
      \AXI_LITE_TIMER_wdata[7]\ => \AXI_LITE_TIMER_wdata[7]\,
      \AXI_LITE_TIMER_wdata[7]_0\ => \AXI_LITE_TIMER_wdata[7]_0\,
      \AXI_LITE_TIMER_wdata[7]_1\ => \AXI_LITE_TIMER_wdata[7]_1\,
      \AXI_LITE_TIMER_wdata[7]_2\ => \AXI_LITE_TIMER_wdata[7]_2\,
      \AXI_LITE_TIMER_wdata[8]\ => \AXI_LITE_TIMER_wdata[8]\,
      \AXI_LITE_TIMER_wdata[8]_0\ => \AXI_LITE_TIMER_wdata[8]_0\,
      \AXI_LITE_TIMER_wdata[9]\ => \AXI_LITE_TIMER_wdata[9]\,
      \AXI_LITE_TIMER_wdata[9]_0\ => \AXI_LITE_TIMER_wdata[9]_0\,
      AXI_LITE_TIMER_wready => is_write_reg_n_0,
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg_0,
      Bus_RNW_reg_reg_2 => Bus_RNW_reg_reg_1,
      Bus_RNW_reg_reg_3 => Bus_RNW_reg_reg_2,
      Bus_RNW_reg_reg_4 => Bus_RNW_reg_reg_3,
      Bus_RNW_reg_reg_5 => Bus_RNW_reg_reg_4,
      Bus_RNW_reg_reg_6 => Bus_RNW_reg_reg_5,
      D(1) => I_DECODER_n_4,
      D(0) => I_DECODER_n_5,
      D_0 => D_0,
      D_1 => D_1,
      D_2 => D_2,
      \FSM_onehot_state_reg[2]\(2) => I_DECODER_n_6,
      \FSM_onehot_state_reg[2]\(1) => I_DECODER_n_7,
      \FSM_onehot_state_reg[2]\(0) => I_DECODER_n_8,
      \FSM_onehot_state_reg[3]\(3) => \FSM_onehot_state_reg_n_0_[3]\,
      \FSM_onehot_state_reg[3]\(2) => s_axi_bresp_i,
      \FSM_onehot_state_reg[3]\(1) => s_axi_rresp_i,
      \FSM_onehot_state_reg[3]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_21\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\,
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]_0\ => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\,
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0\ => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\,
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_1\ => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0\,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(2) => bus2ip_addr(0),
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(1) => bus2ip_addr(1),
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0\(0) => bus2ip_addr(2),
      \LOAD_REG_GEN[20].LOAD_REG_I\ => \LOAD_REG_GEN[20].LOAD_REG_I\,
      Q => start2,
      bus2ip_rnw_i => bus2ip_rnw_i,
      bus2ip_wrce(1 downto 0) => bus2ip_wrce(1 downto 0),
      counterReg_DBus_0(31 downto 0) => counterReg_DBus_0(31 downto 0),
      counterReg_DBus_32(31 downto 0) => counterReg_DBus_32(31 downto 0),
      is_read_reg => is_read_reg_0,
      is_write_reg => is_write_reg_0,
      loadReg_DBus_32(20 downto 0) => loadReg_DBus_32(20 downto 0),
      pair0_Select => pair0_Select,
      read_done1 => read_done1,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg => \^s_axi_bvalid_i_reg_0\,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg(1 downto 0) => state(1 downto 0),
      s_axi_rvalid_i_reg_0 => \^s_axi_rvalid_i_reg_0\,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \state_reg[0]\ => \FSM_onehot_state[3]_i_2_n_0\,
      \state_reg[1]\ => \state[1]_i_2_n_0\,
      tCSR0_Reg(1 downto 0) => tCSR0_Reg(1 downto 0),
      tCSR1_Reg(0) => tCSR1_Reg(0)
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(0),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(1),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020202"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => s_axi_awaddr(2),
      O => \bus2ip_addr_i[4]_i_2_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[4]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => bus2ip_addr(2),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[4]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => bus2ip_addr(1),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[4]_i_1_n_0\,
      D => \bus2ip_addr_i[4]_i_2_n_0\,
      Q => bus2ip_addr(0),
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[4]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => bus2ip_rnw_i,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BB8888"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[3]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => is_read_reg_n_0,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read_reg_n_0,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => s_axi_arvalid,
      I4 => is_write_i_2_n_0,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^s_axi_rvalid_i_reg_0\,
      I2 => s_axi_rready,
      I3 => \^s_axi_bvalid_i_reg_0\,
      I4 => s_axi_bready,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => is_write_i_2_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_reset,
      Q => rst,
      R => '0'
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_107,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => rst
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(0),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(10),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(11),
      Q => s_axi_rdata(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(12),
      Q => s_axi_rdata(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(13),
      Q => s_axi_rdata(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(14),
      Q => s_axi_rdata(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(15),
      Q => s_axi_rdata(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(16),
      Q => s_axi_rdata(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(17),
      Q => s_axi_rdata(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(18),
      Q => s_axi_rdata(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(19),
      Q => s_axi_rdata(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(1),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(20),
      Q => s_axi_rdata(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(21),
      Q => s_axi_rdata(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(22),
      Q => s_axi_rdata(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(23),
      Q => s_axi_rdata(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(24),
      Q => s_axi_rdata(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(25),
      Q => s_axi_rdata(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(26),
      Q => s_axi_rdata(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(27),
      Q => s_axi_rdata(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(28),
      Q => s_axi_rdata(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(29),
      Q => s_axi_rdata(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(2),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(30),
      Q => s_axi_rdata(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(31),
      Q => s_axi_rdata(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(3),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(4),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(5),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(6),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(7),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(8),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => D(9),
      Q => s_axi_rdata(9),
      R => rst
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_106,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0008"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_arvalid,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      O => \state[1]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_5,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_4,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_tc_core is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \LOAD_REG_GEN[0].LOAD_REG_I\ : out STD_LOGIC_VECTOR ( 20 downto 0 );
    bus2ip_reset : out STD_LOGIC;
    counterReg_DBus_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    counterReg_DBus_32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    generateout0 : out STD_LOGIC;
    generateout1 : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    \TCSR0_GENERATE[20].TCSR0_FF_I\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \TCSR1_GENERATE[24].TCSR1_FF_I\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D_0 : out STD_LOGIC;
    read_done1 : out STD_LOGIC;
    pwm0 : out STD_LOGIC;
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[30]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[29]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[28]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[27]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[26]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[25]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[24]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[23]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[22]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[21]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[20]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[19]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[18]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[17]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[16]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[15]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[14]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[13]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[12]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[11]\ : in STD_LOGIC;
    D_1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \LOAD_REG_GEN[1].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[2].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[3].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[4].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[5].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[6].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[7].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[8].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[9].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[10].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[11].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[12].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[13].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[14].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[15].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[16].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[17].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[18].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[19].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[20].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[21].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[22].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[23].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[24].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[25].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[26].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[27].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[28].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[29].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[30].LOAD_REG_I\ : in STD_LOGIC;
    \LOAD_REG_GEN[31].LOAD_REG_I\ : in STD_LOGIC;
    D_2 : in STD_LOGIC;
    \LOAD_REG_GEN[1].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[2].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[3].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[4].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[5].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[6].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[7].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[8].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[9].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[10].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[11].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[12].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[13].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[14].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[15].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[16].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[17].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[18].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[19].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[20].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[21].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[22].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[23].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[24].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[25].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[26].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[27].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[28].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[29].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[30].LOAD_REG_I_0\ : in STD_LOGIC;
    \LOAD_REG_GEN[31].LOAD_REG_I_0\ : in STD_LOGIC;
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    pair0_Select : in STD_LOGIC;
    \TCSR0_GENERATE[24].TCSR0_FF_I\ : in STD_LOGIC;
    \TCSR1_GENERATE[24].TCSR1_FF_I_0\ : in STD_LOGIC;
    READ_DONE0_I : in STD_LOGIC;
    READ_DONE1_I : in STD_LOGIC;
    \TCSR0_GENERATE[23].TCSR0_FF_I\ : in STD_LOGIC;
    \TCSR1_GENERATE[23].TCSR1_FF_I\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC;
    \LOAD_REG_GEN[7].LOAD_REG_I_1\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_0\ : in STD_LOGIC;
    \s_axi_rdata_i_reg[0]_1\ : in STD_LOGIC;
    \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\ : in STD_LOGIC;
    \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\ : in STD_LOGIC;
    \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\ : in STD_LOGIC;
    freeze : in STD_LOGIC;
    capturetrig0 : in STD_LOGIC;
    capturetrig1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_tc_core : entity is "tc_core";
end ArtyA7_design_PmodAMP2_0_0_tc_core;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_tc_core is
  signal CE : STD_LOGIC;
  signal CE_0 : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_35\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_36\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_37\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_38\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_39\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_40\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_41\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_42\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_43\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_44\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_45\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_46\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_47\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_48\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_49\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_50\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_51\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_52\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_53\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_54\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_55\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_56\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_57\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_58\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_59\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_60\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_61\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_62\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_63\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_64\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_65\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I_n_66\ : STD_LOGIC;
  signal R : STD_LOGIC;
  signal TIMER_CONTROL_I_n_12 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_13 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_14 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_15 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_16 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_17 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_18 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_19 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_20 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_21 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_22 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_23 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_24 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_25 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_26 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_28 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_29 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_3 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_30 : STD_LOGIC;
  signal TIMER_CONTROL_I_n_4 : STD_LOGIC;
  signal \^bus2ip_reset\ : STD_LOGIC;
  signal \^counterreg_dbus_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^counterreg_dbus_32\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal counter_TC : STD_LOGIC_VECTOR ( 0 to 1 );
  signal generateOutPre00 : STD_LOGIC;
  signal generateOutPre10 : STD_LOGIC;
  signal loadReg_DBus_32 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^pwm0\ : STD_LOGIC;
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of PWM_FF_I : label is "1'b0";
  attribute box_type : string;
  attribute box_type of PWM_FF_I : label is "PRIMITIVE";
begin
  bus2ip_reset <= \^bus2ip_reset\;
  counterReg_DBus_0(31 downto 0) <= \^counterreg_dbus_0\(31 downto 0);
  counterReg_DBus_32(31 downto 0) <= \^counterreg_dbus_32\(31 downto 0);
  pwm0 <= \^pwm0\;
COUNTER_0_I: entity work.ArtyA7_design_PmodAMP2_0_0_count_module
     port map (
      CE => CE_0,
      DI(2 downto 0) => \^counterreg_dbus_32\(30 downto 28),
      D_1 => D_1,
      \INFERRED_GEN.icount_out_reg[0]\ => \^counterreg_dbus_32\(0),
      \INFERRED_GEN.icount_out_reg[0]_0\ => TIMER_CONTROL_I_n_25,
      \INFERRED_GEN.icount_out_reg[11]\(3 downto 0) => \^counterreg_dbus_32\(11 downto 8),
      \INFERRED_GEN.icount_out_reg[15]\(3 downto 0) => \^counterreg_dbus_32\(15 downto 12),
      \INFERRED_GEN.icount_out_reg[19]\(3 downto 0) => \^counterreg_dbus_32\(19 downto 16),
      \INFERRED_GEN.icount_out_reg[23]\(3 downto 0) => \^counterreg_dbus_32\(23 downto 20),
      \INFERRED_GEN.icount_out_reg[27]\(3 downto 0) => \^counterreg_dbus_32\(27 downto 24),
      \INFERRED_GEN.icount_out_reg[31]\ => \^counterreg_dbus_32\(31),
      \INFERRED_GEN.icount_out_reg[31]_0\ => \^bus2ip_reset\,
      \INFERRED_GEN.icount_out_reg[31]_1\ => TIMER_CONTROL_I_n_26,
      \INFERRED_GEN.icount_out_reg[3]\(2 downto 0) => \^counterreg_dbus_32\(3 downto 1),
      \INFERRED_GEN.icount_out_reg[7]\(3 downto 0) => \^counterreg_dbus_32\(7 downto 4),
      \LOAD_REG_GEN[0].LOAD_REG_I_0\(20 downto 0) => \LOAD_REG_GEN[0].LOAD_REG_I\(20 downto 0),
      \LOAD_REG_GEN[10].LOAD_REG_I_0\ => \LOAD_REG_GEN[10].LOAD_REG_I\,
      \LOAD_REG_GEN[11].LOAD_REG_I_0\ => \LOAD_REG_GEN[11].LOAD_REG_I\,
      \LOAD_REG_GEN[12].LOAD_REG_I_0\ => \LOAD_REG_GEN[12].LOAD_REG_I\,
      \LOAD_REG_GEN[13].LOAD_REG_I_0\ => \LOAD_REG_GEN[13].LOAD_REG_I\,
      \LOAD_REG_GEN[14].LOAD_REG_I_0\ => \LOAD_REG_GEN[14].LOAD_REG_I\,
      \LOAD_REG_GEN[15].LOAD_REG_I_0\ => \LOAD_REG_GEN[15].LOAD_REG_I\,
      \LOAD_REG_GEN[16].LOAD_REG_I_0\ => \LOAD_REG_GEN[16].LOAD_REG_I\,
      \LOAD_REG_GEN[17].LOAD_REG_I_0\ => \LOAD_REG_GEN[17].LOAD_REG_I\,
      \LOAD_REG_GEN[18].LOAD_REG_I_0\ => \LOAD_REG_GEN[18].LOAD_REG_I\,
      \LOAD_REG_GEN[19].LOAD_REG_I_0\ => \LOAD_REG_GEN[19].LOAD_REG_I\,
      \LOAD_REG_GEN[1].LOAD_REG_I_0\ => \LOAD_REG_GEN[1].LOAD_REG_I\,
      \LOAD_REG_GEN[20].LOAD_REG_I_0\ => \LOAD_REG_GEN[20].LOAD_REG_I\,
      \LOAD_REG_GEN[21].LOAD_REG_I_0\ => \LOAD_REG_GEN[21].LOAD_REG_I\,
      \LOAD_REG_GEN[22].LOAD_REG_I_0\ => \LOAD_REG_GEN[22].LOAD_REG_I\,
      \LOAD_REG_GEN[23].LOAD_REG_I_0\ => \LOAD_REG_GEN[23].LOAD_REG_I\,
      \LOAD_REG_GEN[24].LOAD_REG_I_0\ => \LOAD_REG_GEN[24].LOAD_REG_I\,
      \LOAD_REG_GEN[25].LOAD_REG_I_0\ => \LOAD_REG_GEN[25].LOAD_REG_I\,
      \LOAD_REG_GEN[26].LOAD_REG_I_0\ => \LOAD_REG_GEN[26].LOAD_REG_I\,
      \LOAD_REG_GEN[27].LOAD_REG_I_0\ => \LOAD_REG_GEN[27].LOAD_REG_I\,
      \LOAD_REG_GEN[28].LOAD_REG_I_0\ => \LOAD_REG_GEN[28].LOAD_REG_I\,
      \LOAD_REG_GEN[29].LOAD_REG_I_0\ => \LOAD_REG_GEN[29].LOAD_REG_I\,
      \LOAD_REG_GEN[2].LOAD_REG_I_0\ => \LOAD_REG_GEN[2].LOAD_REG_I\,
      \LOAD_REG_GEN[30].LOAD_REG_I_0\ => \LOAD_REG_GEN[30].LOAD_REG_I\,
      \LOAD_REG_GEN[31].LOAD_REG_I_0\ => \LOAD_REG_GEN[31].LOAD_REG_I\,
      \LOAD_REG_GEN[3].LOAD_REG_I_0\ => \LOAD_REG_GEN[3].LOAD_REG_I\,
      \LOAD_REG_GEN[4].LOAD_REG_I_0\ => \LOAD_REG_GEN[4].LOAD_REG_I\,
      \LOAD_REG_GEN[5].LOAD_REG_I_0\ => \LOAD_REG_GEN[5].LOAD_REG_I\,
      \LOAD_REG_GEN[6].LOAD_REG_I_0\ => \LOAD_REG_GEN[6].LOAD_REG_I\,
      \LOAD_REG_GEN[7].LOAD_REG_I_0\ => \LOAD_REG_GEN[7].LOAD_REG_I\,
      \LOAD_REG_GEN[8].LOAD_REG_I_0\ => \LOAD_REG_GEN[8].LOAD_REG_I\,
      \LOAD_REG_GEN[9].LOAD_REG_I_0\ => \LOAD_REG_GEN[9].LOAD_REG_I\,
      Q(0) => TIMER_CONTROL_I_n_3,
      S(0) => TIMER_CONTROL_I_n_30,
      counter_TC(0) => counter_TC(0),
      generateOutPre00 => generateOutPre00,
      loadReg_DBus_32(10 downto 0) => loadReg_DBus_32(10 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
\GEN_SECOND_TIMER.COUNTER_1_I\: entity work.ArtyA7_design_PmodAMP2_0_0_count_module_0
     port map (
      CE => CE,
      DI(2 downto 0) => \^counterreg_dbus_0\(30 downto 28),
      D_2 => D_2,
      \INFERRED_GEN.icount_out_reg[0]\ => \^counterreg_dbus_0\(0),
      \INFERRED_GEN.icount_out_reg[0]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_35\,
      \INFERRED_GEN.icount_out_reg[0]_1\ => TIMER_CONTROL_I_n_23,
      \INFERRED_GEN.icount_out_reg[11]\(3 downto 0) => \^counterreg_dbus_0\(11 downto 8),
      \INFERRED_GEN.icount_out_reg[11]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_49\,
      \INFERRED_GEN.icount_out_reg[12]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_48\,
      \INFERRED_GEN.icount_out_reg[13]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_61\,
      \INFERRED_GEN.icount_out_reg[14]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_47\,
      \INFERRED_GEN.icount_out_reg[15]\(3 downto 0) => \^counterreg_dbus_0\(15 downto 12),
      \INFERRED_GEN.icount_out_reg[15]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_46\,
      \INFERRED_GEN.icount_out_reg[16]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_45\,
      \INFERRED_GEN.icount_out_reg[17]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_44\,
      \INFERRED_GEN.icount_out_reg[18]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_43\,
      \INFERRED_GEN.icount_out_reg[19]\(3 downto 0) => \^counterreg_dbus_0\(19 downto 16),
      \INFERRED_GEN.icount_out_reg[19]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_42\,
      \INFERRED_GEN.icount_out_reg[1]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_54\,
      \INFERRED_GEN.icount_out_reg[20]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_60\,
      \INFERRED_GEN.icount_out_reg[21]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_59\,
      \INFERRED_GEN.icount_out_reg[22]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_58\,
      \INFERRED_GEN.icount_out_reg[23]\(3 downto 0) => \^counterreg_dbus_0\(23 downto 20),
      \INFERRED_GEN.icount_out_reg[23]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_57\,
      \INFERRED_GEN.icount_out_reg[24]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_41\,
      \INFERRED_GEN.icount_out_reg[25]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_56\,
      \INFERRED_GEN.icount_out_reg[26]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_55\,
      \INFERRED_GEN.icount_out_reg[27]\(3 downto 0) => \^counterreg_dbus_0\(27 downto 24),
      \INFERRED_GEN.icount_out_reg[27]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_40\,
      \INFERRED_GEN.icount_out_reg[28]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_39\,
      \INFERRED_GEN.icount_out_reg[29]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_38\,
      \INFERRED_GEN.icount_out_reg[2]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_53\,
      \INFERRED_GEN.icount_out_reg[30]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_37\,
      \INFERRED_GEN.icount_out_reg[31]\ => \^counterreg_dbus_0\(31),
      \INFERRED_GEN.icount_out_reg[31]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_36\,
      \INFERRED_GEN.icount_out_reg[31]_1\ => TIMER_CONTROL_I_n_24,
      \INFERRED_GEN.icount_out_reg[3]\(2 downto 0) => \^counterreg_dbus_0\(3 downto 1),
      \INFERRED_GEN.icount_out_reg[6]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_52\,
      \INFERRED_GEN.icount_out_reg[7]\(3 downto 0) => \^counterreg_dbus_0\(7 downto 4),
      \INFERRED_GEN.icount_out_reg[7]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_51\,
      \INFERRED_GEN.icount_out_reg[8]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_50\,
      \INFERRED_GEN.icount_out_reg[9]\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_63\,
      \LOAD_REG_GEN[10].LOAD_REG_I_0\ => \LOAD_REG_GEN[10].LOAD_REG_I_0\,
      \LOAD_REG_GEN[11].LOAD_REG_I_0\ => \LOAD_REG_GEN[11].LOAD_REG_I_0\,
      \LOAD_REG_GEN[12].LOAD_REG_I_0\ => \LOAD_REG_GEN[12].LOAD_REG_I_0\,
      \LOAD_REG_GEN[13].LOAD_REG_I_0\ => \LOAD_REG_GEN[13].LOAD_REG_I_0\,
      \LOAD_REG_GEN[14].LOAD_REG_I_0\ => \LOAD_REG_GEN[14].LOAD_REG_I_0\,
      \LOAD_REG_GEN[15].LOAD_REG_I_0\ => \LOAD_REG_GEN[15].LOAD_REG_I_0\,
      \LOAD_REG_GEN[16].LOAD_REG_I_0\ => \LOAD_REG_GEN[16].LOAD_REG_I_0\,
      \LOAD_REG_GEN[17].LOAD_REG_I_0\ => \LOAD_REG_GEN[17].LOAD_REG_I_0\,
      \LOAD_REG_GEN[18].LOAD_REG_I_0\ => \LOAD_REG_GEN[18].LOAD_REG_I_0\,
      \LOAD_REG_GEN[19].LOAD_REG_I_0\ => \LOAD_REG_GEN[19].LOAD_REG_I_0\,
      \LOAD_REG_GEN[1].LOAD_REG_I_0\ => \LOAD_REG_GEN[1].LOAD_REG_I_0\,
      \LOAD_REG_GEN[20].LOAD_REG_I_0\ => \LOAD_REG_GEN[20].LOAD_REG_I_0\,
      \LOAD_REG_GEN[21].LOAD_REG_I_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_62\,
      \LOAD_REG_GEN[21].LOAD_REG_I_1\ => \LOAD_REG_GEN[21].LOAD_REG_I_0\,
      \LOAD_REG_GEN[22].LOAD_REG_I_0\ => \LOAD_REG_GEN[22].LOAD_REG_I_0\,
      \LOAD_REG_GEN[23].LOAD_REG_I_0\ => \LOAD_REG_GEN[23].LOAD_REG_I_0\,
      \LOAD_REG_GEN[24].LOAD_REG_I_0\ => \LOAD_REG_GEN[24].LOAD_REG_I_0\,
      \LOAD_REG_GEN[25].LOAD_REG_I_0\ => \LOAD_REG_GEN[25].LOAD_REG_I_0\,
      \LOAD_REG_GEN[26].LOAD_REG_I_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_64\,
      \LOAD_REG_GEN[26].LOAD_REG_I_1\ => \LOAD_REG_GEN[26].LOAD_REG_I_0\,
      \LOAD_REG_GEN[27].LOAD_REG_I_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_65\,
      \LOAD_REG_GEN[27].LOAD_REG_I_1\ => \LOAD_REG_GEN[27].LOAD_REG_I_0\,
      \LOAD_REG_GEN[28].LOAD_REG_I_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_66\,
      \LOAD_REG_GEN[28].LOAD_REG_I_1\ => \LOAD_REG_GEN[28].LOAD_REG_I_0\,
      \LOAD_REG_GEN[29].LOAD_REG_I_0\ => \LOAD_REG_GEN[29].LOAD_REG_I_0\,
      \LOAD_REG_GEN[2].LOAD_REG_I_0\ => \LOAD_REG_GEN[2].LOAD_REG_I_0\,
      \LOAD_REG_GEN[30].LOAD_REG_I_0\ => \LOAD_REG_GEN[30].LOAD_REG_I_0\,
      \LOAD_REG_GEN[31].LOAD_REG_I_0\ => \LOAD_REG_GEN[31].LOAD_REG_I_0\,
      \LOAD_REG_GEN[3].LOAD_REG_I_0\ => \LOAD_REG_GEN[3].LOAD_REG_I_0\,
      \LOAD_REG_GEN[4].LOAD_REG_I_0\ => \LOAD_REG_GEN[4].LOAD_REG_I_0\,
      \LOAD_REG_GEN[5].LOAD_REG_I_0\ => \LOAD_REG_GEN[5].LOAD_REG_I_0\,
      \LOAD_REG_GEN[6].LOAD_REG_I_0\ => \LOAD_REG_GEN[6].LOAD_REG_I_0\,
      \LOAD_REG_GEN[7].LOAD_REG_I_0\ => \LOAD_REG_GEN[7].LOAD_REG_I_0\,
      \LOAD_REG_GEN[8].LOAD_REG_I_0\ => \LOAD_REG_GEN[8].LOAD_REG_I_0\,
      \LOAD_REG_GEN[9].LOAD_REG_I_0\ => \LOAD_REG_GEN[9].LOAD_REG_I_0\,
      Q(0) => TIMER_CONTROL_I_n_4,
      S(0) => TIMER_CONTROL_I_n_29,
      counterReg_DBus_32(31 downto 0) => \^counterreg_dbus_32\(31 downto 0),
      counter_TC(0) => counter_TC(1),
      generateOutPre10 => generateOutPre10,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^bus2ip_reset\,
      \s_axi_rdata_i_reg[0]\ => \s_axi_rdata_i_reg[0]\,
      \s_axi_rdata_i_reg[0]_0\ => \s_axi_rdata_i_reg[0]_0\,
      \s_axi_rdata_i_reg[0]_1\ => \s_axi_rdata_i_reg[0]_1\
    );
PWM_FF_I: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => TIMER_CONTROL_I_n_28,
      Q => \^pwm0\,
      R => R
    );
READ_MUX_I: entity work.ArtyA7_design_PmodAMP2_0_0_mux_onehot_f
     port map (
      D(31 downto 0) => D(31 downto 0),
      \s_axi_rdata_i_reg[0]\ => TIMER_CONTROL_I_n_22,
      \s_axi_rdata_i_reg[0]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_35\,
      \s_axi_rdata_i_reg[10]\ => TIMER_CONTROL_I_n_12,
      \s_axi_rdata_i_reg[10]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_62\,
      \s_axi_rdata_i_reg[11]\ => \s_axi_rdata_i_reg[11]\,
      \s_axi_rdata_i_reg[11]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_49\,
      \s_axi_rdata_i_reg[12]\ => \s_axi_rdata_i_reg[12]\,
      \s_axi_rdata_i_reg[12]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_48\,
      \s_axi_rdata_i_reg[13]\ => \s_axi_rdata_i_reg[13]\,
      \s_axi_rdata_i_reg[13]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_61\,
      \s_axi_rdata_i_reg[14]\ => \s_axi_rdata_i_reg[14]\,
      \s_axi_rdata_i_reg[14]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_47\,
      \s_axi_rdata_i_reg[15]\ => \s_axi_rdata_i_reg[15]\,
      \s_axi_rdata_i_reg[15]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_46\,
      \s_axi_rdata_i_reg[16]\ => \s_axi_rdata_i_reg[16]\,
      \s_axi_rdata_i_reg[16]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_45\,
      \s_axi_rdata_i_reg[17]\ => \s_axi_rdata_i_reg[17]\,
      \s_axi_rdata_i_reg[17]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_44\,
      \s_axi_rdata_i_reg[18]\ => \s_axi_rdata_i_reg[18]\,
      \s_axi_rdata_i_reg[18]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_43\,
      \s_axi_rdata_i_reg[19]\ => \s_axi_rdata_i_reg[19]\,
      \s_axi_rdata_i_reg[19]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_42\,
      \s_axi_rdata_i_reg[1]\ => TIMER_CONTROL_I_n_21,
      \s_axi_rdata_i_reg[1]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_54\,
      \s_axi_rdata_i_reg[20]\ => \s_axi_rdata_i_reg[20]\,
      \s_axi_rdata_i_reg[20]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_60\,
      \s_axi_rdata_i_reg[21]\ => \s_axi_rdata_i_reg[21]\,
      \s_axi_rdata_i_reg[21]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_59\,
      \s_axi_rdata_i_reg[22]\ => \s_axi_rdata_i_reg[22]\,
      \s_axi_rdata_i_reg[22]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_58\,
      \s_axi_rdata_i_reg[23]\ => \s_axi_rdata_i_reg[23]\,
      \s_axi_rdata_i_reg[23]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_57\,
      \s_axi_rdata_i_reg[24]\ => \s_axi_rdata_i_reg[24]\,
      \s_axi_rdata_i_reg[24]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_41\,
      \s_axi_rdata_i_reg[25]\ => \s_axi_rdata_i_reg[25]\,
      \s_axi_rdata_i_reg[25]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_56\,
      \s_axi_rdata_i_reg[26]\ => \s_axi_rdata_i_reg[26]\,
      \s_axi_rdata_i_reg[26]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_55\,
      \s_axi_rdata_i_reg[27]\ => \s_axi_rdata_i_reg[27]\,
      \s_axi_rdata_i_reg[27]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_40\,
      \s_axi_rdata_i_reg[28]\ => \s_axi_rdata_i_reg[28]\,
      \s_axi_rdata_i_reg[28]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_39\,
      \s_axi_rdata_i_reg[29]\ => \s_axi_rdata_i_reg[29]\,
      \s_axi_rdata_i_reg[29]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_38\,
      \s_axi_rdata_i_reg[2]\ => TIMER_CONTROL_I_n_20,
      \s_axi_rdata_i_reg[2]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_53\,
      \s_axi_rdata_i_reg[30]\ => \s_axi_rdata_i_reg[30]\,
      \s_axi_rdata_i_reg[30]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_37\,
      \s_axi_rdata_i_reg[31]\ => \s_axi_rdata_i_reg[31]\,
      \s_axi_rdata_i_reg[31]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_36\,
      \s_axi_rdata_i_reg[3]\ => TIMER_CONTROL_I_n_19,
      \s_axi_rdata_i_reg[3]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_66\,
      \s_axi_rdata_i_reg[4]\ => TIMER_CONTROL_I_n_18,
      \s_axi_rdata_i_reg[4]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_65\,
      \s_axi_rdata_i_reg[5]\ => TIMER_CONTROL_I_n_17,
      \s_axi_rdata_i_reg[5]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_64\,
      \s_axi_rdata_i_reg[6]\ => TIMER_CONTROL_I_n_16,
      \s_axi_rdata_i_reg[6]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_52\,
      \s_axi_rdata_i_reg[7]\ => TIMER_CONTROL_I_n_15,
      \s_axi_rdata_i_reg[7]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_51\,
      \s_axi_rdata_i_reg[8]\ => TIMER_CONTROL_I_n_14,
      \s_axi_rdata_i_reg[8]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_50\,
      \s_axi_rdata_i_reg[9]\ => TIMER_CONTROL_I_n_13,
      \s_axi_rdata_i_reg[9]_0\ => \GEN_SECOND_TIMER.COUNTER_1_I_n_63\
    );
TIMER_CONTROL_I: entity work.ArtyA7_design_PmodAMP2_0_0_timer_control
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      CE => CE_0,
      CE_0 => CE,
      D_0 => D_0,
      \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\ => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\,
      \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\ => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\,
      \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\ => \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      GenerateOut0_reg_0 => TIMER_CONTROL_I_n_28,
      \INFERRED_GEN.icount_out_reg[1]\(0) => TIMER_CONTROL_I_n_30,
      \LOAD_REG_GEN[7].LOAD_REG_I\ => \LOAD_REG_GEN[7].LOAD_REG_I_1\,
      Q(1) => TIMER_CONTROL_I_n_3,
      Q(0) => TIMER_CONTROL_I_n_4,
      R => R,
      READ_DONE0_I_0 => READ_DONE0_I,
      READ_DONE1_I_0 => READ_DONE1_I,
      S(0) => TIMER_CONTROL_I_n_29,
      SR(0) => \^bus2ip_reset\,
      \TCSR0_GENERATE[20].TCSR0_FF_I_0\ => \TCSR0_GENERATE[20].TCSR0_FF_I\(1),
      \TCSR0_GENERATE[20].TCSR0_FF_I_1\ => TIMER_CONTROL_I_n_25,
      \TCSR0_GENERATE[23].TCSR0_FF_I_0\ => TIMER_CONTROL_I_n_14,
      \TCSR0_GENERATE[23].TCSR0_FF_I_1\ => \TCSR0_GENERATE[23].TCSR0_FF_I\,
      \TCSR0_GENERATE[24].TCSR0_FF_I_0\ => \TCSR0_GENERATE[20].TCSR0_FF_I\(0),
      \TCSR0_GENERATE[24].TCSR0_FF_I_1\ => \TCSR0_GENERATE[24].TCSR0_FF_I\,
      \TCSR0_GENERATE[26].TCSR0_FF_I_0\ => TIMER_CONTROL_I_n_17,
      \TCSR0_GENERATE[27].TCSR0_FF_I_0\ => TIMER_CONTROL_I_n_18,
      \TCSR0_GENERATE[31].TCSR0_FF_I_0\ => TIMER_CONTROL_I_n_24,
      \TCSR0_GENERATE[31].TCSR0_FF_I_1\ => TIMER_CONTROL_I_n_26,
      \TCSR1_GENERATE[21].TCSR1_FF_I_0\ => TIMER_CONTROL_I_n_12,
      \TCSR1_GENERATE[22].TCSR1_FF_I_0\ => TIMER_CONTROL_I_n_13,
      \TCSR1_GENERATE[23].TCSR1_FF_I_0\ => \TCSR1_GENERATE[23].TCSR1_FF_I\,
      \TCSR1_GENERATE[24].TCSR1_FF_I_0\ => \TCSR1_GENERATE[24].TCSR1_FF_I\(0),
      \TCSR1_GENERATE[24].TCSR1_FF_I_1\ => TIMER_CONTROL_I_n_15,
      \TCSR1_GENERATE[24].TCSR1_FF_I_2\ => \TCSR1_GENERATE[24].TCSR1_FF_I_0\,
      \TCSR1_GENERATE[25].TCSR1_FF_I_0\ => TIMER_CONTROL_I_n_16,
      \TCSR1_GENERATE[28].TCSR1_FF_I_0\ => TIMER_CONTROL_I_n_19,
      \TCSR1_GENERATE[29].TCSR1_FF_I_0\ => TIMER_CONTROL_I_n_20,
      \TCSR1_GENERATE[30].TCSR1_FF_I_0\ => TIMER_CONTROL_I_n_21,
      \TCSR1_GENERATE[31].TCSR1_FF_I_0\ => TIMER_CONTROL_I_n_22,
      bus2ip_wrce(1 downto 0) => bus2ip_wrce(1 downto 0),
      capturetrig0 => capturetrig0,
      capturetrig1 => capturetrig1,
      counterReg_DBus_0(0) => \^counterreg_dbus_0\(1),
      counterReg_DBus_32(0) => \^counterreg_dbus_32\(1),
      counter_TC(0 to 1) => counter_TC(0 to 1),
      freeze => freeze,
      generateOutPre00 => generateOutPre00,
      generateOutPre0_reg_0 => TIMER_CONTROL_I_n_23,
      generateOutPre10 => generateOutPre10,
      generateout0 => generateout0,
      generateout1 => generateout1,
      interrupt => interrupt,
      loadReg_DBus_32(10 downto 0) => loadReg_DBus_32(10 downto 0),
      pair0_Select => pair0_Select,
      pwm0 => \^pwm0\,
      read_done1 => read_done1,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(9 downto 0) => s_axi_wdata(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_axi_lite_ipif is
  port (
    bus2ip_reset : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    bus2ip_cs : out STD_LOGIC;
    rst_reg : out STD_LOGIC;
    rst_reg_0 : out STD_LOGIC;
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_axi_lite_ipif : entity is "axi_lite_ipif";
end ArtyA7_design_PmodAMP2_0_0_axi_lite_ipif;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.ArtyA7_design_PmodAMP2_0_0_slave_attachment
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => bus2ip_cs,
      Q(0) => Q(0),
      SR(0) => bus2ip_reset,
      bus2ip_rnw_i_reg_0 => bus2ip_rnw,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => ip2bus_rdack_i_D1_reg,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => ip2bus_wrack_i_D1_reg,
      rst_reg_0 => rst_reg,
      rst_reg_1 => rst_reg_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2 downto 0) => s_axi_araddr(2 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(3 downto 0) => s_axi_rdata(3 downto 0),
      \s_axi_rdata_i_reg[31]_0\(3 downto 0) => \s_axi_rdata_i_reg[31]\(3 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ArtyA7_design_PmodAMP2_0_0_axi_lite_ipif__parameterized0\ is
  port (
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    is_write_reg : out STD_LOGIC;
    is_read_reg : out STD_LOGIC;
    pair0_Select : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[7]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \AXI_LITE_TIMER_wdata[7]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[0]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[1]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[2]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[3]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[4]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[5]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[6]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[7]_1\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[8]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[9]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[10]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[11]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[12]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[13]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[14]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[15]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[16]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[17]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[18]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[19]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[20]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[21]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[22]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[23]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[24]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[25]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[26]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[27]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[28]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[29]\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[30]\ : out STD_LOGIC;
    D_0 : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[0]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[1]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[2]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[3]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[4]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[5]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[6]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[7]_2\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[8]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[9]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[10]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[11]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[12]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[13]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[14]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[15]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[16]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[17]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[18]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[19]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[20]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[21]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[22]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[23]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[24]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[25]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[26]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[27]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[28]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[29]_0\ : out STD_LOGIC;
    \AXI_LITE_TIMER_wdata[30]_0\ : out STD_LOGIC;
    D_1 : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18\ : out STD_LOGIC;
    \LOAD_REG_GEN[20].LOAD_REG_I\ : out STD_LOGIC;
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tCSR0_Reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tCSR1_Reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    counterReg_DBus_32 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counterReg_DBus_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    loadReg_DBus_32 : in STD_LOGIC_VECTOR ( 20 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D_2 : in STD_LOGIC;
    read_done1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ArtyA7_design_PmodAMP2_0_0_axi_lite_ipif__parameterized0\ : entity is "axi_lite_ipif";
end \ArtyA7_design_PmodAMP2_0_0_axi_lite_ipif__parameterized0\;

architecture STRUCTURE of \ArtyA7_design_PmodAMP2_0_0_axi_lite_ipif__parameterized0\ is
begin
I_SLAVE_ATTACHMENT: entity work.\ArtyA7_design_PmodAMP2_0_0_slave_attachment__parameterized0\
     port map (
      \AXI_LITE_TIMER_wdata[0]\ => \AXI_LITE_TIMER_wdata[0]\,
      \AXI_LITE_TIMER_wdata[0]_0\ => \AXI_LITE_TIMER_wdata[0]_0\,
      \AXI_LITE_TIMER_wdata[10]\ => \AXI_LITE_TIMER_wdata[10]\,
      \AXI_LITE_TIMER_wdata[10]_0\ => \AXI_LITE_TIMER_wdata[10]_0\,
      \AXI_LITE_TIMER_wdata[11]\ => \AXI_LITE_TIMER_wdata[11]\,
      \AXI_LITE_TIMER_wdata[11]_0\ => \AXI_LITE_TIMER_wdata[11]_0\,
      \AXI_LITE_TIMER_wdata[12]\ => \AXI_LITE_TIMER_wdata[12]\,
      \AXI_LITE_TIMER_wdata[12]_0\ => \AXI_LITE_TIMER_wdata[12]_0\,
      \AXI_LITE_TIMER_wdata[13]\ => \AXI_LITE_TIMER_wdata[13]\,
      \AXI_LITE_TIMER_wdata[13]_0\ => \AXI_LITE_TIMER_wdata[13]_0\,
      \AXI_LITE_TIMER_wdata[14]\ => \AXI_LITE_TIMER_wdata[14]\,
      \AXI_LITE_TIMER_wdata[14]_0\ => \AXI_LITE_TIMER_wdata[14]_0\,
      \AXI_LITE_TIMER_wdata[15]\ => \AXI_LITE_TIMER_wdata[15]\,
      \AXI_LITE_TIMER_wdata[15]_0\ => \AXI_LITE_TIMER_wdata[15]_0\,
      \AXI_LITE_TIMER_wdata[16]\ => \AXI_LITE_TIMER_wdata[16]\,
      \AXI_LITE_TIMER_wdata[16]_0\ => \AXI_LITE_TIMER_wdata[16]_0\,
      \AXI_LITE_TIMER_wdata[17]\ => \AXI_LITE_TIMER_wdata[17]\,
      \AXI_LITE_TIMER_wdata[17]_0\ => \AXI_LITE_TIMER_wdata[17]_0\,
      \AXI_LITE_TIMER_wdata[18]\ => \AXI_LITE_TIMER_wdata[18]\,
      \AXI_LITE_TIMER_wdata[18]_0\ => \AXI_LITE_TIMER_wdata[18]_0\,
      \AXI_LITE_TIMER_wdata[19]\ => \AXI_LITE_TIMER_wdata[19]\,
      \AXI_LITE_TIMER_wdata[19]_0\ => \AXI_LITE_TIMER_wdata[19]_0\,
      \AXI_LITE_TIMER_wdata[1]\ => \AXI_LITE_TIMER_wdata[1]\,
      \AXI_LITE_TIMER_wdata[1]_0\ => \AXI_LITE_TIMER_wdata[1]_0\,
      \AXI_LITE_TIMER_wdata[20]\ => \AXI_LITE_TIMER_wdata[20]\,
      \AXI_LITE_TIMER_wdata[20]_0\ => \AXI_LITE_TIMER_wdata[20]_0\,
      \AXI_LITE_TIMER_wdata[21]\ => \AXI_LITE_TIMER_wdata[21]\,
      \AXI_LITE_TIMER_wdata[21]_0\ => \AXI_LITE_TIMER_wdata[21]_0\,
      \AXI_LITE_TIMER_wdata[22]\ => \AXI_LITE_TIMER_wdata[22]\,
      \AXI_LITE_TIMER_wdata[22]_0\ => \AXI_LITE_TIMER_wdata[22]_0\,
      \AXI_LITE_TIMER_wdata[23]\ => \AXI_LITE_TIMER_wdata[23]\,
      \AXI_LITE_TIMER_wdata[23]_0\ => \AXI_LITE_TIMER_wdata[23]_0\,
      \AXI_LITE_TIMER_wdata[24]\ => \AXI_LITE_TIMER_wdata[24]\,
      \AXI_LITE_TIMER_wdata[24]_0\ => \AXI_LITE_TIMER_wdata[24]_0\,
      \AXI_LITE_TIMER_wdata[25]\ => \AXI_LITE_TIMER_wdata[25]\,
      \AXI_LITE_TIMER_wdata[25]_0\ => \AXI_LITE_TIMER_wdata[25]_0\,
      \AXI_LITE_TIMER_wdata[26]\ => \AXI_LITE_TIMER_wdata[26]\,
      \AXI_LITE_TIMER_wdata[26]_0\ => \AXI_LITE_TIMER_wdata[26]_0\,
      \AXI_LITE_TIMER_wdata[27]\ => \AXI_LITE_TIMER_wdata[27]\,
      \AXI_LITE_TIMER_wdata[27]_0\ => \AXI_LITE_TIMER_wdata[27]_0\,
      \AXI_LITE_TIMER_wdata[28]\ => \AXI_LITE_TIMER_wdata[28]\,
      \AXI_LITE_TIMER_wdata[28]_0\ => \AXI_LITE_TIMER_wdata[28]_0\,
      \AXI_LITE_TIMER_wdata[29]\ => \AXI_LITE_TIMER_wdata[29]\,
      \AXI_LITE_TIMER_wdata[29]_0\ => \AXI_LITE_TIMER_wdata[29]_0\,
      \AXI_LITE_TIMER_wdata[2]\ => \AXI_LITE_TIMER_wdata[2]\,
      \AXI_LITE_TIMER_wdata[2]_0\ => \AXI_LITE_TIMER_wdata[2]_0\,
      \AXI_LITE_TIMER_wdata[30]\ => \AXI_LITE_TIMER_wdata[30]\,
      \AXI_LITE_TIMER_wdata[30]_0\ => \AXI_LITE_TIMER_wdata[30]_0\,
      \AXI_LITE_TIMER_wdata[3]\ => \AXI_LITE_TIMER_wdata[3]\,
      \AXI_LITE_TIMER_wdata[3]_0\ => \AXI_LITE_TIMER_wdata[3]_0\,
      \AXI_LITE_TIMER_wdata[4]\ => \AXI_LITE_TIMER_wdata[4]\,
      \AXI_LITE_TIMER_wdata[4]_0\ => \AXI_LITE_TIMER_wdata[4]_0\,
      \AXI_LITE_TIMER_wdata[5]\ => \AXI_LITE_TIMER_wdata[5]\,
      \AXI_LITE_TIMER_wdata[5]_0\ => \AXI_LITE_TIMER_wdata[5]_0\,
      \AXI_LITE_TIMER_wdata[6]\ => \AXI_LITE_TIMER_wdata[6]\,
      \AXI_LITE_TIMER_wdata[6]_0\ => \AXI_LITE_TIMER_wdata[6]_0\,
      \AXI_LITE_TIMER_wdata[7]\ => \AXI_LITE_TIMER_wdata[7]\,
      \AXI_LITE_TIMER_wdata[7]_0\ => \AXI_LITE_TIMER_wdata[7]_0\,
      \AXI_LITE_TIMER_wdata[7]_1\ => \AXI_LITE_TIMER_wdata[7]_1\,
      \AXI_LITE_TIMER_wdata[7]_2\ => \AXI_LITE_TIMER_wdata[7]_2\,
      \AXI_LITE_TIMER_wdata[8]\ => \AXI_LITE_TIMER_wdata[8]\,
      \AXI_LITE_TIMER_wdata[8]_0\ => \AXI_LITE_TIMER_wdata[8]_0\,
      \AXI_LITE_TIMER_wdata[9]\ => \AXI_LITE_TIMER_wdata[9]\,
      \AXI_LITE_TIMER_wdata[9]_0\ => \AXI_LITE_TIMER_wdata[9]_0\,
      Bus_RNW_reg_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg_0,
      Bus_RNW_reg_reg_2 => Bus_RNW_reg_reg_1,
      Bus_RNW_reg_reg_3 => Bus_RNW_reg_reg_2,
      Bus_RNW_reg_reg_4 => Bus_RNW_reg_reg_3,
      Bus_RNW_reg_reg_5 => Bus_RNW_reg_reg_4,
      D(31 downto 0) => D(31 downto 0),
      D_0 => D_0,
      D_1 => D_1,
      D_2 => D_2,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_20\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\,
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ => \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\,
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\ => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\,
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0\ => \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0\,
      \LOAD_REG_GEN[20].LOAD_REG_I\ => \LOAD_REG_GEN[20].LOAD_REG_I\,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrce(1 downto 0) => bus2ip_wrce(1 downto 0),
      counterReg_DBus_0(31 downto 0) => counterReg_DBus_0(31 downto 0),
      counterReg_DBus_32(31 downto 0) => counterReg_DBus_32(31 downto 0),
      is_read_reg_0 => is_read_reg,
      is_write_reg_0 => is_write_reg,
      loadReg_DBus_32(20 downto 0) => loadReg_DBus_32(20 downto 0),
      pair0_Select => pair0_Select,
      read_done1 => read_done1,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2 downto 0) => s_axi_araddr(2 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      tCSR0_Reg(1 downto 0) => tCSR0_Reg(1 downto 0),
      tCSR1_Reg(0) => tCSR1_Reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_axi_gpio is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is 0;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is 0;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is 1;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is 0;
  attribute C_DOUT_DEFAULT : integer;
  attribute C_DOUT_DEFAULT of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is 0;
  attribute C_DOUT_DEFAULT_2 : integer;
  attribute C_DOUT_DEFAULT_2 of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is "artix7";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is 32;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is 3;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is 0;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is 32;
  attribute C_TRI_DEFAULT : integer;
  attribute C_TRI_DEFAULT of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is -1;
  attribute C_TRI_DEFAULT_2 : integer;
  attribute C_TRI_DEFAULT_2 of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is -1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is "axi_gpio";
  attribute ip_group : string;
  attribute ip_group of ArtyA7_design_PmodAMP2_0_0_axi_gpio : entity is "LOGICORE";
end ArtyA7_design_PmodAMP2_0_0_axi_gpio;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_axi_gpio is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_11 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_12 : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : STD_LOGIC;
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 5 to 5 );
  signal bus2ip_cs : STD_LOGIC;
  signal bus2ip_reset : STD_LOGIC;
  signal bus2ip_rnw : STD_LOGIC;
  signal ip2bus_data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_data_i_D1 : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_rdack_i : STD_LOGIC;
  signal ip2bus_rdack_i_D1 : STD_LOGIC;
  signal ip2bus_wrack_i : STD_LOGIC;
  signal ip2bus_wrack_i_D1 : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute sigis : string;
  attribute sigis of ip2intc_irpt : signal is "INTR_LEVEL_HIGH";
  attribute sigis of s_axi_aclk : signal is "Clk";
  attribute sigis of s_axi_aresetn : signal is "Rst";
begin
  gpio2_io_o(31) <= \<const0>\;
  gpio2_io_o(30) <= \<const0>\;
  gpio2_io_o(29) <= \<const0>\;
  gpio2_io_o(28) <= \<const0>\;
  gpio2_io_o(27) <= \<const0>\;
  gpio2_io_o(26) <= \<const0>\;
  gpio2_io_o(25) <= \<const0>\;
  gpio2_io_o(24) <= \<const0>\;
  gpio2_io_o(23) <= \<const0>\;
  gpio2_io_o(22) <= \<const0>\;
  gpio2_io_o(21) <= \<const0>\;
  gpio2_io_o(20) <= \<const0>\;
  gpio2_io_o(19) <= \<const0>\;
  gpio2_io_o(18) <= \<const0>\;
  gpio2_io_o(17) <= \<const0>\;
  gpio2_io_o(16) <= \<const0>\;
  gpio2_io_o(15) <= \<const0>\;
  gpio2_io_o(14) <= \<const0>\;
  gpio2_io_o(13) <= \<const0>\;
  gpio2_io_o(12) <= \<const0>\;
  gpio2_io_o(11) <= \<const0>\;
  gpio2_io_o(10) <= \<const0>\;
  gpio2_io_o(9) <= \<const0>\;
  gpio2_io_o(8) <= \<const0>\;
  gpio2_io_o(7) <= \<const0>\;
  gpio2_io_o(6) <= \<const0>\;
  gpio2_io_o(5) <= \<const0>\;
  gpio2_io_o(4) <= \<const0>\;
  gpio2_io_o(3) <= \<const0>\;
  gpio2_io_o(2) <= \<const0>\;
  gpio2_io_o(1) <= \<const0>\;
  gpio2_io_o(0) <= \<const0>\;
  gpio2_io_t(31) <= \<const1>\;
  gpio2_io_t(30) <= \<const1>\;
  gpio2_io_t(29) <= \<const1>\;
  gpio2_io_t(28) <= \<const1>\;
  gpio2_io_t(27) <= \<const1>\;
  gpio2_io_t(26) <= \<const1>\;
  gpio2_io_t(25) <= \<const1>\;
  gpio2_io_t(24) <= \<const1>\;
  gpio2_io_t(23) <= \<const1>\;
  gpio2_io_t(22) <= \<const1>\;
  gpio2_io_t(21) <= \<const1>\;
  gpio2_io_t(20) <= \<const1>\;
  gpio2_io_t(19) <= \<const1>\;
  gpio2_io_t(18) <= \<const1>\;
  gpio2_io_t(17) <= \<const1>\;
  gpio2_io_t(16) <= \<const1>\;
  gpio2_io_t(15) <= \<const1>\;
  gpio2_io_t(14) <= \<const1>\;
  gpio2_io_t(13) <= \<const1>\;
  gpio2_io_t(12) <= \<const1>\;
  gpio2_io_t(11) <= \<const1>\;
  gpio2_io_t(10) <= \<const1>\;
  gpio2_io_t(9) <= \<const1>\;
  gpio2_io_t(8) <= \<const1>\;
  gpio2_io_t(7) <= \<const1>\;
  gpio2_io_t(6) <= \<const1>\;
  gpio2_io_t(5) <= \<const1>\;
  gpio2_io_t(4) <= \<const1>\;
  gpio2_io_t(3) <= \<const1>\;
  gpio2_io_t(2) <= \<const1>\;
  gpio2_io_t(1) <= \<const1>\;
  gpio2_io_t(0) <= \<const1>\;
  ip2intc_irpt <= \<const0>\;
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(30);
  s_axi_rdata(30) <= \^s_axi_rdata\(30);
  s_axi_rdata(29) <= \^s_axi_rdata\(30);
  s_axi_rdata(28) <= \^s_axi_rdata\(30);
  s_axi_rdata(27) <= \^s_axi_rdata\(30);
  s_axi_rdata(26) <= \^s_axi_rdata\(30);
  s_axi_rdata(25) <= \^s_axi_rdata\(30);
  s_axi_rdata(24) <= \^s_axi_rdata\(30);
  s_axi_rdata(23) <= \^s_axi_rdata\(30);
  s_axi_rdata(22) <= \^s_axi_rdata\(30);
  s_axi_rdata(21) <= \^s_axi_rdata\(30);
  s_axi_rdata(20) <= \^s_axi_rdata\(30);
  s_axi_rdata(19) <= \^s_axi_rdata\(30);
  s_axi_rdata(18) <= \^s_axi_rdata\(30);
  s_axi_rdata(17) <= \^s_axi_rdata\(30);
  s_axi_rdata(16) <= \^s_axi_rdata\(30);
  s_axi_rdata(15) <= \^s_axi_rdata\(30);
  s_axi_rdata(14) <= \^s_axi_rdata\(30);
  s_axi_rdata(13) <= \^s_axi_rdata\(30);
  s_axi_rdata(12) <= \^s_axi_rdata\(30);
  s_axi_rdata(11) <= \^s_axi_rdata\(30);
  s_axi_rdata(10) <= \^s_axi_rdata\(30);
  s_axi_rdata(9) <= \^s_axi_rdata\(30);
  s_axi_rdata(8) <= \^s_axi_rdata\(30);
  s_axi_rdata(7) <= \^s_axi_rdata\(30);
  s_axi_rdata(6) <= \^s_axi_rdata\(30);
  s_axi_rdata(5) <= \^s_axi_rdata\(30);
  s_axi_rdata(4) <= \^s_axi_rdata\(30);
  s_axi_rdata(3) <= \^s_axi_rdata\(30);
  s_axi_rdata(2 downto 0) <= \^s_axi_rdata\(2 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
AXI_LITE_IPIF_I: entity work.ArtyA7_design_PmodAMP2_0_0_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      Q(0) => bus2ip_addr(5),
      bus2ip_cs => bus2ip_cs,
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => s_axi_arready,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => \^s_axi_wready\,
      rst_reg => AXI_LITE_IPIF_I_n_11,
      rst_reg_0 => AXI_LITE_IPIF_I_n_12,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2) => s_axi_araddr(8),
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2) => s_axi_awaddr(8),
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg => s_axi_bvalid,
      s_axi_rdata(3) => \^s_axi_rdata\(30),
      s_axi_rdata(2 downto 0) => \^s_axi_rdata\(2 downto 0),
      \s_axi_rdata_i_reg[31]\(3) => ip2bus_data_i_D1(0),
      \s_axi_rdata_i_reg[31]\(2) => ip2bus_data_i_D1(29),
      \s_axi_rdata_i_reg[31]\(1) => ip2bus_data_i_D1(30),
      \s_axi_rdata_i_reg[31]\(0) => ip2bus_data_i_D1(31),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg => s_axi_rvalid,
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
gpio_core_1: entity work.ArtyA7_design_PmodAMP2_0_0_GPIO_Core
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(3) => ip2bus_data(0),
      D(2) => ip2bus_data(29),
      D(1) => ip2bus_data(30),
      D(0) => ip2bus_data(31),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      \Not_Dual.gpio_Data_Out_reg[0]_0\ => AXI_LITE_IPIF_I_n_11,
      \Not_Dual.gpio_OE_reg[0]_0\ => AXI_LITE_IPIF_I_n_12,
      Q(0) => bus2ip_addr(5),
      bus2ip_cs => bus2ip_cs,
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      gpio_io_o(2 downto 0) => gpio_io_o(2 downto 0),
      gpio_io_t(2 downto 0) => gpio_io_t(2 downto 0),
      ip2bus_rdack_i => ip2bus_rdack_i,
      ip2bus_wrack_i => ip2bus_wrack_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(5 downto 3) => s_axi_wdata(31 downto 29),
      s_axi_wdata(2 downto 0) => s_axi_wdata(2 downto 0)
    );
\ip2bus_data_i_D1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(0),
      Q => ip2bus_data_i_D1(0),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(29),
      Q => ip2bus_data_i_D1(29),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(30),
      Q => ip2bus_data_i_D1(30),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(31),
      Q => ip2bus_data_i_D1(31),
      R => bus2ip_reset
    );
ip2bus_rdack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_i,
      Q => ip2bus_rdack_i_D1,
      R => bus2ip_reset
    );
ip2bus_wrack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_i,
      Q => ip2bus_wrack_i_D1,
      R => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_axi_timer is
  port (
    capturetrig0 : in STD_LOGIC;
    capturetrig1 : in STD_LOGIC;
    generateout0 : out STD_LOGIC;
    generateout1 : out STD_LOGIC;
    pwm0 : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute C_COUNT_WIDTH : integer;
  attribute C_COUNT_WIDTH of ArtyA7_design_PmodAMP2_0_0_axi_timer : entity is 32;
  attribute C_FAMILY : string;
  attribute C_FAMILY of ArtyA7_design_PmodAMP2_0_0_axi_timer : entity is "artix7";
  attribute C_GEN0_ASSERT : string;
  attribute C_GEN0_ASSERT of ArtyA7_design_PmodAMP2_0_0_axi_timer : entity is "1'b1";
  attribute C_GEN1_ASSERT : string;
  attribute C_GEN1_ASSERT of ArtyA7_design_PmodAMP2_0_0_axi_timer : entity is "1'b1";
  attribute C_ONE_TIMER_ONLY : integer;
  attribute C_ONE_TIMER_ONLY of ArtyA7_design_PmodAMP2_0_0_axi_timer : entity is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of ArtyA7_design_PmodAMP2_0_0_axi_timer : entity is 5;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of ArtyA7_design_PmodAMP2_0_0_axi_timer : entity is 32;
  attribute C_TRIG0_ASSERT : string;
  attribute C_TRIG0_ASSERT of ArtyA7_design_PmodAMP2_0_0_axi_timer : entity is "1'b1";
  attribute C_TRIG1_ASSERT : string;
  attribute C_TRIG1_ASSERT of ArtyA7_design_PmodAMP2_0_0_axi_timer : entity is "1'b1";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ArtyA7_design_PmodAMP2_0_0_axi_timer : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_axi_timer : entity is "axi_timer";
end ArtyA7_design_PmodAMP2_0_0_axi_timer;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_axi_timer is
  signal \<const0>\ : STD_LOGIC;
  signal AXI4_LITE_I_n_100 : STD_LOGIC;
  signal AXI4_LITE_I_n_101 : STD_LOGIC;
  signal AXI4_LITE_I_n_102 : STD_LOGIC;
  signal AXI4_LITE_I_n_103 : STD_LOGIC;
  signal AXI4_LITE_I_n_104 : STD_LOGIC;
  signal AXI4_LITE_I_n_105 : STD_LOGIC;
  signal AXI4_LITE_I_n_106 : STD_LOGIC;
  signal AXI4_LITE_I_n_11 : STD_LOGIC;
  signal AXI4_LITE_I_n_12 : STD_LOGIC;
  signal AXI4_LITE_I_n_13 : STD_LOGIC;
  signal AXI4_LITE_I_n_14 : STD_LOGIC;
  signal AXI4_LITE_I_n_15 : STD_LOGIC;
  signal AXI4_LITE_I_n_16 : STD_LOGIC;
  signal AXI4_LITE_I_n_17 : STD_LOGIC;
  signal AXI4_LITE_I_n_18 : STD_LOGIC;
  signal AXI4_LITE_I_n_19 : STD_LOGIC;
  signal AXI4_LITE_I_n_20 : STD_LOGIC;
  signal AXI4_LITE_I_n_21 : STD_LOGIC;
  signal AXI4_LITE_I_n_22 : STD_LOGIC;
  signal AXI4_LITE_I_n_23 : STD_LOGIC;
  signal AXI4_LITE_I_n_24 : STD_LOGIC;
  signal AXI4_LITE_I_n_25 : STD_LOGIC;
  signal AXI4_LITE_I_n_26 : STD_LOGIC;
  signal AXI4_LITE_I_n_27 : STD_LOGIC;
  signal AXI4_LITE_I_n_28 : STD_LOGIC;
  signal AXI4_LITE_I_n_29 : STD_LOGIC;
  signal AXI4_LITE_I_n_30 : STD_LOGIC;
  signal AXI4_LITE_I_n_31 : STD_LOGIC;
  signal AXI4_LITE_I_n_32 : STD_LOGIC;
  signal AXI4_LITE_I_n_33 : STD_LOGIC;
  signal AXI4_LITE_I_n_34 : STD_LOGIC;
  signal AXI4_LITE_I_n_35 : STD_LOGIC;
  signal AXI4_LITE_I_n_36 : STD_LOGIC;
  signal AXI4_LITE_I_n_37 : STD_LOGIC;
  signal AXI4_LITE_I_n_38 : STD_LOGIC;
  signal AXI4_LITE_I_n_39 : STD_LOGIC;
  signal AXI4_LITE_I_n_40 : STD_LOGIC;
  signal AXI4_LITE_I_n_41 : STD_LOGIC;
  signal AXI4_LITE_I_n_42 : STD_LOGIC;
  signal AXI4_LITE_I_n_44 : STD_LOGIC;
  signal AXI4_LITE_I_n_45 : STD_LOGIC;
  signal AXI4_LITE_I_n_46 : STD_LOGIC;
  signal AXI4_LITE_I_n_47 : STD_LOGIC;
  signal AXI4_LITE_I_n_48 : STD_LOGIC;
  signal AXI4_LITE_I_n_49 : STD_LOGIC;
  signal AXI4_LITE_I_n_50 : STD_LOGIC;
  signal AXI4_LITE_I_n_51 : STD_LOGIC;
  signal AXI4_LITE_I_n_52 : STD_LOGIC;
  signal AXI4_LITE_I_n_53 : STD_LOGIC;
  signal AXI4_LITE_I_n_54 : STD_LOGIC;
  signal AXI4_LITE_I_n_55 : STD_LOGIC;
  signal AXI4_LITE_I_n_56 : STD_LOGIC;
  signal AXI4_LITE_I_n_57 : STD_LOGIC;
  signal AXI4_LITE_I_n_58 : STD_LOGIC;
  signal AXI4_LITE_I_n_59 : STD_LOGIC;
  signal AXI4_LITE_I_n_60 : STD_LOGIC;
  signal AXI4_LITE_I_n_61 : STD_LOGIC;
  signal AXI4_LITE_I_n_62 : STD_LOGIC;
  signal AXI4_LITE_I_n_63 : STD_LOGIC;
  signal AXI4_LITE_I_n_64 : STD_LOGIC;
  signal AXI4_LITE_I_n_65 : STD_LOGIC;
  signal AXI4_LITE_I_n_66 : STD_LOGIC;
  signal AXI4_LITE_I_n_67 : STD_LOGIC;
  signal AXI4_LITE_I_n_68 : STD_LOGIC;
  signal AXI4_LITE_I_n_69 : STD_LOGIC;
  signal AXI4_LITE_I_n_7 : STD_LOGIC;
  signal AXI4_LITE_I_n_70 : STD_LOGIC;
  signal AXI4_LITE_I_n_71 : STD_LOGIC;
  signal AXI4_LITE_I_n_72 : STD_LOGIC;
  signal AXI4_LITE_I_n_73 : STD_LOGIC;
  signal AXI4_LITE_I_n_74 : STD_LOGIC;
  signal AXI4_LITE_I_n_76 : STD_LOGIC;
  signal AXI4_LITE_I_n_77 : STD_LOGIC;
  signal AXI4_LITE_I_n_78 : STD_LOGIC;
  signal AXI4_LITE_I_n_79 : STD_LOGIC;
  signal AXI4_LITE_I_n_8 : STD_LOGIC;
  signal AXI4_LITE_I_n_80 : STD_LOGIC;
  signal AXI4_LITE_I_n_81 : STD_LOGIC;
  signal AXI4_LITE_I_n_82 : STD_LOGIC;
  signal AXI4_LITE_I_n_83 : STD_LOGIC;
  signal AXI4_LITE_I_n_84 : STD_LOGIC;
  signal AXI4_LITE_I_n_85 : STD_LOGIC;
  signal AXI4_LITE_I_n_86 : STD_LOGIC;
  signal AXI4_LITE_I_n_87 : STD_LOGIC;
  signal AXI4_LITE_I_n_88 : STD_LOGIC;
  signal AXI4_LITE_I_n_89 : STD_LOGIC;
  signal AXI4_LITE_I_n_90 : STD_LOGIC;
  signal AXI4_LITE_I_n_91 : STD_LOGIC;
  signal AXI4_LITE_I_n_92 : STD_LOGIC;
  signal AXI4_LITE_I_n_93 : STD_LOGIC;
  signal AXI4_LITE_I_n_94 : STD_LOGIC;
  signal AXI4_LITE_I_n_95 : STD_LOGIC;
  signal AXI4_LITE_I_n_96 : STD_LOGIC;
  signal AXI4_LITE_I_n_97 : STD_LOGIC;
  signal AXI4_LITE_I_n_98 : STD_LOGIC;
  signal AXI4_LITE_I_n_99 : STD_LOGIC;
  signal \COUNTER_0_I/D\ : STD_LOGIC;
  signal \GEN_SECOND_TIMER.COUNTER_1_I/D\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \TIMER_CONTROL_I/D\ : STD_LOGIC;
  signal \TIMER_CONTROL_I/pair0_Select\ : STD_LOGIC;
  signal \TIMER_CONTROL_I/read_done1\ : STD_LOGIC;
  signal bus2ip_reset : STD_LOGIC;
  signal bus2ip_wrce : STD_LOGIC_VECTOR ( 0 to 4 );
  signal counterReg_DBus_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal counterReg_DBus_32 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ip2bus_data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal loadReg_DBus_32 : STD_LOGIC_VECTOR ( 31 downto 11 );
  signal \^s_axi_wready\ : STD_LOGIC;
  signal tCSR0_Reg : STD_LOGIC_VECTOR ( 20 to 24 );
  signal tCSR1_Reg : STD_LOGIC_VECTOR ( 24 to 24 );
begin
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
AXI4_LITE_I: entity work.\ArtyA7_design_PmodAMP2_0_0_axi_lite_ipif__parameterized0\
     port map (
      \AXI_LITE_TIMER_wdata[0]\ => AXI4_LITE_I_n_12,
      \AXI_LITE_TIMER_wdata[0]_0\ => AXI4_LITE_I_n_44,
      \AXI_LITE_TIMER_wdata[10]\ => AXI4_LITE_I_n_22,
      \AXI_LITE_TIMER_wdata[10]_0\ => AXI4_LITE_I_n_54,
      \AXI_LITE_TIMER_wdata[11]\ => AXI4_LITE_I_n_23,
      \AXI_LITE_TIMER_wdata[11]_0\ => AXI4_LITE_I_n_55,
      \AXI_LITE_TIMER_wdata[12]\ => AXI4_LITE_I_n_24,
      \AXI_LITE_TIMER_wdata[12]_0\ => AXI4_LITE_I_n_56,
      \AXI_LITE_TIMER_wdata[13]\ => AXI4_LITE_I_n_25,
      \AXI_LITE_TIMER_wdata[13]_0\ => AXI4_LITE_I_n_57,
      \AXI_LITE_TIMER_wdata[14]\ => AXI4_LITE_I_n_26,
      \AXI_LITE_TIMER_wdata[14]_0\ => AXI4_LITE_I_n_58,
      \AXI_LITE_TIMER_wdata[15]\ => AXI4_LITE_I_n_27,
      \AXI_LITE_TIMER_wdata[15]_0\ => AXI4_LITE_I_n_59,
      \AXI_LITE_TIMER_wdata[16]\ => AXI4_LITE_I_n_28,
      \AXI_LITE_TIMER_wdata[16]_0\ => AXI4_LITE_I_n_60,
      \AXI_LITE_TIMER_wdata[17]\ => AXI4_LITE_I_n_29,
      \AXI_LITE_TIMER_wdata[17]_0\ => AXI4_LITE_I_n_61,
      \AXI_LITE_TIMER_wdata[18]\ => AXI4_LITE_I_n_30,
      \AXI_LITE_TIMER_wdata[18]_0\ => AXI4_LITE_I_n_62,
      \AXI_LITE_TIMER_wdata[19]\ => AXI4_LITE_I_n_31,
      \AXI_LITE_TIMER_wdata[19]_0\ => AXI4_LITE_I_n_63,
      \AXI_LITE_TIMER_wdata[1]\ => AXI4_LITE_I_n_13,
      \AXI_LITE_TIMER_wdata[1]_0\ => AXI4_LITE_I_n_45,
      \AXI_LITE_TIMER_wdata[20]\ => AXI4_LITE_I_n_32,
      \AXI_LITE_TIMER_wdata[20]_0\ => AXI4_LITE_I_n_64,
      \AXI_LITE_TIMER_wdata[21]\ => AXI4_LITE_I_n_33,
      \AXI_LITE_TIMER_wdata[21]_0\ => AXI4_LITE_I_n_65,
      \AXI_LITE_TIMER_wdata[22]\ => AXI4_LITE_I_n_34,
      \AXI_LITE_TIMER_wdata[22]_0\ => AXI4_LITE_I_n_66,
      \AXI_LITE_TIMER_wdata[23]\ => AXI4_LITE_I_n_35,
      \AXI_LITE_TIMER_wdata[23]_0\ => AXI4_LITE_I_n_67,
      \AXI_LITE_TIMER_wdata[24]\ => AXI4_LITE_I_n_36,
      \AXI_LITE_TIMER_wdata[24]_0\ => AXI4_LITE_I_n_68,
      \AXI_LITE_TIMER_wdata[25]\ => AXI4_LITE_I_n_37,
      \AXI_LITE_TIMER_wdata[25]_0\ => AXI4_LITE_I_n_69,
      \AXI_LITE_TIMER_wdata[26]\ => AXI4_LITE_I_n_38,
      \AXI_LITE_TIMER_wdata[26]_0\ => AXI4_LITE_I_n_70,
      \AXI_LITE_TIMER_wdata[27]\ => AXI4_LITE_I_n_39,
      \AXI_LITE_TIMER_wdata[27]_0\ => AXI4_LITE_I_n_71,
      \AXI_LITE_TIMER_wdata[28]\ => AXI4_LITE_I_n_40,
      \AXI_LITE_TIMER_wdata[28]_0\ => AXI4_LITE_I_n_72,
      \AXI_LITE_TIMER_wdata[29]\ => AXI4_LITE_I_n_41,
      \AXI_LITE_TIMER_wdata[29]_0\ => AXI4_LITE_I_n_73,
      \AXI_LITE_TIMER_wdata[2]\ => AXI4_LITE_I_n_14,
      \AXI_LITE_TIMER_wdata[2]_0\ => AXI4_LITE_I_n_46,
      \AXI_LITE_TIMER_wdata[30]\ => AXI4_LITE_I_n_42,
      \AXI_LITE_TIMER_wdata[30]_0\ => AXI4_LITE_I_n_74,
      \AXI_LITE_TIMER_wdata[3]\ => AXI4_LITE_I_n_15,
      \AXI_LITE_TIMER_wdata[3]_0\ => AXI4_LITE_I_n_47,
      \AXI_LITE_TIMER_wdata[4]\ => AXI4_LITE_I_n_16,
      \AXI_LITE_TIMER_wdata[4]_0\ => AXI4_LITE_I_n_48,
      \AXI_LITE_TIMER_wdata[5]\ => AXI4_LITE_I_n_17,
      \AXI_LITE_TIMER_wdata[5]_0\ => AXI4_LITE_I_n_49,
      \AXI_LITE_TIMER_wdata[6]\ => AXI4_LITE_I_n_18,
      \AXI_LITE_TIMER_wdata[6]_0\ => AXI4_LITE_I_n_50,
      \AXI_LITE_TIMER_wdata[7]\ => AXI4_LITE_I_n_8,
      \AXI_LITE_TIMER_wdata[7]_0\ => AXI4_LITE_I_n_11,
      \AXI_LITE_TIMER_wdata[7]_1\ => AXI4_LITE_I_n_19,
      \AXI_LITE_TIMER_wdata[7]_2\ => AXI4_LITE_I_n_51,
      \AXI_LITE_TIMER_wdata[8]\ => AXI4_LITE_I_n_20,
      \AXI_LITE_TIMER_wdata[8]_0\ => AXI4_LITE_I_n_52,
      \AXI_LITE_TIMER_wdata[9]\ => AXI4_LITE_I_n_21,
      \AXI_LITE_TIMER_wdata[9]_0\ => AXI4_LITE_I_n_53,
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => AXI4_LITE_I_n_76,
      Bus_RNW_reg_reg_0 => AXI4_LITE_I_n_77,
      Bus_RNW_reg_reg_1 => AXI4_LITE_I_n_78,
      Bus_RNW_reg_reg_2 => AXI4_LITE_I_n_79,
      Bus_RNW_reg_reg_3 => AXI4_LITE_I_n_101,
      Bus_RNW_reg_reg_4 => AXI4_LITE_I_n_102,
      D(31) => ip2bus_data(0),
      D(30) => ip2bus_data(1),
      D(29) => ip2bus_data(2),
      D(28) => ip2bus_data(3),
      D(27) => ip2bus_data(4),
      D(26) => ip2bus_data(5),
      D(25) => ip2bus_data(6),
      D(24) => ip2bus_data(7),
      D(23) => ip2bus_data(8),
      D(22) => ip2bus_data(9),
      D(21) => ip2bus_data(10),
      D(20) => ip2bus_data(11),
      D(19) => ip2bus_data(12),
      D(18) => ip2bus_data(13),
      D(17) => ip2bus_data(14),
      D(16) => ip2bus_data(15),
      D(15) => ip2bus_data(16),
      D(14) => ip2bus_data(17),
      D(13) => ip2bus_data(18),
      D(12) => ip2bus_data(19),
      D(11) => ip2bus_data(20),
      D(10) => ip2bus_data(21),
      D(9) => ip2bus_data(22),
      D(8) => ip2bus_data(23),
      D(7) => ip2bus_data(24),
      D(6) => ip2bus_data(25),
      D(5) => ip2bus_data(26),
      D(4) => ip2bus_data(27),
      D(3) => ip2bus_data(28),
      D(2) => ip2bus_data(29),
      D(1) => ip2bus_data(30),
      D(0) => ip2bus_data(31),
      D_0 => \COUNTER_0_I/D\,
      D_1 => \GEN_SECOND_TIMER.COUNTER_1_I/D\,
      D_2 => \TIMER_CONTROL_I/D\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => AXI4_LITE_I_n_105,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => AXI4_LITE_I_n_80,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ => AXI4_LITE_I_n_81,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ => AXI4_LITE_I_n_82,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\ => AXI4_LITE_I_n_91,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\ => AXI4_LITE_I_n_92,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\ => AXI4_LITE_I_n_93,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\ => AXI4_LITE_I_n_94,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\ => AXI4_LITE_I_n_95,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_15\ => AXI4_LITE_I_n_96,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_16\ => AXI4_LITE_I_n_97,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_17\ => AXI4_LITE_I_n_98,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_18\ => AXI4_LITE_I_n_99,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_19\ => AXI4_LITE_I_n_103,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\ => AXI4_LITE_I_n_83,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\ => AXI4_LITE_I_n_84,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\ => AXI4_LITE_I_n_85,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\ => AXI4_LITE_I_n_86,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\ => AXI4_LITE_I_n_87,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\ => AXI4_LITE_I_n_88,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\ => AXI4_LITE_I_n_89,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\ => AXI4_LITE_I_n_90,
      \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\ => AXI4_LITE_I_n_106,
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\ => AXI4_LITE_I_n_7,
      \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]_0\ => AXI4_LITE_I_n_104,
      \LOAD_REG_GEN[20].LOAD_REG_I\ => AXI4_LITE_I_n_100,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrce(1) => bus2ip_wrce(0),
      bus2ip_wrce(0) => bus2ip_wrce(4),
      counterReg_DBus_0(31 downto 0) => counterReg_DBus_0(31 downto 0),
      counterReg_DBus_32(31 downto 0) => counterReg_DBus_32(31 downto 0),
      is_read_reg => s_axi_arready,
      is_write_reg => \^s_axi_wready\,
      loadReg_DBus_32(20 downto 0) => loadReg_DBus_32(31 downto 11),
      pair0_Select => \TIMER_CONTROL_I/pair0_Select\,
      read_done1 => \TIMER_CONTROL_I/read_done1\,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2 downto 0) => s_axi_araddr(4 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(4 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      tCSR0_Reg(1) => tCSR0_Reg(20),
      tCSR0_Reg(0) => tCSR0_Reg(24),
      tCSR1_Reg(0) => tCSR1_Reg(24)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
TC_CORE_I: entity work.ArtyA7_design_PmodAMP2_0_0_tc_core
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(31) => ip2bus_data(0),
      D(30) => ip2bus_data(1),
      D(29) => ip2bus_data(2),
      D(28) => ip2bus_data(3),
      D(27) => ip2bus_data(4),
      D(26) => ip2bus_data(5),
      D(25) => ip2bus_data(6),
      D(24) => ip2bus_data(7),
      D(23) => ip2bus_data(8),
      D(22) => ip2bus_data(9),
      D(21) => ip2bus_data(10),
      D(20) => ip2bus_data(11),
      D(19) => ip2bus_data(12),
      D(18) => ip2bus_data(13),
      D(17) => ip2bus_data(14),
      D(16) => ip2bus_data(15),
      D(15) => ip2bus_data(16),
      D(14) => ip2bus_data(17),
      D(13) => ip2bus_data(18),
      D(12) => ip2bus_data(19),
      D(11) => ip2bus_data(20),
      D(10) => ip2bus_data(21),
      D(9) => ip2bus_data(22),
      D(8) => ip2bus_data(23),
      D(7) => ip2bus_data(24),
      D(6) => ip2bus_data(25),
      D(5) => ip2bus_data(26),
      D(4) => ip2bus_data(27),
      D(3) => ip2bus_data(28),
      D(2) => ip2bus_data(29),
      D(1) => ip2bus_data(30),
      D(0) => ip2bus_data(31),
      D_0 => \TIMER_CONTROL_I/D\,
      D_1 => \COUNTER_0_I/D\,
      D_2 => \GEN_SECOND_TIMER.COUNTER_1_I/D\,
      \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I\ => AXI4_LITE_I_n_77,
      \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_0\ => AXI4_LITE_I_n_101,
      \GEN.DATA_WIDTH_GEN[21].NUM_BUSES_GEN[0].MUXCY_GEN.MUXCY_I_1\ => AXI4_LITE_I_n_78,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \LOAD_REG_GEN[0].LOAD_REG_I\(20 downto 0) => loadReg_DBus_32(31 downto 11),
      \LOAD_REG_GEN[10].LOAD_REG_I\ => AXI4_LITE_I_n_33,
      \LOAD_REG_GEN[10].LOAD_REG_I_0\ => AXI4_LITE_I_n_65,
      \LOAD_REG_GEN[11].LOAD_REG_I\ => AXI4_LITE_I_n_32,
      \LOAD_REG_GEN[11].LOAD_REG_I_0\ => AXI4_LITE_I_n_64,
      \LOAD_REG_GEN[12].LOAD_REG_I\ => AXI4_LITE_I_n_31,
      \LOAD_REG_GEN[12].LOAD_REG_I_0\ => AXI4_LITE_I_n_63,
      \LOAD_REG_GEN[13].LOAD_REG_I\ => AXI4_LITE_I_n_30,
      \LOAD_REG_GEN[13].LOAD_REG_I_0\ => AXI4_LITE_I_n_62,
      \LOAD_REG_GEN[14].LOAD_REG_I\ => AXI4_LITE_I_n_29,
      \LOAD_REG_GEN[14].LOAD_REG_I_0\ => AXI4_LITE_I_n_61,
      \LOAD_REG_GEN[15].LOAD_REG_I\ => AXI4_LITE_I_n_28,
      \LOAD_REG_GEN[15].LOAD_REG_I_0\ => AXI4_LITE_I_n_60,
      \LOAD_REG_GEN[16].LOAD_REG_I\ => AXI4_LITE_I_n_27,
      \LOAD_REG_GEN[16].LOAD_REG_I_0\ => AXI4_LITE_I_n_59,
      \LOAD_REG_GEN[17].LOAD_REG_I\ => AXI4_LITE_I_n_26,
      \LOAD_REG_GEN[17].LOAD_REG_I_0\ => AXI4_LITE_I_n_58,
      \LOAD_REG_GEN[18].LOAD_REG_I\ => AXI4_LITE_I_n_25,
      \LOAD_REG_GEN[18].LOAD_REG_I_0\ => AXI4_LITE_I_n_57,
      \LOAD_REG_GEN[19].LOAD_REG_I\ => AXI4_LITE_I_n_24,
      \LOAD_REG_GEN[19].LOAD_REG_I_0\ => AXI4_LITE_I_n_56,
      \LOAD_REG_GEN[1].LOAD_REG_I\ => AXI4_LITE_I_n_42,
      \LOAD_REG_GEN[1].LOAD_REG_I_0\ => AXI4_LITE_I_n_74,
      \LOAD_REG_GEN[20].LOAD_REG_I\ => AXI4_LITE_I_n_23,
      \LOAD_REG_GEN[20].LOAD_REG_I_0\ => AXI4_LITE_I_n_55,
      \LOAD_REG_GEN[21].LOAD_REG_I\ => AXI4_LITE_I_n_22,
      \LOAD_REG_GEN[21].LOAD_REG_I_0\ => AXI4_LITE_I_n_54,
      \LOAD_REG_GEN[22].LOAD_REG_I\ => AXI4_LITE_I_n_21,
      \LOAD_REG_GEN[22].LOAD_REG_I_0\ => AXI4_LITE_I_n_53,
      \LOAD_REG_GEN[23].LOAD_REG_I\ => AXI4_LITE_I_n_20,
      \LOAD_REG_GEN[23].LOAD_REG_I_0\ => AXI4_LITE_I_n_52,
      \LOAD_REG_GEN[24].LOAD_REG_I\ => AXI4_LITE_I_n_19,
      \LOAD_REG_GEN[24].LOAD_REG_I_0\ => AXI4_LITE_I_n_51,
      \LOAD_REG_GEN[25].LOAD_REG_I\ => AXI4_LITE_I_n_18,
      \LOAD_REG_GEN[25].LOAD_REG_I_0\ => AXI4_LITE_I_n_50,
      \LOAD_REG_GEN[26].LOAD_REG_I\ => AXI4_LITE_I_n_17,
      \LOAD_REG_GEN[26].LOAD_REG_I_0\ => AXI4_LITE_I_n_49,
      \LOAD_REG_GEN[27].LOAD_REG_I\ => AXI4_LITE_I_n_16,
      \LOAD_REG_GEN[27].LOAD_REG_I_0\ => AXI4_LITE_I_n_48,
      \LOAD_REG_GEN[28].LOAD_REG_I\ => AXI4_LITE_I_n_15,
      \LOAD_REG_GEN[28].LOAD_REG_I_0\ => AXI4_LITE_I_n_47,
      \LOAD_REG_GEN[29].LOAD_REG_I\ => AXI4_LITE_I_n_14,
      \LOAD_REG_GEN[29].LOAD_REG_I_0\ => AXI4_LITE_I_n_46,
      \LOAD_REG_GEN[2].LOAD_REG_I\ => AXI4_LITE_I_n_41,
      \LOAD_REG_GEN[2].LOAD_REG_I_0\ => AXI4_LITE_I_n_73,
      \LOAD_REG_GEN[30].LOAD_REG_I\ => AXI4_LITE_I_n_13,
      \LOAD_REG_GEN[30].LOAD_REG_I_0\ => AXI4_LITE_I_n_45,
      \LOAD_REG_GEN[31].LOAD_REG_I\ => AXI4_LITE_I_n_12,
      \LOAD_REG_GEN[31].LOAD_REG_I_0\ => AXI4_LITE_I_n_44,
      \LOAD_REG_GEN[3].LOAD_REG_I\ => AXI4_LITE_I_n_40,
      \LOAD_REG_GEN[3].LOAD_REG_I_0\ => AXI4_LITE_I_n_72,
      \LOAD_REG_GEN[4].LOAD_REG_I\ => AXI4_LITE_I_n_39,
      \LOAD_REG_GEN[4].LOAD_REG_I_0\ => AXI4_LITE_I_n_71,
      \LOAD_REG_GEN[5].LOAD_REG_I\ => AXI4_LITE_I_n_38,
      \LOAD_REG_GEN[5].LOAD_REG_I_0\ => AXI4_LITE_I_n_70,
      \LOAD_REG_GEN[6].LOAD_REG_I\ => AXI4_LITE_I_n_37,
      \LOAD_REG_GEN[6].LOAD_REG_I_0\ => AXI4_LITE_I_n_69,
      \LOAD_REG_GEN[7].LOAD_REG_I\ => AXI4_LITE_I_n_36,
      \LOAD_REG_GEN[7].LOAD_REG_I_0\ => AXI4_LITE_I_n_68,
      \LOAD_REG_GEN[7].LOAD_REG_I_1\ => AXI4_LITE_I_n_7,
      \LOAD_REG_GEN[8].LOAD_REG_I\ => AXI4_LITE_I_n_35,
      \LOAD_REG_GEN[8].LOAD_REG_I_0\ => AXI4_LITE_I_n_67,
      \LOAD_REG_GEN[9].LOAD_REG_I\ => AXI4_LITE_I_n_34,
      \LOAD_REG_GEN[9].LOAD_REG_I_0\ => AXI4_LITE_I_n_66,
      READ_DONE0_I => AXI4_LITE_I_n_103,
      READ_DONE1_I => AXI4_LITE_I_n_104,
      \TCSR0_GENERATE[20].TCSR0_FF_I\(1) => tCSR0_Reg(20),
      \TCSR0_GENERATE[20].TCSR0_FF_I\(0) => tCSR0_Reg(24),
      \TCSR0_GENERATE[23].TCSR0_FF_I\ => AXI4_LITE_I_n_105,
      \TCSR0_GENERATE[24].TCSR0_FF_I\ => AXI4_LITE_I_n_8,
      \TCSR1_GENERATE[23].TCSR1_FF_I\ => AXI4_LITE_I_n_106,
      \TCSR1_GENERATE[24].TCSR1_FF_I\(0) => tCSR1_Reg(24),
      \TCSR1_GENERATE[24].TCSR1_FF_I_0\ => AXI4_LITE_I_n_11,
      bus2ip_reset => bus2ip_reset,
      bus2ip_wrce(1) => bus2ip_wrce(0),
      bus2ip_wrce(0) => bus2ip_wrce(4),
      capturetrig0 => capturetrig0,
      capturetrig1 => capturetrig1,
      counterReg_DBus_0(31 downto 0) => counterReg_DBus_0(31 downto 0),
      counterReg_DBus_32(31 downto 0) => counterReg_DBus_32(31 downto 0),
      freeze => freeze,
      generateout0 => generateout0,
      generateout1 => generateout1,
      interrupt => interrupt,
      pair0_Select => \TIMER_CONTROL_I/pair0_Select\,
      pwm0 => pwm0,
      read_done1 => \TIMER_CONTROL_I/read_done1\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \s_axi_rdata_i_reg[0]\ => AXI4_LITE_I_n_79,
      \s_axi_rdata_i_reg[0]_0\ => AXI4_LITE_I_n_76,
      \s_axi_rdata_i_reg[0]_1\ => AXI4_LITE_I_n_102,
      \s_axi_rdata_i_reg[11]\ => AXI4_LITE_I_n_100,
      \s_axi_rdata_i_reg[12]\ => AXI4_LITE_I_n_99,
      \s_axi_rdata_i_reg[13]\ => AXI4_LITE_I_n_98,
      \s_axi_rdata_i_reg[14]\ => AXI4_LITE_I_n_97,
      \s_axi_rdata_i_reg[15]\ => AXI4_LITE_I_n_96,
      \s_axi_rdata_i_reg[16]\ => AXI4_LITE_I_n_95,
      \s_axi_rdata_i_reg[17]\ => AXI4_LITE_I_n_94,
      \s_axi_rdata_i_reg[18]\ => AXI4_LITE_I_n_93,
      \s_axi_rdata_i_reg[19]\ => AXI4_LITE_I_n_92,
      \s_axi_rdata_i_reg[20]\ => AXI4_LITE_I_n_91,
      \s_axi_rdata_i_reg[21]\ => AXI4_LITE_I_n_90,
      \s_axi_rdata_i_reg[22]\ => AXI4_LITE_I_n_89,
      \s_axi_rdata_i_reg[23]\ => AXI4_LITE_I_n_88,
      \s_axi_rdata_i_reg[24]\ => AXI4_LITE_I_n_87,
      \s_axi_rdata_i_reg[25]\ => AXI4_LITE_I_n_86,
      \s_axi_rdata_i_reg[26]\ => AXI4_LITE_I_n_85,
      \s_axi_rdata_i_reg[27]\ => AXI4_LITE_I_n_84,
      \s_axi_rdata_i_reg[28]\ => AXI4_LITE_I_n_83,
      \s_axi_rdata_i_reg[29]\ => AXI4_LITE_I_n_82,
      \s_axi_rdata_i_reg[30]\ => AXI4_LITE_I_n_81,
      \s_axi_rdata_i_reg[31]\ => AXI4_LITE_I_n_80,
      s_axi_wdata(9 downto 7) => s_axi_wdata(11 downto 9),
      s_axi_wdata(6 downto 0) => s_axi_wdata(6 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_gpio_0_0 : entity is "PmodAMP2_axi_gpio_0_0,axi_gpio,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_gpio_0_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_gpio_0_0 : entity is "PmodAMP2_axi_gpio_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_gpio_0_0 : entity is "axi_gpio,Vivado 2018.3";
end ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_gpio_0_0;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_gpio_0_0 is
  signal NLW_U0_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gpio2_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_gpio2_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of U0 : label is 0;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of U0 : label is 0;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of U0 : label is 1;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of U0 : label is 0;
  attribute C_DOUT_DEFAULT : integer;
  attribute C_DOUT_DEFAULT of U0 : label is 0;
  attribute C_DOUT_DEFAULT_2 : integer;
  attribute C_DOUT_DEFAULT_2 of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of U0 : label is 32;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of U0 : label is 3;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of U0 : label is 0;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of U0 : label is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TRI_DEFAULT : integer;
  attribute C_TRI_DEFAULT of U0 : label is -1;
  attribute C_TRI_DEFAULT_2 : integer;
  attribute C_TRI_DEFAULT_2 of U0 : label is -1;
  attribute DowngradeIPIdentifiedWarnings of U0 : label is "yes";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of gpio_io_o : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_O";
  attribute X_INTERFACE_PARAMETER of gpio_io_o : signal is "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
U0: entity work.ArtyA7_design_PmodAMP2_0_0_axi_gpio
     port map (
      gpio2_io_i(31 downto 0) => B"00000000000000000000000000000000",
      gpio2_io_o(31 downto 0) => NLW_U0_gpio2_io_o_UNCONNECTED(31 downto 0),
      gpio2_io_t(31 downto 0) => NLW_U0_gpio2_io_t_UNCONNECTED(31 downto 0),
      gpio_io_i(2 downto 0) => B"000",
      gpio_io_o(2 downto 0) => gpio_io_o(2 downto 0),
      gpio_io_t(2 downto 0) => NLW_U0_gpio_io_t_UNCONNECTED(2 downto 0),
      ip2intc_irpt => NLW_U0_ip2intc_irpt_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_timer_0_0 is
  port (
    capturetrig0 : in STD_LOGIC;
    capturetrig1 : in STD_LOGIC;
    generateout0 : out STD_LOGIC;
    generateout1 : out STD_LOGIC;
    pwm0 : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_timer_0_0 : entity is "PmodAMP2_axi_timer_0_0,axi_timer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_timer_0_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_timer_0_0 : entity is "PmodAMP2_axi_timer_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_timer_0_0 : entity is "axi_timer,Vivado 2018.3";
end ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_timer_0_0;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_timer_0_0 is
  attribute C_COUNT_WIDTH : integer;
  attribute C_COUNT_WIDTH of U0 : label is 32;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_GEN0_ASSERT : string;
  attribute C_GEN0_ASSERT of U0 : label is "1'b1";
  attribute C_GEN1_ASSERT : string;
  attribute C_GEN1_ASSERT of U0 : label is "1'b1";
  attribute C_ONE_TIMER_ONLY : integer;
  attribute C_ONE_TIMER_ONLY of U0 : label is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 5;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TRIG0_ASSERT : string;
  attribute C_TRIG0_ASSERT of U0 : label is "1'b1";
  attribute C_TRIG1_ASSERT : string;
  attribute C_TRIG1_ASSERT of U0 : label is "1'b1";
  attribute DowngradeIPIdentifiedWarnings of U0 : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
U0: entity work.ArtyA7_design_PmodAMP2_0_0_axi_timer
     port map (
      capturetrig0 => capturetrig0,
      capturetrig1 => capturetrig1,
      freeze => freeze,
      generateout0 => generateout0,
      generateout1 => generateout1,
      interrupt => interrupt,
      pwm0 => pwm0,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(4 downto 0) => s_axi_araddr(4 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(4 downto 0) => s_axi_awaddr(4 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0_PmodAMP2 is
  port (
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
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ArtyA7_design_PmodAMP2_0_0_PmodAMP2 : entity is "PmodAMP2.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ArtyA7_design_PmodAMP2_0_0_PmodAMP2 : entity is "PmodAMP2";
end ArtyA7_design_PmodAMP2_0_0_PmodAMP2;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0_PmodAMP2 is
  signal PWM_0_pwm : STD_LOGIC;
  signal axi_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_timer_0_generateout0_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_0_generateout1_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_0_pwm0_UNCONNECTED : STD_LOGIC;
  signal NLW_pmod_bridge_0_in_top_bus_I_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of PWM_0 : label is "PmodAMP2_PWM_0_0,PWM_v2_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of PWM_0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of PWM_0 : label is "PWM_v2_0,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of axi_gpio_0 : label is "PmodAMP2_axi_gpio_0_0,axi_gpio,{}";
  attribute DowngradeIPIdentifiedWarnings of axi_gpio_0 : label is "yes";
  attribute X_CORE_INFO of axi_gpio_0 : label is "axi_gpio,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of axi_timer_0 : label is "PmodAMP2_axi_timer_0_0,axi_timer,{}";
  attribute DowngradeIPIdentifiedWarnings of axi_timer_0 : label is "yes";
  attribute X_CORE_INFO of axi_timer_0 : label is "axi_timer,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of pmod_bridge_0 : label is "PmodAMP2_pmod_bridge_0_0,pmod_concat,{}";
  attribute DowngradeIPIdentifiedWarnings of pmod_bridge_0 : label is "yes";
  attribute X_CORE_INFO of pmod_bridge_0 : label is "pmod_concat,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of xlconcat_0 : label is "PmodAMP2_xlconcat_0_0,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings of xlconcat_0 : label is "yes";
  attribute X_CORE_INFO of xlconcat_0 : label is "xlconcat_v2_1_1_xlconcat,Vivado 2018.3";
  attribute CHECK_LICENSE_TYPE of xlconstant_0 : label is "PmodAMP2_xlconstant_0_0,xlconstant_v1_1_5_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings of xlconstant_0 : label is "yes";
  attribute X_CORE_INFO of xlconstant_0 : label is "xlconstant_v1_1_5_xlconstant,Vivado 2018.3";
begin
PWM_0: entity work.ArtyA7_design_PmodAMP2_0_0_PmodAMP2_PWM_0_0
     port map (
      pwm(0) => PWM_0_pwm,
      pwm_axi_aclk => s_axi_aclk,
      pwm_axi_araddr(6 downto 0) => AXI_LITE_PWM_araddr(6 downto 0),
      pwm_axi_aresetn => s_axi_aresetn,
      pwm_axi_arprot(2 downto 0) => AXI_LITE_PWM_arprot(2 downto 0),
      pwm_axi_arready => AXI_LITE_PWM_arready,
      pwm_axi_arvalid => AXI_LITE_PWM_arvalid,
      pwm_axi_awaddr(6 downto 0) => AXI_LITE_PWM_awaddr(6 downto 0),
      pwm_axi_awprot(2 downto 0) => AXI_LITE_PWM_awprot(2 downto 0),
      pwm_axi_awready => AXI_LITE_PWM_awready,
      pwm_axi_awvalid => AXI_LITE_PWM_awvalid,
      pwm_axi_bready => AXI_LITE_PWM_bready,
      pwm_axi_bresp(1 downto 0) => AXI_LITE_PWM_bresp(1 downto 0),
      pwm_axi_bvalid => AXI_LITE_PWM_bvalid,
      pwm_axi_rdata(31 downto 0) => AXI_LITE_PWM_rdata(31 downto 0),
      pwm_axi_rready => AXI_LITE_PWM_rready,
      pwm_axi_rresp(1 downto 0) => AXI_LITE_PWM_rresp(1 downto 0),
      pwm_axi_rvalid => AXI_LITE_PWM_rvalid,
      pwm_axi_wdata(31 downto 0) => AXI_LITE_PWM_wdata(31 downto 0),
      pwm_axi_wready => AXI_LITE_PWM_wready,
      pwm_axi_wstrb(3 downto 0) => AXI_LITE_PWM_wstrb(3 downto 0),
      pwm_axi_wvalid => AXI_LITE_PWM_wvalid
    );
axi_gpio_0: entity work.ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_gpio_0_0
     port map (
      gpio_io_o(2 downto 0) => axi_gpio_0_gpio_io_o(2 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => AXI_LITE_GPIO_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => AXI_LITE_GPIO_arready,
      s_axi_arvalid => AXI_LITE_GPIO_arvalid,
      s_axi_awaddr(8 downto 0) => AXI_LITE_GPIO_awaddr(8 downto 0),
      s_axi_awready => AXI_LITE_GPIO_awready,
      s_axi_awvalid => AXI_LITE_GPIO_awvalid,
      s_axi_bready => AXI_LITE_GPIO_bready,
      s_axi_bresp(1 downto 0) => AXI_LITE_GPIO_bresp(1 downto 0),
      s_axi_bvalid => AXI_LITE_GPIO_bvalid,
      s_axi_rdata(31 downto 0) => AXI_LITE_GPIO_rdata(31 downto 0),
      s_axi_rready => AXI_LITE_GPIO_rready,
      s_axi_rresp(1 downto 0) => AXI_LITE_GPIO_rresp(1 downto 0),
      s_axi_rvalid => AXI_LITE_GPIO_rvalid,
      s_axi_wdata(31 downto 0) => AXI_LITE_GPIO_wdata(31 downto 0),
      s_axi_wready => AXI_LITE_GPIO_wready,
      s_axi_wstrb(3 downto 0) => AXI_LITE_GPIO_wstrb(3 downto 0),
      s_axi_wvalid => AXI_LITE_GPIO_wvalid
    );
axi_timer_0: entity work.ArtyA7_design_PmodAMP2_0_0_PmodAMP2_axi_timer_0_0
     port map (
      capturetrig0 => '0',
      capturetrig1 => '0',
      freeze => '0',
      generateout0 => NLW_axi_timer_0_generateout0_UNCONNECTED,
      generateout1 => NLW_axi_timer_0_generateout1_UNCONNECTED,
      interrupt => timer_interrupt,
      pwm0 => NLW_axi_timer_0_pwm0_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(4 downto 0) => AXI_LITE_TIMER_araddr(4 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => AXI_LITE_TIMER_arready,
      s_axi_arvalid => AXI_LITE_TIMER_arvalid,
      s_axi_awaddr(4 downto 0) => AXI_LITE_TIMER_awaddr(4 downto 0),
      s_axi_awready => AXI_LITE_TIMER_awready,
      s_axi_awvalid => AXI_LITE_TIMER_awvalid,
      s_axi_bready => AXI_LITE_TIMER_bready,
      s_axi_bresp(1 downto 0) => AXI_LITE_TIMER_bresp(1 downto 0),
      s_axi_bvalid => AXI_LITE_TIMER_bvalid,
      s_axi_rdata(31 downto 0) => AXI_LITE_TIMER_rdata(31 downto 0),
      s_axi_rready => AXI_LITE_TIMER_rready,
      s_axi_rresp(1 downto 0) => AXI_LITE_TIMER_rresp(1 downto 0),
      s_axi_rvalid => AXI_LITE_TIMER_rvalid,
      s_axi_wdata(31 downto 0) => AXI_LITE_TIMER_wdata(31 downto 0),
      s_axi_wready => AXI_LITE_TIMER_wready,
      s_axi_wstrb(3 downto 0) => AXI_LITE_TIMER_wstrb(3 downto 0),
      s_axi_wvalid => AXI_LITE_TIMER_wvalid
    );
pmod_bridge_0: entity work.ArtyA7_design_PmodAMP2_0_0_PmodAMP2_pmod_bridge_0_0
     port map (
      in_top_bus_I(3 downto 0) => NLW_pmod_bridge_0_in_top_bus_I_UNCONNECTED(3 downto 0),
      in_top_bus_O(3 downto 0) => xlconcat_0_dout(3 downto 0),
      in_top_bus_T(3 downto 0) => xlconstant_0_dout(3 downto 0),
      out0_I => Pmod_out_pin1_i,
      out0_O => Pmod_out_pin1_o,
      out0_T => Pmod_out_pin1_t,
      out1_I => Pmod_out_pin2_i,
      out1_O => Pmod_out_pin2_o,
      out1_T => Pmod_out_pin2_t,
      out2_I => Pmod_out_pin3_i,
      out2_O => Pmod_out_pin3_o,
      out2_T => Pmod_out_pin3_t,
      out3_I => Pmod_out_pin4_i,
      out3_O => Pmod_out_pin4_o,
      out3_T => Pmod_out_pin4_t,
      out4_I => Pmod_out_pin7_i,
      out4_O => Pmod_out_pin7_o,
      out4_T => Pmod_out_pin7_t,
      out5_I => Pmod_out_pin8_i,
      out5_O => Pmod_out_pin8_o,
      out5_T => Pmod_out_pin8_t,
      out6_I => Pmod_out_pin9_i,
      out6_O => Pmod_out_pin9_o,
      out6_T => Pmod_out_pin9_t,
      out7_I => Pmod_out_pin10_i,
      out7_O => Pmod_out_pin10_o,
      out7_T => Pmod_out_pin10_t
    );
xlconcat_0: entity work.ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconcat_0_0
     port map (
      In0(0) => PWM_0_pwm,
      In1(2 downto 0) => axi_gpio_0_gpio_io_o(2 downto 0),
      dout(3 downto 0) => xlconcat_0_dout(3 downto 0)
    );
xlconstant_0: entity work.ArtyA7_design_PmodAMP2_0_0_PmodAMP2_xlconstant_0_0
     port map (
      dout(3 downto 0) => xlconstant_0_dout(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ArtyA7_design_PmodAMP2_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ArtyA7_design_PmodAMP2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ArtyA7_design_PmodAMP2_0_0 : entity is "ArtyA7_design_PmodAMP2_0_0,PmodAMP2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ArtyA7_design_PmodAMP2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ArtyA7_design_PmodAMP2_0_0 : entity is "PmodAMP2,Vivado 2018.3";
end ArtyA7_design_PmodAMP2_0_0;

architecture STRUCTURE of ArtyA7_design_PmodAMP2_0_0 is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "PmodAMP2.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO AWREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO AWVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO BREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO BVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO RREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO RVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WVALID";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of AXI_LITE_GPIO_wvalid : signal is "XIL_INTERFACENAME AXI_LITE_GPIO, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM ARREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM ARVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM AWREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM AWVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM BREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM BVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM RREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM RVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM WREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM WVALID";
  attribute X_INTERFACE_PARAMETER of AXI_LITE_PWM_wvalid : signal is "XIL_INTERFACENAME AXI_LITE_PWM, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER ARREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER ARVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER AWREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER AWVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER BREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER BVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER RREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER RVALID";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER WREADY";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER WVALID";
  attribute X_INTERFACE_PARAMETER of AXI_LITE_TIMER_wvalid : signal is "XIL_INTERFACENAME AXI_LITE_TIMER, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of Pmod_out_pin10_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin10_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin10_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin1_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin1_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin1_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin2_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin2_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin2_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin3_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin3_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin3_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin4_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin4_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin4_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin7_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin7_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin7_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin8_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin8_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin8_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_T";
  attribute X_INTERFACE_INFO of Pmod_out_pin9_i : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_I";
  attribute X_INTERFACE_INFO of Pmod_out_pin9_o : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_O";
  attribute X_INTERFACE_INFO of Pmod_out_pin9_t : signal is "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_T";
  attribute X_INTERFACE_PARAMETER of Pmod_out_pin9_t : signal is "XIL_INTERFACENAME Pmod_out, BUSIF.BOARD_INTERFACE Custom, BOARD.ASSOCIATED_PARAM PMOD";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF AXI_LITE_PWM:AXI_LITE_GPIO:AXI_LITE_TIMER, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME RST.S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of timer_interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTR.TIMER_INTERRUPT INTERRUPT, xilinx.com:signal:interrupt:1.0 timer_interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of timer_interrupt : signal is "XIL_INTERFACENAME INTR.TIMER_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1, XIL_INTERFACENAME timer_interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARADDR";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO AWADDR";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO BRESP";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO RDATA";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO RRESP";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WDATA";
  attribute X_INTERFACE_INFO of AXI_LITE_GPIO_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WSTRB";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM ARADDR";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM ARPROT";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM AWADDR";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM AWPROT";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM BRESP";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM RDATA";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM RRESP";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM WDATA";
  attribute X_INTERFACE_INFO of AXI_LITE_PWM_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_PWM WSTRB";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER ARADDR";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER AWADDR";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER BRESP";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER RDATA";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER RRESP";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER WDATA";
  attribute X_INTERFACE_INFO of AXI_LITE_TIMER_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_LITE_TIMER WSTRB";
begin
inst: entity work.ArtyA7_design_PmodAMP2_0_0_PmodAMP2
     port map (
      AXI_LITE_GPIO_araddr(8 downto 0) => AXI_LITE_GPIO_araddr(8 downto 0),
      AXI_LITE_GPIO_arready => AXI_LITE_GPIO_arready,
      AXI_LITE_GPIO_arvalid => AXI_LITE_GPIO_arvalid,
      AXI_LITE_GPIO_awaddr(8 downto 0) => AXI_LITE_GPIO_awaddr(8 downto 0),
      AXI_LITE_GPIO_awready => AXI_LITE_GPIO_awready,
      AXI_LITE_GPIO_awvalid => AXI_LITE_GPIO_awvalid,
      AXI_LITE_GPIO_bready => AXI_LITE_GPIO_bready,
      AXI_LITE_GPIO_bresp(1 downto 0) => AXI_LITE_GPIO_bresp(1 downto 0),
      AXI_LITE_GPIO_bvalid => AXI_LITE_GPIO_bvalid,
      AXI_LITE_GPIO_rdata(31 downto 0) => AXI_LITE_GPIO_rdata(31 downto 0),
      AXI_LITE_GPIO_rready => AXI_LITE_GPIO_rready,
      AXI_LITE_GPIO_rresp(1 downto 0) => AXI_LITE_GPIO_rresp(1 downto 0),
      AXI_LITE_GPIO_rvalid => AXI_LITE_GPIO_rvalid,
      AXI_LITE_GPIO_wdata(31 downto 0) => AXI_LITE_GPIO_wdata(31 downto 0),
      AXI_LITE_GPIO_wready => AXI_LITE_GPIO_wready,
      AXI_LITE_GPIO_wstrb(3 downto 0) => AXI_LITE_GPIO_wstrb(3 downto 0),
      AXI_LITE_GPIO_wvalid => AXI_LITE_GPIO_wvalid,
      AXI_LITE_PWM_araddr(6 downto 0) => AXI_LITE_PWM_araddr(6 downto 0),
      AXI_LITE_PWM_arprot(2 downto 0) => AXI_LITE_PWM_arprot(2 downto 0),
      AXI_LITE_PWM_arready => AXI_LITE_PWM_arready,
      AXI_LITE_PWM_arvalid => AXI_LITE_PWM_arvalid,
      AXI_LITE_PWM_awaddr(6 downto 0) => AXI_LITE_PWM_awaddr(6 downto 0),
      AXI_LITE_PWM_awprot(2 downto 0) => AXI_LITE_PWM_awprot(2 downto 0),
      AXI_LITE_PWM_awready => AXI_LITE_PWM_awready,
      AXI_LITE_PWM_awvalid => AXI_LITE_PWM_awvalid,
      AXI_LITE_PWM_bready => AXI_LITE_PWM_bready,
      AXI_LITE_PWM_bresp(1 downto 0) => AXI_LITE_PWM_bresp(1 downto 0),
      AXI_LITE_PWM_bvalid => AXI_LITE_PWM_bvalid,
      AXI_LITE_PWM_rdata(31 downto 0) => AXI_LITE_PWM_rdata(31 downto 0),
      AXI_LITE_PWM_rready => AXI_LITE_PWM_rready,
      AXI_LITE_PWM_rresp(1 downto 0) => AXI_LITE_PWM_rresp(1 downto 0),
      AXI_LITE_PWM_rvalid => AXI_LITE_PWM_rvalid,
      AXI_LITE_PWM_wdata(31 downto 0) => AXI_LITE_PWM_wdata(31 downto 0),
      AXI_LITE_PWM_wready => AXI_LITE_PWM_wready,
      AXI_LITE_PWM_wstrb(3 downto 0) => AXI_LITE_PWM_wstrb(3 downto 0),
      AXI_LITE_PWM_wvalid => AXI_LITE_PWM_wvalid,
      AXI_LITE_TIMER_araddr(4 downto 0) => AXI_LITE_TIMER_araddr(4 downto 0),
      AXI_LITE_TIMER_arready => AXI_LITE_TIMER_arready,
      AXI_LITE_TIMER_arvalid => AXI_LITE_TIMER_arvalid,
      AXI_LITE_TIMER_awaddr(4 downto 0) => AXI_LITE_TIMER_awaddr(4 downto 0),
      AXI_LITE_TIMER_awready => AXI_LITE_TIMER_awready,
      AXI_LITE_TIMER_awvalid => AXI_LITE_TIMER_awvalid,
      AXI_LITE_TIMER_bready => AXI_LITE_TIMER_bready,
      AXI_LITE_TIMER_bresp(1 downto 0) => AXI_LITE_TIMER_bresp(1 downto 0),
      AXI_LITE_TIMER_bvalid => AXI_LITE_TIMER_bvalid,
      AXI_LITE_TIMER_rdata(31 downto 0) => AXI_LITE_TIMER_rdata(31 downto 0),
      AXI_LITE_TIMER_rready => AXI_LITE_TIMER_rready,
      AXI_LITE_TIMER_rresp(1 downto 0) => AXI_LITE_TIMER_rresp(1 downto 0),
      AXI_LITE_TIMER_rvalid => AXI_LITE_TIMER_rvalid,
      AXI_LITE_TIMER_wdata(31 downto 0) => AXI_LITE_TIMER_wdata(31 downto 0),
      AXI_LITE_TIMER_wready => AXI_LITE_TIMER_wready,
      AXI_LITE_TIMER_wstrb(3 downto 0) => AXI_LITE_TIMER_wstrb(3 downto 0),
      AXI_LITE_TIMER_wvalid => AXI_LITE_TIMER_wvalid,
      Pmod_out_pin10_i => Pmod_out_pin10_i,
      Pmod_out_pin10_o => Pmod_out_pin10_o,
      Pmod_out_pin10_t => Pmod_out_pin10_t,
      Pmod_out_pin1_i => Pmod_out_pin1_i,
      Pmod_out_pin1_o => Pmod_out_pin1_o,
      Pmod_out_pin1_t => Pmod_out_pin1_t,
      Pmod_out_pin2_i => Pmod_out_pin2_i,
      Pmod_out_pin2_o => Pmod_out_pin2_o,
      Pmod_out_pin2_t => Pmod_out_pin2_t,
      Pmod_out_pin3_i => Pmod_out_pin3_i,
      Pmod_out_pin3_o => Pmod_out_pin3_o,
      Pmod_out_pin3_t => Pmod_out_pin3_t,
      Pmod_out_pin4_i => Pmod_out_pin4_i,
      Pmod_out_pin4_o => Pmod_out_pin4_o,
      Pmod_out_pin4_t => Pmod_out_pin4_t,
      Pmod_out_pin7_i => Pmod_out_pin7_i,
      Pmod_out_pin7_o => Pmod_out_pin7_o,
      Pmod_out_pin7_t => Pmod_out_pin7_t,
      Pmod_out_pin8_i => Pmod_out_pin8_i,
      Pmod_out_pin8_o => Pmod_out_pin8_o,
      Pmod_out_pin8_t => Pmod_out_pin8_t,
      Pmod_out_pin9_i => Pmod_out_pin9_i,
      Pmod_out_pin9_o => Pmod_out_pin9_o,
      Pmod_out_pin9_t => Pmod_out_pin9_t,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      timer_interrupt => timer_interrupt
    );
end STRUCTURE;
