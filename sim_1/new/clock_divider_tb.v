`timescale 10fs / 10fs

module tb_clock_divider;

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
        mode_in = 0;
    end
always 
    begin
        #416666 clk_in = 1'b1;
        #416666 clk_in = 1'b0;
        #416667 clk_in = 1'b1;
        #416666 clk_in = 1'b0;
        #416666 clk_in = 1'b1;
        #416667 clk_in = 1'b0;
    end

    initial $monitor("time=%g,clk_in=%b,clk_out=%b",$time,clk_in,clk_out);
    
endmodule