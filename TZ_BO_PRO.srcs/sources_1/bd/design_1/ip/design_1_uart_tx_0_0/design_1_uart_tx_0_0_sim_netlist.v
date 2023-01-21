// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Jan 21 14:46:43 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Foldery/Studia/MGR/SEM2/ZAMPF/projekt/TZ_BO_PRO/TZ_BO_PRO.srcs/sources_1/bd/design_1/ip/design_1_uart_tx_0_0/design_1_uart_tx_0_0_sim_netlist.v
// Design      : design_1_uart_tx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_tx_0_0,uart_tx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_tx,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_uart_tx_0_0
   (in_Clock,
    in_Tx_DV,
    in_Tx_Byte,
    out_Tx_Active,
    out_Tx_Serial,
    out_Tx_Done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_Clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_Clock, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input in_Clock;
  input in_Tx_DV;
  input [7:0]in_Tx_Byte;
  output out_Tx_Active;
  output out_Tx_Serial;
  output out_Tx_Done;

  wire in_Clock;
  wire [7:0]in_Tx_Byte;
  wire in_Tx_DV;
  wire out_Tx_Active;
  wire out_Tx_Done;
  wire out_Tx_Serial;

  design_1_uart_tx_0_0_uart_tx inst
       (.in_Clock(in_Clock),
        .in_Tx_Byte(in_Tx_Byte),
        .in_Tx_DV(in_Tx_DV),
        .out_Tx_Active(out_Tx_Active),
        .out_Tx_Done(out_Tx_Done),
        .out_Tx_Serial(out_Tx_Serial));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module design_1_uart_tx_0_0_uart_tx
   (out_Tx_Active,
    out_Tx_Serial,
    out_Tx_Done,
    in_Tx_DV,
    in_Clock,
    in_Tx_Byte);
  output out_Tx_Active;
  output out_Tx_Serial;
  output out_Tx_Done;
  input in_Tx_DV;
  input in_Clock;
  input [7:0]in_Tx_Byte;

  wire \Bit_Index_reg[0]_i_1_n_0 ;
  wire \Bit_Index_reg[1]_i_1_n_0 ;
  wire \Bit_Index_reg[2]_i_1_n_0 ;
  wire \Bit_Index_reg[2]_i_2_n_0 ;
  wire \Bit_Index_reg_reg_n_0_[0] ;
  wire \Bit_Index_reg_reg_n_0_[1] ;
  wire \Bit_Index_reg_reg_n_0_[2] ;
  wire [9:1]Clock_Count_reg;
  wire Clock_Count_reg0;
  wire \Clock_Count_reg[0]_i_1_n_0 ;
  wire \Clock_Count_reg[5]_i_2_n_0 ;
  wire \Clock_Count_reg[9]_i_4_n_0 ;
  wire Clock_Count_reg_0;
  wire [9:0]Clock_Count_reg_reg;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire Tx_Active_reg_i_1_n_0;
  wire Tx_Active_reg_i_2_n_0;
  wire Tx_Active_reg_i_3_n_0;
  wire [7:0]Tx_Data_reg;
  wire Tx_Data_reg_1;
  wire Tx_Done_reg_i_1_n_0;
  wire in_Clock;
  wire [7:0]in_Tx_Byte;
  wire in_Tx_DV;
  wire out_Tx_Active;
  wire out_Tx_Done;
  wire out_Tx_Serial;
  wire out_Tx_Serial_i_1_n_0;
  wire out_Tx_Serial_i_3_n_0;
  wire out_Tx_Serial_i_4_n_0;
  wire out_Tx_Serial_reg_i_2_n_0;
  wire [2:0]state;

  LUT6 #(
    .INIT(64'hAAAAAA98AAAAAA00)) 
    \Bit_Index_reg[0]_i_1 
       (.I0(\Bit_Index_reg_reg_n_0_[0] ),
        .I1(Tx_Active_reg_i_2_n_0),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\Bit_Index_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA9AAA00)) 
    \Bit_Index_reg[1]_i_1 
       (.I0(\Bit_Index_reg_reg_n_0_[1] ),
        .I1(Tx_Active_reg_i_2_n_0),
        .I2(\Bit_Index_reg_reg_n_0_[0] ),
        .I3(\Bit_Index_reg[2]_i_2_n_0 ),
        .I4(state[1]),
        .O(\Bit_Index_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA9AAAAAAA0000)) 
    \Bit_Index_reg[2]_i_1 
       (.I0(\Bit_Index_reg_reg_n_0_[2] ),
        .I1(Tx_Active_reg_i_2_n_0),
        .I2(\Bit_Index_reg_reg_n_0_[0] ),
        .I3(\Bit_Index_reg_reg_n_0_[1] ),
        .I4(\Bit_Index_reg[2]_i_2_n_0 ),
        .I5(state[1]),
        .O(\Bit_Index_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Bit_Index_reg[2]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .O(\Bit_Index_reg[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg_reg[0] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\Bit_Index_reg[0]_i_1_n_0 ),
        .Q(\Bit_Index_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg_reg[1] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\Bit_Index_reg[1]_i_1_n_0 ),
        .Q(\Bit_Index_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg_reg[2] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\Bit_Index_reg[2]_i_1_n_0 ),
        .Q(\Bit_Index_reg_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Clock_Count_reg[0]_i_1 
       (.I0(Tx_Active_reg_i_2_n_0),
        .I1(Clock_Count_reg_reg[0]),
        .O(\Clock_Count_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \Clock_Count_reg[1]_i_1 
       (.I0(Clock_Count_reg_reg[1]),
        .I1(Clock_Count_reg_reg[0]),
        .I2(Tx_Active_reg_i_2_n_0),
        .O(Clock_Count_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \Clock_Count_reg[2]_i_1 
       (.I0(Clock_Count_reg_reg[2]),
        .I1(Clock_Count_reg_reg[1]),
        .I2(Clock_Count_reg_reg[0]),
        .I3(Tx_Active_reg_i_2_n_0),
        .O(Clock_Count_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \Clock_Count_reg[3]_i_1 
       (.I0(Clock_Count_reg_reg[3]),
        .I1(Clock_Count_reg_reg[2]),
        .I2(Clock_Count_reg_reg[0]),
        .I3(Clock_Count_reg_reg[1]),
        .I4(Tx_Active_reg_i_2_n_0),
        .O(Clock_Count_reg[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \Clock_Count_reg[4]_i_1 
       (.I0(Clock_Count_reg_reg[4]),
        .I1(Clock_Count_reg_reg[3]),
        .I2(Clock_Count_reg_reg[1]),
        .I3(Clock_Count_reg_reg[0]),
        .I4(Clock_Count_reg_reg[2]),
        .I5(Tx_Active_reg_i_2_n_0),
        .O(Clock_Count_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \Clock_Count_reg[5]_i_1 
       (.I0(Clock_Count_reg_reg[5]),
        .I1(\Clock_Count_reg[5]_i_2_n_0 ),
        .I2(Tx_Active_reg_i_2_n_0),
        .O(Clock_Count_reg[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \Clock_Count_reg[5]_i_2 
       (.I0(Clock_Count_reg_reg[4]),
        .I1(Clock_Count_reg_reg[2]),
        .I2(Clock_Count_reg_reg[0]),
        .I3(Clock_Count_reg_reg[1]),
        .I4(Clock_Count_reg_reg[3]),
        .O(\Clock_Count_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \Clock_Count_reg[6]_i_1 
       (.I0(Clock_Count_reg_reg[6]),
        .I1(\Clock_Count_reg[9]_i_4_n_0 ),
        .I2(Tx_Active_reg_i_2_n_0),
        .O(Clock_Count_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \Clock_Count_reg[7]_i_1 
       (.I0(Clock_Count_reg_reg[7]),
        .I1(Clock_Count_reg_reg[6]),
        .I2(\Clock_Count_reg[9]_i_4_n_0 ),
        .I3(Tx_Active_reg_i_2_n_0),
        .O(Clock_Count_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \Clock_Count_reg[8]_i_1 
       (.I0(Clock_Count_reg_reg[8]),
        .I1(Clock_Count_reg_reg[7]),
        .I2(\Clock_Count_reg[9]_i_4_n_0 ),
        .I3(Clock_Count_reg_reg[6]),
        .I4(Tx_Active_reg_i_2_n_0),
        .O(Clock_Count_reg[8]));
  LUT3 #(
    .INIT(8'h01)) 
    \Clock_Count_reg[9]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(Clock_Count_reg0));
  LUT3 #(
    .INIT(8'h54)) 
    \Clock_Count_reg[9]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(Clock_Count_reg_0));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \Clock_Count_reg[9]_i_3 
       (.I0(Clock_Count_reg_reg[9]),
        .I1(Clock_Count_reg_reg[8]),
        .I2(Clock_Count_reg_reg[6]),
        .I3(\Clock_Count_reg[9]_i_4_n_0 ),
        .I4(Clock_Count_reg_reg[7]),
        .I5(Tx_Active_reg_i_2_n_0),
        .O(Clock_Count_reg[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Clock_Count_reg[9]_i_4 
       (.I0(Clock_Count_reg_reg[5]),
        .I1(Clock_Count_reg_reg[3]),
        .I2(Clock_Count_reg_reg[1]),
        .I3(Clock_Count_reg_reg[0]),
        .I4(Clock_Count_reg_reg[2]),
        .I5(Clock_Count_reg_reg[4]),
        .O(\Clock_Count_reg[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[0] 
       (.C(in_Clock),
        .CE(Clock_Count_reg_0),
        .D(\Clock_Count_reg[0]_i_1_n_0 ),
        .Q(Clock_Count_reg_reg[0]),
        .R(Clock_Count_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[1] 
       (.C(in_Clock),
        .CE(Clock_Count_reg_0),
        .D(Clock_Count_reg[1]),
        .Q(Clock_Count_reg_reg[1]),
        .R(Clock_Count_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[2] 
       (.C(in_Clock),
        .CE(Clock_Count_reg_0),
        .D(Clock_Count_reg[2]),
        .Q(Clock_Count_reg_reg[2]),
        .R(Clock_Count_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[3] 
       (.C(in_Clock),
        .CE(Clock_Count_reg_0),
        .D(Clock_Count_reg[3]),
        .Q(Clock_Count_reg_reg[3]),
        .R(Clock_Count_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[4] 
       (.C(in_Clock),
        .CE(Clock_Count_reg_0),
        .D(Clock_Count_reg[4]),
        .Q(Clock_Count_reg_reg[4]),
        .R(Clock_Count_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[5] 
       (.C(in_Clock),
        .CE(Clock_Count_reg_0),
        .D(Clock_Count_reg[5]),
        .Q(Clock_Count_reg_reg[5]),
        .R(Clock_Count_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[6] 
       (.C(in_Clock),
        .CE(Clock_Count_reg_0),
        .D(Clock_Count_reg[6]),
        .Q(Clock_Count_reg_reg[6]),
        .R(Clock_Count_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[7] 
       (.C(in_Clock),
        .CE(Clock_Count_reg_0),
        .D(Clock_Count_reg[7]),
        .Q(Clock_Count_reg_reg[7]),
        .R(Clock_Count_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[8] 
       (.C(in_Clock),
        .CE(Clock_Count_reg_0),
        .D(Clock_Count_reg[8]),
        .Q(Clock_Count_reg_reg[8]),
        .R(Clock_Count_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[9] 
       (.C(in_Clock),
        .CE(Clock_Count_reg_0),
        .D(Clock_Count_reg[9]),
        .Q(Clock_Count_reg_reg[9]),
        .R(Clock_Count_reg0));
  LUT6 #(
    .INIT(64'h00000000C0E2C3E2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(in_Tx_DV),
        .I1(state[0]),
        .I2(Tx_Active_reg_i_2_n_0),
        .I3(state[1]),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(state[2]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\Bit_Index_reg_reg_n_0_[2] ),
        .I1(\Bit_Index_reg_reg_n_0_[1] ),
        .I2(\Bit_Index_reg_reg_n_0_[0] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00D2)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(Tx_Active_reg_i_2_n_0),
        .I2(state[1]),
        .I3(state[2]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[0]),
        .I1(Tx_Active_reg_i_2_n_0),
        .I2(state[1]),
        .I3(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000,TX_START_BIT:001,TX_DATA_BITS:010,CLEANUP:100,TX_STOP_BIT:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:000,TX_START_BIT:001,TX_DATA_BITS:010,CLEANUP:100,TX_STOP_BIT:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:000,TX_START_BIT:001,TX_DATA_BITS:010,CLEANUP:100,TX_STOP_BIT:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBBFF00000030)) 
    Tx_Active_reg_i_1
       (.I0(Tx_Active_reg_i_2_n_0),
        .I1(state[0]),
        .I2(in_Tx_DV),
        .I3(state[1]),
        .I4(state[2]),
        .I5(out_Tx_Active),
        .O(Tx_Active_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'h0111FFFF)) 
    Tx_Active_reg_i_2
       (.I0(Clock_Count_reg_reg[7]),
        .I1(Clock_Count_reg_reg[8]),
        .I2(Tx_Active_reg_i_3_n_0),
        .I3(Clock_Count_reg_reg[0]),
        .I4(Clock_Count_reg_reg[9]),
        .O(Tx_Active_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Tx_Active_reg_i_3
       (.I0(Clock_Count_reg_reg[2]),
        .I1(Clock_Count_reg_reg[1]),
        .I2(Clock_Count_reg_reg[5]),
        .I3(Clock_Count_reg_reg[6]),
        .I4(Clock_Count_reg_reg[3]),
        .I5(Clock_Count_reg_reg[4]),
        .O(Tx_Active_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Tx_Active_reg_reg
       (.C(in_Clock),
        .CE(1'b1),
        .D(Tx_Active_reg_i_1_n_0),
        .Q(out_Tx_Active),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0010)) 
    \Tx_Data_reg[7]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(in_Tx_DV),
        .I3(state[1]),
        .O(Tx_Data_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg_reg[0] 
       (.C(in_Clock),
        .CE(Tx_Data_reg_1),
        .D(in_Tx_Byte[0]),
        .Q(Tx_Data_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg_reg[1] 
       (.C(in_Clock),
        .CE(Tx_Data_reg_1),
        .D(in_Tx_Byte[1]),
        .Q(Tx_Data_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg_reg[2] 
       (.C(in_Clock),
        .CE(Tx_Data_reg_1),
        .D(in_Tx_Byte[2]),
        .Q(Tx_Data_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg_reg[3] 
       (.C(in_Clock),
        .CE(Tx_Data_reg_1),
        .D(in_Tx_Byte[3]),
        .Q(Tx_Data_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg_reg[4] 
       (.C(in_Clock),
        .CE(Tx_Data_reg_1),
        .D(in_Tx_Byte[4]),
        .Q(Tx_Data_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg_reg[5] 
       (.C(in_Clock),
        .CE(Tx_Data_reg_1),
        .D(in_Tx_Byte[5]),
        .Q(Tx_Data_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg_reg[6] 
       (.C(in_Clock),
        .CE(Tx_Data_reg_1),
        .D(in_Tx_Byte[6]),
        .Q(Tx_Data_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg_reg[7] 
       (.C(in_Clock),
        .CE(Tx_Data_reg_1),
        .D(in_Tx_Byte[7]),
        .Q(Tx_Data_reg[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFA100A)) 
    Tx_Done_reg_i_1
       (.I0(state[2]),
        .I1(Tx_Active_reg_i_2_n_0),
        .I2(state[0]),
        .I3(state[1]),
        .I4(out_Tx_Done),
        .O(Tx_Done_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Tx_Done_reg_reg
       (.C(in_Clock),
        .CE(1'b1),
        .D(Tx_Done_reg_i_1_n_0),
        .Q(out_Tx_Done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hBB8BB88B)) 
    out_Tx_Serial_i_1
       (.I0(out_Tx_Serial),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(out_Tx_Serial_reg_i_2_n_0),
        .O(out_Tx_Serial_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    out_Tx_Serial_i_3
       (.I0(Tx_Data_reg[3]),
        .I1(Tx_Data_reg[2]),
        .I2(\Bit_Index_reg_reg_n_0_[1] ),
        .I3(Tx_Data_reg[1]),
        .I4(\Bit_Index_reg_reg_n_0_[0] ),
        .I5(Tx_Data_reg[0]),
        .O(out_Tx_Serial_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    out_Tx_Serial_i_4
       (.I0(Tx_Data_reg[7]),
        .I1(Tx_Data_reg[6]),
        .I2(\Bit_Index_reg_reg_n_0_[1] ),
        .I3(Tx_Data_reg[5]),
        .I4(\Bit_Index_reg_reg_n_0_[0] ),
        .I5(Tx_Data_reg[4]),
        .O(out_Tx_Serial_i_4_n_0));
  FDRE out_Tx_Serial_reg
       (.C(in_Clock),
        .CE(1'b1),
        .D(out_Tx_Serial_i_1_n_0),
        .Q(out_Tx_Serial),
        .R(1'b0));
  MUXF7 out_Tx_Serial_reg_i_2
       (.I0(out_Tx_Serial_i_3_n_0),
        .I1(out_Tx_Serial_i_4_n_0),
        .O(out_Tx_Serial_reg_i_2_n_0),
        .S(\Bit_Index_reg_reg_n_0_[2] ));
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
