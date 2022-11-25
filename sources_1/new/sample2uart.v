`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 23:37:22
// Design Name: 
// Module Name: sample2uart
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


module sample2uart(
    //clock
    input in_clk,
    //tx ready
    input tx_busy,
    //uart ready signal
    input in_bit_changer_ready,
    //8 bit uart frame
    input [15:0] in_sample,
    //16 bit depth sample
    output [7:0] out_uart_frame,
    //ready signal
    output out_ready
    );
    
    reg [15:0] in_sample_reg = 16'b0;    
    reg counter = 1'b0;    
    reg [7:0] out_uart_frame_reg = 7'b0;
    reg out_ready_reg = 1'b0;
    reg one_cykle_delay_couner = 1'b0;
    
    
    localparam s_IDLE = 3'b000;
    localparam s_FIRST_HALF_SAMPLE = 3'b001;
    localparam s_FIRST_HALF_SAMPLE_WAIT = 3'b010;
    localparam s_SECOND_HALF_SAMPLE = 3'b011;
    localparam s_SECOND_HALF_SAMPLE_WAIT = 3'b100;
    //localparam s_STOP_SENDING = 3'b101;
    
    reg [2:0] state = s_IDLE;
    
    
    always @(posedge in_clk)
        begin
            case(state)
                s_IDLE:
                    begin
                        if (in_bit_changer_ready == 1 && tx_busy == 0)
                            begin
                                in_sample_reg <= in_sample;
                                state <= s_FIRST_HALF_SAMPLE;
                            end
                        else
                            state <= s_IDLE;
                    end
                s_FIRST_HALF_SAMPLE:
                    begin 
                        out_uart_frame_reg <= in_sample_reg[7:0];
                        out_ready_reg <= 1'b1;
                        state <= s_FIRST_HALF_SAMPLE_WAIT;
                    end
                s_FIRST_HALF_SAMPLE_WAIT:
                    begin
                        out_ready_reg <= 1'b0;
                        if (tx_busy == 1)
                            state <= s_FIRST_HALF_SAMPLE_WAIT;
                        else//if ((tx_busy == 0) <- b��d, czemu?
                            begin
                                if (one_cykle_delay_couner == 0)
                                    begin
                                        one_cykle_delay_couner <= 1;
                                        state <= s_FIRST_HALF_SAMPLE_WAIT;
                                    end
                                else
                                    begin
                                        one_cykle_delay_couner <= 0;
                                        state <= s_SECOND_HALF_SAMPLE;
                                    end
                            end
                    end
                s_SECOND_HALF_SAMPLE:
                    begin
                        out_uart_frame_reg <= in_sample_reg[15:8];
                        out_ready_reg <= 1'b1;
                        state <= s_SECOND_HALF_SAMPLE_WAIT;
                    end
                s_SECOND_HALF_SAMPLE_WAIT:
                    begin
                        out_ready_reg <= 1'b0;
                        if (tx_busy == 1)
                            state <= s_SECOND_HALF_SAMPLE_WAIT;
                        else//if ((tx_busy == 0) <- b��d, czemu?
                             begin
                                if (one_cykle_delay_couner == 0)
                                    begin
                                        one_cykle_delay_couner <= 1;
                                        state <= s_SECOND_HALF_SAMPLE_WAIT;
                                    end
                                else
                                    begin
                                        one_cykle_delay_couner <= 0;
                                        state <= s_IDLE;
                                    end
                            end
                    end
            endcase
        end
//            if(in_bit_changer_ready == 1)    
//                in_sample_reg <= in_sample;
//            if(tx_busy == 0)begin
//                if(counter == 0)begin
//                    out_uart_frame_reg <= in_sample_reg[15:8];
//                    counter <= 1;
//                    out_ready_reg <= 1; 
//                end
//                else begin
//                    out_uart_frame_reg <= in_sample_reg[7:0];
//                    counter <= 0;
//                    out_ready_reg <= 1;    
//                end
//            end        
//            else
//                    out_ready_reg <= 0;
           
    assign out_uart_frame = out_uart_frame_reg;
    assign out_ready = out_ready_reg;
endmodule
