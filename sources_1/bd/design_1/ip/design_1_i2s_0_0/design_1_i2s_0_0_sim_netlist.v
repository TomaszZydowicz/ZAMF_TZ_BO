// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Jan 12 23:51:16 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_i2s_0_0/design_1_i2s_0_0_sim_netlist.v
// Design      : design_1_i2s_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_i2s_0_0,i2s,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "i2s,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_i2s_0_0
   (in_clk,
    sample,
    in_en,
    out_ready,
    out_BLCK,
    out_PBDAT,
    out_PBLRC,
    out_RECDAT,
    out_RELCRC,
    out_MUTE,
    out_MCLK);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_clk, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input in_clk;
  input [23:0]sample;
  input in_en;
  output out_ready;
  output out_BLCK;
  output out_PBDAT;
  output out_PBLRC;
  output out_RECDAT;
  output out_RELCRC;
  output out_MUTE;
  output out_MCLK;

  wire \<const0> ;
  wire in_clk;
  wire in_en;
  wire out_BLCK;
  wire out_MCLK;
  wire out_MUTE;
  wire out_PBDAT;
  wire out_PBLRC;
  wire out_ready;
  wire [23:0]sample;

  assign out_RECDAT = \<const0> ;
  assign out_RELCRC = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_i2s_0_0_i2s inst
       (.UNCONN_OUT(out_BLCK),
        .UNCONN_OUT_0(out_PBLRC),
        .in_clk(in_clk),
        .in_en(in_en),
        .out_MCLK(out_MCLK),
        .out_MUTE(out_MUTE),
        .out_PBDAT(out_PBDAT),
        .out_ready(out_ready),
        .sample(sample[23]));
endmodule

(* ORIG_REF_NAME = "i2s" *) 
module design_1_i2s_0_0_i2s
   (out_ready,
    UNCONN_OUT,
    out_PBDAT,
    UNCONN_OUT_0,
    out_MUTE,
    out_MCLK,
    in_clk,
    in_en,
    sample);
  output out_ready;
  output UNCONN_OUT;
  output out_PBDAT;
  output UNCONN_OUT_0;
  output out_MUTE;
  output out_MCLK;
  input in_clk;
  input in_en;
  input [0:0]sample;

  wire [4:0]BCLK_counter;
  wire \BCLK_counter[0]_i_1_n_0 ;
  wire \BCLK_counter[1]_i_1_n_0 ;
  wire \BCLK_counter[2]_i_1_n_0 ;
  wire \BCLK_counter[3]_i_1_n_0 ;
  wire \BCLK_counter[4]_i_1_n_0 ;
  wire BCLK_negedge_i_1_n_0;
  wire BCLK_negedge_reg_n_0;
  wire \FSM_sequential_quick_state[0]_i_1_n_0 ;
  wire \FSM_sequential_quick_state[1]_i_1_n_0 ;
  wire [2:0]MCLK_counter;
  wire \MCLK_counter[0]_i_1_n_0 ;
  wire \MCLK_counter[1]_i_1_n_0 ;
  wire \MCLK_counter[2]_i_1_n_0 ;
  wire [10:0]PBLRC_counter;
  wire \PBLRC_counter[10]_i_2_n_0 ;
  wire [10:0]PBLRC_counter_0;
  wire UNCONN_OUT;
  wire UNCONN_OUT_0;
  wire in_clk;
  wire in_en;
  wire out_MCLK;
  wire out_MUTE;
  wire out_PBDAT;
  wire out_ready;
  wire [1:0]quick_state__0;
  wire [1:0]quick_state_counter;
  wire \quick_state_counter[0]_i_1_n_0 ;
  wire \quick_state_counter[1]_i_1_n_0 ;
  wire reg_out_BCLK__0_i_1_n_0;
  wire reg_out_BCLK__0_i_2_n_0;
  wire reg_out_BCLK_i_1_n_0;
  wire reg_out_MCLK_i_1_n_0;
  wire reg_out_MUTE_i_1_n_0;
  wire reg_out_PBDAT_i_1_n_0;
  wire reg_out_PBLRC__0_i_1_n_0;
  wire reg_out_PBLRC__0_i_2_n_0;
  wire reg_out_PBLRC__0_i_3_n_0;
  wire reg_out_PBLRC_i_1_n_0;
  wire reg_out_ready_i_1_n_0;
  wire \reg_sample[23]_i_1_n_0 ;
  wire \reg_sample_reg_n_0_[23] ;
  wire [0:0]sample;
  wire state_i_1_n_0;
  wire state_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \BCLK_counter[0]_i_1 
       (.I0(BCLK_counter[0]),
        .O(\BCLK_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \BCLK_counter[1]_i_1 
       (.I0(BCLK_counter[1]),
        .I1(BCLK_counter[0]),
        .O(\BCLK_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BCLK_counter[2]_i_1 
       (.I0(BCLK_counter[2]),
        .I1(BCLK_counter[1]),
        .I2(BCLK_counter[0]),
        .O(\BCLK_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h3FFF4000)) 
    \BCLK_counter[3]_i_1 
       (.I0(BCLK_counter[4]),
        .I1(BCLK_counter[0]),
        .I2(BCLK_counter[1]),
        .I3(BCLK_counter[2]),
        .I4(BCLK_counter[3]),
        .O(\BCLK_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7F7F8000)) 
    \BCLK_counter[4]_i_1 
       (.I0(BCLK_counter[0]),
        .I1(BCLK_counter[1]),
        .I2(BCLK_counter[2]),
        .I3(BCLK_counter[3]),
        .I4(BCLK_counter[4]),
        .O(\BCLK_counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BCLK_counter_reg[0] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(\BCLK_counter[0]_i_1_n_0 ),
        .Q(BCLK_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BCLK_counter_reg[1] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(\BCLK_counter[1]_i_1_n_0 ),
        .Q(BCLK_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BCLK_counter_reg[2] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(\BCLK_counter[2]_i_1_n_0 ),
        .Q(BCLK_counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BCLK_counter_reg[3] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(\BCLK_counter[3]_i_1_n_0 ),
        .Q(BCLK_counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BCLK_counter_reg[4] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(\BCLK_counter[4]_i_1_n_0 ),
        .Q(BCLK_counter[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00003020AAAAAAAA)) 
    BCLK_negedge_i_1
       (.I0(BCLK_negedge_reg_n_0),
        .I1(reg_out_BCLK__0_i_2_n_0),
        .I2(BCLK_counter[4]),
        .I3(UNCONN_OUT),
        .I4(BCLK_counter[3]),
        .I5(state_reg_n_0),
        .O(BCLK_negedge_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    BCLK_negedge_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(BCLK_negedge_i_1_n_0),
        .Q(BCLK_negedge_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0F7FF000)) 
    \FSM_sequential_quick_state[0]_i_1 
       (.I0(quick_state_counter[1]),
        .I1(quick_state_counter[0]),
        .I2(state_reg_n_0),
        .I3(quick_state__0[1]),
        .I4(quick_state__0[0]),
        .O(\FSM_sequential_quick_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0F80FF00)) 
    \FSM_sequential_quick_state[1]_i_1 
       (.I0(quick_state_counter[1]),
        .I1(quick_state_counter[0]),
        .I2(state_reg_n_0),
        .I3(quick_state__0[1]),
        .I4(quick_state__0[0]),
        .O(\FSM_sequential_quick_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "q_STOP_ASKING_FOR_SAMPLE:01,q_LOAD_SAMPLE:10,q_WAIT_FOR_BCLK:11,q_ASK_FOR_SAMPLE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_quick_state_reg[0] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\FSM_sequential_quick_state[0]_i_1_n_0 ),
        .Q(quick_state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "q_STOP_ASKING_FOR_SAMPLE:01,q_LOAD_SAMPLE:10,q_WAIT_FOR_BCLK:11,q_ASK_FOR_SAMPLE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_quick_state_reg[1] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\FSM_sequential_quick_state[1]_i_1_n_0 ),
        .Q(quick_state__0[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \MCLK_counter[0]_i_1 
       (.I0(MCLK_counter[1]),
        .I1(MCLK_counter[2]),
        .I2(MCLK_counter[0]),
        .O(\MCLK_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \MCLK_counter[1]_i_1 
       (.I0(MCLK_counter[2]),
        .I1(MCLK_counter[1]),
        .I2(MCLK_counter[0]),
        .O(\MCLK_counter[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \MCLK_counter[2]_i_1 
       (.I0(MCLK_counter[2]),
        .I1(MCLK_counter[1]),
        .I2(MCLK_counter[0]),
        .O(\MCLK_counter[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_counter_reg[0] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(\MCLK_counter[0]_i_1_n_0 ),
        .Q(MCLK_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_counter_reg[1] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(\MCLK_counter[1]_i_1_n_0 ),
        .Q(MCLK_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MCLK_counter_reg[2] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(\MCLK_counter[2]_i_1_n_0 ),
        .Q(MCLK_counter[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \PBLRC_counter[0]_i_1 
       (.I0(PBLRC_counter[0]),
        .O(PBLRC_counter_0[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAA4AAAAAAA)) 
    \PBLRC_counter[10]_i_1 
       (.I0(PBLRC_counter[10]),
        .I1(PBLRC_counter[9]),
        .I2(reg_out_PBLRC__0_i_2_n_0),
        .I3(PBLRC_counter[7]),
        .I4(PBLRC_counter[8]),
        .I5(\PBLRC_counter[10]_i_2_n_0 ),
        .O(PBLRC_counter_0[10]));
  LUT2 #(
    .INIT(4'h7)) 
    \PBLRC_counter[10]_i_2 
       (.I0(PBLRC_counter[5]),
        .I1(PBLRC_counter[6]),
        .O(\PBLRC_counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PBLRC_counter[1]_i_1 
       (.I0(PBLRC_counter[0]),
        .I1(PBLRC_counter[1]),
        .O(PBLRC_counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PBLRC_counter[2]_i_1 
       (.I0(PBLRC_counter[0]),
        .I1(PBLRC_counter[1]),
        .I2(PBLRC_counter[2]),
        .O(PBLRC_counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \PBLRC_counter[3]_i_1 
       (.I0(PBLRC_counter[3]),
        .I1(PBLRC_counter[0]),
        .I2(PBLRC_counter[1]),
        .I3(PBLRC_counter[2]),
        .O(PBLRC_counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \PBLRC_counter[4]_i_1 
       (.I0(PBLRC_counter[4]),
        .I1(PBLRC_counter[2]),
        .I2(PBLRC_counter[3]),
        .I3(PBLRC_counter[0]),
        .I4(PBLRC_counter[1]),
        .O(PBLRC_counter_0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \PBLRC_counter[5]_i_1 
       (.I0(PBLRC_counter[5]),
        .I1(PBLRC_counter[1]),
        .I2(PBLRC_counter[0]),
        .I3(PBLRC_counter[3]),
        .I4(PBLRC_counter[2]),
        .I5(PBLRC_counter[4]),
        .O(PBLRC_counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \PBLRC_counter[6]_i_1 
       (.I0(PBLRC_counter[6]),
        .I1(reg_out_PBLRC__0_i_2_n_0),
        .I2(PBLRC_counter[5]),
        .O(PBLRC_counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \PBLRC_counter[7]_i_1 
       (.I0(PBLRC_counter[7]),
        .I1(PBLRC_counter[5]),
        .I2(PBLRC_counter[6]),
        .I3(reg_out_PBLRC__0_i_2_n_0),
        .O(PBLRC_counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \PBLRC_counter[8]_i_1 
       (.I0(PBLRC_counter[8]),
        .I1(reg_out_PBLRC__0_i_2_n_0),
        .I2(PBLRC_counter[6]),
        .I3(PBLRC_counter[5]),
        .I4(PBLRC_counter[7]),
        .O(PBLRC_counter_0[8]));
  LUT6 #(
    .INIT(64'hCFFFFFFF10000000)) 
    \PBLRC_counter[9]_i_1 
       (.I0(PBLRC_counter[10]),
        .I1(\PBLRC_counter[10]_i_2_n_0 ),
        .I2(PBLRC_counter[8]),
        .I3(PBLRC_counter[7]),
        .I4(reg_out_PBLRC__0_i_2_n_0),
        .I5(PBLRC_counter[9]),
        .O(PBLRC_counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \PBLRC_counter_reg[0] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(PBLRC_counter_0[0]),
        .Q(PBLRC_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PBLRC_counter_reg[10] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(PBLRC_counter_0[10]),
        .Q(PBLRC_counter[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PBLRC_counter_reg[1] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(PBLRC_counter_0[1]),
        .Q(PBLRC_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PBLRC_counter_reg[2] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(PBLRC_counter_0[2]),
        .Q(PBLRC_counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PBLRC_counter_reg[3] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(PBLRC_counter_0[3]),
        .Q(PBLRC_counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PBLRC_counter_reg[4] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(PBLRC_counter_0[4]),
        .Q(PBLRC_counter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PBLRC_counter_reg[5] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(PBLRC_counter_0[5]),
        .Q(PBLRC_counter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PBLRC_counter_reg[6] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(PBLRC_counter_0[6]),
        .Q(PBLRC_counter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PBLRC_counter_reg[7] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(PBLRC_counter_0[7]),
        .Q(PBLRC_counter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PBLRC_counter_reg[8] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(PBLRC_counter_0[8]),
        .Q(PBLRC_counter[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PBLRC_counter_reg[9] 
       (.C(in_clk),
        .CE(state_reg_n_0),
        .D(PBLRC_counter_0[9]),
        .Q(PBLRC_counter[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \quick_state_counter[0]_i_1 
       (.I0(state_reg_n_0),
        .I1(quick_state__0[0]),
        .I2(quick_state__0[1]),
        .I3(quick_state_counter[0]),
        .O(\quick_state_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \quick_state_counter[1]_i_1 
       (.I0(quick_state_counter[0]),
        .I1(quick_state__0[1]),
        .I2(quick_state__0[0]),
        .I3(state_reg_n_0),
        .I4(quick_state_counter[1]),
        .O(\quick_state_counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \quick_state_counter_reg[0] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\quick_state_counter[0]_i_1_n_0 ),
        .Q(quick_state_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quick_state_counter_reg[1] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\quick_state_counter[1]_i_1_n_0 ),
        .Q(quick_state_counter[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFDFF0200)) 
    reg_out_BCLK__0_i_1
       (.I0(BCLK_counter[4]),
        .I1(reg_out_BCLK__0_i_2_n_0),
        .I2(BCLK_counter[3]),
        .I3(state_reg_n_0),
        .I4(UNCONN_OUT),
        .O(reg_out_BCLK__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    reg_out_BCLK__0_i_2
       (.I0(BCLK_counter[0]),
        .I1(BCLK_counter[1]),
        .I2(BCLK_counter[2]),
        .O(reg_out_BCLK__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    reg_out_BCLK_i_1
       (.I0(in_en),
        .I1(state_reg_n_0),
        .I2(UNCONN_OUT),
        .O(reg_out_BCLK_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    reg_out_BCLK_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_BCLK_i_1_n_0),
        .Q(UNCONN_OUT),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    reg_out_BCLK_reg__0
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_BCLK__0_i_1_n_0),
        .Q(UNCONN_OUT),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFBFF0400)) 
    reg_out_MCLK_i_1
       (.I0(MCLK_counter[0]),
        .I1(MCLK_counter[1]),
        .I2(MCLK_counter[2]),
        .I3(state_reg_n_0),
        .I4(out_MCLK),
        .O(reg_out_MCLK_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_out_MCLK_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_MCLK_i_1_n_0),
        .Q(out_MCLK),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE2)) 
    reg_out_MUTE_i_1
       (.I0(in_en),
        .I1(state_reg_n_0),
        .I2(out_MUTE),
        .O(reg_out_MUTE_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_out_MUTE_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_MUTE_i_1_n_0),
        .Q(out_MUTE),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFB08080)) 
    reg_out_PBDAT_i_1
       (.I0(\reg_sample_reg_n_0_[23] ),
        .I1(BCLK_negedge_reg_n_0),
        .I2(state_reg_n_0),
        .I3(in_en),
        .I4(out_PBDAT),
        .O(reg_out_PBDAT_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_out_PBDAT_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_PBDAT_i_1_n_0),
        .Q(out_PBDAT),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFDFFF00002000)) 
    reg_out_PBLRC__0_i_1
       (.I0(PBLRC_counter[10]),
        .I1(PBLRC_counter[9]),
        .I2(state_reg_n_0),
        .I3(reg_out_PBLRC__0_i_2_n_0),
        .I4(reg_out_PBLRC__0_i_3_n_0),
        .I5(UNCONN_OUT_0),
        .O(reg_out_PBLRC__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    reg_out_PBLRC__0_i_2
       (.I0(PBLRC_counter[4]),
        .I1(PBLRC_counter[2]),
        .I2(PBLRC_counter[3]),
        .I3(PBLRC_counter[0]),
        .I4(PBLRC_counter[1]),
        .O(reg_out_PBLRC__0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    reg_out_PBLRC__0_i_3
       (.I0(PBLRC_counter[6]),
        .I1(PBLRC_counter[5]),
        .I2(PBLRC_counter[8]),
        .I3(PBLRC_counter[7]),
        .O(reg_out_PBLRC__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    reg_out_PBLRC_i_1
       (.I0(in_en),
        .I1(state_reg_n_0),
        .I2(UNCONN_OUT_0),
        .O(reg_out_PBLRC_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    reg_out_PBLRC_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_PBLRC_i_1_n_0),
        .Q(UNCONN_OUT_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    reg_out_PBLRC_reg__0
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_PBLRC__0_i_1_n_0),
        .Q(UNCONN_OUT_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8A008AFF)) 
    reg_out_ready_i_1
       (.I0(out_ready),
        .I1(quick_state__0[1]),
        .I2(quick_state__0[0]),
        .I3(state_reg_n_0),
        .I4(in_en),
        .O(reg_out_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    reg_out_ready_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_ready_i_1_n_0),
        .Q(out_ready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFBAAFBFF08AA0800)) 
    \reg_sample[23]_i_1 
       (.I0(sample),
        .I1(quick_state__0[1]),
        .I2(quick_state__0[0]),
        .I3(state_reg_n_0),
        .I4(in_en),
        .I5(\reg_sample_reg_n_0_[23] ),
        .O(\reg_sample[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[23] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\reg_sample[23]_i_1_n_0 ),
        .Q(\reg_sample_reg_n_0_[23] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    state_i_1
       (.I0(state_reg_n_0),
        .I1(in_en),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_n_0),
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
