`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2022 14:45:45
// Design Name: 
// Module Name: sample_switch
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


module sample_switch  #(parameter BPS=24) (
    //clock
    input in_clk,
    //sample from fifo_buffor
    input [BPS-1:0] in_sample ,
    //mode, decides of a frequency  
    input [1:0] in_mode,
    //sample2uart wants new sample
    input in_sample2uart_ready,
    //i2s wants new sample
    input in_i2s_ready,
    //information if fifo has sth to give
    input in_fifo_empty,
    //out sample for uart
    output [BPS-1:0] out_uart_sample,
    //out sample for 44.1kHZ
    output [BPS-1:0] out_i2s441kH_sample,
    //out sample for 2HZ
    output [BPS-1:0] out_i2s2H_sample,
    //fifo buffer enable
    output fifo_en,
    //uart reciver enable
    output sample2uart_en,
    //i2s 2HZ enable
    output i2s2H_en,
    //i2s 44.1kHZ enable
    output i2s441kH_en
    );
    
    parameter IDLE = 2'b00;
    parameter UART = 2'b01;
    parameter I2S_2HZ = 2'b10;
    parameter I2S_441kHZ = 2'b11;
    
    parameter STATE_IDLE = 4'd0;
    parameter UART_IDLE = 4'd1;
    parameter UART_LOAD_SAMPLE_FROM_FIFO = 4'd2;
    parameter UART_SEND_SAMPLE_TO_S2U = 4'd3;
    
    parameter I2S_441kHz_IDLE = 4'd4;
    parameter I2S__441kHz_LOAD_SAMPLE_FROM_FIFO = 4'd5;
    parameter I2S__441kHz_SEND_SAMPLE_TO_I2S = 4'd6;
    
    
    reg [3:0] state = 4'd0;
    reg [1:0] mode = 2'b00;
    reg [BPS-1:0] reg_out_uart_sample = 0;
    reg [BPS-1:0] reg_out_i2s441kH_sample = 0;
    reg [BPS-1:0] reg_out_i2s2H_sample = 0;
    reg reg_fifo_en = 0;
    reg reg_sample2uart_en = 0;
    reg reg_i2s2H_en = 0;
    reg reg_i2s441kH_en = 0;
    
    always @(posedge in_clk)
        begin
            case(mode)
                IDLE:
                    begin
                        reg_fifo_en = 0;
                        reg_sample2uart_en = 0;
                        reg_i2s2H_en = 0;
                        reg_i2s441kH_en = 0;
                        
                        if(in_mode == IDLE)
                            begin
                                mode <= IDLE;
                                state <= STATE_IDLE;
                            end
                        else if (in_mode == UART)
                            begin
                                mode <= UART;
                                state <= UART_IDLE;
                            end
                        else if (in_mode == I2S_2HZ )
                            begin
                                mode <= I2S_2HZ;
                                state <= STATE_IDLE;
                            end
                        else if (in_mode == I2S_441kHZ)
                            begin
                                mode <= I2S_441kHZ;
                                state <= I2S_441kHz_IDLE;
                            end
                        else
                            mode <= IDLE; //error
                    end
                UART:
                    begin //can i put value only to wires i want to change?
                        case(state)
                            UART_IDLE:
                                if (in_sample2uart_ready == 1'b1 && in_fifo_empty == 1'b0)
                                    begin
                                        reg_fifo_en <= 1'b1;
                                        state <= UART_LOAD_SAMPLE_FROM_FIFO;
                                    end
                                else
                                    begin
                                        reg_fifo_en <= 1'b0;
                                        reg_sample2uart_en <= 1'b0;
                                    end
                                    
                             UART_LOAD_SAMPLE_FROM_FIFO:
                                begin
                                    // reg_out_uart_sample <= in_sample; //module needs time to load fifo sample
                                    reg_fifo_en <= 1'b0;
                                    state <= UART_SEND_SAMPLE_TO_S2U;
                                end
                            UART_SEND_SAMPLE_TO_S2U:
                                begin
                                    reg_out_uart_sample <= in_sample;
                                    reg_sample2uart_en <= 1'b1;
                                    state <= UART_IDLE;
                                end
                                
                            
                        endcase
                       
                        //---------------------------------------
                         if(in_mode == IDLE)
                            begin
                                mode <= IDLE;
                                state <= STATE_IDLE;
                            end
                        else if (in_mode == UART)
                            begin
                                mode <= UART;
                            end
                        else if (in_mode == I2S_2HZ )
                            mode <= I2S_2HZ;
                        else if (in_mode == I2S_441kHZ)
                            mode <= I2S_441kHZ;
                        else
                            mode <= IDLE; //error
                    end
                I2S_441kHZ:
                    begin //can i put value only to wires i want to change?
                        case(state)
                            I2S_441kHz_IDLE:
                                if (in_i2s_ready == 1'b1 && in_fifo_empty == 1'b0)
                                    begin
                                        reg_fifo_en <= 1'b1;
                                        state <= I2S__441kHz_LOAD_SAMPLE_FROM_FIFO;
                                    end
                                else
                                    begin
                                        reg_fifo_en <= 1'b0;
                                        reg_i2s441kH_en <= 1'b0;
                                    end   
                             I2S__441kHz_LOAD_SAMPLE_FROM_FIFO:
                                begin
                                    // reg_out_uart_sample <= in_sample; //module needs time to load fifo sample
                                    reg_fifo_en <= 1'b0;
                                    state <= I2S__441kHz_SEND_SAMPLE_TO_I2S;
                                end
                            I2S__441kHz_SEND_SAMPLE_TO_I2S:
                                begin
                                    reg_out_i2s441kH_sample <= in_sample;
                                    reg_i2s441kH_en <= 1'b1;
                                    state <= I2S_441kHz_IDLE;
                                end
                                
                            
                        endcase
                       
                        //---------------------------------------
                         if(in_mode == IDLE)
                            begin
                                mode <= IDLE;
                                state <= STATE_IDLE;
                            end
                        else if (in_mode == UART)
                            begin
                                mode <= UART;
                            end
                        else if (in_mode == I2S_2HZ )
                            mode <= I2S_2HZ;
                        else if (in_mode == I2S_441kHZ)
                            mode <= I2S_441kHZ;
                        else
                            mode <= IDLE; //error
                    end
                    
            
            endcase
        end

    assign out_uart_sample = reg_out_uart_sample;
    assign out_i2s441kH_sample = reg_out_i2s441kH_sample;
    assign out_i2s2H_sample = reg_out_i2s2H_sample;
    assign fifo_en = reg_fifo_en;
    assign sample2uart_en = reg_sample2uart_en;
    assign i2s2H_en = reg_i2s2H_en;
    assign i2s441kH_en = reg_i2s441kH_en;
    
endmodule
