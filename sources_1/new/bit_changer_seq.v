`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 23:03:05
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

module bit_changer_seq #(parameter BPS=24, parameter message_length = 88) //BPS - bits per sample
    (     
    input                       in_clk,//clock   
    input                       in_enable,//enable signal active high
    input   [BPS-1:0]           in_frame,//frame of samples, in each sample BPS bits defined as vector
    input   [message_length-1 : 0]                    in_message,//message 
    output  [BPS-1:0]           out_frame,    //frame with changed LSB. Reg or wire? - wire dangerous if frame is big 
    output                      out_ready    //ready signal
     );
    
    localparam                  IDLE = 2'b00;
    localparam                  CODE = 2'b01;
    localparam                  STOP = 2'b10;
    
    reg     [1:0]               state = IDLE;
    integer                     i = 0;
    
    
    reg                         r_in_message;
    reg     [9:0]               msg_count=0;
    reg     [BPS-1:0]           r_in_frame = {BPS{1'b0}};
    reg     [BPS-1:0]           r_out_frame = {BPS{1'b0}};
    reg                         r_out_ready = 0;
    
    always @(posedge in_clk)
        begin
            case (state)
            
 //////////////////////////////////////////////////////////////////////////////////
 
                IDLE:
                    begin
                        if (in_enable == 1'b1)
                            begin
                                r_in_frame              <= in_frame;
                                r_in_message            <= in_message[message_length -1 - msg_count];
                                msg_count               <= msg_count + 1;
                                state                   <= CODE;
                            end
                        else
                            //r_out_frame <= {FRAME_SIZE*BPS{1'b0}};  //czy zerowwaæ tu wartoœæ? czy trzymaæ wartoœæ d³u¿ej?
                            r_out_ready                 <= 1'b0;
                    end
             
 //////////////////////////////////////////////////////////////////////////////////
    
                CODE:
                    begin
//                        for (i=0 ; i < BPS ; i=i+1)
//                            begin //: CHANGE_LSB
//                                if ((i % BPS) == 0)
//                                    r_out_frame[i] <= in_message[i/BPS];
//                                else
//                                    r_out_frame[i] = in_frame[i];  
//                            end
                        r_out_frame                     <= {in_frame[BPS-1:1] ,  r_in_message};
                        state                           <= STOP;
                     end
                    
                STOP:
                    begin
                        r_out_ready                     <= 1'b1;
                        if (msg_count > message_length-1)
                            msg_count = 0;
                        state                           <= IDLE; //czy trzymaæ wartoœæ d³u¿ej?
                    end
                    
             endcase
        end
  
 //////////////////////////////////////////////////////////////////////////////////
       
    assign out_frame                                    = r_out_frame;
    assign out_ready                                    = r_out_ready; 
    
endmodule

