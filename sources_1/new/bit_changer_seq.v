`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 23:03:04
// Design Name: 
// Module Name: bit_changer_seq
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

module bit_changer_seq #(parameter BPS=16, parameter FRAME_SIZE=8)
//BPS - bits per sample
                    (
                        //clock
                        input in_clk,
                        //enable signal active high
                        input in_enable,
                        //frame of samples, in each sample BPS bits defined as vector
                        input [FRAME_SIZE*BPS-1:0] in_frame,
                        //part of message 
                        input [FRAME_SIZE-1:0] in_message,
                        //frame with changed LSB
                        output [FRAME_SIZE*BPS-1:0] out_frame, //reg or wire? - wire dangerous if frame is big 
                        //ready signal
                        output out_ready
                     );
    
    localparam s_IDLE = 2'b00;
    localparam s_CODE = 2'b01;
    localparam s_STOP = 2'b10;
    
    reg [1:0] state = s_IDLE;
    integer i = 0;
    
    
    reg [FRAME_SIZE-1:0] r_in_message;
    reg [FRAME_SIZE*BPS-1:0] r_in_frame = {FRAME_SIZE*BPS{1'b0}};
    reg [FRAME_SIZE*BPS-1:0] r_out_frame = {FRAME_SIZE*BPS{1'b0}};
    reg r_out_ready = 0;
    
    always @(posedge in_clk)
        begin
            case (state)
                s_IDLE:
                    begin
                        if (in_enable == 1'b1)
                            begin
                                r_in_frame <= in_frame;
                                state <= s_CODE;
                            end
                        else
                            //r_out_frame <= {FRAME_SIZE*BPS{1'b0}};  //czy zerowwaæ tu wartoœæ? czy trzymaæ wartoœæ d³u¿ej?
                            r_out_ready <= 1'b0;
                    end
                
                s_CODE:
                    begin
                        for (i=0 ; i < FRAME_SIZE*BPS ; i=i+1)
                            begin //: CHANGE_LSB
                                if ((i % BPS) == 0)
                                    r_out_frame[i] <= in_message[i/BPS];
                                else
                                    r_out_frame[i] = in_frame[i];  
                            end
                        state <= s_STOP;
                     end
                    
                s_STOP:
                    begin
                        r_out_ready <= 1'b1;
                        state <= s_IDLE; //czy trzymaæ wartoœæ d³u¿ej?
                    end
                    
             endcase
        end
        
    assign out_frame = r_out_frame;
    assign out_ready = r_out_ready; 
endmodule

