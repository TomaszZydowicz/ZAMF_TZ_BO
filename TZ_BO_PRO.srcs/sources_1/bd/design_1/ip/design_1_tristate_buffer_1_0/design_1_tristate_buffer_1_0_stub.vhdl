-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Jan 23 16:09:10 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_tristate_buffer_1_0/design_1_tristate_buffer_1_0_stub.vhdl
-- Design      : design_1_tristate_buffer_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_tristate_buffer_1_0 is
  Port ( 
    IO_Data : inout STD_LOGIC;
    Tx_Data : in STD_LOGIC;
    Rx_Data : out STD_LOGIC;
    Tri_En : in STD_LOGIC
  );

end design_1_tristate_buffer_1_0;

architecture stub of design_1_tristate_buffer_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "IO_Data,Tx_Data,Rx_Data,Tri_En";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tristate_buffer,Vivado 2019.2";
begin
end;
