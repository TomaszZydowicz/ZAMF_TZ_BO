// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Jan 21 14:46:43 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_tx_0_0_stub.v
// Design      : design_1_uart_tx_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_tx,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(in_Clock, in_Tx_DV, in_Tx_Byte, out_Tx_Active, 
  out_Tx_Serial, out_Tx_Done)
/* synthesis syn_black_box black_box_pad_pin="in_Clock,in_Tx_DV,in_Tx_Byte[7:0],out_Tx_Active,out_Tx_Serial,out_Tx_Done" */;
  input in_Clock;
  input in_Tx_DV;
  input [7:0]in_Tx_Byte;
  output out_Tx_Active;
  output out_Tx_Serial;
  output out_Tx_Done;
endmodule
