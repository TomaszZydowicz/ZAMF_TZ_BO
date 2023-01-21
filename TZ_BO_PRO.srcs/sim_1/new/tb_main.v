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

    localparam MESSAGE_SIZE = 1;
    localparam BPS = 16;
    localparam T = 8;//8; //100 for 10MHz, 8 for 125Mhz, 
    localparam T_internal = 13.56; //for 73.728MHz
    localparam CLKS_PER_BIT    = 640; //for 73.728MHz
    
    reg CLK = 0;
    reg[MESSAGE_SIZE-1:0] IN_MESSAGE = 0;
    reg r_rx_serial = 1;
    reg [1:0] mode = 0;
    reg reset= 0;
    
    wire tx_serial;
    wire tx_done;
    
    
    main #(.BPS(BPS), .MESSAGE_SIZE(MESSAGE_SIZE), .CLKS_PER_BIT(CLKS_PER_BIT)) m (
            .in_clk(CLK),
            .rx_serial(r_rx_serial),
            //.in_message(IN_MESSAGE),
            .in_mode(mode),
            .in_reset(reset),
            .tx_serial(tx_serial),
            .tx_done(tx_done)
    );
    
    localparam c_CLOCK_PERIOD_NS = T_internal;
    localparam c_BIT_PERIOD      = CLKS_PER_BIT * c_CLOCK_PERIOD_NS ;
    
     task UART_WRITE_BYTE;
        input [7:0] i_Data;
        integer     ii;
        begin
           
          // Send Start Bit
          r_rx_serial <= 1'b0;
          #(c_BIT_PERIOD);
          //#1000; - co to?
           
           
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
    
//    task create_new_message;
//        output [MESSAGE_SIZE-1:0] IN_MESSAGE;
//        reg b;
//        integer i;
//        begin
//            for (i=0 ; i < MESSAGE_SIZE ; i=i+1)
//                begin
//                    b = $random()%2;
//                    IN_MESSAGE = {IN_MESSAGE, b};
//                end  
//        end
//    endtask



    initial
        begin
            CLK = 1'b0;
            mode = 2'b01;
            //create_new_message(IN_MESSAGE);
            #(10*T);
            UART_WRITE_BYTE(8'h3F);
            UART_WRITE_BYTE(8'h03);
            #(10000*T);
            
            UART_WRITE_BYTE(8'hFF);
            UART_WRITE_BYTE(8'hE4);
            
            UART_WRITE_BYTE(8'hA9);
            UART_WRITE_BYTE(8'hB1);
            
            UART_WRITE_BYTE(8'hF1);
            UART_WRITE_BYTE(8'h1F);
            
            UART_WRITE_BYTE(8'hAA);
            UART_WRITE_BYTE(8'hBB);
            
            UART_WRITE_BYTE(8'h12);
            UART_WRITE_BYTE(8'h34);
            #(T)
//            create_new_message(IN_MESSAGE);
//            UART_WRITE_BYTE(8'h01);
//            #(T)
//            UART_WRITE_BYTE(8'hF0);
            #(1000000*T)
       
          

        $stop;

   end

  always
    #(T/2) CLK <= !CLK;

endmodule
