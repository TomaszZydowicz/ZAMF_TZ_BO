module clock_divider (

    input   clk_in,
    input   mode_in,
    output  reg clk_out = 0

    );

    reg[27:0] COUNTER       =   28'd0;
    parameter DIVISOR_1     =   28'd2500;
    parameter DIVISOR_2     =   28'd60000000;
    
    
    always @(posedge clk_in)
    begin
        COUNTER <= COUNTER + 28'd1;
        if (mode_in == 0) 
        begin 
            if(COUNTER >= (DIVISOR_1 - 1))
                COUNTER <= 28'd0;
                clk_out <= (COUNTER<DIVISOR_1/2)?1'b1:1'b0;
        end else    
        begin
            if(COUNTER >= (DIVISOR_2 - 1))
                COUNTER <= 28'd0;
                clk_out <= (COUNTER<DIVISOR_2/2)?1'b1:1'b0;
        end
    end    
endmodule