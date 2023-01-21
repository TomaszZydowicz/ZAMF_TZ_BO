`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2022 23:59:28
// Design Name: 
// Module Name: tb_bit_changer_seq
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


module tb_bit_changer_seq();

localparam FRAME_SIZE = 1;
localparam BPS = 8;
localparam T = 10;

reg CLK;
reg[FRAME_SIZE*BPS-1:0] IN_FRAME;
reg[FRAME_SIZE-1:0] IN_MESSAGE;
reg IN_ENABLE;
wire[FRAME_SIZE*BPS-1:0] OUT_FRAME;
wire OUT_READY;
reg a,b;
integer i;

bit_changer_seq #(.BPS(BPS), .FRAME_SIZE(FRAME_SIZE)) bcs1 (
                  .in_clk(CLK),
                  .in_enable(IN_ENABLE),
                  .in_frame(IN_FRAME),
                  .in_message(IN_MESSAGE),
                  .out_frame(OUT_FRAME),
                  .out_ready(OUT_READY));
                  
task create_new_frame;
    output [FRAME_SIZE*BPS-1:0] IN_FRAME;
    begin
        for (i=0 ; i < FRAME_SIZE*BPS ; i=i+1)
            begin
                a = $random()%2;
                IN_FRAME = {IN_FRAME, a};
            end
    end
endtask

task create_new_message;
    output [FRAME_SIZE-1:0] IN_MESSAGE;
    begin
        for (i=0 ; i < FRAME_SIZE ; i=i+1)
            begin
                b = $random()%2;
                IN_MESSAGE = {IN_MESSAGE, b};
            end  
    end
endtask

task display_LSB;
    input [FRAME_SIZE-1:0] IN_MESSAGE;
    input [FRAME_SIZE*BPS-1:0] OUT_FRAME;
    integer check;
    begin
        check = 0;
        for (i=0 ; i < FRAME_SIZE*BPS ; i=i+1)
            if ((i % BPS) == 0)
                if (OUT_FRAME[i] != IN_MESSAGE[i/BPS])
                    check = check +1;
         
        if (check == 0 )            
            $display("OK");
        else
            $display("NO OK");
    end
                
endtask

initial
    begin
        CLK = 1'b0;
        IN_ENABLE = 0;
        create_new_frame(IN_FRAME);
        create_new_message(IN_MESSAGE);
        #(T)
        IN_ENABLE = 1;
        #(T)
        IN_ENABLE = 0;
        @(posedge OUT_READY);
        $display("First frame");
        display_LSB(IN_MESSAGE,OUT_FRAME);
        #(T)         
        create_new_frame(IN_FRAME);
        create_new_message(IN_MESSAGE); 
        IN_ENABLE = 1;  
        #(T)
        IN_ENABLE = 0;
        @(posedge OUT_READY);
        $display("Second frame");
        display_LSB(IN_MESSAGE,OUT_FRAME);
        
//        create_new_frame(IN_FRAME);
//        create_new_message(IN_MESSAGE); 
//        #(T*5)
//        $display("Third frame");
//        display_LSB(IN_MESSAGE,OUT_FRAME);
        
//        create_new_frame(IN_FRAME);
//        create_new_message(IN_MESSAGE); 
//        #(T)
//        $display("Forth frame");
//        display_LSB(IN_MESSAGE,OUT_FRAME);
        
        
        $stop;

   end

always
    begin
        #(T/2) CLK <= ~CLK;
    end
endmodule
