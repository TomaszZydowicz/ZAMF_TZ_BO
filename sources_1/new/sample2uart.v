`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 23:37:22
// Design Name: 
// Module Name: sample2uart
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


module sample2uart(
    //clock
    input in_clk,
    //tx ready
    input tx_busy,
    //uart ready signal
    input in_bit_changer_ready,
    //8 bit uart frame
    input [15:0] in_sample,
    //16 bit depth sample
    output [7:0] out_uart_frame,
    //ready signal
    output out_ready
    );
    
reg [7:0] sample_half = 8'b0;
reg [15:0] in_sample_reg = 16'b0;    
reg counter = 1'b0;    
reg [7:0] out_uart_frame_reg = 7'b0;
reg out_ready_reg = 1'b0;
always @(posedge in_clk)
    begin
        if(in_bit_changer_ready == 1)begin      
            in_sample_reg <= in_sample;
            if(tx_busy == 0)begin
                if(counter == 0)begin
                
                    out_uart_frame_reg <= in_sample_reg[15:8];
                    counter <= 1;
                    out_ready_reg <= 1; 
                end
                else begin
                    out_uart_frame_reg <= in_sample_reg[7:0];
                    counter <= 0;
                    out_ready_reg <= 1;    
                end
            end
        end         
        else
                out_ready_reg <= 0;
    end
       
    assign out_uart_frame = out_uart_frame_reg;
    assign out_ready = out_ready_reg;
endmodule
