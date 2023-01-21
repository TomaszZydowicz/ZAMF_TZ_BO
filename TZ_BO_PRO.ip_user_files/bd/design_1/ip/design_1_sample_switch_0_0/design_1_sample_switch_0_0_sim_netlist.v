// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Jan 12 23:50:12 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_sample_switch_0_0/design_1_sample_switch_0_0_sim_netlist.v
// Design      : design_1_sample_switch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sample_switch_0_0,sample_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "sample_switch,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_sample_switch_0_0
   (in_clk,
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
    i2s441kH_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_clk, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input in_clk;
  input [23:0]in_sample;
  input [1:0]in_mode;
  input in_sample2uart_ready;
  input in_i2s_ready;
  input in_fifo_empty;
  input in_fifo_prog_empty;
  output [23:0]out_uart_sample;
  output [23:0]out_i2s441kH_sample;
  output [23:0]out_i2s2H_sample;
  output fifo_en;
  output sample2uart_en;
  output i2s2H_en;
  output i2s441kH_en;

  wire \<const0> ;
  wire fifo_en;
  wire i2s441kH_en;
  wire in_clk;
  wire in_fifo_empty;
  wire in_fifo_prog_empty;
  wire in_i2s_ready;
  wire [1:0]in_mode;
  wire [23:0]in_sample;
  wire in_sample2uart_ready;
  wire [23:0]out_i2s441kH_sample;
  wire [23:0]out_uart_sample;
  wire sample2uart_en;

  assign i2s2H_en = \<const0> ;
  assign out_i2s2H_sample[23] = \<const0> ;
  assign out_i2s2H_sample[22] = \<const0> ;
  assign out_i2s2H_sample[21] = \<const0> ;
  assign out_i2s2H_sample[20] = \<const0> ;
  assign out_i2s2H_sample[19] = \<const0> ;
  assign out_i2s2H_sample[18] = \<const0> ;
  assign out_i2s2H_sample[17] = \<const0> ;
  assign out_i2s2H_sample[16] = \<const0> ;
  assign out_i2s2H_sample[15] = \<const0> ;
  assign out_i2s2H_sample[14] = \<const0> ;
  assign out_i2s2H_sample[13] = \<const0> ;
  assign out_i2s2H_sample[12] = \<const0> ;
  assign out_i2s2H_sample[11] = \<const0> ;
  assign out_i2s2H_sample[10] = \<const0> ;
  assign out_i2s2H_sample[9] = \<const0> ;
  assign out_i2s2H_sample[8] = \<const0> ;
  assign out_i2s2H_sample[7] = \<const0> ;
  assign out_i2s2H_sample[6] = \<const0> ;
  assign out_i2s2H_sample[5] = \<const0> ;
  assign out_i2s2H_sample[4] = \<const0> ;
  assign out_i2s2H_sample[3] = \<const0> ;
  assign out_i2s2H_sample[2] = \<const0> ;
  assign out_i2s2H_sample[1] = \<const0> ;
  assign out_i2s2H_sample[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_sample_switch_0_0_sample_switch inst
       (.fifo_en(fifo_en),
        .i2s441kH_en(i2s441kH_en),
        .in_clk(in_clk),
        .in_fifo_empty(in_fifo_empty),
        .in_fifo_prog_empty(in_fifo_prog_empty),
        .in_i2s_ready(in_i2s_ready),
        .in_mode(in_mode),
        .in_sample(in_sample),
        .in_sample2uart_ready(in_sample2uart_ready),
        .out_i2s441kH_sample(out_i2s441kH_sample),
        .out_uart_sample(out_uart_sample),
        .sample2uart_en(sample2uart_en));
endmodule

(* ORIG_REF_NAME = "sample_switch" *) 
module design_1_sample_switch_0_0_sample_switch
   (out_uart_sample,
    out_i2s441kH_sample,
    fifo_en,
    sample2uart_en,
    i2s441kH_en,
    in_mode,
    in_fifo_prog_empty,
    in_clk,
    in_sample,
    in_fifo_empty,
    in_sample2uart_ready,
    in_i2s_ready);
  output [23:0]out_uart_sample;
  output [23:0]out_i2s441kH_sample;
  output fifo_en;
  output sample2uart_en;
  output i2s441kH_en;
  input [1:0]in_mode;
  input in_fifo_prog_empty;
  input in_clk;
  input [23:0]in_sample;
  input in_fifo_empty;
  input in_sample2uart_ready;
  input in_i2s_ready;

  wire fifo_en;
  wire i2s441kH_en;
  wire in_clk;
  wire in_fifo_empty;
  wire in_fifo_prog_empty;
  wire in_i2s_ready;
  wire [1:0]in_mode;
  wire [23:0]in_sample;
  wire in_sample2uart_ready;
  wire [1:0]mode;
  wire \mode[0]_i_1_n_0 ;
  wire \mode[1]_i_1_n_0 ;
  wire [23:0]out_i2s441kH_sample;
  wire [23:0]out_uart_sample;
  wire reg_fifo_en_i_1_n_0;
  wire reg_fifo_en_i_3_n_0;
  wire reg_fifo_en_i_5_n_0;
  wire reg_fifo_en_i_6_n_0;
  wire reg_fifo_en_i_7_n_0;
  wire reg_fifo_en_i_8_n_0;
  wire reg_fifo_en_reg_i_2_n_0;
  wire reg_fifo_en_reg_i_4_n_0;
  wire reg_i2s441kH_en;
  wire reg_i2s441kH_en_i_1_n_0;
  wire reg_i2s441kH_en_i_3_n_0;
  wire reg_out_i2s441kH_sample;
  wire \reg_out_uart_sample[23]_i_1_n_0 ;
  wire reg_sample2uart_en_i_1_n_0;
  wire reg_sample2uart_en_i_2_n_0;
  wire sample2uart_en;
  wire [3:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state[3]_i_6_n_0 ;
  wire \state[3]_i_7_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA0B0B0B0)) 
    \mode[0]_i_1 
       (.I0(mode[0]),
        .I1(mode[1]),
        .I2(in_mode[0]),
        .I3(in_mode[1]),
        .I4(in_fifo_prog_empty),
        .O(\mode[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEF44FF44)) 
    \mode[1]_i_1 
       (.I0(mode[0]),
        .I1(mode[1]),
        .I2(in_mode[0]),
        .I3(in_mode[1]),
        .I4(in_fifo_prog_empty),
        .O(\mode[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[0] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\mode[0]_i_1_n_0 ),
        .Q(mode[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[1] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\mode[1]_i_1_n_0 ),
        .Q(mode[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAB00FFFFA8000000)) 
    reg_fifo_en_i_1
       (.I0(reg_fifo_en_reg_i_2_n_0),
        .I1(mode[1]),
        .I2(reg_fifo_en_i_3_n_0),
        .I3(mode[0]),
        .I4(reg_fifo_en_reg_i_4_n_0),
        .I5(fifo_en),
        .O(reg_fifo_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    reg_fifo_en_i_3
       (.I0(state[0]),
        .I1(state[1]),
        .O(reg_fifo_en_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    reg_fifo_en_i_5
       (.I0(in_fifo_empty),
        .I1(in_sample2uart_ready),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[3]),
        .O(reg_fifo_en_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000404000000400)) 
    reg_fifo_en_i_6
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(in_i2s_ready),
        .I4(in_fifo_empty),
        .I5(state[0]),
        .O(reg_fifo_en_i_6_n_0));
  LUT3 #(
    .INIT(8'h57)) 
    reg_fifo_en_i_7
       (.I0(mode[0]),
        .I1(state[3]),
        .I2(state[2]),
        .O(reg_fifo_en_i_7_n_0));
  LUT6 #(
    .INIT(64'h0022020000A20200)) 
    reg_fifo_en_i_8
       (.I0(mode[0]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .I4(state[2]),
        .I5(in_fifo_empty),
        .O(reg_fifo_en_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_fifo_en_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_fifo_en_i_1_n_0),
        .Q(fifo_en),
        .R(1'b0));
  MUXF7 reg_fifo_en_reg_i_2
       (.I0(reg_fifo_en_i_5_n_0),
        .I1(reg_fifo_en_i_6_n_0),
        .O(reg_fifo_en_reg_i_2_n_0),
        .S(mode[1]));
  MUXF7 reg_fifo_en_reg_i_4
       (.I0(reg_fifo_en_i_7_n_0),
        .I1(reg_fifo_en_i_8_n_0),
        .O(reg_fifo_en_reg_i_4_n_0),
        .S(mode[1]));
  LUT5 #(
    .INIT(32'hBFFA800A)) 
    reg_i2s441kH_en_i_1
       (.I0(reg_i2s441kH_en),
        .I1(reg_i2s441kH_en_i_3_n_0),
        .I2(mode[0]),
        .I3(mode[1]),
        .I4(i2s441kH_en),
        .O(reg_i2s441kH_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    reg_i2s441kH_en_i_2
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(mode[1]),
        .I4(mode[0]),
        .I5(state[2]),
        .O(reg_i2s441kH_en));
  LUT6 #(
    .INIT(64'h1010101010001010)) 
    reg_i2s441kH_en_i_3
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(in_fifo_empty),
        .I4(in_i2s_ready),
        .I5(state[1]),
        .O(reg_i2s441kH_en_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_i2s441kH_en_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_i2s441kH_en_i_1_n_0),
        .Q(i2s441kH_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000008020000000)) 
    \reg_out_i2s441kH_sample[23]_i_1 
       (.I0(mode[1]),
        .I1(state[3]),
        .I2(mode[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[0]),
        .O(reg_out_i2s441kH_sample));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[0] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[0]),
        .Q(out_i2s441kH_sample[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[10] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[10]),
        .Q(out_i2s441kH_sample[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[11] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[11]),
        .Q(out_i2s441kH_sample[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[12] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[12]),
        .Q(out_i2s441kH_sample[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[13] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[13]),
        .Q(out_i2s441kH_sample[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[14] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[14]),
        .Q(out_i2s441kH_sample[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[15] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[15]),
        .Q(out_i2s441kH_sample[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[16] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[16]),
        .Q(out_i2s441kH_sample[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[17] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[17]),
        .Q(out_i2s441kH_sample[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[18] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[18]),
        .Q(out_i2s441kH_sample[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[19] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[19]),
        .Q(out_i2s441kH_sample[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[1] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[1]),
        .Q(out_i2s441kH_sample[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[20] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[20]),
        .Q(out_i2s441kH_sample[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[21] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[21]),
        .Q(out_i2s441kH_sample[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[22] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[22]),
        .Q(out_i2s441kH_sample[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[23] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[23]),
        .Q(out_i2s441kH_sample[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[2] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[2]),
        .Q(out_i2s441kH_sample[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[3] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[3]),
        .Q(out_i2s441kH_sample[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[4] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[4]),
        .Q(out_i2s441kH_sample[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[5] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[5]),
        .Q(out_i2s441kH_sample[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[6] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[6]),
        .Q(out_i2s441kH_sample[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[7] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[7]),
        .Q(out_i2s441kH_sample[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[8] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[8]),
        .Q(out_i2s441kH_sample[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i2s441kH_sample_reg[9] 
       (.C(in_clk),
        .CE(reg_out_i2s441kH_sample),
        .D(in_sample[9]),
        .Q(out_i2s441kH_sample[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \reg_out_uart_sample[23]_i_1 
       (.I0(mode[1]),
        .I1(mode[0]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[3]),
        .O(\reg_out_uart_sample[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[0] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[0]),
        .Q(out_uart_sample[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[10] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[10]),
        .Q(out_uart_sample[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[11] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[11]),
        .Q(out_uart_sample[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[12] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[12]),
        .Q(out_uart_sample[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[13] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[13]),
        .Q(out_uart_sample[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[14] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[14]),
        .Q(out_uart_sample[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[15] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[15]),
        .Q(out_uart_sample[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[16] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[16]),
        .Q(out_uart_sample[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[17] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[17]),
        .Q(out_uart_sample[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[18] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[18]),
        .Q(out_uart_sample[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[19] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[19]),
        .Q(out_uart_sample[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[1] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[1]),
        .Q(out_uart_sample[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[20] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[20]),
        .Q(out_uart_sample[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[21] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[21]),
        .Q(out_uart_sample[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[22] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[22]),
        .Q(out_uart_sample[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[23] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[23]),
        .Q(out_uart_sample[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[2] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[2]),
        .Q(out_uart_sample[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[3] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[3]),
        .Q(out_uart_sample[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[4] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[4]),
        .Q(out_uart_sample[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[5] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[5]),
        .Q(out_uart_sample[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[6] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[6]),
        .Q(out_uart_sample[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[7] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[7]),
        .Q(out_uart_sample[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[8] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[8]),
        .Q(out_uart_sample[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_uart_sample_reg[9] 
       (.C(in_clk),
        .CE(\reg_out_uart_sample[23]_i_1_n_0 ),
        .D(in_sample[9]),
        .Q(out_uart_sample[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    reg_sample2uart_en_i_1
       (.I0(\reg_out_uart_sample[23]_i_1_n_0 ),
        .I1(mode[1]),
        .I2(reg_sample2uart_en_i_2_n_0),
        .I3(mode[0]),
        .I4(sample2uart_en),
        .O(reg_sample2uart_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000EF00)) 
    reg_sample2uart_en_i_2
       (.I0(state[1]),
        .I1(in_fifo_empty),
        .I2(in_sample2uart_ready),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[3]),
        .O(reg_sample2uart_en_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_sample2uart_en_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_sample2uart_en_i_1_n_0),
        .Q(sample2uart_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB888B888B8BB8888)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(mode[1]),
        .I2(state[1]),
        .I3(mode[0]),
        .I4(in_mode[0]),
        .I5(in_mode[1]),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5551555155510000)) 
    \state[0]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(in_i2s_ready),
        .I3(state[2]),
        .I4(in_mode[0]),
        .I5(in_mode[1]),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8088808880888080)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(mode[0]),
        .I2(mode[1]),
        .I3(\state[1]_i_3_n_0 ),
        .I4(in_mode[1]),
        .I5(in_mode[0]),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0EEEEE00FFFFFFFF)) 
    \state[1]_i_2 
       (.I0(in_mode[0]),
        .I1(in_mode[1]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(mode[1]),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDCC05000)) 
    \state[2]_i_1 
       (.I0(mode[0]),
        .I1(\state[2]_i_2_n_0 ),
        .I2(in_mode[1]),
        .I3(in_mode[0]),
        .I4(mode[1]),
        .O(\state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8380CCCC)) 
    \state[2]_i_2 
       (.I0(in_fifo_empty),
        .I1(state[2]),
        .I2(state[0]),
        .I3(in_i2s_ready),
        .I4(state[1]),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFB8FFFFFFB80000)) 
    \state[3]_i_1 
       (.I0(\state[3]_i_3_n_0 ),
        .I1(mode[1]),
        .I2(\state[3]_i_4_n_0 ),
        .I3(\state[3]_i_5_n_0 ),
        .I4(mode[0]),
        .I5(\state[3]_i_6_n_0 ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220222000002220)) 
    \state[3]_i_2 
       (.I0(mode[1]),
        .I1(\state[3]_i_7_n_0 ),
        .I2(in_mode[1]),
        .I3(in_mode[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h54555454AAAAAAAA)) 
    \state[3]_i_3 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(in_fifo_empty),
        .I4(in_i2s_ready),
        .I5(state[2]),
        .O(\state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF40)) 
    \state[3]_i_4 
       (.I0(in_fifo_empty),
        .I1(in_sample2uart_ready),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[3]),
        .O(\state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[3]_i_5 
       (.I0(in_mode[0]),
        .I1(in_mode[1]),
        .O(\state[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h007F)) 
    \state[3]_i_6 
       (.I0(in_fifo_prog_empty),
        .I1(in_mode[1]),
        .I2(in_mode[0]),
        .I3(mode[1]),
        .O(\state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h83808080)) 
    \state[3]_i_7 
       (.I0(in_fifo_empty),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(in_i2s_ready),
        .O(\state[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(in_clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(in_clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(in_clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(in_clk),
        .CE(\state[3]_i_1_n_0 ),
        .D(\state[3]_i_2_n_0 ),
        .Q(state[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
