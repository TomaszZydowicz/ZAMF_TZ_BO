// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Jan 20 18:13:16 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart2sample_0_0_stub.v
// Design      : design_1_uart2sample_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart2sample,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(in_clk, in_uart_ready, in_uart_frame, 
  out_frame, out_ready)
/* synthesis syn_black_box black_box_pad_pin="in_clk,in_uart_ready,in_uart_frame[7:0],out_frame[15:0],out_ready" */;
  input in_clk;
  input in_uart_ready;
  input [7:0]in_uart_frame;
  output [15:0]out_frame;
  output out_ready;
endmodule
