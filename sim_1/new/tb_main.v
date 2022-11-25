`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2022 13:07:38
// Design Name: 
// Module Name: tb_main
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


module tb_main();

    localparam FRAME_SIZE = 1;
    localparam BPS = 16;
    localparam T = 100; //10Mhz clk
    localparam CLKS_PER_BIT    = 87;
    
    reg CLK = 0;
    reg[FRAME_SIZE-1:0] IN_MESSAGE = 0;
    reg r_rx_serial = 1;
    
    wire tx_serial;
    wire tx_done;
    
    main #(.BPS(BPS), .FRAME_SIZE(FRAME_SIZE), .CLKS_PER_BIT(CLKS_PER_BIT)) m (
            .in_clk(CLK),
            .rx_serial(r_rx_serial),
            .in_message(IN_MESSAGE),
            .tx_serial(tx_serial),
            .tx_done(tx_done)
    );
    
    localparam c_CLOCK_PERIOD_NS = 100;
    localparam c_BIT_PERIOD      = 8600;
    
     task UART_WRITE_BYTE;
        input [7:0] i_Data;
        integer     ii;
        begin
           
          // Send Start Bit
          r_rx_serial <= 1'b0;
          #(c_BIT_PERIOD);
          #1000;
           
           
          // Send Data Byte
          for (ii=0; ii<8; ii=ii+1)
            begin
              r_rx_serial <= i_Data[ii];
              #(c_BIT_PERIOD);
            end
           
          // Send Stop Bit
          r_rx_serial <= 1'b1;
          #(c_BIT_PERIOD);
         end
    endtask // UART_WRITE_BYTE
    
    task create_new_message;
        output [FRAME_SIZE-1:0] IN_MESSAGE;
        reg b;
        integer i;
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
//            create_new_message(IN_MESSAGE);
//            UART_WRITE_BYTE(8'h01);
//            #(T)
//            UART_WRITE_BYTE(8'hF0);
            #(T)
       
          

        $stop;

   end

  always
    #(T/2) CLK <= !CLK;
endmodule
