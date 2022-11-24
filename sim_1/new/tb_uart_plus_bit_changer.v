`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.10.2022 19:39:32
// Design Name: 
// Module Name: tb_uart_plus_bit_changer
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


module tb_uart_plus_bit_changer();


    localparam FRAME_SIZE = 1;
    localparam BPS = 16;
    localparam T = 10;
    localparam c_CLOCK_PERIOD_NS = 100;
    localparam c_CLKS_PER_BIT    = 87;
    localparam c_BIT_PERIOD      = 8600;

    reg CLK;
//    reg[FRAME_SIZE*BPS-1:0] IN_FRAME;
    reg[FRAME_SIZE-1:0] IN_MESSAGE;
    wire[FRAME_SIZE*BPS-1:0] OUT_FRAME;
    wire OUT_READY;
    reg b;
    integer i;
    reg r_Rx_Serial = 1;
    wire [7:0] w_Rx_Byte;
    wire UART_READY;
    wire [15:0] SAMPLE;
    wire U2S_READY;

    bit_changer_seq #(.BPS(BPS), .FRAME_SIZE(FRAME_SIZE)) bcs1 (
                  .in_clk(CLK),
                  .in_enable(U2S_READY),
                  .in_frame(SAMPLE),
                  .in_message(IN_MESSAGE),
                  .out_frame(OUT_FRAME),
                  .out_ready(OUT_READY));
                  
    uart2sample u2s (
            .in_clk(CLK),
            .in_uart_ready(UART_READY),
            .in_uart_frame(w_Rx_Byte),
            .out_frame(SAMPLE),
            .out_ready(U2S_READY)
    );
                  
      uart_rx #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_RX_INST
    (.i_Clock(CLK),
     .i_Rx_Serial(r_Rx_Serial),
     .o_Rx_DV(UART_READY),
     .o_Rx_Byte(w_Rx_Byte)
     );
     
     uart_tx #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_TX_INST
     ( .i_Clock(),
       .i_Tx_DV(),
       .i_Tx_Byte(), 
       .o_Tx_Active(),
       .o_Tx_Serial(),
       .o_Tx_Done()
     );
     
    task UART_WRITE_BYTE;
        input [7:0] i_Data;
        integer     ii;
        begin
           
          // Send Start Bit
          r_Rx_Serial <= 1'b0;
          #(c_BIT_PERIOD);
          #1000;
           
           
          // Send Data Byte
          for (ii=0; ii<8; ii=ii+1)
            begin
              r_Rx_Serial <= i_Data[ii];
              #(c_BIT_PERIOD);
            end
           
          // Send Stop Bit
          r_Rx_Serial <= 1'b1;
          #(c_BIT_PERIOD);
         end
    endtask // UART_WRITE_BYTE
    
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



    initial
        begin
            CLK = 1'b0;
            create_new_message(IN_MESSAGE);
            #(T)
            UART_WRITE_BYTE(8'h3F);
            #(T)
            UART_WRITE_BYTE(8'hFF);
            #(T)
            create_new_message(IN_MESSAGE);
            UART_WRITE_BYTE(8'h01);
            #(T)
            UART_WRITE_BYTE(8'hF0);
            #(T)
            @(posedge OUT_READY);
       
          

        $stop;

   end

  always
    #(c_CLOCK_PERIOD_NS/2) CLK <= !CLK;
endmodule

