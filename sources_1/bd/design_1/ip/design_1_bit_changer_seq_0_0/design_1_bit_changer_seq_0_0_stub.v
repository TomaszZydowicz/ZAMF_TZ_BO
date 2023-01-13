// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Jan 12 23:50:15 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_bit_changer_seq_0_0/design_1_bit_changer_seq_0_0_stub.v
// Design      : design_1_bit_changer_seq_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bit_changer_seq,Vivado 2019.2" *)
module design_1_bit_changer_seq_0_0(in_clk, in_enable, in_frame, in_message, 
  out_frame, out_ready)
/* synthesis syn_black_box black_box_pad_pin="in_clk,in_enable,in_frame[23:0],in_message[87:0],out_frame[23:0],out_ready" */;
  input in_clk;
  input in_enable;
  input [23:0]in_frame;
  input [87:0]in_message;
  output [23:0]out_frame;
  output out_ready;
endmodule
