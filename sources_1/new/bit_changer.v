//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2022 10:40:53
// Design Name: 
// Module Name: bit_changer
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


module bit_changer #(parameter BPS=16, parameter FRAME_SIZE=8)
//BPS - bits per sample
                    (
                        //frame of samples, in each sample BPS bits defined as vector
                        input [FRAME_SIZE*BPS-1:0] in_frame ,
                        //part of message 
                        input [FRAME_SIZE-1:0] in_message,
                        //frame with changed LSB
                        output [FRAME_SIZE*BPS-1:0] out_frame //reg or wire? - wire dangerous if frame is big 
                     );
                                    
    genvar i;
    generate 
        for (i=0 ; i < FRAME_SIZE*BPS ; i=i+1)
            begin //: CHANGE_LSB
                if ((i % BPS) == 0)
                    assign out_frame[i] =  in_message[i/BPS];
                else
                    assign out_frame[i] = in_frame[i];  
            end
    endgenerate        
endmodule
