`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2022 16:13:20
// Design Name: 
// Module Name: i2s
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


module i2s #(parameter BPS=24)(
    //clock
    input in_clk, //73.728MHz
    input [BPS-1:0] sample,
    input in_en,
    output out_ready,
    output out_BLCK,
    output out_PBDAT, //frame has 32 bits, 24bit of sample, 8 bits of X
    output out_PBLRC, //64 BLCK clocks for one PBLRC clock (48kHz) if BCLK = 3.072 v 256 - if BLCK = 12.288
    output out_RECDAT,
    output out_RELCRC,
    output out_SDIN,
    output out_SCLK,
    output out_MUTE,
    output out_MCLK //12.288Mhz
    );
    
    parameter IDLE = 1'b0;
    parameter SEND = 1'b1;
    
    parameter [3:0] q_ASK_FOR_SAMPLE = 4'd1;
    parameter [3:0] q_STOP_ASKING_FOR_SAMPLE = 4'd2;
    parameter [3:0] q_LOAD_SAMPLE = 4'd3;
    parameter [3:0] q_WAIT_FOR_BCLK = 4'd4;
    reg [1:0] quick_state_counter = 2'b0;
    
    reg reg_out_ready = 1'b1;
    reg reg_out_BCLK = 1'b1;
    reg reg_out_PBDAT =1'b0;
    reg reg_out_PBLRC = 1'b1; //left chanel first
    reg reg_out_RECDAT = 1'b0;
    reg reg_out_RELCRC = 1'b0;
    reg reg_out_SDIN = 1'b0;
    reg reg_out_SCLK = 1'b0;
    reg reg_out_MUTE = 1'b0;
    reg reg_out_MCLK = 1'b0;
    
    //reg [5:0] bit_counter = 5'b10000;
    reg state = IDLE;
    reg [3:0]  quick_state = q_ASK_FOR_SAMPLE;
    
    reg [BPS-1:0] bit_counter = 0;
    reg [BPS-1:0] reg_sample = 0;
    reg [4:0] BCLK_counter = 0;
    reg [2:0] MCLK_counter = 0;
    reg [10:0] PBLRC_counter = 0;
    reg BCLK_negedge = 0;
    reg canal_counter = 0;
    
    always @(posedge in_clk) //generation of MCLK clock
        begin
            if(state == SEND)
                begin
                    if (MCLK_counter == 2) // 6 clocks 
                        begin
                            reg_out_MCLK <= ~reg_out_MCLK;
                            MCLK_counter <= 0;
                        end
                    else
                        MCLK_counter <= MCLK_counter + 1;
                end       
        end
    
    always @(posedge in_clk) //generation of BCLK clock
        begin
            if (state == SEND)
                begin
                    if (BCLK_counter == 11) //24 clocks
                        begin
                            if(reg_out_BCLK == 1)
                                BCLK_negedge <= 1;
                            reg_out_BCLK <= ~reg_out_BCLK;
                            BCLK_counter <= 0;
                        end     
                    else
                        begin
                            BCLK_counter <= BCLK_counter + 1;
                            BCLK_negedge <= 0;
                        end
                end
        end
        
    //assign BCLK_negedge = (BCLK_counter == 19) & (reg_out_BCLK == 1) ? 1:0; //BCLK negedge flag //20 clocks
    
    always @(posedge in_clk) //PBLRC generation
        begin
            if (state == SEND)
            begin
                if (PBLRC_counter == 767) // PBLRC 48kHz, in_clk 73.728Mhz //1536 clocks
                    begin
                        PBLRC_counter <= 0;
                        bit_counter <= 0; //start of a new chanel
                        canal_counter = (canal_counter == 0) ? 1 : 0;
                        reg_out_PBLRC <= ~reg_out_PBLRC;
                    end
                else
                    PBLRC_counter <= PBLRC_counter + 1;
            end
        end
        
        
    //assign CANAL_change = (PBLRC_counter == 1279) ? 1:0 ; //canal change flag//1280 clocks
        
    always @(posedge in_clk) //bit transmittion in left-justifed audio input mode
        begin
            case(state)
                IDLE:
                    begin
                        if(in_en == 1'b1)
                            begin
                                reg_sample <= sample;
                                reg_out_MUTE <= 1'b1;
                                reg_out_ready <= 1'b0;
                                state <= SEND;
                            end
                        else
                            begin
                                reg_out_MUTE <= 1'b0;
                                reg_out_ready <= 1'b1;
                                reg_out_BCLK <= 1'b1;
                                reg_out_PBDAT <= 1'b0;
                                reg_out_PBLRC <= 1'b1;
                                state <= IDLE;
                            end
                    end
                SEND:
                    begin
                        case(quick_state)
                            q_ASK_FOR_SAMPLE:
                                if (canal_counter == 1 && bit_counter == 31) //ask for sample
                                            begin
                                                if (in_en == 1)
                                                    begin
                                                        reg_out_ready <= 1'b1;
                                                        quick_state <= q_STOP_ASKING_FOR_SAMPLE;
                                                    end
                                                else
                                                    state <= IDLE;
                                            end
                            q_STOP_ASKING_FOR_SAMPLE:
                                begin
                                    reg_out_ready <= 1'b0;
                                    if (quick_state_counter == 3)
                                        begin
                                            quick_state_counter = 0;
                                            quick_state <= q_LOAD_SAMPLE;
                                        end
                                    else
                                        begin
                                            quick_state_counter = quick_state_counter +1;
                                            quick_state <= q_STOP_ASKING_FOR_SAMPLE;
                                        end
                                end
                            q_LOAD_SAMPLE:
                                begin
                                    reg_sample <= sample;
                                    quick_state <= q_WAIT_FOR_BCLK;
                                end
                            q_WAIT_FOR_BCLK:
                                 if ( bit_counter == 0)
                                     quick_state <= q_ASK_FOR_SAMPLE;   
                                 else
                                      quick_state <= q_WAIT_FOR_BCLK;   
                        
                        endcase
                    
                        if(BCLK_negedge)
                            begin
                                if (bit_counter < 24)
                                    begin
                                        reg_out_PBDAT <= reg_sample[(BPS-1) - bit_counter];
                                        bit_counter <= bit_counter + 1;
                                    end
                                else
                                    begin
                                        reg_out_PBDAT <= 1'b0;
                                        bit_counter <= bit_counter + 1;
                                    end
                            end
                    end
            endcase
        end
    

    assign out_ready = reg_out_ready;
    assign out_BLCK = reg_out_BCLK;
    assign out_PBDAT = reg_out_PBDAT;
    assign out_PBLRC = reg_out_PBLRC;
    assign out_RECDAT = reg_out_RECDAT;
    assign out_RELCRC = reg_out_RELCRC;
    assign out_SDIN = reg_out_SDIN;
    assign out_SCLK = reg_out_SCLK;
    assign out_MUTE = reg_out_MUTE;
    assign out_MCLK = reg_out_MCLK;
    
    
endmodule