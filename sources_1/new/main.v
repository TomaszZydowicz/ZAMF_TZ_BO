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
module main #(parameter BPS=16, parameter FRAME_SIZE=1, parameter CLKS_PER_BIT=87 ) (
    //clock
    input in_clk,
    // rx serial input
    input rx_serial,
   // message to code
    input [FRAME_SIZE-1:0] in_message,
    // tx serial output
    output tx_serial,
    // tx done
    output tx_done
    );
    
    

    








    wire uart_rx_frame_done;
    wire [7:0] uart_rx_frame;
     
    uart_rx #(.CLKS_PER_BIT(CLKS_PER_BIT)) uart_rx
                (.i_Clock(in_clk),
                 .i_Rx_Serial(rx_serial),
                 .o_Rx_DV(uart_rx_frame_done),
                 .o_Rx_Byte(uart_rx_frame));
    
    wire [15:0] u2s_sample_recived;
    wire u2s_ready;
    
    uart2sample u2s (
                .in_clk(in_clk),
                .in_uart_ready(uart_rx_frame_done),
                .in_uart_frame(uart_rx_frame),
                .out_frame(u2s_sample_recived),
                .out_ready(u2s_ready));
         
    wire[FRAME_SIZE*BPS-1:0] bit_changer_sample;
    wire bit_changer_ready;      
   
    bit_changer_seq #(.BPS(BPS), .FRAME_SIZE(FRAME_SIZE)) bcs (
                  .in_clk(in_clk),
                  .in_enable(u2s_ready),
                  .in_frame(u2s_sample_recived),
                  .in_message(in_message),
                  .out_frame(bit_changer_sample),
                  .out_ready(bit_changer_ready));
     
     wire uart_tx_active;
     wire [7:0] s2u_sample_split;
     wire s2u_ready;
     



     sample2uart s2u(
                    .in_clk(in_clk),
                    .tx_busy(uart_tx_active),
                    .in_bit_changer_ready(bit_changer_ready),
                    .in_sample(bit_changer_sample),
                    .out_uart_frame(s2u_sample_split),
                    .out_ready(s2u_ready));
         
     

     uart_tx #(.CLKS_PER_BIT(CLKS_PER_BIT)) uart_tx
     ( .i_Clock(in_clk),
       .i_Tx_DV(s2u_ready),
       .i_Tx_Byte(s2u_sample_split), 
       .o_Tx_Active(uart_tx_active),
       .o_Tx_Serial(tx_serial),
       .o_Tx_Done(tx_done)
     );
     
     fifo_buffer fb(
        .clk(),
        .srst(),
        .din(),
        .wr_en(),
        .full(),
        .dout(),
        .rd_en(),
        .empty(),
        .data_count(),
        .prog_full(),
        .overflow(),
        .prog_empty(),
        .underflow()
      );
     

        
endmodule
