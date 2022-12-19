`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2022 22:35:52
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


module uart2sample 
    #(parameter BPS=24)
    (
    //clock
    input               in_clk,
    //uart ready signal
    input               in_uart_ready,
    //8 bit uart frame
    input   [7:0]       in_uart_frame,
    //16 bit depth sample
    output  [BPS-1:0]   out_frame,
    //ready signal
    output              out_ready
    );
    
    localparam      FIRST_FRAME         = 2'b00;
    localparam      SECOND_FRAME        = 2'b01;
    localparam      THIRD_FRAME         = 2'b10;
    
    reg [BPS-1:0]   reg_frame           = 24'b0;
    reg [1:0]       uart_frame_counter  = FIRST_FRAME;
    reg             reg_out_ready       = 0;
    
    always @(posedge in_clk)
        begin
            if (uart_frame_counter == FIRST_FRAME)
                begin 
                    reg_out_ready               <= 1'b0;
                    if (in_uart_ready == 1'b1)
                    begin
                        reg_frame[7:0]          <= in_uart_frame; 
                        uart_frame_counter      <= SECOND_FRAME;
                    end    
                end
                
            if (uart_frame_counter == SECOND_FRAME)
                begin 
                    if (in_uart_ready == 1'b1)
                    begin
                        reg_frame[15:8]         <= in_uart_frame; 
                        uart_frame_counter      <= THIRD_FRAME;
                    end
                 end
                 
             if (uart_frame_counter == THIRD_FRAME)
                begin 
                    if (in_uart_ready == 1'b1)
                        begin
                            reg_frame[23:16]    <= in_uart_frame; 
                            uart_frame_counter  <= FIRST_FRAME;
                            reg_out_ready       <= 1'b1;
                        end    
                end

        end
        
    assign out_frame = reg_frame;
    assign out_ready = reg_out_ready; 
    
endmodule
