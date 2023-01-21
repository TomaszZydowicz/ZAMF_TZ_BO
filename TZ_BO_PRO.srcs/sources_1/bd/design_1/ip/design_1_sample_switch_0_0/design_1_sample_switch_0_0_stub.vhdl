-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Jan 20 18:13:16 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_sample_switch_0_0/design_1_sample_switch_0_0_stub.vhdl
-- Design      : design_1_sample_switch_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_sample_switch_0_0 is
  Port ( 
    in_clk : in STD_LOGIC;
    in_sample : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_mode : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_sample2uart_ready : in STD_LOGIC;
    in_i2s_ready : in STD_LOGIC;
    in_fifo_empty : in STD_LOGIC;
    in_fifo_prog_empty : in STD_LOGIC;
    out_uart_sample : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_i2s441kH_sample : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_i2s2H_sample : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_en : out STD_LOGIC;
    sample2uart_en : out STD_LOGIC;
    i2s2H_en : out STD_LOGIC;
    i2s441kH_en : out STD_LOGIC
  );

end design_1_sample_switch_0_0;

architecture stub of design_1_sample_switch_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in_clk,in_sample[15:0],in_mode[1:0],in_sample2uart_ready,in_i2s_ready,in_fifo_empty,in_fifo_prog_empty,out_uart_sample[15:0],out_i2s441kH_sample[15:0],out_i2s2H_sample[15:0],fifo_en,sample2uart_en,i2s2H_en,i2s441kH_en";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sample_switch,Vivado 2019.2";
begin
end;
