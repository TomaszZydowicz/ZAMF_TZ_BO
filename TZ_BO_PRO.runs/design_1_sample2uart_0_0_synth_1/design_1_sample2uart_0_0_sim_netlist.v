// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Jan 20 18:13:16 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sample2uart_0_0_sim_netlist.v
// Design      : design_1_sample2uart_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sample2uart_0_0,sample2uart,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "sample2uart,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (in_clk,
    tx_busy,
    in_en,
    in_sample,
    out_uart_frame,
    out_ready_uart,
    out_ready_sample_switch);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_clk, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input in_clk;
  input tx_busy;
  input in_en;
  input [15:0]in_sample;
  output [7:0]out_uart_frame;
  output out_ready_uart;
  output out_ready_sample_switch;

  wire in_clk;
  wire in_en;
  wire [15:0]in_sample;
  wire out_ready_sample_switch;
  wire out_ready_uart;
  wire [7:0]out_uart_frame;
  wire tx_busy;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample2uart inst
       (.in_clk(in_clk),
        .in_en(in_en),
        .in_sample(in_sample),
        .out_ready_sample_switch_reg_reg_0(out_ready_sample_switch),
        .out_ready_uart(out_ready_uart),
        .out_uart_frame(out_uart_frame),
        .tx_busy(tx_busy));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sample2uart
   (out_ready_sample_switch_reg_reg_0,
    out_uart_frame,
    out_ready_uart,
    in_en,
    tx_busy,
    in_clk,
    in_sample);
  output out_ready_sample_switch_reg_reg_0;
  output [7:0]out_uart_frame;
  output out_ready_uart;
  input in_en;
  input tx_busy;
  input in_clk;
  input [15:0]in_sample;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire in_clk;
  wire in_en;
  wire [15:0]in_sample;
  wire [15:0]in_sample_reg;
  wire \in_sample_reg[15]_i_1_n_0 ;
  wire one_cykle_delay_couner_i_1_n_0;
  wire one_cykle_delay_couner_reg_n_0;
  wire out_ready__uart_reg_i_1_n_0;
  wire out_ready_sample_switch_reg1__1;
  wire out_ready_sample_switch_reg_i_1_n_0;
  wire out_ready_sample_switch_reg_i_2_n_0;
  wire out_ready_sample_switch_reg_reg_0;
  wire out_ready_uart;
  wire [7:0]out_uart_frame;
  wire \out_uart_frame_reg[0]_i_1_n_0 ;
  wire \out_uart_frame_reg[1]_i_1_n_0 ;
  wire \out_uart_frame_reg[2]_i_1_n_0 ;
  wire \out_uart_frame_reg[3]_i_1_n_0 ;
  wire \out_uart_frame_reg[4]_i_1_n_0 ;
  wire \out_uart_frame_reg[5]_i_1_n_0 ;
  wire \out_uart_frame_reg[6]_i_1_n_0 ;
  wire \out_uart_frame_reg[7]_i_1_n_0 ;
  wire \out_uart_frame_reg[7]_i_2_n_0 ;
  wire [2:0]state;
  wire tx_busy;

  LUT6 #(
    .INIT(64'hFF00FF00003000AA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(out_ready_sample_switch_reg1__1),
        .I1(tx_busy),
        .I2(one_cykle_delay_couner_reg_n_0),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(in_en),
        .I1(tx_busy),
        .I2(out_ready_sample_switch_reg_reg_0),
        .O(out_ready_sample_switch_reg1__1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hC6)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFDF000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(one_cykle_delay_couner_reg_n_0),
        .I1(tx_busy),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "FIRST_HALF_SAMPLE:001,SECOND_HALF_SAMPLE:011,FIRST_HALF_SAMPLE_WAIT:010,IDLE:000,SECOND_HALF_SAMPLE_WAIT:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "FIRST_HALF_SAMPLE:001,SECOND_HALF_SAMPLE:011,FIRST_HALF_SAMPLE_WAIT:010,IDLE:000,SECOND_HALF_SAMPLE_WAIT:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "FIRST_HALF_SAMPLE:001,SECOND_HALF_SAMPLE:011,FIRST_HALF_SAMPLE_WAIT:010,IDLE:000,SECOND_HALF_SAMPLE_WAIT:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(in_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \in_sample_reg[15]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(in_en),
        .I3(tx_busy),
        .I4(out_ready_sample_switch_reg_reg_0),
        .I5(state[1]),
        .O(\in_sample_reg[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[0] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[0]),
        .Q(in_sample_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[10] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[10]),
        .Q(in_sample_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[11] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[11]),
        .Q(in_sample_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[12] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[12]),
        .Q(in_sample_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[13] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[13]),
        .Q(in_sample_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[14] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[14]),
        .Q(in_sample_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[15] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[15]),
        .Q(in_sample_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[1] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[1]),
        .Q(in_sample_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[2] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[2]),
        .Q(in_sample_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[3] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[3]),
        .Q(in_sample_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[4] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[4]),
        .Q(in_sample_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[5] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[5]),
        .Q(in_sample_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[6] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[6]),
        .Q(in_sample_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[7] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[7]),
        .Q(in_sample_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[8] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[8]),
        .Q(in_sample_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sample_reg_reg[9] 
       (.C(in_clk),
        .CE(\in_sample_reg[15]_i_1_n_0 ),
        .D(in_sample[9]),
        .Q(in_sample_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFEB0014)) 
    one_cykle_delay_couner_i_1
       (.I0(tx_busy),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(one_cykle_delay_couner_reg_n_0),
        .O(one_cykle_delay_couner_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    one_cykle_delay_couner_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(one_cykle_delay_couner_i_1_n_0),
        .Q(one_cykle_delay_couner_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEB0A)) 
    out_ready__uart_reg_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(out_ready_uart),
        .O(out_ready__uart_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_ready__uart_reg_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(out_ready__uart_reg_i_1_n_0),
        .Q(out_ready_uart),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFDDFFFF33F30000)) 
    out_ready_sample_switch_reg_i_1
       (.I0(in_en),
        .I1(state[2]),
        .I2(one_cykle_delay_couner_reg_n_0),
        .I3(tx_busy),
        .I4(out_ready_sample_switch_reg_i_2_n_0),
        .I5(out_ready_sample_switch_reg_reg_0),
        .O(out_ready_sample_switch_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    out_ready_sample_switch_reg_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .O(out_ready_sample_switch_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    out_ready_sample_switch_reg_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(out_ready_sample_switch_reg_i_1_n_0),
        .Q(out_ready_sample_switch_reg_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_uart_frame_reg[0]_i_1 
       (.I0(in_sample_reg[8]),
        .I1(state[1]),
        .I2(in_sample_reg[0]),
        .O(\out_uart_frame_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_uart_frame_reg[1]_i_1 
       (.I0(in_sample_reg[9]),
        .I1(state[1]),
        .I2(in_sample_reg[1]),
        .O(\out_uart_frame_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_uart_frame_reg[2]_i_1 
       (.I0(in_sample_reg[10]),
        .I1(state[1]),
        .I2(in_sample_reg[2]),
        .O(\out_uart_frame_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_uart_frame_reg[3]_i_1 
       (.I0(in_sample_reg[11]),
        .I1(state[1]),
        .I2(in_sample_reg[3]),
        .O(\out_uart_frame_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_uart_frame_reg[4]_i_1 
       (.I0(in_sample_reg[12]),
        .I1(state[1]),
        .I2(in_sample_reg[4]),
        .O(\out_uart_frame_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_uart_frame_reg[5]_i_1 
       (.I0(in_sample_reg[13]),
        .I1(state[1]),
        .I2(in_sample_reg[5]),
        .O(\out_uart_frame_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_uart_frame_reg[6]_i_1 
       (.I0(in_sample_reg[14]),
        .I1(state[1]),
        .I2(in_sample_reg[6]),
        .O(\out_uart_frame_reg[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_uart_frame_reg[7]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .O(\out_uart_frame_reg[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_uart_frame_reg[7]_i_2 
       (.I0(in_sample_reg[15]),
        .I1(state[1]),
        .I2(in_sample_reg[7]),
        .O(\out_uart_frame_reg[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_uart_frame_reg_reg[0] 
       (.C(in_clk),
        .CE(\out_uart_frame_reg[7]_i_1_n_0 ),
        .D(\out_uart_frame_reg[0]_i_1_n_0 ),
        .Q(out_uart_frame[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_uart_frame_reg_reg[1] 
       (.C(in_clk),
        .CE(\out_uart_frame_reg[7]_i_1_n_0 ),
        .D(\out_uart_frame_reg[1]_i_1_n_0 ),
        .Q(out_uart_frame[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_uart_frame_reg_reg[2] 
       (.C(in_clk),
        .CE(\out_uart_frame_reg[7]_i_1_n_0 ),
        .D(\out_uart_frame_reg[2]_i_1_n_0 ),
        .Q(out_uart_frame[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_uart_frame_reg_reg[3] 
       (.C(in_clk),
        .CE(\out_uart_frame_reg[7]_i_1_n_0 ),
        .D(\out_uart_frame_reg[3]_i_1_n_0 ),
        .Q(out_uart_frame[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_uart_frame_reg_reg[4] 
       (.C(in_clk),
        .CE(\out_uart_frame_reg[7]_i_1_n_0 ),
        .D(\out_uart_frame_reg[4]_i_1_n_0 ),
        .Q(out_uart_frame[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_uart_frame_reg_reg[5] 
       (.C(in_clk),
        .CE(\out_uart_frame_reg[7]_i_1_n_0 ),
        .D(\out_uart_frame_reg[5]_i_1_n_0 ),
        .Q(out_uart_frame[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_uart_frame_reg_reg[6] 
       (.C(in_clk),
        .CE(\out_uart_frame_reg[7]_i_1_n_0 ),
        .D(\out_uart_frame_reg[6]_i_1_n_0 ),
        .Q(out_uart_frame[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_uart_frame_reg_reg[7] 
       (.C(in_clk),
        .CE(\out_uart_frame_reg[7]_i_1_n_0 ),
        .D(\out_uart_frame_reg[7]_i_2_n_0 ),
        .Q(out_uart_frame[7]),
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
