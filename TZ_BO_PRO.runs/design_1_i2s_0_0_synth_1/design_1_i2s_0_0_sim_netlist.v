// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Jan 20 18:13:16 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_i2s_0_0_sim_netlist.v
// Design      : design_1_i2s_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_i2s_0_0,i2s,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "i2s,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  input [15:0]sample;
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
  wire [15:0]sample;

  assign out_RECDAT = \<const0> ;
  assign out_RELCRC = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s inst
       (.in_clk(in_clk),
        .in_en(in_en),
        .out_BLCK(out_BLCK),
        .out_MCLK(out_MCLK),
        .out_MUTE(out_MUTE),
        .out_PBDAT(out_PBDAT),
        .out_PBLRC(out_PBLRC),
        .out_ready(out_ready),
        .sample(sample));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s
   (out_ready,
    out_BLCK,
    out_PBDAT,
    out_PBLRC,
    out_MUTE,
    out_MCLK,
    in_clk,
    sample,
    in_en);
  output out_ready;
  output out_BLCK;
  output out_PBDAT;
  output out_PBLRC;
  output out_MUTE;
  output out_MCLK;
  input in_clk;
  input [15:0]sample;
  input in_en;

  wire [3:0]BCLK_counter;
  wire \BCLK_counter[0]_i_1_n_0 ;
  wire \BCLK_counter[1]_i_1_n_0 ;
  wire \BCLK_counter[2]_i_1_n_0 ;
  wire \BCLK_counter[3]_i_1_n_0 ;
  wire BCLK_negedge_i_1_n_0;
  wire BCLK_negedge_i_2_n_0;
  wire BCLK_negedge_reg_n_0;
  wire \FSM_sequential_quick_state[0]_i_1_n_0 ;
  wire \FSM_sequential_quick_state[1]_i_1_n_0 ;
  wire \FSM_sequential_quick_state[1]_i_2_n_0 ;
  wire \FSM_sequential_quick_state[1]_i_3_n_0 ;
  wire [2:0]MCLK_counter;
  wire \MCLK_counter[0]_i_1_n_0 ;
  wire \MCLK_counter[1]_i_1_n_0 ;
  wire \MCLK_counter[2]_i_1_n_0 ;
  wire [10:0]PBLRC_counter;
  wire \PBLRC_counter[10]_i_2_n_0 ;
  wire \PBLRC_counter[10]_i_3_n_0 ;
  wire \PBLRC_counter[10]_i_4_n_0 ;
  wire \PBLRC_counter[6]_i_2_n_0 ;
  wire \PBLRC_counter[8]_i_1_n_0 ;
  wire \PBLRC_counter[9]_i_2_n_0 ;
  wire [10:0]PBLRC_counter_0;
  wire [15:1]bit_counter0;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[15]_i_1_n_0 ;
  wire \bit_counter[15]_i_2_n_0 ;
  wire \bit_counter_reg[12]_i_1_n_0 ;
  wire \bit_counter_reg[12]_i_1_n_1 ;
  wire \bit_counter_reg[12]_i_1_n_2 ;
  wire \bit_counter_reg[12]_i_1_n_3 ;
  wire \bit_counter_reg[15]_i_3_n_2 ;
  wire \bit_counter_reg[15]_i_3_n_3 ;
  wire \bit_counter_reg[4]_i_1_n_0 ;
  wire \bit_counter_reg[4]_i_1_n_1 ;
  wire \bit_counter_reg[4]_i_1_n_2 ;
  wire \bit_counter_reg[4]_i_1_n_3 ;
  wire \bit_counter_reg[8]_i_1_n_0 ;
  wire \bit_counter_reg[8]_i_1_n_1 ;
  wire \bit_counter_reg[8]_i_1_n_2 ;
  wire \bit_counter_reg[8]_i_1_n_3 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[10] ;
  wire \bit_counter_reg_n_0_[11] ;
  wire \bit_counter_reg_n_0_[12] ;
  wire \bit_counter_reg_n_0_[13] ;
  wire \bit_counter_reg_n_0_[14] ;
  wire \bit_counter_reg_n_0_[15] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire \bit_counter_reg_n_0_[4] ;
  wire \bit_counter_reg_n_0_[5] ;
  wire \bit_counter_reg_n_0_[6] ;
  wire \bit_counter_reg_n_0_[7] ;
  wire \bit_counter_reg_n_0_[8] ;
  wire \bit_counter_reg_n_0_[9] ;
  wire canal_counter_i_1_n_0;
  wire canal_counter_reg_n_0;
  wire in_clk;
  wire in_en;
  wire out_BLCK;
  wire out_MCLK;
  wire out_MUTE;
  wire out_PBDAT;
  wire out_PBLRC;
  wire out_ready;
  wire [1:0]quick_state__0;
  wire \quick_state_counter[0]_i_1_n_0 ;
  wire \quick_state_counter[1]_i_1_n_0 ;
  wire \quick_state_counter_reg_n_0_[0] ;
  wire \quick_state_counter_reg_n_0_[1] ;
  wire reg_out_BCLK_i_1_n_0;
  wire reg_out_MCLK_i_1_n_0;
  wire reg_out_MUTE_i_1_n_0;
  wire reg_out_PBDAT_i_10_n_0;
  wire reg_out_PBDAT_i_11_n_0;
  wire reg_out_PBDAT_i_1_n_0;
  wire reg_out_PBDAT_i_3_n_0;
  wire reg_out_PBDAT_i_6_n_0;
  wire reg_out_PBDAT_i_7_n_0;
  wire reg_out_PBDAT_i_8_n_0;
  wire reg_out_PBDAT_i_9_n_0;
  wire reg_out_PBDAT_reg_i_2_n_0;
  wire reg_out_PBDAT_reg_i_4_n_0;
  wire reg_out_PBDAT_reg_i_5_n_0;
  wire reg_out_PBLRC_i_1_n_0;
  wire reg_out_PBLRC_i_2_n_0;
  wire reg_out_PBLRC_i_3_n_0;
  wire reg_out_PBLRC_i_4_n_0;
  wire reg_out_PBLRC_i_5_n_0;
  wire reg_out_ready_i_1_n_0;
  wire reg_out_ready_i_2_n_0;
  wire reg_out_ready_i_3_n_0;
  wire reg_out_ready_i_4_n_0;
  wire \reg_sample[15]_i_1_n_0 ;
  wire \reg_sample_reg_n_0_[0] ;
  wire \reg_sample_reg_n_0_[10] ;
  wire \reg_sample_reg_n_0_[11] ;
  wire \reg_sample_reg_n_0_[12] ;
  wire \reg_sample_reg_n_0_[13] ;
  wire \reg_sample_reg_n_0_[14] ;
  wire \reg_sample_reg_n_0_[15] ;
  wire \reg_sample_reg_n_0_[1] ;
  wire \reg_sample_reg_n_0_[2] ;
  wire \reg_sample_reg_n_0_[3] ;
  wire \reg_sample_reg_n_0_[4] ;
  wire \reg_sample_reg_n_0_[5] ;
  wire \reg_sample_reg_n_0_[6] ;
  wire \reg_sample_reg_n_0_[7] ;
  wire \reg_sample_reg_n_0_[8] ;
  wire \reg_sample_reg_n_0_[9] ;
  wire [15:0]sample;
  wire state_i_1_n_0;
  wire state_i_2_n_0;
  wire state_reg_n_0;
  wire [3:2]\NLW_bit_counter_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_bit_counter_reg[15]_i_3_O_UNCONNECTED ;

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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BCLK_counter[2]_i_1 
       (.I0(BCLK_counter[2]),
        .I1(BCLK_counter[1]),
        .I2(BCLK_counter[0]),
        .O(\BCLK_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \BCLK_counter[3]_i_1 
       (.I0(BCLK_counter[3]),
        .I1(BCLK_counter[0]),
        .I2(BCLK_counter[1]),
        .I3(BCLK_counter[2]),
        .O(\BCLK_counter[3]_i_1_n_0 ));
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
  LUT4 #(
    .INIT(16'h2E2A)) 
    BCLK_negedge_i_1
       (.I0(BCLK_negedge_reg_n_0),
        .I1(state_reg_n_0),
        .I2(BCLK_negedge_i_2_n_0),
        .I3(out_BLCK),
        .O(BCLK_negedge_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    BCLK_negedge_i_2
       (.I0(BCLK_counter[2]),
        .I1(BCLK_counter[1]),
        .I2(BCLK_counter[0]),
        .I3(BCLK_counter[3]),
        .O(BCLK_negedge_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    BCLK_negedge_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(BCLK_negedge_i_1_n_0),
        .Q(BCLK_negedge_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFFFCFAFF000F0F0)) 
    \FSM_sequential_quick_state[0]_i_1 
       (.I0(\FSM_sequential_quick_state[1]_i_3_n_0 ),
        .I1(\FSM_sequential_quick_state[1]_i_2_n_0 ),
        .I2(state_reg_n_0),
        .I3(quick_state__0[1]),
        .I4(reg_out_ready_i_2_n_0),
        .I5(quick_state__0[0]),
        .O(\FSM_sequential_quick_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBFF0000BBFF0C00)) 
    \FSM_sequential_quick_state[1]_i_1 
       (.I0(\FSM_sequential_quick_state[1]_i_2_n_0 ),
        .I1(quick_state__0[0]),
        .I2(\FSM_sequential_quick_state[1]_i_3_n_0 ),
        .I3(state_reg_n_0),
        .I4(quick_state__0[1]),
        .I5(reg_out_ready_i_2_n_0),
        .O(\FSM_sequential_quick_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_quick_state[1]_i_2 
       (.I0(\bit_counter_reg_n_0_[1] ),
        .I1(\bit_counter_reg_n_0_[0] ),
        .I2(reg_out_PBDAT_i_3_n_0),
        .I3(\bit_counter_reg_n_0_[2] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .O(\FSM_sequential_quick_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_quick_state[1]_i_3 
       (.I0(\quick_state_counter_reg_n_0_[1] ),
        .I1(\quick_state_counter_reg_n_0_[0] ),
        .O(\FSM_sequential_quick_state[1]_i_3_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \MCLK_counter[0]_i_1 
       (.I0(MCLK_counter[0]),
        .I1(MCLK_counter[2]),
        .I2(MCLK_counter[1]),
        .O(\MCLK_counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h38)) 
    \MCLK_counter[1]_i_1 
       (.I0(MCLK_counter[2]),
        .I1(MCLK_counter[1]),
        .I2(MCLK_counter[0]),
        .O(\MCLK_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \PBLRC_counter[0]_i_1 
       (.I0(PBLRC_counter[0]),
        .O(PBLRC_counter_0[0]));
  LUT4 #(
    .INIT(16'h2A80)) 
    \PBLRC_counter[10]_i_1 
       (.I0(\PBLRC_counter[10]_i_2_n_0 ),
        .I1(\PBLRC_counter[10]_i_3_n_0 ),
        .I2(PBLRC_counter[9]),
        .I3(PBLRC_counter[10]),
        .O(PBLRC_counter_0[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \PBLRC_counter[10]_i_2 
       (.I0(\PBLRC_counter[10]_i_4_n_0 ),
        .I1(reg_out_PBLRC_i_5_n_0),
        .I2(PBLRC_counter[10]),
        .I3(PBLRC_counter[8]),
        .I4(\PBLRC_counter[6]_i_2_n_0 ),
        .I5(PBLRC_counter[9]),
        .O(\PBLRC_counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \PBLRC_counter[10]_i_3 
       (.I0(PBLRC_counter[8]),
        .I1(\PBLRC_counter[9]_i_2_n_0 ),
        .I2(PBLRC_counter[7]),
        .I3(PBLRC_counter[6]),
        .O(\PBLRC_counter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \PBLRC_counter[10]_i_4 
       (.I0(PBLRC_counter[3]),
        .I1(PBLRC_counter[2]),
        .I2(PBLRC_counter[4]),
        .I3(PBLRC_counter[5]),
        .O(\PBLRC_counter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PBLRC_counter[1]_i_1 
       (.I0(PBLRC_counter[1]),
        .I1(PBLRC_counter[0]),
        .O(PBLRC_counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PBLRC_counter[2]_i_1 
       (.I0(PBLRC_counter[1]),
        .I1(PBLRC_counter[0]),
        .I2(PBLRC_counter[2]),
        .O(PBLRC_counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \PBLRC_counter[3]_i_1 
       (.I0(PBLRC_counter[3]),
        .I1(PBLRC_counter[1]),
        .I2(PBLRC_counter[0]),
        .I3(PBLRC_counter[2]),
        .O(PBLRC_counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PBLRC_counter[4]_i_1 
       (.I0(PBLRC_counter[3]),
        .I1(PBLRC_counter[2]),
        .I2(PBLRC_counter[0]),
        .I3(PBLRC_counter[1]),
        .I4(PBLRC_counter[4]),
        .O(PBLRC_counter_0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \PBLRC_counter[5]_i_1 
       (.I0(PBLRC_counter[5]),
        .I1(PBLRC_counter[3]),
        .I2(PBLRC_counter[2]),
        .I3(PBLRC_counter[0]),
        .I4(PBLRC_counter[1]),
        .I5(PBLRC_counter[4]),
        .O(PBLRC_counter_0[5]));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \PBLRC_counter[6]_i_1 
       (.I0(PBLRC_counter[6]),
        .I1(PBLRC_counter[3]),
        .I2(PBLRC_counter[2]),
        .I3(\PBLRC_counter[6]_i_2_n_0 ),
        .I4(PBLRC_counter[5]),
        .I5(PBLRC_counter[4]),
        .O(PBLRC_counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \PBLRC_counter[6]_i_2 
       (.I0(PBLRC_counter[1]),
        .I1(PBLRC_counter[0]),
        .O(\PBLRC_counter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \PBLRC_counter[7]_i_1 
       (.I0(PBLRC_counter[7]),
        .I1(\PBLRC_counter[9]_i_2_n_0 ),
        .I2(PBLRC_counter[6]),
        .O(PBLRC_counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \PBLRC_counter[8]_i_1 
       (.I0(PBLRC_counter[8]),
        .I1(\PBLRC_counter[9]_i_2_n_0 ),
        .I2(PBLRC_counter[7]),
        .I3(PBLRC_counter[6]),
        .O(\PBLRC_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \PBLRC_counter[9]_i_1 
       (.I0(\PBLRC_counter[10]_i_2_n_0 ),
        .I1(PBLRC_counter[8]),
        .I2(\PBLRC_counter[9]_i_2_n_0 ),
        .I3(PBLRC_counter[7]),
        .I4(PBLRC_counter[6]),
        .I5(PBLRC_counter[9]),
        .O(PBLRC_counter_0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PBLRC_counter[9]_i_2 
       (.I0(PBLRC_counter[4]),
        .I1(PBLRC_counter[5]),
        .I2(PBLRC_counter[1]),
        .I3(PBLRC_counter[0]),
        .I4(PBLRC_counter[2]),
        .I5(PBLRC_counter[3]),
        .O(\PBLRC_counter[9]_i_2_n_0 ));
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
        .D(\PBLRC_counter[8]_i_1_n_0 ),
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
  LUT1 #(
    .INIT(2'h1)) 
    \bit_counter[0]_i_1 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .O(\bit_counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \bit_counter[15]_i_1 
       (.I0(reg_out_PBLRC_i_2_n_0),
        .I1(BCLK_negedge_reg_n_0),
        .I2(state_reg_n_0),
        .O(\bit_counter[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \bit_counter[15]_i_2 
       (.I0(reg_out_PBLRC_i_2_n_0),
        .I1(BCLK_negedge_reg_n_0),
        .I2(state_reg_n_0),
        .O(\bit_counter[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[0] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[10] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[10]),
        .Q(\bit_counter_reg_n_0_[10] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[11] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[11]),
        .Q(\bit_counter_reg_n_0_[11] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[12] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[12]),
        .Q(\bit_counter_reg_n_0_[12] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  CARRY4 \bit_counter_reg[12]_i_1 
       (.CI(\bit_counter_reg[8]_i_1_n_0 ),
        .CO({\bit_counter_reg[12]_i_1_n_0 ,\bit_counter_reg[12]_i_1_n_1 ,\bit_counter_reg[12]_i_1_n_2 ,\bit_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_counter0[12:9]),
        .S({\bit_counter_reg_n_0_[12] ,\bit_counter_reg_n_0_[11] ,\bit_counter_reg_n_0_[10] ,\bit_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[13] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[13]),
        .Q(\bit_counter_reg_n_0_[13] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[14] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[14]),
        .Q(\bit_counter_reg_n_0_[14] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[15] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[15]),
        .Q(\bit_counter_reg_n_0_[15] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  CARRY4 \bit_counter_reg[15]_i_3 
       (.CI(\bit_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_bit_counter_reg[15]_i_3_CO_UNCONNECTED [3:2],\bit_counter_reg[15]_i_3_n_2 ,\bit_counter_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bit_counter_reg[15]_i_3_O_UNCONNECTED [3],bit_counter0[15:13]}),
        .S({1'b0,\bit_counter_reg_n_0_[15] ,\bit_counter_reg_n_0_[14] ,\bit_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[1]),
        .Q(\bit_counter_reg_n_0_[1] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[2]),
        .Q(\bit_counter_reg_n_0_[2] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[3] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[3]),
        .Q(\bit_counter_reg_n_0_[3] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[4] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[4]),
        .Q(\bit_counter_reg_n_0_[4] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  CARRY4 \bit_counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\bit_counter_reg[4]_i_1_n_0 ,\bit_counter_reg[4]_i_1_n_1 ,\bit_counter_reg[4]_i_1_n_2 ,\bit_counter_reg[4]_i_1_n_3 }),
        .CYINIT(\bit_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_counter0[4:1]),
        .S({\bit_counter_reg_n_0_[4] ,\bit_counter_reg_n_0_[3] ,\bit_counter_reg_n_0_[2] ,\bit_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[5] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[5]),
        .Q(\bit_counter_reg_n_0_[5] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[6] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[6]),
        .Q(\bit_counter_reg_n_0_[6] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[7] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[7]),
        .Q(\bit_counter_reg_n_0_[7] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[8] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[8]),
        .Q(\bit_counter_reg_n_0_[8] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  CARRY4 \bit_counter_reg[8]_i_1 
       (.CI(\bit_counter_reg[4]_i_1_n_0 ),
        .CO({\bit_counter_reg[8]_i_1_n_0 ,\bit_counter_reg[8]_i_1_n_1 ,\bit_counter_reg[8]_i_1_n_2 ,\bit_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_counter0[8:5]),
        .S({\bit_counter_reg_n_0_[8] ,\bit_counter_reg_n_0_[7] ,\bit_counter_reg_n_0_[6] ,\bit_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[9] 
       (.C(in_clk),
        .CE(\bit_counter[15]_i_2_n_0 ),
        .D(bit_counter0[9]),
        .Q(\bit_counter_reg_n_0_[9] ),
        .R(\bit_counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    canal_counter_i_1
       (.I0(canal_counter_reg_n_0),
        .I1(reg_out_PBLRC_i_2_n_0),
        .O(canal_counter_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    canal_counter_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(canal_counter_i_1_n_0),
        .Q(canal_counter_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \quick_state_counter[0]_i_1 
       (.I0(quick_state__0[1]),
        .I1(quick_state__0[0]),
        .I2(state_reg_n_0),
        .I3(\quick_state_counter_reg_n_0_[0] ),
        .O(\quick_state_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \quick_state_counter[1]_i_1 
       (.I0(\quick_state_counter_reg_n_0_[0] ),
        .I1(state_reg_n_0),
        .I2(quick_state__0[0]),
        .I3(quick_state__0[1]),
        .I4(\quick_state_counter_reg_n_0_[1] ),
        .O(\quick_state_counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \quick_state_counter_reg[0] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\quick_state_counter[0]_i_1_n_0 ),
        .Q(\quick_state_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quick_state_counter_reg[1] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\quick_state_counter[1]_i_1_n_0 ),
        .Q(\quick_state_counter_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    reg_out_BCLK_i_1
       (.I0(BCLK_counter[2]),
        .I1(BCLK_counter[1]),
        .I2(BCLK_counter[0]),
        .I3(BCLK_counter[3]),
        .I4(state_reg_n_0),
        .I5(out_BLCK),
        .O(reg_out_BCLK_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    reg_out_BCLK_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_BCLK_i_1_n_0),
        .Q(out_BLCK),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    reg_out_MCLK_i_1
       (.I0(MCLK_counter[0]),
        .I1(MCLK_counter[2]),
        .I2(MCLK_counter[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    reg_out_MUTE_i_1
       (.I0(out_MUTE),
        .I1(state_reg_n_0),
        .I2(in_en),
        .O(reg_out_MUTE_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_out_MUTE_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_MUTE_i_1_n_0),
        .Q(out_MUTE),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2F2FFF0020200000)) 
    reg_out_PBDAT_i_1
       (.I0(reg_out_PBDAT_reg_i_2_n_0),
        .I1(reg_out_PBDAT_i_3_n_0),
        .I2(BCLK_negedge_reg_n_0),
        .I3(in_en),
        .I4(state_reg_n_0),
        .I5(out_PBDAT),
        .O(reg_out_PBDAT_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    reg_out_PBDAT_i_10
       (.I0(\reg_sample_reg_n_0_[4] ),
        .I1(\reg_sample_reg_n_0_[5] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\reg_sample_reg_n_0_[6] ),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(\reg_sample_reg_n_0_[7] ),
        .O(reg_out_PBDAT_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    reg_out_PBDAT_i_11
       (.I0(\reg_sample_reg_n_0_[0] ),
        .I1(\reg_sample_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\reg_sample_reg_n_0_[2] ),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(\reg_sample_reg_n_0_[3] ),
        .O(reg_out_PBDAT_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reg_out_PBDAT_i_3
       (.I0(\bit_counter_reg_n_0_[4] ),
        .I1(\bit_counter_reg_n_0_[5] ),
        .I2(\bit_counter_reg_n_0_[7] ),
        .I3(\bit_counter_reg_n_0_[6] ),
        .I4(reg_out_PBDAT_i_6_n_0),
        .I5(reg_out_PBDAT_i_7_n_0),
        .O(reg_out_PBDAT_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reg_out_PBDAT_i_6
       (.I0(\bit_counter_reg_n_0_[9] ),
        .I1(\bit_counter_reg_n_0_[8] ),
        .I2(\bit_counter_reg_n_0_[11] ),
        .I3(\bit_counter_reg_n_0_[10] ),
        .O(reg_out_PBDAT_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    reg_out_PBDAT_i_7
       (.I0(\bit_counter_reg_n_0_[13] ),
        .I1(\bit_counter_reg_n_0_[12] ),
        .I2(\bit_counter_reg_n_0_[14] ),
        .I3(\bit_counter_reg_n_0_[15] ),
        .O(reg_out_PBDAT_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    reg_out_PBDAT_i_8
       (.I0(\reg_sample_reg_n_0_[12] ),
        .I1(\reg_sample_reg_n_0_[13] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\reg_sample_reg_n_0_[14] ),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(\reg_sample_reg_n_0_[15] ),
        .O(reg_out_PBDAT_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    reg_out_PBDAT_i_9
       (.I0(\reg_sample_reg_n_0_[8] ),
        .I1(\reg_sample_reg_n_0_[9] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\reg_sample_reg_n_0_[10] ),
        .I4(\bit_counter_reg_n_0_[0] ),
        .I5(\reg_sample_reg_n_0_[11] ),
        .O(reg_out_PBDAT_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_out_PBDAT_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_PBDAT_i_1_n_0),
        .Q(out_PBDAT),
        .R(1'b0));
  MUXF8 reg_out_PBDAT_reg_i_2
       (.I0(reg_out_PBDAT_reg_i_4_n_0),
        .I1(reg_out_PBDAT_reg_i_5_n_0),
        .O(reg_out_PBDAT_reg_i_2_n_0),
        .S(\bit_counter_reg_n_0_[3] ));
  MUXF7 reg_out_PBDAT_reg_i_4
       (.I0(reg_out_PBDAT_i_8_n_0),
        .I1(reg_out_PBDAT_i_9_n_0),
        .O(reg_out_PBDAT_reg_i_4_n_0),
        .S(\bit_counter_reg_n_0_[2] ));
  MUXF7 reg_out_PBDAT_reg_i_5
       (.I0(reg_out_PBDAT_i_10_n_0),
        .I1(reg_out_PBDAT_i_11_n_0),
        .O(reg_out_PBDAT_reg_i_5_n_0),
        .S(\bit_counter_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h57AB)) 
    reg_out_PBLRC_i_1
       (.I0(reg_out_PBLRC_i_2_n_0),
        .I1(in_en),
        .I2(state_reg_n_0),
        .I3(out_PBLRC),
        .O(reg_out_PBLRC_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    reg_out_PBLRC_i_2
       (.I0(reg_out_PBLRC_i_3_n_0),
        .I1(PBLRC_counter[8]),
        .I2(PBLRC_counter[9]),
        .I3(reg_out_PBLRC_i_4_n_0),
        .I4(\PBLRC_counter[6]_i_2_n_0 ),
        .I5(reg_out_PBLRC_i_5_n_0),
        .O(reg_out_PBLRC_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    reg_out_PBLRC_i_3
       (.I0(PBLRC_counter[2]),
        .I1(PBLRC_counter[3]),
        .O(reg_out_PBLRC_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    reg_out_PBLRC_i_4
       (.I0(PBLRC_counter[4]),
        .I1(PBLRC_counter[5]),
        .I2(PBLRC_counter[10]),
        .I3(state_reg_n_0),
        .O(reg_out_PBLRC_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    reg_out_PBLRC_i_5
       (.I0(PBLRC_counter[7]),
        .I1(PBLRC_counter[6]),
        .O(reg_out_PBLRC_i_5_n_0));
  FDRE #(
    .INIT(1'b1)) 
    reg_out_PBLRC_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_PBLRC_i_1_n_0),
        .Q(out_PBLRC),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA8AB0000A8A8FFFF)) 
    reg_out_ready_i_1
       (.I0(out_ready),
        .I1(reg_out_ready_i_2_n_0),
        .I2(quick_state__0[1]),
        .I3(quick_state__0[0]),
        .I4(state_reg_n_0),
        .I5(in_en),
        .O(reg_out_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFF90000FFFF)) 
    reg_out_ready_i_2
       (.I0(reg_out_PBLRC_i_2_n_0),
        .I1(canal_counter_reg_n_0),
        .I2(reg_out_ready_i_3_n_0),
        .I3(reg_out_ready_i_4_n_0),
        .I4(quick_state__0[0]),
        .I5(in_en),
        .O(reg_out_ready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    reg_out_ready_i_3
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[4] ),
        .O(reg_out_ready_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    reg_out_ready_i_4
       (.I0(reg_out_PBDAT_i_7_n_0),
        .I1(reg_out_PBDAT_i_6_n_0),
        .I2(\bit_counter_reg_n_0_[6] ),
        .I3(\bit_counter_reg_n_0_[7] ),
        .I4(\bit_counter_reg_n_0_[5] ),
        .O(reg_out_ready_i_4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    reg_out_ready_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_ready_i_1_n_0),
        .Q(out_ready),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2F20)) 
    \reg_sample[15]_i_1 
       (.I0(quick_state__0[1]),
        .I1(quick_state__0[0]),
        .I2(state_reg_n_0),
        .I3(in_en),
        .O(\reg_sample[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[0] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[0]),
        .Q(\reg_sample_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[10] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[10]),
        .Q(\reg_sample_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[11] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[11]),
        .Q(\reg_sample_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[12] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[12]),
        .Q(\reg_sample_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[13] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[13]),
        .Q(\reg_sample_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[14] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[14]),
        .Q(\reg_sample_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[15] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[15]),
        .Q(\reg_sample_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[1] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[1]),
        .Q(\reg_sample_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[2] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[2]),
        .Q(\reg_sample_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[3] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[3]),
        .Q(\reg_sample_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[4] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[4]),
        .Q(\reg_sample_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[5] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[5]),
        .Q(\reg_sample_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[6] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[6]),
        .Q(\reg_sample_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[7] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[7]),
        .Q(\reg_sample_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[8] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[8]),
        .Q(\reg_sample_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sample_reg[9] 
       (.C(in_clk),
        .CE(\reg_sample[15]_i_1_n_0 ),
        .D(sample[9]),
        .Q(\reg_sample_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFEFFF0F0)) 
    state_i_1
       (.I0(quick_state__0[1]),
        .I1(quick_state__0[0]),
        .I2(in_en),
        .I3(state_i_2_n_0),
        .I4(state_reg_n_0),
        .O(state_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    state_i_2
       (.I0(reg_out_PBLRC_i_2_n_0),
        .I1(canal_counter_reg_n_0),
        .I2(reg_out_ready_i_3_n_0),
        .I3(reg_out_ready_i_4_n_0),
        .O(state_i_2_n_0));
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
