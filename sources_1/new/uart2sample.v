`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 22:34:52
// Design Name: 
// Module Name: uart2sample
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


module uart2sample(
    //clock
    input in_clk,
    //uart ready signal
    input in_uart_ready,
    //8 bit uart frame
    input [7:0] in_uart_frame,
    //16 bit depth sample
    output [15:0] out_frame,
    //ready signal
    output out_ready
    );
    
    reg [15:0] reg_frame = 16'b0;
    reg uart_frame_counter = 1'b0;
    reg reg_out_ready = 0;
    
    always @(posedge in_clk)
        begin
            if (uart_frame_counter == 0)
                begin 
                    reg_out_ready <= 1'b0;
                    if (in_uart_ready == 1'b1)
                    begin
                        reg_frame[7:0] <= in_uart_frame; 
                        uart_frame_counter <= 1'b1;
                    end    
                end
            if (uart_frame_counter == 1)
            begin 
                if (in_uart_ready == 1'b1)
                begin
                    reg_frame[15:8] <= in_uart_frame; 
                    uart_frame_counter <= 1'b0;
                    reg_out_ready <= 1'b1;
                end    
            end         
        end
        
    assign out_frame = reg_frame;
    assign out_ready = reg_out_ready; 
    
    endmodule
