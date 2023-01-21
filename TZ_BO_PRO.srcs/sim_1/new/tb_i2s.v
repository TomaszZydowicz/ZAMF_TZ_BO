`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2022 21:30:19
// Design Name: 
// Module Name: tb_i2s
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


module tb_i2s();

    localparam BPS = 24;
    localparam T = 8; //10Mhz clk
    
    reg in_clk;
    reg in_BCLK; 
    reg [BPS-1:0] sample;
    reg in_en;
    
    wire out_ready;
    wire out_BLCK;
    wire out_PBDAT;
    wire out_PBLRC;
    wire out_MUTE;
    wire out_MCLK;
    
    i2s #(.BPS(BPS)) i (
        .in_clk(in_clk),
        .in_BCLK(in_BCLK), 
        .sample(sample),
        .in_en(in_en),
        .out_ready(out_ready),
        .out_BLCK(out_BLCK),
        .out_PBDAT(out_PBDAT),
        .out_PBLRC(out_PBLRC),
        .out_RECDAT(),
        .out_RELCRC(),
        .out_SDIN(),
        .out_SCLK(),
        .out_MUTE(out_MUTE),
        .out_MCLK(out_MCLK)
    );
    
    initial
        begin
            in_clk = 1'b0;
            in_BCLK = 1'b0;
            in_en = 1'b0;
            #(10*T)
            in_en = 1'b1;
            sample <= 24'h33033F;
//            create_new_message(IN_MESSAGE);
//            UART_WRITE_BYTE(8'h01);
//            #(T)
//            UART_WRITE_BYTE(8'hF0);
            #(1000*T)
       
          

        $stop;

   end

  always
    begin
        #(T/2) in_clk <= !in_clk;
        #(T/2) in_BCLK <= !in_BCLK;
    end
endmodule
