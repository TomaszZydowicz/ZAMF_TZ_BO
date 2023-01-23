`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2023 15:52:56
// Design Name: 
// Module Name: tristate_buffer
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



module tristate_buffer(IO_Data, Tx_Data, Rx_Data, Tri_En);

        inout  IO_Data; // bidirectional data line

        input  Tx_Data;
        output Rx_Data;
        input  Tri_En;
 
        assign IO_Data = Tri_En? 1'bz:Tx_Data;
        assign Rx_Data = IO_Data;

    endmodule

