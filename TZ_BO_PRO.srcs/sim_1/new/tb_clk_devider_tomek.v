`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 22:38:29
// Design Name: 
// Module Name: tb_clk_devider_tomek
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


module tb_clk_devider_tomek();

    localparam T = 25/3;

    reg clk_in;
    reg mode_in;
    wire clk_out;

    clock_divider uut(   // Desired clk_out frequency in Hz.
        .clk_in     (clk_in),
        .mode_in    (mode_in),
        .clk_out    (clk_out)
        );
        
    initial
        begin
            clk_in = 1'b0;
            mode_in = 1'b0;
            
            #(10000*T)
           
            
            $stop;

        end

always
    begin
        #(T/2) clk_in <= ~clk_in;
    end
endmodule
