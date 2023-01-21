-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Jan 20 18:13:16 2023
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart2sample_0_0_stub.vhdl
-- Design      : design_1_uart2sample_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    in_clk : in STD_LOGIC;
    in_uart_ready : in STD_LOGIC;
    in_uart_frame : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_frame : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_ready : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in_clk,in_uart_ready,in_uart_frame[7:0],out_frame[15:0],out_ready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uart2sample,Vivado 2019.2";
begin
end;
