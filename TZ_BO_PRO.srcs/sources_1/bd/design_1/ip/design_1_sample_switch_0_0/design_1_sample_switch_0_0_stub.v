// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Jan 20 18:13:16 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_sample_switch_0_0/design_1_sample_switch_0_0_stub.v
// Design      : design_1_sample_switch_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sample_switch,Vivado 2019.2" *)
module design_1_sample_switch_0_0(in_clk, in_sample, in_mode, 
  in_sample2uart_ready, in_i2s_ready, in_fifo_empty, in_fifo_prog_empty, out_uart_sample, 
  out_i2s441kH_sample, out_i2s2H_sample, fifo_en, sample2uart_en, i2s2H_en, i2s441kH_en)
/* synthesis syn_black_box black_box_pad_pin="in_clk,in_sample[15:0],in_mode[1:0],in_sample2uart_ready,in_i2s_ready,in_fifo_empty,in_fifo_prog_empty,out_uart_sample[15:0],out_i2s441kH_sample[15:0],out_i2s2H_sample[15:0],fifo_en,sample2uart_en,i2s2H_en,i2s441kH_en" */;
  input in_clk;
  input [15:0]in_sample;
  input [1:0]in_mode;
  input in_sample2uart_ready;
  input in_i2s_ready;
  input in_fifo_empty;
  input in_fifo_prog_empty;
  output [15:0]out_uart_sample;
  output [15:0]out_i2s441kH_sample;
  output [15:0]out_i2s2H_sample;
  output fifo_en;
  output sample2uart_en;
  output i2s2H_en;
  output i2s441kH_en;
endmodule
