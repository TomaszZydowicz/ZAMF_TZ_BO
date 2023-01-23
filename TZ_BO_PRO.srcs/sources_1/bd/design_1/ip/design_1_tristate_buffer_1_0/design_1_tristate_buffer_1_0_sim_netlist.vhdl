-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Jan 23 16:09:10 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_tristate_buffer_1_0/design_1_tristate_buffer_1_0_sim_netlist.vhdl
-- Design      : design_1_tristate_buffer_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tristate_buffer_1_0 is
  port (
    IO_Data : inout STD_LOGIC;
    Tx_Data : in STD_LOGIC;
    Rx_Data : out STD_LOGIC;
    Tri_En : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_tristate_buffer_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_tristate_buffer_1_0 : entity is "design_1_tristate_buffer_1_0,tristate_buffer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_tristate_buffer_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_tristate_buffer_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_tristate_buffer_1_0 : entity is "tristate_buffer,Vivado 2019.2";
end design_1_tristate_buffer_1_0;

architecture STRUCTURE of design_1_tristate_buffer_1_0 is
  signal \^io_data\ : STD_LOGIC;
  signal IO_Data_INST_0_i_1_n_0 : STD_LOGIC;
begin
IO_Data_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Tx_Data,
      I1 => IO_Data_INST_0_i_1_n_0,
      O => \^io_data\
    );
IO_Data_INST_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Tri_En,
      O => IO_Data_INST_0_i_1_n_0
    );
end STRUCTURE;
