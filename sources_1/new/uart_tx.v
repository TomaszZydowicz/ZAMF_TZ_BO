`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2022 21:37:42
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

// CLKS_PER_BIT = (Frequency of i_Clock)/(Frequency of UART)
// Example: 10 MHz Clock, 115200 baud UART
// (10000000)/(115200) = 87
  
module uart_tx 
  #(parameter CLKS_PER_BIT=87)
  (
   input                in_Clock,
   input                in_Tx_DV,
   input        [7:0]   in_Tx_Byte, 
   output               out_Tx_Active,
   output reg           out_Tx_Serial,
   output               out_Tx_Done
   );
  

  reg [2:0]     state           = 0;
  reg [10:0]    Clock_Count_reg = 0;
  reg [2:0]     Bit_Index_reg   = 0;
  reg [7:0]     Tx_Data_reg     = 0;
  reg           Tx_Done_reg     = 0;
  reg           Tx_Active_reg     = 0;
   
  localparam    IDLE            = 3'b000;
  localparam    TX_START_BIT    = 3'b001;
  localparam    TX_DATA_BITS    = 3'b010;
  localparam    TX_STOP_BIT     = 3'b011;
  localparam    CLEANUP         = 3'b100;
     
  always @(posedge in_Clock)
    begin      
      case (state)
                                                      
//////////////////////////////////////////////////////////////////////////////////
            
        IDLE :
          begin
            out_Tx_Serial   <= 1'b1;         // Drive Line High for Idle
            Tx_Done_reg     <= 1'b0;
            Clock_Count_reg <= 0;
            Bit_Index_reg   <= 0;
             
            if (in_Tx_DV == 1'b1)
              begin
                Tx_Active_reg                   <= 1'b1;
                Tx_Data_reg                     <= in_Tx_Byte;
                state                           <= TX_START_BIT;
              end
            else
              state <= IDLE;
          end
                                                
//////////////////////////////////////////////////////////////////////////////////
                 
        // Send out Start Bit. Start bit = 0
        TX_START_BIT :
          begin
            out_Tx_Serial <= 1'b0;
             
            // Wait CLKS_PER_BIT-1 clock cycles for start bit to finish
            if (Clock_Count_reg < CLKS_PER_BIT-1)
              begin
                Clock_Count_reg                 <= Clock_Count_reg + 1;
                state                           <= TX_START_BIT;
              end
            else
              begin
                Clock_Count_reg                 <= 0;
                state                           <= TX_DATA_BITS;
              end
          end
                                                
//////////////////////////////////////////////////////////////////////////////////
                    
        // Wait CLKS_PER_BIT-1 clock cycles for data bits to finish         
        TX_DATA_BITS :
          begin
            out_Tx_Serial                       <= Tx_Data_reg[Bit_Index_reg];
             
            if (Clock_Count_reg < CLKS_PER_BIT-1)
              begin
                Clock_Count_reg                 <= Clock_Count_reg + 1;
                state                           <= TX_DATA_BITS;
              end
            else
              begin
                Clock_Count_reg                 <= 0;
                 
                // Check if we have sent out all bits
                if (Bit_Index_reg < 7)
                  begin
                    Bit_Index_reg               <= Bit_Index_reg + 1;
                    state                       <= TX_DATA_BITS;
                  end
                else
                  begin
                    Bit_Index_reg               <= 0;
                    state                       <= TX_STOP_BIT;
                  end
              end
          end
                                                
//////////////////////////////////////////////////////////////////////////////////
                     
        // Send out Stop bit.  Stop bit = 1
        TX_STOP_BIT :
          begin
            out_Tx_Serial                       <= 1'b1;
             
            // Wait CLKS_PER_BIT-1 clock cycles for Stop bit to finish
            if (Clock_Count_reg < CLKS_PER_BIT-1)
              begin
                Clock_Count_reg                 <= Clock_Count_reg + 1;
                state                           <= TX_STOP_BIT;
              end
            else
              begin
                Tx_Done_reg                     <= 1'b1;
                Clock_Count_reg                 <= 0;
                state                           <= CLEANUP;
                Tx_Active_reg                   <= 1'b0;
              end
          end
                                                
//////////////////////////////////////////////////////////////////////////////////
                   
        // 1 cycle delay
        CLEANUP :
          begin
            Tx_Done_reg                         <= 1'b1;
            state                               <= IDLE;
          end
         
         
        default :
          state <= IDLE;
         
      endcase
    end
 
  assign out_Tx_Active                          = Tx_Active_reg;
  assign out_Tx_Done                            = Tx_Done_reg;
   
endmodule
