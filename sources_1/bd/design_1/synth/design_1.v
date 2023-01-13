//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Jan 12 23:53:08 2023
//Host        : Dell running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    ac_bclk,
    ac_mclk,
    ac_muten,
    ac_pbdat,
    ac_pblrc,
    eth_rst_b,
    rx_pmode,
    sysclk,
    tx_pmode);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  output ac_bclk;
  output ac_mclk;
  output ac_muten;
  output ac_pbdat;
  output ac_pblrc;
  output [0:0]eth_rst_b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RX_PMODE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RX_PMODE, LAYERED_METADATA undef" *) input rx_pmode;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, CLK_DOMAIN design_1_sysclk, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input sysclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TX_PMODE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TX_PMODE, LAYERED_METADATA undef" *) output tx_pmode;

  wire [23:0]bit_changer_seq_0_out_frame;
  wire bit_changer_seq_0_out_ready;
  wire clk_wiz_0_clk_out1;
  wire [23:0]fifo_generator_0_dout;
  wire fifo_generator_0_empty;
  wire fifo_generator_0_prog_empty;
  wire i2s_0_out_BLCK;
  wire i2s_0_out_MCLK;
  wire i2s_0_out_MUTE;
  wire i2s_0_out_PBDAT;
  wire i2s_0_out_PBLRC;
  wire i2s_0_out_ready;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire rx_pmode_1;
  wire sample2uart_0_out_ready_sample_switch;
  wire sample2uart_0_out_ready_uart;
  wire [7:0]sample2uart_0_out_uart_frame;
  wire sample_switch_0_fifo_en;
  wire sample_switch_0_i2s441kH_en;
  wire [23:0]sample_switch_0_out_i2s441kH_sample;
  wire [23:0]sample_switch_0_out_uart_sample;
  wire sample_switch_0_sample2uart_en;
  wire sysclk_1;
  wire [23:0]uart2sample_0_out_frame;
  wire uart2sample_0_out_ready;
  wire [7:0]uart_rx_0_out_Rx_Byte;
  wire uart_rx_0_out_Rx_DV;
  wire uart_tx_0_out_Tx_Active;
  wire uart_tx_0_out_Tx_Serial;
  wire [87:0]xlconstant_0_dout;
  wire [1:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;

  assign ac_bclk = i2s_0_out_BLCK;
  assign ac_mclk = i2s_0_out_MCLK;
  assign ac_muten = i2s_0_out_MUTE;
  assign ac_pbdat = i2s_0_out_PBDAT;
  assign ac_pblrc = i2s_0_out_PBLRC;
  assign eth_rst_b[0] = xlconstant_2_dout;
  assign rx_pmode_1 = rx_pmode;
  assign sysclk_1 = sysclk;
  assign tx_pmode = uart_tx_0_out_Tx_Serial;
  design_1_bit_changer_seq_0_0 bit_changer_seq_0
       (.in_clk(clk_wiz_0_clk_out1),
        .in_enable(uart2sample_0_out_ready),
        .in_frame(uart2sample_0_out_frame),
        .in_message(xlconstant_0_dout),
        .out_frame(bit_changer_seq_0_out_frame),
        .out_ready(bit_changer_seq_0_out_ready));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sysclk_1),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_fifo_generator_0_0 fifo_generator_0
       (.clk(clk_wiz_0_clk_out1),
        .din(bit_changer_seq_0_out_frame),
        .dout(fifo_generator_0_dout),
        .empty(fifo_generator_0_empty),
        .prog_empty(fifo_generator_0_prog_empty),
        .rd_en(sample_switch_0_fifo_en),
        .wr_en(bit_changer_seq_0_out_ready));
  design_1_i2s_0_0 i2s_0
       (.in_clk(clk_wiz_0_clk_out1),
        .in_en(sample_switch_0_i2s441kH_en),
        .out_BLCK(i2s_0_out_BLCK),
        .out_MCLK(i2s_0_out_MCLK),
        .out_MUTE(i2s_0_out_MUTE),
        .out_PBDAT(i2s_0_out_PBDAT),
        .out_PBLRC(i2s_0_out_PBLRC),
        .out_ready(i2s_0_out_ready),
        .sample(sample_switch_0_out_i2s441kH_sample));
  design_1_processing_system7_0_1 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .I2C1_SCL_I(1'b0),
        .I2C1_SDA_I(1'b0),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARREADY(1'b0),
        .M_AXI_GP0_AWREADY(1'b0),
        .M_AXI_GP0_BID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_BRESP({1'b0,1'b0}),
        .M_AXI_GP0_BVALID(1'b0),
        .M_AXI_GP0_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RLAST(1'b0),
        .M_AXI_GP0_RRESP({1'b0,1'b0}),
        .M_AXI_GP0_RVALID(1'b0),
        .M_AXI_GP0_WREADY(1'b0),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  design_1_sample2uart_0_0 sample2uart_0
       (.in_clk(clk_wiz_0_clk_out1),
        .in_en(sample_switch_0_sample2uart_en),
        .in_sample(sample_switch_0_out_uart_sample),
        .out_ready_sample_switch(sample2uart_0_out_ready_sample_switch),
        .out_ready_uart(sample2uart_0_out_ready_uart),
        .out_uart_frame(sample2uart_0_out_uart_frame),
        .tx_busy(uart_tx_0_out_Tx_Active));
  design_1_sample_switch_0_0 sample_switch_0
       (.fifo_en(sample_switch_0_fifo_en),
        .i2s441kH_en(sample_switch_0_i2s441kH_en),
        .in_clk(clk_wiz_0_clk_out1),
        .in_fifo_empty(fifo_generator_0_empty),
        .in_fifo_prog_empty(fifo_generator_0_prog_empty),
        .in_i2s_ready(i2s_0_out_ready),
        .in_mode(xlconstant_1_dout),
        .in_sample(fifo_generator_0_dout),
        .in_sample2uart_ready(sample2uart_0_out_ready_sample_switch),
        .out_i2s441kH_sample(sample_switch_0_out_i2s441kH_sample),
        .out_uart_sample(sample_switch_0_out_uart_sample),
        .sample2uart_en(sample_switch_0_sample2uart_en));
  design_1_uart2sample_0_0 uart2sample_0
       (.in_clk(clk_wiz_0_clk_out1),
        .in_uart_frame(uart_rx_0_out_Rx_Byte),
        .in_uart_ready(uart_rx_0_out_Rx_DV),
        .out_frame(uart2sample_0_out_frame),
        .out_ready(uart2sample_0_out_ready));
  design_1_uart_rx_0_0 uart_rx_0
       (.in_Clock(clk_wiz_0_clk_out1),
        .in_Rx_Serial(rx_pmode_1),
        .out_Rx_Byte(uart_rx_0_out_Rx_Byte),
        .out_Rx_DV(uart_rx_0_out_Rx_DV));
  design_1_uart_tx_0_0 uart_tx_0
       (.in_Clock(clk_wiz_0_clk_out1),
        .in_Tx_Byte(sample2uart_0_out_uart_frame),
        .in_Tx_DV(sample2uart_0_out_ready_uart),
        .out_Tx_Active(uart_tx_0_out_Tx_Active),
        .out_Tx_Serial(uart_tx_0_out_Tx_Serial));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
