// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Jan 20 18:13:16 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart2sample_0_0_sim_netlist.v
// Design      : design_1_uart2sample_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart2sample_0_0,uart2sample,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uart2sample,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (in_clk,
    in_uart_ready,
    in_uart_frame,
    out_frame,
    out_ready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_clk, FREQ_HZ 73727015, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input in_clk;
  input in_uart_ready;
  input [7:0]in_uart_frame;
  output [15:0]out_frame;
  output out_ready;

  wire in_clk;
  wire [7:0]in_uart_frame;
  wire in_uart_ready;
  wire [15:0]out_frame;
  wire out_ready;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart2sample inst
       (.in_clk(in_clk),
        .in_uart_frame(in_uart_frame),
        .in_uart_ready(in_uart_ready),
        .out_frame(out_frame),
        .out_ready(out_ready));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart2sample
   (out_frame,
    out_ready,
    in_uart_frame,
    in_clk,
    in_uart_ready);
  output [15:0]out_frame;
  output out_ready;
  input [7:0]in_uart_frame;
  input in_clk;
  input in_uart_ready;

  wire FSM_sequential_uart_frame_counter_i_1_n_0;
  wire in_clk;
  wire [7:0]in_uart_frame;
  wire in_uart_ready;
  wire [15:0]out_frame;
  wire out_ready;
  wire [15:7]p_0_out;
  wire reg_out_ready_i_1_n_0;
  wire uart_frame_counter;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    FSM_sequential_uart_frame_counter_i_1
       (.I0(in_uart_ready),
        .I1(uart_frame_counter),
        .O(FSM_sequential_uart_frame_counter_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:1,iSTATE0:0" *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_uart_frame_counter_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(FSM_sequential_uart_frame_counter_i_1_n_0),
        .Q(uart_frame_counter),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_frame[15]_i_1 
       (.I0(uart_frame_counter),
        .I1(in_uart_ready),
        .O(p_0_out[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \reg_frame[7]_i_1 
       (.I0(in_uart_ready),
        .I1(uart_frame_counter),
        .O(p_0_out[7]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[0] 
       (.C(in_clk),
        .CE(p_0_out[7]),
        .D(in_uart_frame[0]),
        .Q(out_frame[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[10] 
       (.C(in_clk),
        .CE(p_0_out[15]),
        .D(in_uart_frame[2]),
        .Q(out_frame[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[11] 
       (.C(in_clk),
        .CE(p_0_out[15]),
        .D(in_uart_frame[3]),
        .Q(out_frame[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[12] 
       (.C(in_clk),
        .CE(p_0_out[15]),
        .D(in_uart_frame[4]),
        .Q(out_frame[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[13] 
       (.C(in_clk),
        .CE(p_0_out[15]),
        .D(in_uart_frame[5]),
        .Q(out_frame[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[14] 
       (.C(in_clk),
        .CE(p_0_out[15]),
        .D(in_uart_frame[6]),
        .Q(out_frame[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[15] 
       (.C(in_clk),
        .CE(p_0_out[15]),
        .D(in_uart_frame[7]),
        .Q(out_frame[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[1] 
       (.C(in_clk),
        .CE(p_0_out[7]),
        .D(in_uart_frame[1]),
        .Q(out_frame[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[2] 
       (.C(in_clk),
        .CE(p_0_out[7]),
        .D(in_uart_frame[2]),
        .Q(out_frame[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[3] 
       (.C(in_clk),
        .CE(p_0_out[7]),
        .D(in_uart_frame[3]),
        .Q(out_frame[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[4] 
       (.C(in_clk),
        .CE(p_0_out[7]),
        .D(in_uart_frame[4]),
        .Q(out_frame[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[5] 
       (.C(in_clk),
        .CE(p_0_out[7]),
        .D(in_uart_frame[5]),
        .Q(out_frame[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[6] 
       (.C(in_clk),
        .CE(p_0_out[7]),
        .D(in_uart_frame[6]),
        .Q(out_frame[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[7] 
       (.C(in_clk),
        .CE(p_0_out[7]),
        .D(in_uart_frame[7]),
        .Q(out_frame[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[8] 
       (.C(in_clk),
        .CE(p_0_out[15]),
        .D(in_uart_frame[0]),
        .Q(out_frame[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_frame_reg[9] 
       (.C(in_clk),
        .CE(p_0_out[15]),
        .D(in_uart_frame[1]),
        .Q(out_frame[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    reg_out_ready_i_1
       (.I0(out_ready),
        .I1(in_uart_ready),
        .I2(uart_frame_counter),
        .O(reg_out_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reg_out_ready_reg
       (.C(in_clk),
        .CE(1'b1),
        .D(reg_out_ready_i_1_n_0),
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
