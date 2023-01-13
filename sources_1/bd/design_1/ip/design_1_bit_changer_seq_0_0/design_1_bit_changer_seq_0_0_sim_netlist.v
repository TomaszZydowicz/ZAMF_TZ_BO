// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Jan 12 23:50:15 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_bit_changer_seq_0_0/design_1_bit_changer_seq_0_0_sim_netlist.v
// Design      : design_1_bit_changer_seq_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_bit_changer_seq_0_0,bit_changer_seq,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "bit_changer_seq,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_bit_changer_seq_0_0
   (in_clk,
    in_enable,
    in_frame,
    in_message,
    out_frame,
    out_ready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_clk, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input in_clk;
  input in_enable;
  input [23:0]in_frame;
  input [87:0]in_message;
  output [23:0]out_frame;
  output out_ready;

  wire in_clk;
  wire in_enable;
  wire [23:0]in_frame;
  wire [87:0]in_message;
  wire [23:0]out_frame;
  wire out_ready;

  design_1_bit_changer_seq_0_0_bit_changer_seq inst
       (.in_clk(in_clk),
        .in_enable(in_enable),
        .in_frame(in_frame[23:1]),
        .in_message(in_message),
        .out_frame(out_frame),
        .out_ready(out_ready));
endmodule

(* ORIG_REF_NAME = "bit_changer_seq" *) 
module design_1_bit_changer_seq_0_0_bit_changer_seq
   (out_frame,
    out_ready,
    in_enable,
    in_clk,
    in_frame,
    in_message);
  output [23:0]out_frame;
  output out_ready;
  input in_enable;
  input in_clk;
  input [22:0]in_frame;
  input [87:0]in_message;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire in_clk;
  wire in_enable;
  wire [22:0]in_frame;
  wire [87:0]in_message;
  wire \msg_count[0]_i_1_n_0 ;
  wire \msg_count[1]_i_1_n_0 ;
  wire \msg_count[2]_i_1_n_0 ;
  wire \msg_count[3]_i_1_n_0 ;
  wire \msg_count[4]_i_1_n_0 ;
  wire \msg_count[5]_i_1_n_0 ;
  wire \msg_count[5]_i_2_n_0 ;
  wire \msg_count[6]_i_1_n_0 ;
  wire \msg_count[7]_i_1_n_0 ;
  wire \msg_count[8]_i_1_n_0 ;
  wire \msg_count[8]_i_2_n_0 ;
  wire \msg_count[8]_i_3_n_0 ;
  wire \msg_count[9]_i_1_n_0 ;
  wire \msg_count[9]_i_2_n_0 ;
  wire \msg_count[9]_i_3_n_0 ;
  wire \msg_count[9]_i_4_n_0 ;
  wire \msg_count[9]_i_5_n_0 ;
  wire \msg_count[9]_i_6_n_0 ;
  wire \msg_count_reg_n_0_[0] ;
  wire \msg_count_reg_n_0_[1] ;
  wire \msg_count_reg_n_0_[2] ;
  wire \msg_count_reg_n_0_[3] ;
  wire \msg_count_reg_n_0_[4] ;
  wire \msg_count_reg_n_0_[5] ;
  wire \msg_count_reg_n_0_[6] ;
  wire \msg_count_reg_n_0_[7] ;
  wire \msg_count_reg_n_0_[8] ;
  wire \msg_count_reg_n_0_[9] ;
  wire [23:0]out_frame;
  wire out_ready;
  wire r_in_message;
  wire r_in_message_i_19_n_0;
  wire r_in_message_i_1_n_0;
  wire r_in_message_i_20_n_0;
  wire r_in_message_i_21_n_0;
  wire r_in_message_i_22_n_0;
  wire r_in_message_i_23_n_0;
  wire r_in_message_i_24_n_0;
  wire r_in_message_i_25_n_0;
  wire r_in_message_i_26_n_0;
  wire r_in_message_i_27_n_0;
  wire r_in_message_i_28_n_0;
  wire r_in_message_i_29_n_0;
  wire r_in_message_i_30_n_0;
  wire r_in_message_i_31_n_0;
  wire r_in_message_i_32_n_0;
  wire r_in_message_i_33_n_0;
  wire r_in_message_i_34_n_0;
  wire r_in_message_i_35_n_0;
  wire r_in_message_i_36_n_0;
  wire r_in_message_i_37_n_0;
  wire r_in_message_i_38_n_0;
  wire r_in_message_i_39_n_0;
  wire r_in_message_i_40_n_0;
  wire r_in_message_i_4_n_0;
  wire r_in_message_i_5_n_0;
  wire r_in_message_i_6_n_0;
  wire r_in_message_i_7_n_0;
  wire r_in_message_reg_i_10_n_0;
  wire r_in_message_reg_i_11_n_0;
  wire r_in_message_reg_i_12_n_0;
  wire r_in_message_reg_i_13_n_0;
  wire r_in_message_reg_i_14_n_0;
  wire r_in_message_reg_i_15_n_0;
  wire r_in_message_reg_i_16_n_0;
  wire r_in_message_reg_i_17_n_0;
  wire r_in_message_reg_i_18_n_0;
  wire r_in_message_reg_i_2_n_0;
  wire r_in_message_reg_i_3_n_0;
  wire r_in_message_reg_i_8_n_0;
  wire r_in_message_reg_i_9_n_0;
  wire r_out_frame;
  wire r_out_ready0;
  wire r_out_ready_i_1_n_0;

  LUT4 #(
    .INIT(16'hFF10)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(r_out_frame),
        .I1(in_enable),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(r_out_ready0),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(r_out_frame),
        .I1(in_enable),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(r_out_ready0),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:001,CODE:010,STOP:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,CODE:010,STOP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(r_out_frame),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,CODE:010,STOP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(in_clk),
        .CE(1'b1),
        .D(r_out_frame),
        .Q(r_out_ready0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \msg_count[0]_i_1 
       (.I0(in_enable),
        .I1(\msg_count_reg_n_0_[0] ),
        .O(\msg_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \msg_count[1]_i_1 
       (.I0(\msg_count_reg_n_0_[0] ),
        .I1(\msg_count_reg_n_0_[1] ),
        .I2(in_enable),
        .O(\msg_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \msg_count[2]_i_1 
       (.I0(\msg_count_reg_n_0_[0] ),
        .I1(\msg_count_reg_n_0_[1] ),
        .I2(\msg_count_reg_n_0_[2] ),
        .I3(in_enable),
        .O(\msg_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \msg_count[3]_i_1 
       (.I0(\msg_count_reg_n_0_[2] ),
        .I1(\msg_count_reg_n_0_[0] ),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(\msg_count_reg_n_0_[3] ),
        .I4(in_enable),
        .O(\msg_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \msg_count[4]_i_1 
       (.I0(\msg_count_reg_n_0_[3] ),
        .I1(\msg_count_reg_n_0_[1] ),
        .I2(\msg_count_reg_n_0_[0] ),
        .I3(\msg_count_reg_n_0_[2] ),
        .I4(\msg_count_reg_n_0_[4] ),
        .I5(in_enable),
        .O(\msg_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \msg_count[5]_i_1 
       (.I0(\msg_count_reg_n_0_[4] ),
        .I1(\msg_count_reg_n_0_[2] ),
        .I2(\msg_count[5]_i_2_n_0 ),
        .I3(\msg_count_reg_n_0_[3] ),
        .I4(\msg_count_reg_n_0_[5] ),
        .I5(in_enable),
        .O(\msg_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \msg_count[5]_i_2 
       (.I0(\msg_count_reg_n_0_[0] ),
        .I1(\msg_count_reg_n_0_[1] ),
        .O(\msg_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \msg_count[6]_i_1 
       (.I0(\msg_count[8]_i_2_n_0 ),
        .I1(\msg_count_reg_n_0_[6] ),
        .I2(\msg_count[8]_i_3_n_0 ),
        .I3(in_enable),
        .O(\msg_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF8580000)) 
    \msg_count[7]_i_1 
       (.I0(\msg_count_reg_n_0_[6] ),
        .I1(\msg_count[8]_i_2_n_0 ),
        .I2(\msg_count_reg_n_0_[7] ),
        .I3(\msg_count[8]_i_3_n_0 ),
        .I4(in_enable),
        .O(\msg_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF805F8000000000)) 
    \msg_count[8]_i_1 
       (.I0(\msg_count_reg_n_0_[7] ),
        .I1(\msg_count[8]_i_2_n_0 ),
        .I2(\msg_count_reg_n_0_[6] ),
        .I3(\msg_count_reg_n_0_[8] ),
        .I4(\msg_count[8]_i_3_n_0 ),
        .I5(in_enable),
        .O(\msg_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \msg_count[8]_i_2 
       (.I0(\msg_count_reg_n_0_[4] ),
        .I1(\msg_count_reg_n_0_[2] ),
        .I2(\msg_count_reg_n_0_[0] ),
        .I3(\msg_count_reg_n_0_[1] ),
        .I4(\msg_count_reg_n_0_[3] ),
        .I5(\msg_count_reg_n_0_[5] ),
        .O(\msg_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \msg_count[8]_i_3 
       (.I0(\msg_count_reg_n_0_[4] ),
        .I1(\msg_count_reg_n_0_[2] ),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(\msg_count_reg_n_0_[0] ),
        .I4(\msg_count_reg_n_0_[3] ),
        .I5(\msg_count_reg_n_0_[5] ),
        .O(\msg_count[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \msg_count[9]_i_1 
       (.I0(\msg_count[9]_i_4_n_0 ),
        .I1(\msg_count_reg_n_0_[9] ),
        .I2(r_out_ready0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\msg_count[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE0E0E0)) 
    \msg_count[9]_i_2 
       (.I0(\msg_count[9]_i_4_n_0 ),
        .I1(\msg_count_reg_n_0_[9] ),
        .I2(r_out_ready0),
        .I3(in_enable),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\msg_count[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF805F8000000000)) 
    \msg_count[9]_i_3 
       (.I0(\msg_count_reg_n_0_[8] ),
        .I1(\msg_count[9]_i_5_n_0 ),
        .I2(\msg_count_reg_n_0_[7] ),
        .I3(\msg_count_reg_n_0_[9] ),
        .I4(\msg_count[9]_i_6_n_0 ),
        .I5(in_enable),
        .O(\msg_count[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEAAAA)) 
    \msg_count[9]_i_4 
       (.I0(\msg_count_reg_n_0_[7] ),
        .I1(\msg_count_reg_n_0_[5] ),
        .I2(\msg_count_reg_n_0_[3] ),
        .I3(\msg_count_reg_n_0_[4] ),
        .I4(\msg_count_reg_n_0_[6] ),
        .I5(\msg_count_reg_n_0_[8] ),
        .O(\msg_count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \msg_count[9]_i_5 
       (.I0(\msg_count_reg_n_0_[5] ),
        .I1(\msg_count_reg_n_0_[3] ),
        .I2(\msg_count[5]_i_2_n_0 ),
        .I3(\msg_count_reg_n_0_[2] ),
        .I4(\msg_count_reg_n_0_[4] ),
        .I5(\msg_count_reg_n_0_[6] ),
        .O(\msg_count[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \msg_count[9]_i_6 
       (.I0(\msg_count_reg_n_0_[5] ),
        .I1(\msg_count_reg_n_0_[3] ),
        .I2(\msg_count[5]_i_2_n_0 ),
        .I3(\msg_count_reg_n_0_[2] ),
        .I4(\msg_count_reg_n_0_[4] ),
        .I5(\msg_count_reg_n_0_[6] ),
        .O(\msg_count[9]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \msg_count_reg[0] 
       (.C(in_clk),
        .CE(\msg_count[9]_i_2_n_0 ),
        .D(\msg_count[0]_i_1_n_0 ),
        .Q(\msg_count_reg_n_0_[0] ),
        .R(\msg_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \msg_count_reg[1] 
       (.C(in_clk),
        .CE(\msg_count[9]_i_2_n_0 ),
        .D(\msg_count[1]_i_1_n_0 ),
        .Q(\msg_count_reg_n_0_[1] ),
        .R(\msg_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \msg_count_reg[2] 
       (.C(in_clk),
        .CE(\msg_count[9]_i_2_n_0 ),
        .D(\msg_count[2]_i_1_n_0 ),
        .Q(\msg_count_reg_n_0_[2] ),
        .R(\msg_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \msg_count_reg[3] 
       (.C(in_clk),
        .CE(\msg_count[9]_i_2_n_0 ),
        .D(\msg_count[3]_i_1_n_0 ),
        .Q(\msg_count_reg_n_0_[3] ),
        .R(\msg_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \msg_count_reg[4] 
       (.C(in_clk),
        .CE(\msg_count[9]_i_2_n_0 ),
        .D(\msg_count[4]_i_1_n_0 ),
        .Q(\msg_count_reg_n_0_[4] ),
        .R(\msg_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \msg_count_reg[5] 
       (.C(in_clk),
        .CE(\msg_count[9]_i_2_n_0 ),
        .D(\msg_count[5]_i_1_n_0 ),
        .Q(\msg_count_reg_n_0_[5] ),
        .R(\msg_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \msg_count_reg[6] 
       (.C(in_clk),
        .CE(\msg_count[9]_i_2_n_0 ),
        .D(\msg_count[6]_i_1_n_0 ),
        .Q(\msg_count_reg_n_0_[6] ),
        .R(\msg_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \msg_count_reg[7] 
       (.C(in_clk),
        .CE(\msg_count[9]_i_2_n_0 ),
        .D(\msg_count[7]_i_1_n_0 ),
        .Q(\msg_count_reg_n_0_[7] ),
        .R(\msg_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \msg_count_reg[8] 
       (.C(in_clk),
        .CE(\msg_count[9]_i_2_n_0 ),
        .D(\msg_count[8]_i_1_n_0 ),
        .Q(\msg_count_reg_n_0_[8] ),
        .R(\msg_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \msg_count_reg[9] 
       (.C(in_clk),
        .CE(\msg_count[9]_i_2_n_0 ),
        .D(\msg_count[9]_i_3_n_0 ),
        .Q(\msg_count_reg_n_0_[9] ),
        .R(\msg_count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    r_in_message_i_1
       (.I0(r_in_message_reg_i_2_n_0),
        .I1(\msg_count_reg_n_0_[6] ),
        .I2(r_in_message_reg_i_3_n_0),
        .I3(in_enable),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(r_in_message),
        .O(r_in_message_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_19
       (.I0(in_message[84]),
        .I1(in_message[85]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[86]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[87]),
        .O(r_in_message_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_20
       (.I0(in_message[80]),
        .I1(in_message[81]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[82]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[83]),
        .O(r_in_message_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_21
       (.I0(in_message[4]),
        .I1(in_message[5]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[6]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[7]),
        .O(r_in_message_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_22
       (.I0(in_message[0]),
        .I1(in_message[1]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[2]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[3]),
        .O(r_in_message_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_23
       (.I0(in_message[12]),
        .I1(in_message[13]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[14]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[15]),
        .O(r_in_message_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_24
       (.I0(in_message[8]),
        .I1(in_message[9]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[10]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[11]),
        .O(r_in_message_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_25
       (.I0(in_message[20]),
        .I1(in_message[21]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[22]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[23]),
        .O(r_in_message_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_26
       (.I0(in_message[16]),
        .I1(in_message[17]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[18]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[19]),
        .O(r_in_message_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_27
       (.I0(in_message[68]),
        .I1(in_message[69]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[70]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[71]),
        .O(r_in_message_i_27_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_28
       (.I0(in_message[64]),
        .I1(in_message[65]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[66]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[67]),
        .O(r_in_message_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_29
       (.I0(in_message[76]),
        .I1(in_message[77]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[78]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[79]),
        .O(r_in_message_i_29_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_30
       (.I0(in_message[72]),
        .I1(in_message[73]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[74]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[75]),
        .O(r_in_message_i_30_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_31
       (.I0(in_message[60]),
        .I1(in_message[61]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[62]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[63]),
        .O(r_in_message_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_32
       (.I0(in_message[56]),
        .I1(in_message[57]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[58]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[59]),
        .O(r_in_message_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_33
       (.I0(in_message[28]),
        .I1(in_message[29]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[30]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[31]),
        .O(r_in_message_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_34
       (.I0(in_message[24]),
        .I1(in_message[25]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[26]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[27]),
        .O(r_in_message_i_34_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_35
       (.I0(in_message[36]),
        .I1(in_message[37]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[38]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[39]),
        .O(r_in_message_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_36
       (.I0(in_message[32]),
        .I1(in_message[33]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[34]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[35]),
        .O(r_in_message_i_36_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_37
       (.I0(in_message[44]),
        .I1(in_message[45]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[46]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[47]),
        .O(r_in_message_i_37_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_38
       (.I0(in_message[40]),
        .I1(in_message[41]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[42]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[43]),
        .O(r_in_message_i_38_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_39
       (.I0(in_message[52]),
        .I1(in_message[53]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[54]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[55]),
        .O(r_in_message_i_39_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_4
       (.I0(r_in_message_reg_i_8_n_0),
        .I1(r_in_message_reg_i_9_n_0),
        .I2(\msg_count_reg_n_0_[4] ),
        .I3(r_in_message_reg_i_10_n_0),
        .I4(\msg_count_reg_n_0_[3] ),
        .I5(r_in_message_reg_i_11_n_0),
        .O(r_in_message_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_40
       (.I0(in_message[48]),
        .I1(in_message[49]),
        .I2(\msg_count_reg_n_0_[1] ),
        .I3(in_message[50]),
        .I4(\msg_count_reg_n_0_[0] ),
        .I5(in_message[51]),
        .O(r_in_message_i_40_n_0));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    r_in_message_i_5
       (.I0(r_in_message_reg_i_12_n_0),
        .I1(\msg_count_reg_n_0_[4] ),
        .I2(r_in_message_reg_i_13_n_0),
        .I3(\msg_count_reg_n_0_[3] ),
        .I4(r_in_message_reg_i_8_n_0),
        .O(r_in_message_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_6
       (.I0(r_in_message_reg_i_14_n_0),
        .I1(r_in_message_reg_i_12_n_0),
        .I2(\msg_count_reg_n_0_[4] ),
        .I3(r_in_message_reg_i_13_n_0),
        .I4(\msg_count_reg_n_0_[3] ),
        .I5(r_in_message_reg_i_8_n_0),
        .O(r_in_message_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    r_in_message_i_7
       (.I0(r_in_message_reg_i_15_n_0),
        .I1(r_in_message_reg_i_16_n_0),
        .I2(\msg_count_reg_n_0_[4] ),
        .I3(r_in_message_reg_i_17_n_0),
        .I4(\msg_count_reg_n_0_[3] ),
        .I5(r_in_message_reg_i_18_n_0),
        .O(r_in_message_i_7_n_0));
  FDRE r_in_message_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(r_in_message_i_1_n_0),
        .Q(r_in_message),
        .R(1'b0));
  MUXF7 r_in_message_reg_i_10
       (.I0(r_in_message_i_23_n_0),
        .I1(r_in_message_i_24_n_0),
        .O(r_in_message_reg_i_10_n_0),
        .S(\msg_count_reg_n_0_[2] ));
  MUXF7 r_in_message_reg_i_11
       (.I0(r_in_message_i_25_n_0),
        .I1(r_in_message_i_26_n_0),
        .O(r_in_message_reg_i_11_n_0),
        .S(\msg_count_reg_n_0_[2] ));
  MUXF7 r_in_message_reg_i_12
       (.I0(r_in_message_i_27_n_0),
        .I1(r_in_message_i_28_n_0),
        .O(r_in_message_reg_i_12_n_0),
        .S(\msg_count_reg_n_0_[2] ));
  MUXF7 r_in_message_reg_i_13
       (.I0(r_in_message_i_29_n_0),
        .I1(r_in_message_i_30_n_0),
        .O(r_in_message_reg_i_13_n_0),
        .S(\msg_count_reg_n_0_[2] ));
  MUXF7 r_in_message_reg_i_14
       (.I0(r_in_message_i_31_n_0),
        .I1(r_in_message_i_32_n_0),
        .O(r_in_message_reg_i_14_n_0),
        .S(\msg_count_reg_n_0_[2] ));
  MUXF7 r_in_message_reg_i_15
       (.I0(r_in_message_i_33_n_0),
        .I1(r_in_message_i_34_n_0),
        .O(r_in_message_reg_i_15_n_0),
        .S(\msg_count_reg_n_0_[2] ));
  MUXF7 r_in_message_reg_i_16
       (.I0(r_in_message_i_35_n_0),
        .I1(r_in_message_i_36_n_0),
        .O(r_in_message_reg_i_16_n_0),
        .S(\msg_count_reg_n_0_[2] ));
  MUXF7 r_in_message_reg_i_17
       (.I0(r_in_message_i_37_n_0),
        .I1(r_in_message_i_38_n_0),
        .O(r_in_message_reg_i_17_n_0),
        .S(\msg_count_reg_n_0_[2] ));
  MUXF7 r_in_message_reg_i_18
       (.I0(r_in_message_i_39_n_0),
        .I1(r_in_message_i_40_n_0),
        .O(r_in_message_reg_i_18_n_0),
        .S(\msg_count_reg_n_0_[2] ));
  MUXF7 r_in_message_reg_i_2
       (.I0(r_in_message_i_4_n_0),
        .I1(r_in_message_i_5_n_0),
        .O(r_in_message_reg_i_2_n_0),
        .S(\msg_count_reg_n_0_[5] ));
  MUXF7 r_in_message_reg_i_3
       (.I0(r_in_message_i_6_n_0),
        .I1(r_in_message_i_7_n_0),
        .O(r_in_message_reg_i_3_n_0),
        .S(\msg_count_reg_n_0_[5] ));
  MUXF7 r_in_message_reg_i_8
       (.I0(r_in_message_i_19_n_0),
        .I1(r_in_message_i_20_n_0),
        .O(r_in_message_reg_i_8_n_0),
        .S(\msg_count_reg_n_0_[2] ));
  MUXF7 r_in_message_reg_i_9
       (.I0(r_in_message_i_21_n_0),
        .I1(r_in_message_i_22_n_0),
        .O(r_in_message_reg_i_9_n_0),
        .S(\msg_count_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[0] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(r_in_message),
        .Q(out_frame[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[10] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[9]),
        .Q(out_frame[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[11] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[10]),
        .Q(out_frame[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[12] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[11]),
        .Q(out_frame[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[13] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[12]),
        .Q(out_frame[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[14] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[13]),
        .Q(out_frame[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[15] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[14]),
        .Q(out_frame[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[16] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[15]),
        .Q(out_frame[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[17] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[16]),
        .Q(out_frame[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[18] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[17]),
        .Q(out_frame[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[19] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[18]),
        .Q(out_frame[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[1] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[0]),
        .Q(out_frame[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[20] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[19]),
        .Q(out_frame[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[21] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[20]),
        .Q(out_frame[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[22] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[21]),
        .Q(out_frame[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[23] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[22]),
        .Q(out_frame[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[2] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[1]),
        .Q(out_frame[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[3] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[2]),
        .Q(out_frame[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[4] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[3]),
        .Q(out_frame[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[5] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[4]),
        .Q(out_frame[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[6] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[5]),
        .Q(out_frame[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[7] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[6]),
        .Q(out_frame[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[8] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[7]),
        .Q(out_frame[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_out_frame_reg[9] 
       (.C(in_clk),
        .CE(r_out_frame),
        .D(in_frame[8]),
        .Q(out_frame[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFD0)) 
    r_out_ready_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(in_enable),
        .I2(out_ready),
        .I3(r_out_ready0),
        .O(r_out_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_out_ready_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(r_out_ready_i_1_n_0),
        .Q(out_ready),
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
