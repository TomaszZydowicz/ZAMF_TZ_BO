// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Jan 21 14:46:01 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_rx_0_0_sim_netlist.v
// Design      : design_1_uart_rx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_rx_0_0,uart_rx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart_rx,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (in_Clock,
    in_Rx_Serial,
    out_Rx_DV,
    out_Rx_Byte);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_Clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_Clock, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input in_Clock;
  input in_Rx_Serial;
  output out_Rx_DV;
  output [7:0]out_Rx_Byte;

  wire in_Clock;
  wire in_Rx_Serial;
  wire [7:0]out_Rx_Byte;
  wire out_Rx_DV;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx inst
       (.in_Clock(in_Clock),
        .in_Rx_Serial(in_Rx_Serial),
        .out_Rx_Byte(out_Rx_Byte),
        .out_Rx_DV(out_Rx_DV));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
   (out_Rx_Byte,
    out_Rx_DV,
    in_Rx_Serial,
    in_Clock);
  output [7:0]out_Rx_Byte;
  output out_Rx_DV;
  input in_Rx_Serial;
  input in_Clock;

  wire \Bit_Index_reg[0]_i_1_n_0 ;
  wire \Bit_Index_reg[1]_i_1_n_0 ;
  wire \Bit_Index_reg[2]_i_1_n_0 ;
  wire \Bit_Index_reg[2]_i_2_n_0 ;
  wire \Bit_Index_reg_reg_n_0_[0] ;
  wire \Bit_Index_reg_reg_n_0_[1] ;
  wire \Bit_Index_reg_reg_n_0_[2] ;
  wire \Clock_Count_reg[0]_i_1_n_0 ;
  wire \Clock_Count_reg[10]_i_1_n_0 ;
  wire \Clock_Count_reg[10]_i_3_n_0 ;
  wire \Clock_Count_reg[10]_i_4_n_0 ;
  wire \Clock_Count_reg[10]_i_5_n_0 ;
  wire \Clock_Count_reg[10]_i_6_n_0 ;
  wire \Clock_Count_reg[10]_i_7_n_0 ;
  wire \Clock_Count_reg[1]_i_1_n_0 ;
  wire \Clock_Count_reg[2]_i_2_n_0 ;
  wire \Clock_Count_reg[3]_i_2_n_0 ;
  wire \Clock_Count_reg[4]_i_1_n_0 ;
  wire \Clock_Count_reg[5]_i_1_n_0 ;
  wire \Clock_Count_reg[6]_i_1_n_0 ;
  wire \Clock_Count_reg[7]_i_1_n_0 ;
  wire \Clock_Count_reg[7]_i_2_n_0 ;
  wire \Clock_Count_reg[7]_i_3_n_0 ;
  wire \Clock_Count_reg[7]_i_4_n_0 ;
  wire \Clock_Count_reg[8]_i_2_n_0 ;
  wire \Clock_Count_reg[9]_i_2_n_0 ;
  wire \Clock_Count_reg[9]_i_3_n_0 ;
  wire \Clock_Count_reg[9]_i_4_n_0 ;
  wire \Clock_Count_reg[9]_i_5_n_0 ;
  wire \Clock_Count_reg[9]_i_6_n_0 ;
  wire \Clock_Count_reg[9]_i_7_n_0 ;
  wire \Clock_Count_reg_reg_n_0_[0] ;
  wire \Clock_Count_reg_reg_n_0_[10] ;
  wire \Clock_Count_reg_reg_n_0_[1] ;
  wire \Clock_Count_reg_reg_n_0_[2] ;
  wire \Clock_Count_reg_reg_n_0_[3] ;
  wire \Clock_Count_reg_reg_n_0_[4] ;
  wire \Clock_Count_reg_reg_n_0_[5] ;
  wire \Clock_Count_reg_reg_n_0_[6] ;
  wire \Clock_Count_reg_reg_n_0_[7] ;
  wire \Clock_Count_reg_reg_n_0_[8] ;
  wire \Clock_Count_reg_reg_n_0_[9] ;
  wire \Rx_Byte_reg[0]_i_1_n_0 ;
  wire \Rx_Byte_reg[1]_i_1_n_0 ;
  wire \Rx_Byte_reg[2]_i_1_n_0 ;
  wire \Rx_Byte_reg[3]_i_1_n_0 ;
  wire \Rx_Byte_reg[4]_i_1_n_0 ;
  wire \Rx_Byte_reg[5]_i_1_n_0 ;
  wire \Rx_Byte_reg[6]_i_1_n_0 ;
  wire \Rx_Byte_reg[7]_i_1_n_0 ;
  wire \Rx_Byte_reg[7]_i_2_n_0 ;
  wire \Rx_Byte_reg[7]_i_3_n_0 ;
  wire \Rx_Byte_reg[7]_i_4_n_0 ;
  wire \Rx_Byte_reg[7]_i_5_n_0 ;
  wire Rx_DV_reg_i_1_n_0;
  wire Rx_DV_reg_i_2_n_0;
  wire Rx_DV_reg_i_3_n_0;
  wire Rx_Data_R_reg;
  wire Rx_Data_reg;
  wire in_Clock;
  wire in_Rx_Serial;
  wire [7:0]out_Rx_Byte;
  wire out_Rx_DV;
  wire [10:2]p_1_in;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAAAA90)) 
    \Bit_Index_reg[0]_i_1 
       (.I0(\Bit_Index_reg_reg_n_0_[0] ),
        .I1(Rx_DV_reg_i_2_n_0),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\Bit_Index_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA9A00)) 
    \Bit_Index_reg[1]_i_1 
       (.I0(\Bit_Index_reg_reg_n_0_[1] ),
        .I1(Rx_DV_reg_i_2_n_0),
        .I2(\Bit_Index_reg_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\Bit_Index_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA900)) 
    \Bit_Index_reg[2]_i_1 
       (.I0(\Bit_Index_reg_reg_n_0_[2] ),
        .I1(Rx_DV_reg_i_2_n_0),
        .I2(\Bit_Index_reg[2]_i_2_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\Bit_Index_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Bit_Index_reg[2]_i_2 
       (.I0(\Bit_Index_reg_reg_n_0_[0] ),
        .I1(\Bit_Index_reg_reg_n_0_[1] ),
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Clock_Count_reg[0]_i_1 
       (.I0(\Clock_Count_reg_reg_n_0_[0] ),
        .I1(\Clock_Count_reg[9]_i_6_n_0 ),
        .O(\Clock_Count_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555155555555555)) 
    \Clock_Count_reg[10]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\Clock_Count_reg_reg_n_0_[2] ),
        .I2(\Clock_Count_reg_reg_n_0_[1] ),
        .I3(\Clock_Count_reg_reg_n_0_[0] ),
        .I4(\Clock_Count_reg[10]_i_3_n_0 ),
        .I5(\Clock_Count_reg[10]_i_4_n_0 ),
        .O(\Clock_Count_reg[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0022E2E20000E2C0)) 
    \Clock_Count_reg[10]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(Rx_DV_reg_i_2_n_0),
        .I3(\Clock_Count_reg[10]_i_5_n_0 ),
        .I4(\Clock_Count_reg[10]_i_6_n_0 ),
        .I5(Rx_Data_reg),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \Clock_Count_reg[10]_i_3 
       (.I0(\Clock_Count_reg_reg_n_0_[4] ),
        .I1(\Clock_Count_reg_reg_n_0_[5] ),
        .I2(\Clock_Count_reg_reg_n_0_[8] ),
        .I3(\Clock_Count_reg_reg_n_0_[6] ),
        .I4(\Clock_Count_reg_reg_n_0_[7] ),
        .O(\Clock_Count_reg[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \Clock_Count_reg[10]_i_4 
       (.I0(\Clock_Count_reg_reg_n_0_[9] ),
        .I1(\Clock_Count_reg_reg_n_0_[10] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(Rx_Data_reg),
        .I4(\state_reg_n_0_[1] ),
        .I5(\Clock_Count_reg_reg_n_0_[3] ),
        .O(\Clock_Count_reg[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \Clock_Count_reg[10]_i_5 
       (.I0(\Clock_Count_reg_reg_n_0_[6] ),
        .I1(\Clock_Count_reg_reg_n_0_[10] ),
        .I2(\Clock_Count_reg_reg_n_0_[9] ),
        .I3(\Clock_Count_reg[10]_i_7_n_0 ),
        .I4(\Clock_Count_reg[3]_i_2_n_0 ),
        .I5(\Clock_Count_reg_reg_n_0_[3] ),
        .O(\Clock_Count_reg[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5595555555555555)) 
    \Clock_Count_reg[10]_i_6 
       (.I0(\Clock_Count_reg_reg_n_0_[10] ),
        .I1(\Clock_Count_reg_reg_n_0_[9] ),
        .I2(\Clock_Count_reg_reg_n_0_[0] ),
        .I3(Rx_DV_reg_i_3_n_0),
        .I4(\Clock_Count_reg_reg_n_0_[7] ),
        .I5(\Clock_Count_reg_reg_n_0_[8] ),
        .O(\Clock_Count_reg[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \Clock_Count_reg[10]_i_7 
       (.I0(\Clock_Count_reg_reg_n_0_[5] ),
        .I1(\Clock_Count_reg_reg_n_0_[4] ),
        .I2(\Clock_Count_reg_reg_n_0_[8] ),
        .I3(\Clock_Count_reg_reg_n_0_[7] ),
        .O(\Clock_Count_reg[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \Clock_Count_reg[1]_i_1 
       (.I0(\Clock_Count_reg_reg_n_0_[0] ),
        .I1(\Clock_Count_reg_reg_n_0_[1] ),
        .I2(\Clock_Count_reg[9]_i_6_n_0 ),
        .O(\Clock_Count_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2888AAAA)) 
    \Clock_Count_reg[2]_i_1 
       (.I0(\Clock_Count_reg[2]_i_2_n_0 ),
        .I1(\Clock_Count_reg_reg_n_0_[2] ),
        .I2(\Clock_Count_reg_reg_n_0_[0] ),
        .I3(\Clock_Count_reg_reg_n_0_[1] ),
        .I4(\Clock_Count_reg[9]_i_6_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hF300FFFFAAAAAAAA)) 
    \Clock_Count_reg[2]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\Clock_Count_reg_reg_n_0_[0] ),
        .I2(Rx_DV_reg_i_3_n_0),
        .I3(\Rx_Byte_reg[7]_i_4_n_0 ),
        .I4(\Rx_Byte_reg[7]_i_5_n_0 ),
        .I5(\state_reg_n_0_[1] ),
        .O(\Clock_Count_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD80000D8D8D8D8D8)) 
    \Clock_Count_reg[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(Rx_DV_reg_i_2_n_0),
        .I2(\state_reg_n_0_[0] ),
        .I3(\Clock_Count_reg_reg_n_0_[3] ),
        .I4(\Clock_Count_reg[3]_i_2_n_0 ),
        .I5(\Clock_Count_reg[9]_i_6_n_0 ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \Clock_Count_reg[3]_i_2 
       (.I0(\Clock_Count_reg_reg_n_0_[0] ),
        .I1(\Clock_Count_reg_reg_n_0_[1] ),
        .I2(\Clock_Count_reg_reg_n_0_[2] ),
        .O(\Clock_Count_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFFFFFF)) 
    \Clock_Count_reg[4]_i_1 
       (.I0(\Clock_Count_reg_reg_n_0_[3] ),
        .I1(\Clock_Count_reg_reg_n_0_[2] ),
        .I2(\Clock_Count_reg_reg_n_0_[1] ),
        .I3(\Clock_Count_reg_reg_n_0_[0] ),
        .I4(\Clock_Count_reg_reg_n_0_[4] ),
        .I5(\Clock_Count_reg[9]_i_6_n_0 ),
        .O(\Clock_Count_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDFFF7555)) 
    \Clock_Count_reg[5]_i_1 
       (.I0(\Clock_Count_reg[9]_i_6_n_0 ),
        .I1(\Clock_Count_reg[3]_i_2_n_0 ),
        .I2(\Clock_Count_reg_reg_n_0_[3] ),
        .I3(\Clock_Count_reg_reg_n_0_[4] ),
        .I4(\Clock_Count_reg_reg_n_0_[5] ),
        .O(\Clock_Count_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \Clock_Count_reg[6]_i_1 
       (.I0(\Clock_Count_reg_reg_n_0_[6] ),
        .I1(\Clock_Count_reg[3]_i_2_n_0 ),
        .I2(\Clock_Count_reg_reg_n_0_[3] ),
        .I3(\Clock_Count_reg_reg_n_0_[4] ),
        .I4(\Clock_Count_reg_reg_n_0_[5] ),
        .O(\Clock_Count_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000200AAAA02AAAA)) 
    \Clock_Count_reg[7]_i_1 
       (.I0(\Clock_Count_reg[10]_i_1_n_0 ),
        .I1(Rx_Data_reg),
        .I2(\Clock_Count_reg[10]_i_5_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(Rx_DV_reg_i_2_n_0),
        .O(\Clock_Count_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \Clock_Count_reg[7]_i_2 
       (.I0(\Clock_Count_reg[7]_i_3_n_0 ),
        .I1(\Clock_Count_reg_reg_n_0_[7] ),
        .I2(\Clock_Count_reg[9]_i_6_n_0 ),
        .O(\Clock_Count_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \Clock_Count_reg[7]_i_3 
       (.I0(\Clock_Count_reg_reg_n_0_[0] ),
        .I1(\Clock_Count_reg[7]_i_4_n_0 ),
        .I2(\Clock_Count_reg_reg_n_0_[6] ),
        .I3(\Clock_Count_reg_reg_n_0_[5] ),
        .I4(\Clock_Count_reg_reg_n_0_[2] ),
        .I5(\Clock_Count_reg_reg_n_0_[1] ),
        .O(\Clock_Count_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Clock_Count_reg[7]_i_4 
       (.I0(\Clock_Count_reg_reg_n_0_[4] ),
        .I1(\Clock_Count_reg_reg_n_0_[3] ),
        .O(\Clock_Count_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20000020AAAAAAAA)) 
    \Clock_Count_reg[8]_i_1 
       (.I0(\Clock_Count_reg[9]_i_2_n_0 ),
        .I1(\Clock_Count_reg[9]_i_3_n_0 ),
        .I2(\Clock_Count_reg[9]_i_4_n_0 ),
        .I3(\Clock_Count_reg[8]_i_2_n_0 ),
        .I4(\Clock_Count_reg_reg_n_0_[8] ),
        .I5(\Clock_Count_reg[9]_i_6_n_0 ),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \Clock_Count_reg[8]_i_2 
       (.I0(\Clock_Count_reg_reg_n_0_[7] ),
        .I1(Rx_DV_reg_i_3_n_0),
        .I2(\Clock_Count_reg_reg_n_0_[0] ),
        .O(\Clock_Count_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h20000020AAAAAAAA)) 
    \Clock_Count_reg[9]_i_1 
       (.I0(\Clock_Count_reg[9]_i_2_n_0 ),
        .I1(\Clock_Count_reg[9]_i_3_n_0 ),
        .I2(\Clock_Count_reg[9]_i_4_n_0 ),
        .I3(\Clock_Count_reg[9]_i_5_n_0 ),
        .I4(\Clock_Count_reg_reg_n_0_[9] ),
        .I5(\Clock_Count_reg[9]_i_6_n_0 ),
        .O(p_1_in[9]));
  LUT2 #(
    .INIT(4'hE)) 
    \Clock_Count_reg[9]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\Clock_Count_reg[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A8A8A800A800A8)) 
    \Clock_Count_reg[9]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\Clock_Count_reg_reg_n_0_[9] ),
        .I2(\Clock_Count_reg_reg_n_0_[10] ),
        .I3(\Rx_Byte_reg[7]_i_4_n_0 ),
        .I4(Rx_DV_reg_i_3_n_0),
        .I5(\Clock_Count_reg_reg_n_0_[0] ),
        .O(\Clock_Count_reg[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \Clock_Count_reg[9]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\Clock_Count_reg[9]_i_7_n_0 ),
        .I2(\Clock_Count_reg[10]_i_7_n_0 ),
        .I3(\Clock_Count_reg_reg_n_0_[9] ),
        .I4(\Clock_Count_reg_reg_n_0_[10] ),
        .I5(\Clock_Count_reg_reg_n_0_[6] ),
        .O(\Clock_Count_reg[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \Clock_Count_reg[9]_i_5 
       (.I0(\Clock_Count_reg_reg_n_0_[0] ),
        .I1(Rx_DV_reg_i_3_n_0),
        .I2(\Clock_Count_reg_reg_n_0_[7] ),
        .I3(\Clock_Count_reg_reg_n_0_[8] ),
        .O(\Clock_Count_reg[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \Clock_Count_reg[9]_i_6 
       (.I0(\Clock_Count_reg[9]_i_7_n_0 ),
        .I1(\Clock_Count_reg[10]_i_7_n_0 ),
        .I2(\Rx_Byte_reg[7]_i_5_n_0 ),
        .I3(\Clock_Count_reg_reg_n_0_[6] ),
        .I4(Rx_Data_reg),
        .I5(\state_reg_n_0_[1] ),
        .O(\Clock_Count_reg[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \Clock_Count_reg[9]_i_7 
       (.I0(\Clock_Count_reg_reg_n_0_[3] ),
        .I1(\Clock_Count_reg_reg_n_0_[2] ),
        .I2(\Clock_Count_reg_reg_n_0_[1] ),
        .I3(\Clock_Count_reg_reg_n_0_[0] ),
        .O(\Clock_Count_reg[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[0] 
       (.C(in_Clock),
        .CE(\Clock_Count_reg[10]_i_1_n_0 ),
        .D(\Clock_Count_reg[0]_i_1_n_0 ),
        .Q(\Clock_Count_reg_reg_n_0_[0] ),
        .R(\Clock_Count_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[10] 
       (.C(in_Clock),
        .CE(\Clock_Count_reg[10]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\Clock_Count_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[1] 
       (.C(in_Clock),
        .CE(\Clock_Count_reg[10]_i_1_n_0 ),
        .D(\Clock_Count_reg[1]_i_1_n_0 ),
        .Q(\Clock_Count_reg_reg_n_0_[1] ),
        .R(\Clock_Count_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[2] 
       (.C(in_Clock),
        .CE(\Clock_Count_reg[10]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\Clock_Count_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[3] 
       (.C(in_Clock),
        .CE(\Clock_Count_reg[10]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\Clock_Count_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[4] 
       (.C(in_Clock),
        .CE(\Clock_Count_reg[10]_i_1_n_0 ),
        .D(\Clock_Count_reg[4]_i_1_n_0 ),
        .Q(\Clock_Count_reg_reg_n_0_[4] ),
        .R(\Clock_Count_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[5] 
       (.C(in_Clock),
        .CE(\Clock_Count_reg[10]_i_1_n_0 ),
        .D(\Clock_Count_reg[5]_i_1_n_0 ),
        .Q(\Clock_Count_reg_reg_n_0_[5] ),
        .R(\Clock_Count_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[6] 
       (.C(in_Clock),
        .CE(\Clock_Count_reg[10]_i_1_n_0 ),
        .D(\Clock_Count_reg[6]_i_1_n_0 ),
        .Q(\Clock_Count_reg_reg_n_0_[6] ),
        .R(\Clock_Count_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[7] 
       (.C(in_Clock),
        .CE(\Clock_Count_reg[10]_i_1_n_0 ),
        .D(\Clock_Count_reg[7]_i_2_n_0 ),
        .Q(\Clock_Count_reg_reg_n_0_[7] ),
        .R(\Clock_Count_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[8] 
       (.C(in_Clock),
        .CE(\Clock_Count_reg[10]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\Clock_Count_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Clock_Count_reg_reg[9] 
       (.C(in_Clock),
        .CE(\Clock_Count_reg[10]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\Clock_Count_reg_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \Rx_Byte_reg[0]_i_1 
       (.I0(Rx_Data_reg),
        .I1(\Bit_Index_reg_reg_n_0_[1] ),
        .I2(\Bit_Index_reg_reg_n_0_[0] ),
        .I3(\Rx_Byte_reg[7]_i_2_n_0 ),
        .I4(\Bit_Index_reg_reg_n_0_[2] ),
        .I5(out_Rx_Byte[0]),
        .O(\Rx_Byte_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \Rx_Byte_reg[1]_i_1 
       (.I0(Rx_Data_reg),
        .I1(\Bit_Index_reg_reg_n_0_[1] ),
        .I2(\Bit_Index_reg_reg_n_0_[0] ),
        .I3(\Rx_Byte_reg[7]_i_2_n_0 ),
        .I4(\Bit_Index_reg_reg_n_0_[2] ),
        .I5(out_Rx_Byte[1]),
        .O(\Rx_Byte_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \Rx_Byte_reg[2]_i_1 
       (.I0(Rx_Data_reg),
        .I1(\Bit_Index_reg_reg_n_0_[0] ),
        .I2(\Bit_Index_reg_reg_n_0_[1] ),
        .I3(\Rx_Byte_reg[7]_i_2_n_0 ),
        .I4(\Bit_Index_reg_reg_n_0_[2] ),
        .I5(out_Rx_Byte[2]),
        .O(\Rx_Byte_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Rx_Byte_reg[3]_i_1 
       (.I0(Rx_Data_reg),
        .I1(\Bit_Index_reg_reg_n_0_[1] ),
        .I2(\Bit_Index_reg_reg_n_0_[0] ),
        .I3(\Rx_Byte_reg[7]_i_2_n_0 ),
        .I4(\Bit_Index_reg_reg_n_0_[2] ),
        .I5(out_Rx_Byte[3]),
        .O(\Rx_Byte_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \Rx_Byte_reg[4]_i_1 
       (.I0(Rx_Data_reg),
        .I1(\Bit_Index_reg_reg_n_0_[1] ),
        .I2(\Bit_Index_reg_reg_n_0_[0] ),
        .I3(\Bit_Index_reg_reg_n_0_[2] ),
        .I4(\Rx_Byte_reg[7]_i_2_n_0 ),
        .I5(out_Rx_Byte[4]),
        .O(\Rx_Byte_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \Rx_Byte_reg[5]_i_1 
       (.I0(Rx_Data_reg),
        .I1(\Bit_Index_reg_reg_n_0_[1] ),
        .I2(\Bit_Index_reg_reg_n_0_[0] ),
        .I3(\Bit_Index_reg_reg_n_0_[2] ),
        .I4(\Rx_Byte_reg[7]_i_2_n_0 ),
        .I5(out_Rx_Byte[5]),
        .O(\Rx_Byte_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \Rx_Byte_reg[6]_i_1 
       (.I0(Rx_Data_reg),
        .I1(\Bit_Index_reg_reg_n_0_[0] ),
        .I2(\Bit_Index_reg_reg_n_0_[1] ),
        .I3(\Bit_Index_reg_reg_n_0_[2] ),
        .I4(\Rx_Byte_reg[7]_i_2_n_0 ),
        .I5(out_Rx_Byte[6]),
        .O(\Rx_Byte_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \Rx_Byte_reg[7]_i_1 
       (.I0(Rx_Data_reg),
        .I1(\Bit_Index_reg_reg_n_0_[1] ),
        .I2(\Bit_Index_reg_reg_n_0_[0] ),
        .I3(\Bit_Index_reg_reg_n_0_[2] ),
        .I4(\Rx_Byte_reg[7]_i_2_n_0 ),
        .I5(out_Rx_Byte[7]),
        .O(\Rx_Byte_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF755FFFFFFFFFFFF)) 
    \Rx_Byte_reg[7]_i_2 
       (.I0(\Rx_Byte_reg[7]_i_3_n_0 ),
        .I1(\Clock_Count_reg_reg_n_0_[0] ),
        .I2(Rx_DV_reg_i_3_n_0),
        .I3(\Rx_Byte_reg[7]_i_4_n_0 ),
        .I4(\Rx_Byte_reg[7]_i_5_n_0 ),
        .I5(\state_reg_n_0_[1] ),
        .O(\Rx_Byte_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Rx_Byte_reg[7]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\Rx_Byte_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \Rx_Byte_reg[7]_i_4 
       (.I0(\Clock_Count_reg_reg_n_0_[10] ),
        .I1(\Clock_Count_reg_reg_n_0_[8] ),
        .I2(\Clock_Count_reg_reg_n_0_[7] ),
        .O(\Rx_Byte_reg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Rx_Byte_reg[7]_i_5 
       (.I0(\Clock_Count_reg_reg_n_0_[9] ),
        .I1(\Clock_Count_reg_reg_n_0_[10] ),
        .O(\Rx_Byte_reg[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_Byte_reg_reg[0] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\Rx_Byte_reg[0]_i_1_n_0 ),
        .Q(out_Rx_Byte[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_Byte_reg_reg[1] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\Rx_Byte_reg[1]_i_1_n_0 ),
        .Q(out_Rx_Byte[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_Byte_reg_reg[2] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\Rx_Byte_reg[2]_i_1_n_0 ),
        .Q(out_Rx_Byte[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_Byte_reg_reg[3] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\Rx_Byte_reg[3]_i_1_n_0 ),
        .Q(out_Rx_Byte[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_Byte_reg_reg[4] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\Rx_Byte_reg[4]_i_1_n_0 ),
        .Q(out_Rx_Byte[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_Byte_reg_reg[5] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\Rx_Byte_reg[5]_i_1_n_0 ),
        .Q(out_Rx_Byte[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_Byte_reg_reg[6] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\Rx_Byte_reg[6]_i_1_n_0 ),
        .Q(out_Rx_Byte[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_Byte_reg_reg[7] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\Rx_Byte_reg[7]_i_1_n_0 ),
        .Q(out_Rx_Byte[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFF01000)) 
    Rx_DV_reg_i_1
       (.I0(Rx_DV_reg_i_2_n_0),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(out_Rx_DV),
        .O(Rx_DV_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000D0000FFFF)) 
    Rx_DV_reg_i_2
       (.I0(\Clock_Count_reg_reg_n_0_[0] ),
        .I1(Rx_DV_reg_i_3_n_0),
        .I2(\Clock_Count_reg_reg_n_0_[8] ),
        .I3(\Clock_Count_reg_reg_n_0_[7] ),
        .I4(\Clock_Count_reg_reg_n_0_[10] ),
        .I5(\Clock_Count_reg_reg_n_0_[9] ),
        .O(Rx_DV_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    Rx_DV_reg_i_3
       (.I0(\Clock_Count_reg_reg_n_0_[1] ),
        .I1(\Clock_Count_reg_reg_n_0_[2] ),
        .I2(\Clock_Count_reg_reg_n_0_[5] ),
        .I3(\Clock_Count_reg_reg_n_0_[6] ),
        .I4(\Clock_Count_reg_reg_n_0_[4] ),
        .I5(\Clock_Count_reg_reg_n_0_[3] ),
        .O(Rx_DV_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Rx_DV_reg_reg
       (.C(in_Clock),
        .CE(1'b1),
        .D(Rx_DV_reg_i_1_n_0),
        .Q(out_Rx_DV),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    Rx_Data_R_reg_reg
       (.C(in_Clock),
        .CE(1'b1),
        .D(in_Rx_Serial),
        .Q(Rx_Data_R_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    Rx_Data_reg_reg
       (.C(in_Clock),
        .CE(1'b1),
        .D(Rx_Data_R_reg),
        .Q(Rx_Data_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5444444454444454)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(Rx_DV_reg_i_2_n_0),
        .I5(\state[0]_i_3_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FBFB00FB)) 
    \state[0]_i_2 
       (.I0(\Clock_Count_reg_reg_n_0_[6] ),
        .I1(\state[1]_i_3_n_0 ),
        .I2(\state[0]_i_4_n_0 ),
        .I3(Rx_Data_reg),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \state[0]_i_3 
       (.I0(\Bit_Index_reg_reg_n_0_[1] ),
        .I1(\Bit_Index_reg_reg_n_0_[0] ),
        .I2(\Bit_Index_reg_reg_n_0_[2] ),
        .O(\state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \state[0]_i_4 
       (.I0(\Clock_Count_reg_reg_n_0_[8] ),
        .I1(\Clock_Count_reg_reg_n_0_[7] ),
        .I2(\Clock_Count_reg_reg_n_0_[9] ),
        .I3(\Clock_Count_reg_reg_n_0_[10] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D0DFD0D0)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(Rx_DV_reg_i_2_n_0),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state[1]_i_2_n_0 ),
        .I4(\state[1]_i_3_n_0 ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\Rx_Byte_reg[7]_i_5_n_0 ),
        .I2(\Clock_Count_reg_reg_n_0_[7] ),
        .I3(\Clock_Count_reg_reg_n_0_[6] ),
        .I4(\Clock_Count_reg_reg_n_0_[8] ),
        .I5(Rx_Data_reg),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[1]_i_3 
       (.I0(\Clock_Count_reg_reg_n_0_[5] ),
        .I1(\Clock_Count_reg_reg_n_0_[4] ),
        .I2(\Clock_Count_reg_reg_n_0_[3] ),
        .I3(\Clock_Count_reg_reg_n_0_[0] ),
        .I4(\Clock_Count_reg_reg_n_0_[1] ),
        .I5(\Clock_Count_reg_reg_n_0_[2] ),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(Rx_DV_reg_i_2_n_0),
        .I3(\state_reg_n_0_[1] ),
        .O(\state[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(in_Clock),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
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
