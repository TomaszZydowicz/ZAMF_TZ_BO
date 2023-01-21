// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Jan 21 10:55:14 2023
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_shift_ram_0_0_sim_netlist.v
// Design      : design_1_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_0,c_shift_ram_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_14_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
jKLNR6CFLXNaFIX4EgFderMxPnKvpk4F9e4rB0Z3eM53MFOGJNJgkVTyQHI3/mIWOAReZVwoVOMa
CdAhgWGvBg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S9g8iGOMco4oFYFI4TkAP1q7tC6YdaKcKnkZE7b8B1VOvr1zofUKAItPH7rdgXy1xJT5veYU9CMB
1a6xkY/7hrMk2un8LzBXxNY3CU5Bicpo5xvFJFwxXUw2rsZfzzw96pA+9XCQOKRH4TLd3b9RF6St
0jOdYl4JHV8zrfKdmxY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T9dmjYx2RI0RbX6wqo4nWU0ad1An+UnLDs5SJii98PTuke7wRIDUcgwzVXGZhnqgRDMGrxGdV3bv
2TG3EcxZKQwTVnAC6QQoZX/EtMHghnA62m/5NpXmoLwh5qm/MLJ1GcevcOyCUPonSVz0GOgxnvwj
ooQgeh9D1jd4jba778m7tqjzyqrMu2wlx/9bVUabKnRucVtEhLrCSutcfwtKRjcjEslE32+ANJJO
LU1E9xHWQKY0Ykt2thHoAW/gEGE3TgPPSeS1uMgC9gpn3KeR1GWNFmz/5i6v7Pure2Hjx7n/xHnI
reb33XFnLAOOS5csVRvU6rhvZeRoqLN9Ju5zBw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z4MAcGwOirs8ueHe0/LAJt93fwBMCERy9UlyN0pxTk9Tu06Hakd4P9cZvnfzA7zREYXMIBu2NDPA
+322PzRY4McOROTi9fUMbDa3sq4QlE99HePrmhLC9MCN16iXhbU+HBEFNxdCuVK/qDkcEHSOzIkz
ISv7GfjVXM9ytGOZjadyXWLpl+dtetGHtMec8w91cjipLXbo2ywr8DccFy2Q+uIfn9whyWTv3WTK
w8NeftqkhVPZqMJIv942kdyaigmw+FAOB+eg4fWaELYnDgvofFaanVzUBmReOY7/b3LQoUhotNip
TF4puoXTeoGR0ir2Fw1i4DrX8pQhZYrHf0g2Fw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RhMVl/dQLgd6Em3cvXWswCuyQybcYHVY6fBYkTB+0qwPgxUd1H6xUy5MSLur1rc0+xMO7DV0gkc9
m7J2qnyE4PeY648BXoQQvdkIDs3cDfJUIMzBSJRhAzANt/GvnCfPAPUqQ+RK/y3xKJwLsMukWXHR
t1HX/5OpB6TQZHZYE4vz2lTGPGbVIW3QDoyrjz61tA/jsHUVGJvZ47VdBmfldxPqiY+Vh9e3dl75
JmttiC9La0yOzL+SocwWzDn/QZbcRHMsTtLWlhxlY2wXUCss3GHmb0o9kugY6zDzV+5nG9yCW628
du+GA9eci/G4jwl4JXZ6p/WPZm5Kh58Sk5SgqQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z6wIEFjRiUpcYIEu93tUzSRYb0cut/OLoYvuGPmJyBKSi2zPwapeByA928Z27t6xeV5W3znd08OP
jgjBqsSWHmyKGPK5eXde25Rc7IZneNvK+sw4HV/jPYtO1qybQvKRnWu8hrBhMhyAA1aL1U4QhZ0j
OVNZp1DTIxg4hiigHOc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M6YZEFH9Zpi1+cHBSrOstRid3w06pA53vGHrYgHzFGeKeyyHqjgt7TSqiheP5aW8KTNRQvg6odJR
cQXh8v30NMYu/jZmXni3nFsFUTUEXNB/ePMil1PPUrf9TNxaYXBqeX3zB6GdK72zXdmYAQQJsXm3
TD92LB1fEOaj3R0/tHYpufRdGd9ixd+Chdi8l5QOJjm+yeF3y5TfCTs0lUF+EsV39HM15hn/yqbA
gT+ibQT1xr8NpGHcWrdEkzmjH4Sn+dW0cT9kU4XilATPF50SYk2ecvCzISKLFkmNR9pfut/nGA+t
DPxZ51VLTruJmPjK9LFCbh2X38O5lo+z5+P8tA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KfvJFdvhmWTKbQ5Jxri/BeSIQO81bjo+x9EfkeRcMGW0X6ByjZDkAzxfNMlSiensyevMJMtYPImZ
QLedqWGrPYexifiq6cCXFqk8Ltq9l5wruSZyV43D0ysRcxj4KEmXC/8PpzjDp5HlvFJFOJ+D3g6t
NM7RYRIRIXaF8CskZw0jsmkaV1T83Anz/mZ/uZ2VBOchUsPeuvhUsVWM+cLnpjlbkKWXTtBltE9K
o4i/EdrpFyh9UMZS+xmXkJ+At1Ky5wvIPoNFGMpkkGQACazCdVYLc9yp6bpOYlB/gizgo2+PRrAM
svam1uLoF4FsN5wTcCULaxZrksdIcF+IAZUtMA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WJLXQwZD3NSip4q+uXXBHLYNGvaesTxhFT2/qAN1h0A5bnbGQMZC3O9r54q0lQVgkTb8pOujyRVE
VS0zioD6PAacuWqhU/g/vB2k3YrQT+3LQfKUvoF40Qh6nMid+EOqviwE6eZS7SyB1UngG5SP0+B3
dNp+K2jSGH0mBqNCuy3iOv+bObQ1ccCDxHHwJApUF8YnJ26R22B7XXJrN9bxrOwZH0UWVnBAXZMx
5xNs1/C7JZjn6fwcXRRZ8ldqi1GH6/S1r8dokrEKZMuk9HOfbrazTYSZmamzciGMyF6kM6nVT852
irAd6EXiZcXq9yvV9F2BnjPiLytfVzctvpsuxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DIfnyS7Q6bugSksFds08W2+uQaVoAucGvUWmUQyceJiykiwHMz7vaSC84PHgO2b6Zr0zohytigpR
PBhuTXfbRAnKEKp7gzCmlMOR3axjMuA/C9Qms+xpslLeNPSlCNIOIulhtSWTCmpzKK4hNIa6duAE
z7j41/aRghMNJ9JDw+MZQhnM1eXQBQfZ572SVhYC0rf/hw7ZisvHQheOICHb3QX5NY9fB8tOhzhl
Ubw1hbj1XIva5/UXzjYLcx/Ii2whcIDQE1DpYdozCJ9ZdyRwVnr2OoUBbX/aVtF+WwLemrqKZ4LF
KqH8/HFzq7HPGYhE+KgAC/PxTt9e4OJMYXYFQA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4144)
`pragma protect data_block
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
`pragma protect end_protected
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
