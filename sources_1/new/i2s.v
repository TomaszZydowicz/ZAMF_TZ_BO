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
    input in_clk, //12.288MHZ
  	input in_BCLK, //3.072MHZ v 12.288MHz
    input [BPS-1:0] sample,
    input in_en,
    output out_ready,
    output out_BLCK,
    output out_PBDAT,
    output out_PBLRC, //64 BLCK clocks for one PBLRC clock (48kHz) if BCLK = 3.072 v 256 - if BLCK = 12.288
    output out_RECDAT,
    output out_RELCRC,
    output out_SDIN,
    output out_SCLK,
    output out_MUTE,
    output out_MCLK
    );
    
    parameter IDLE = 1'b0;
    parameter SEND = 1'b1;
    parameter BIT_CHANGER_MAX_VALUE = 256;
    
    reg reg_out_ready = 1'b1;
    reg reg_out_BLCK = 1'b0;
    reg reg_out_PBDAT =1'b0;
    reg reg_out_PBLRC = 1'b0;
    reg reg_out_RECDAT = 1'b0;
    reg reg_out_RELCRC = 1'b0;
    reg reg_out_SDIN = 1'b0;
    reg reg_out_SCLK = 1'b0;
    reg reg_out_MUTE = 1'b0;
    reg reg_out_MCLK = 1'b0;
    
    reg canal_counter = 2'b00;
    //reg [5:0] bit_counter = 5'b10000;
    reg state = IDLE;
    
    integer bit_counter = BIT_CHANGER_MAX_VALUE;
    
        always @(negedge in_BCLK)
        begin
            case(state)
                IDLE:
                    begin
                        if(in_en == 1'b1)
                            begin
                                reg_out_MUTE = 1'b1;
                                reg_out_ready = 1'b0;
                                canal_counter <= 2'b00;
                                state <= SEND;
                            end
                    end
                SEND:
                        begin
                            if(bit_counter < BPS) 
                                begin
                                    reg_out_PBDAT <= sample[(BPS-1) - bit_counter];
                                    bit_counter <= bit_counter +1;
                                end
                            else if(bit_counter < (BIT_CHANGER_MAX_VALUE-1))
                                begin
                                    reg_out_PBDAT <= 1'b0;
                                    bit_counter <= bit_counter +1;
                                    canal_counter <= canal_counter + 1'b1;
                                end
                            else
                                begin
                                    if (canal_counter == 2'b10)
                                        begin
                                            if (in_en == 1'b1)
                                                begin
                                                    bit_counter <= BIT_CHANGER_MAX_VALUE;
                                                    canal_counter <= 2'b00;
                                                    reg_out_ready <= 1'b1;
                                                end
                                            else
                                                begin
                                                    bit_counter <= BIT_CHANGER_MAX_VALUE;
                                                    canal_counter <= 2'b00;
                                                    reg_out_ready <= 1'b1;
                                                    state <= IDLE;
                                                end
                                        end
                                    else
                                        begin
                                            bit_counter <= 0;
                                            reg_out_PBDAT <= 1'b0;
                                            reg_out_PBLRC = ~reg_out_PBLRC;
                                        end
                                end
                        end
            endcase
        end
//    always @(posedge in_BCLK)
//        begin
//            case(state)
//                IDLE:
//                    begin
//                        if(in_en == 1'b1)
//                            begin
//                                reg_out_MUTE = 1'b1;
//                                reg_out_ready = 1'b0;
//                                canal_counter <= 2'b00;
//                                state <= SEND;
//                            end
//                    end
//                SEND:
//                    begin
//                        if(canal_counter == 2'b10)
//                            begin
//                                reg_out_ready <= 1'b1;
//                                if (in_en == 1'b1)
//                                    begin
//                                        canal_counter <= 1'b00;
//                                        state <= SEND;
//                                    end
//                                else
//                                    state <= IDLE;
//                            end
//                        else
//                            begin
//                                case(bit_counter)
//                                    5'b10000:
//                                        begin
//                                            reg_out_PBLRC = ~reg_out_PBLRC;
//                                            reg_out_PBDAT <= 16'd0;
//                                            canal_counter <= canal_counter + 1'b1;
//                                        end
//                                    5'b00000:
//                                        begin
//                                            reg_out_PBDAT <= sample[15];
//                                            bit_counter <= 5'b00001;
//                                        end
//                                    5'b00001:
//                                        begin
//                                            reg_out_PBDAT = sample[14];
//                                            bit_counter <= 5'b00010;
//                                        end
//                                    5'b00010:
//                                        begin
//                                            reg_out_PBDAT <= sample[13];
//                                            bit_counter <= 5'b00011;
//                                        end
//                                    5'b00011:
//                                        begin
//                                            reg_out_PBDAT <= sample[12];
//                                            bit_counter <= 5'b00010;
//                                        end
//                                    5'b00011:
//                                        begin
//                                            reg_out_PBDAT <= sample[12];
//                                            bit_counter <= 5'b00010;
//                                        end
//                                    5'b00100:
//                                        begin
//                                            reg_out_PBDAT <= sample[11];
//                                            bit_counter <= 5'b00101;
//                                        end
//                                    5'b00101:
//                                        begin
//                                            reg_out_PBDAT <= sample[10];
//                                            bit_counter <= 5'b00110;
//                                        end
//                                    5'b00110:
//                                        begin
//                                            reg_out_PBDAT <= sample[9];
//                                            bit_counter <= 5'b00111;
//                                        end
//                                    5'b00111:
//                                        begin
//                                            reg_out_PBDAT <= sample[8];
//                                            bit_counter <= 5'b01000;
//                                        end
//                                    5'b01000:
//                                        begin
//                                            reg_out_PBDAT <= sample[7];
//                                            bit_counter <= 5'b01001;
//                                        end
//                                    5'b01001:
//                                        begin
//                                            reg_out_PBDAT <= sample[6];
//                                            bit_counter <= 5'b01010;
//                                        end
//                                    5'b01010:
//                                        begin
//                                            reg_out_PBDAT <= sample[5];
//                                            bit_counter <= 5'b01011;
//                                        end
//                                    5'b01011:
//                                        begin
//                                            reg_out_PBDAT <= sample[5];
//                                            bit_counter <= 5'b01100;
//                                        end
//                                    5'b01100:
//                                        begin
//                                            reg_out_PBDAT <= sample[3];
//                                            bit_counter <= 5'b01101;
//                                        end
//                                    5'b01101:
//                                        begin
//                                            reg_out_PBDAT <= sample[2];
//                                            bit_counter <= 5'b01110;
//                                        end
//                                    5'b01110:
//                                        begin
//                                            reg_out_PBDAT <= sample[1];
//                                            bit_counter <= 5'b01111;
//                                        end
//                                    5'b01111:
//                                        begin
//                                            reg_out_PBDAT <= sample[0];
//                                            bit_counter <= 5'b10000;
//                                        end
//                                endcase
//                            end
//                    end
//            endcase
//        end
        
    assign out_ready = reg_out_ready;
    assign out_BLCK = in_BCLK;
    assign out_PBDAT = reg_out_PBDAT;
    assign out_PBLRC = reg_out_PBLRC;
    assign out_RECDAT = reg_out_RECDAT;
    assign out_RELCRC = reg_out_RELCRC;
    assign out_SDIN = reg_out_SDIN;
    assign out_SCLK = reg_out_SCLK;
    assign out_MUTE = reg_out_MUTE;
    assign out_MCLK = in_clk;
    
    
endmodule