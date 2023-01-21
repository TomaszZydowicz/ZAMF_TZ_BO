// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Jan 21 12:01:51 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_flip_flop_0_0/design_1_flip_flop_0_0_stub.v
// Design      : design_1_flip_flop_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "flip_flop,Vivado 2019.2" *)
module design_1_flip_flop_0_0(D, enable, clk, Q)
/* synthesis syn_black_box black_box_pad_pin="D,enable,clk,Q" */;
  input D;
  input enable;
  input clk;
  output Q;
endmodule
