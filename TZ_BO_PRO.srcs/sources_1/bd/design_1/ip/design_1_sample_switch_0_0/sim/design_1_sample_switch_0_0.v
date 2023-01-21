// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:sample_switch:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_sample_switch_0_0 (
  in_clk,
  in_sample,
  in_mode,
  in_sample2uart_ready,
  in_i2s_ready,
  in_fifo_empty,
  in_fifo_prog_empty,
  out_uart_sample,
  out_i2s441kH_sample,
  out_i2s2H_sample,
  fifo_en,
  sample2uart_en,
  i2s2H_en,
  i2s441kH_en
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_clk, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_clk CLK" *)
input wire in_clk;
input wire [15 : 0] in_sample;
input wire [1 : 0] in_mode;
input wire in_sample2uart_ready;
input wire in_i2s_ready;
input wire in_fifo_empty;
input wire in_fifo_prog_empty;
output wire [15 : 0] out_uart_sample;
output wire [15 : 0] out_i2s441kH_sample;
output wire [15 : 0] out_i2s2H_sample;
output wire fifo_en;
output wire sample2uart_en;
output wire i2s2H_en;
output wire i2s441kH_en;

  sample_switch #(
    .BPS(16)
  ) inst (
    .in_clk(in_clk),
    .in_sample(in_sample),
    .in_mode(in_mode),
    .in_sample2uart_ready(in_sample2uart_ready),
    .in_i2s_ready(in_i2s_ready),
    .in_fifo_empty(in_fifo_empty),
    .in_fifo_prog_empty(in_fifo_prog_empty),
    .out_uart_sample(out_uart_sample),
    .out_i2s441kH_sample(out_i2s441kH_sample),
    .out_i2s2H_sample(out_i2s2H_sample),
    .fifo_en(fifo_en),
    .sample2uart_en(sample2uart_en),
    .i2s2H_en(i2s2H_en),
    .i2s441kH_en(i2s441kH_en)
  );
endmodule
