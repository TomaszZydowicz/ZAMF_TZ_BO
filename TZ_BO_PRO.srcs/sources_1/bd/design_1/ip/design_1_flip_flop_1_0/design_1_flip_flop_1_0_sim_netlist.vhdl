-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Jan 21 12:54:09 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_flip_flop_1_0/design_1_flip_flop_1_0_sim_netlist.vhdl
-- Design      : design_1_flip_flop_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_flip_flop_1_0_flip_flop is
  port (
    Q : out STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC;
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_flip_flop_1_0_flip_flop : entity is "flip_flop";
end design_1_flip_flop_1_0_flip_flop;

architecture STRUCTURE of design_1_flip_flop_1_0_flip_flop is
  signal \^q\ : STD_LOGIC;
  signal Q_i_1_n_0 : STD_LOGIC;
begin
  Q <= \^q\;
Q_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D,
      I1 => enable,
      I2 => \^q\,
      O => Q_i_1_n_0
    );
Q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => Q_i_1_n_0,
      Q => \^q\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_flip_flop_1_0 is
  port (
    D : in STD_LOGIC;
    enable : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_flip_flop_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_flip_flop_1_0 : entity is "design_1_flip_flop_1_0,flip_flop,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_flip_flop_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_flip_flop_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_flip_flop_1_0 : entity is "flip_flop,Vivado 2019.2";
end design_1_flip_flop_1_0;

architecture STRUCTURE of design_1_flip_flop_1_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.design_1_flip_flop_1_0_flip_flop
     port map (
      D => D,
      Q => Q,
      clk => clk,
      enable => enable
    );
end STRUCTURE;
