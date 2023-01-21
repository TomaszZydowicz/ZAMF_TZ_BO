-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Jan 20 18:13:16 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_i2s_0_0/design_1_i2s_0_0_stub.vhdl
-- Design      : design_1_i2s_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_i2s_0_0 is
  Port ( 
    in_clk : in STD_LOGIC;
    sample : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_en : in STD_LOGIC;
    out_ready : out STD_LOGIC;
    out_BLCK : out STD_LOGIC;
    out_PBDAT : out STD_LOGIC;
    out_PBLRC : out STD_LOGIC;
    out_RECDAT : out STD_LOGIC;
    out_RELCRC : out STD_LOGIC;
    out_MUTE : out STD_LOGIC;
    out_MCLK : out STD_LOGIC
  );

end design_1_i2s_0_0;

architecture stub of design_1_i2s_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in_clk,sample[15:0],in_en,out_ready,out_BLCK,out_PBDAT,out_PBLRC,out_RECDAT,out_RELCRC,out_MUTE,out_MCLK";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "i2s,Vivado 2019.2";
begin
end;
