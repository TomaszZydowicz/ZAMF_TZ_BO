`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2022 12:31:18
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// Set Parameter CLKS_PER_BIT as follows:
// CLKS_PER_BIT = (Frequency of i_Clock)/(Frequency of UART)
// Example: 10 MHz Clock, 115200 baud UART
// (10000000)/(115200) = 87

//CLOCK 125MHz
module main #(

    parameter           BPS           = 24, 
    parameter           MESSAGE_SIZE  = 1, 
    parameter           CLKS_PER_BIT  = 640     //1085 for 125MHz, 106.7 for 12.188MHz , 640 for 73.728MHz
    )
    
    (  
    input               in_clk,                     //clock 125MHZ
    input               rx_serial,                  // rx serial input
    input               in_message,                 // message to code
    input   [1:0]       in_mode,                    // mode uart/i2s 2HZ/i2s 44.1kHZ
    input               in_reset,                   //reset
    output              tx_serial,                  // tx serial output
    output              tx_done,                    // tx done

    output              out_BLCK,                   //for i2s 
    output              out_PBDAT,
    output              out_PBLRC,
    output              out_RECDAT,
    output              out_RELCRC,
//    output              out_SDIN,
//    output              out_SCLK,
    output              out_MUTE,
    output              out_MCLK
    );
    
    wire                internal_clk;
    
//     BUFG BUFG_inst (
//      .O(internal_clk), // 1-bit output: Clock output
//      .I(in_clk)  // 1-bit input: Clock input
//   );

 //////////////////////////////////////////////////////////////////////////////////
    
    clk_wiz_0 cw0(
                        .clk_in1                (in_clk),
                        .clk_out1               (internal_clk)
    ); //61.44MHz
    
    wire                uart_rx_frame_done;
    wire    [7:0]       uart_rx_frame;
 
 //////////////////////////////////////////////////////////////////////////////////
     
    uart_rx #(
                        .CLKS_PER_BIT           (CLKS_PER_BIT)) uart_rx(
                    
                        .in_Clock               (internal_clk),
                        .in_Rx_Serial           (rx_serial),
                        .out_Rx_DV              (uart_rx_frame_done),
                        .out_Rx_Byte            (uart_rx_frame)
    );
    
    wire    [BPS-1:0]   u2s_sample_recived;
    wire                u2s_ready;
 
 //////////////////////////////////////////////////////////////////////////////////
    
    uart2sample u2s (
                        .in_clk                 (internal_clk),
                        .in_uart_ready          (uart_rx_frame_done),
                        .in_uart_frame          (uart_rx_frame),
                        .out_frame              (u2s_sample_recived),
                        .out_ready              (u2s_ready)
    );
         
    wire    [BPS-1:0]   bit_changer_sample;
    wire                bit_changer_ready;      
 
 //////////////////////////////////////////////////////////////////////////////////
       
    bit_changer_seq #(
                        .BPS(BPS)) bcs (
                        
                        .in_clk                 (internal_clk),
                        .in_enable              (u2s_ready),
                        .in_frame               (u2s_sample_recived),
                        .in_message             (in_message),
                        .out_frame              (bit_changer_sample),
                        .out_ready              (bit_changer_ready)
    );
     
    wire    [BPS-1:0]   fifo_buffer_out;
    wire                fifo_buffer_read_en; 
    wire                fifo_empty; 
    wire                fifo_prog_empty;
   
 //////////////////////////////////////////////////////////////////////////////////
       
    fifo_buffer fb(
                        .clk                    (internal_clk),
                        .srst                   (in_reset),
                        .din                    (bit_changer_sample),
                        .wr_en                  (bit_changer_ready),
                        .full                   (),
                        .dout                   (fifo_buffer_out),
                        .rd_en                  (fifo_buffer_read_en),
                        .empty                  (fifo_empty), //here put fifo_empty
                        .data_count             (),
                        .prog_full              (),
                        .overflow               (),
                        .prog_empty             (fifo_prog_empty),
                        .underflow              ()
    );
    
    wire    [BPS-1:0]   w_out_uart_sample;
    wire    [BPS-1:0]   out_i2s441kH_sample;
    wire    [BPS-1:0]   out_i2s2H_sample;
    wire                w_uart_tx_en;
    wire                w_i2s2H_en;
    wire                w_i2s441kH_en;
    wire                sample2uart_ready;
    wire                in_i2s_ready;
  
 //////////////////////////////////////////////////////////////////////////////////
       
    sample_switch ss(
                        .in_clk                 (internal_clk),
                        .in_sample              (fifo_buffer_out) ,
                        .in_mode                (in_mode),
                        .in_sample2uart_ready   (sample2uart_ready),
                        .in_i2s_ready           (in_i2s_ready),
                        .in_fifo_empty          (fifo_empty),
                        .in_fifo_prog_empty     (fifo_prog_empty),
                        .out_uart_sample        (w_out_uart_sample),
                        .out_i2s441kH_sample    (out_i2s441kH_sample),
                        .out_i2s2H_sample       (out_i2s2H_sample),
                        .fifo_en                (fifo_buffer_read_en),
                        .sample2uart_en         (w_uart_tx_en),
                        .i2s2H_en               (w_i2s2H_en),
                        .i2s441kH_en            (w_i2s441kH_en)
    );
 
 //////////////////////////////////////////////////////////////////////////////////
            
    i2s i2s_instance(
                        .in_clk                 (internal_clk),
                        .sample                 (out_i2s441kH_sample),
                        .in_en                  (w_i2s441kH_en),
                        .out_ready              (in_i2s_ready),
                        .out_BLCK               (out_BLCK),
                        .out_PBDAT              (out_PBDAT),
                        .out_PBLRC              (out_PBLRC),
                        .out_RECDAT             (out_RECDAT),
                        .out_RELCRC             (out_RELCRC),
//                        .out_SDIN               (out_SDIN),
//                        .out_SCLK               (out_SCLK),
                        .out_MUTE               (out_MUTE),
                        .out_MCLK               (out_MCLK)
     );
         
        
     wire               uart_tx_active;
     wire   [7:0]       s2u_sample_split;
     wire               s2u_ready;
 
 //////////////////////////////////////////////////////////////////////////////////
         
     sample2uart s2u(
                        .in_clk                 (internal_clk),
                        .tx_busy                (uart_tx_active),
                        .in_en                  (w_uart_tx_en),
                        .in_sample              (w_out_uart_sample),
                        .out_uart_frame         (s2u_sample_split),
                        .out_ready_uart         (s2u_ready),
                        .out_ready_sample_switch(sample2uart_ready));
 
 //////////////////////////////////////////////////////////////////////////////////
    
     uart_tx #(
                        .CLKS_PER_BIT           (CLKS_PER_BIT)) uart_tx(
                        
                        .in_Clock               (internal_clk),
                        .in_Tx_DV               (s2u_ready),
                        .in_Tx_Byte             (s2u_sample_split), 
                        .out_Tx_Active          (uart_tx_active),
                        .out_Tx_Serial          (tx_serial),
                        .out_Tx_Done            (tx_done)
     );
     
    
     

        
endmodule
