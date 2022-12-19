`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2022 23:37:22
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


module sample2uart #(parameter BPS=24)(
    //clock
    input               in_clk,
    //tx ready
    input               tx_busy,
    //uart ready signal
    input               in_en,
    //8 bit uart frame
    input   [BPS-1:0]   in_sample,
    //16 bit depth sample
    output  [7:0]       out_uart_frame,
    //ready signal for uart
    output              out_ready_uart,
    //ready for a next sample for sample switch
    output              out_ready_sample_switch
    );
    
    reg     [BPS-1:0]   in_sample_reg               = 16'b0;    
    reg                 counter                     = 1'b0;    
    reg     [7:0]       out_uart_frame_reg          = 7'b0;
    reg                 out_ready__uart_reg         = 1'b0;
    reg                 one_cykle_delay_couner      = 1'b0;
    reg                 out_ready_sample_switch_reg = 1'b1;
    
    
    localparam          IDLE                        = 3'b000;
    localparam          FIRST_HALF_SAMPLE           = 3'b001;
    localparam          FIRST_HALF_SAMPLE_WAIT      = 3'b010;
    localparam          SECOND_HALF_SAMPLE          = 3'b011;
    localparam          SECOND_HALF_SAMPLE_WAIT     = 3'b100;
    localparam          THIRD_HALF_SAMPLE           = 3'b101;
    localparam          THIRD_HALF_SAMPLE_WAIT      = 3'b110;
    
    reg     [2:0]       state = IDLE;
    
    
    always @(posedge in_clk)
        begin
            case(state)
                                                            
//////////////////////////////////////////////////////////////////////////////////
            
                IDLE:
                    if (in_en == 1 && tx_busy == 0 && out_ready_sample_switch_reg == 1) //czy w ifie moze byc rejester ktory jest assign do output?
                        begin
                            out_ready_sample_switch_reg             <= 1'b0;
                            in_sample_reg                           <= in_sample;
                            state                                   <= FIRST_HALF_SAMPLE;
                        end
                    else
                        begin
                            out_ready_sample_switch_reg             <= 1'b1;
                            state                                   <= IDLE;
                        end
                                                                        
//////////////////////////////////////////////////////////////////////////////////
            
                FIRST_HALF_SAMPLE:
                    begin 
                        out_uart_frame_reg                          <= in_sample_reg[7:0];
                        out_ready__uart_reg                         <= 1'b1;
                        state                                       <= FIRST_HALF_SAMPLE_WAIT;
                    end
                                                                    
//////////////////////////////////////////////////////////////////////////////////
            
                FIRST_HALF_SAMPLE_WAIT:
                    begin
                        out_ready__uart_reg                         <= 1'b0;
                        if (tx_busy == 1)
                            state <= FIRST_HALF_SAMPLE_WAIT;
                        else//if ((tx_busy == 0) <- b³¹d, czemu?
                            begin
                                if (one_cykle_delay_couner == 0)
                                    begin
                                        one_cykle_delay_couner      <= 1;
                                        state                       <= FIRST_HALF_SAMPLE_WAIT;
                                    end
                                else
                                    begin
                                        one_cykle_delay_couner      <= 0;
                                        state                       <= SECOND_HALF_SAMPLE;
                                    end
                            end
                    end
                                                                    
//////////////////////////////////////////////////////////////////////////////////
            
                SECOND_HALF_SAMPLE:
                    begin
                        out_uart_frame_reg                          <= in_sample_reg[15:8];
                        out_ready__uart_reg                         <= 1'b1;
                        state                                       <= SECOND_HALF_SAMPLE_WAIT;
                    end
                                                                    
//////////////////////////////////////////////////////////////////////////////////
            
                SECOND_HALF_SAMPLE_WAIT:
                    begin
                        out_ready__uart_reg                         <= 1'b0;
                        if (tx_busy == 1)
                            state                                   <= SECOND_HALF_SAMPLE_WAIT;
                        else//if ((tx_busy == 0) <- b³¹d, czemu?
                             begin
                                if (one_cykle_delay_couner == 0)
                                    begin
                                        one_cykle_delay_couner      <= 1;
                                        state                       <= SECOND_HALF_SAMPLE_WAIT;
                                    end
                                else
                                    begin
                                        one_cykle_delay_couner      <= 0;
                                        state                       <= THIRD_HALF_SAMPLE;
                                    end
                            end
                    end
                                                                    
//////////////////////////////////////////////////////////////////////////////////
            
                THIRD_HALF_SAMPLE:
                    begin
                        out_uart_frame_reg                          <= in_sample_reg[23:16];
                        out_ready__uart_reg                         <= 1'b1;
                        state                                       <= THIRD_HALF_SAMPLE_WAIT;
                    end
                                                                    
//////////////////////////////////////////////////////////////////////////////////
            
                THIRD_HALF_SAMPLE_WAIT:
                    begin
                        out_ready__uart_reg                         <= 1'b0;
                        if (tx_busy == 1)
                            state                                   <= THIRD_HALF_SAMPLE_WAIT;
                        else//if ((tx_busy == 0) <- b³¹d, czemu?
                             begin
                                if (one_cykle_delay_couner == 0)
                                    begin
                                        one_cykle_delay_couner      <= 1;
                                        state                       <= THIRD_HALF_SAMPLE_WAIT;
                                    end
                                else
                                    begin
                                        one_cykle_delay_couner      <= 0;
                                        out_ready_sample_switch_reg <= 1'b1;
                                        state                       <= IDLE;
                                    end
                            end
                    end
            endcase
        end
                                                           
//////////////////////////////////////////////////////////////////////////////////
            
    assign out_uart_frame           = out_uart_frame_reg;
    assign out_ready_uart           = out_ready__uart_reg;
    assign out_ready_sample_switch  = out_ready_sample_switch_reg;
    
endmodule
