`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2022 19:33:41
// Design Name: 
// Module Name: uart2sample
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
  
module uart_rx   
    #(parameter CLKS_PER_BIT=87)
    (
    input                in_Clock,
    input                in_Rx_Serial,
    output               out_Rx_DV,
    output   [7:0]       out_Rx_Byte
    );
   
    reg                   Rx_Data_R_reg   = 1'b1;
    reg                   Rx_Data_reg     = 1'b1;
   
    reg       [10:0]      Clock_Count_reg = 0;
    reg       [2:0]       Bit_Index_reg   = 0; //8 bits total
    reg       [7:0]       Rx_Byte_reg     = 0;
    reg                   Rx_DV_reg       = 0;
    reg       [2:0]       state           = 0;
       
    localparam            IDLE            = 3'b000;
    localparam            RX_START_BIT    = 3'b001;
    localparam            RX_DATA_BITS    = 3'b010;
    localparam            RX_STOP_BIT     = 3'b011;
    localparam            CLEANUP         = 3'b100;
  
    // Purpose: Double-register the incoming data.
    // This allows it to be used in the UART RX Clock Domain.
    // (It removes problems caused by metastability)
    always @(posedge in_Clock)
      begin
        Rx_Data_R_reg                         <= in_Rx_Serial;
        Rx_Data_reg                           <= Rx_Data_R_reg;
      end
   
    always @(posedge in_Clock)
      begin
        case (state)
                                                                              
//////////////////////////////////////////////////////////////////////////////////
       
          IDLE :
            begin
              Rx_DV_reg                         <= 1'b0;
              Clock_Count_reg                   <= 0;
              Bit_Index_reg                     <= 0;
             
              if (Rx_Data_reg == 1'b0)          // Start bit detected
                state                           <= RX_START_BIT;
              else
                state                           <= IDLE;
            end
                                                                        
//////////////////////////////////////////////////////////////////////////////////
                
        // Check middle of start bit to make sure it's still low
        RX_START_BIT :
          begin
            if (Clock_Count_reg == (CLKS_PER_BIT-1)/2)
              begin
                if (Rx_Data_reg == 1'b0)
                  begin
                    Clock_Count_reg <= 0;  // reset counter, found the middle
                    state                       <= RX_DATA_BITS;
                  end
                else
                   state                        <= IDLE;
                end
            else
              begin
                Clock_Count_reg                 <= Clock_Count_reg + 1;
                state                           <= RX_START_BIT;
              end
          end
                                                                        
//////////////////////////////////////////////////////////////////////////////////
               
            // Wait CLKS_PER_BIT-1 clock cycles to sample serial data
            RX_DATA_BITS :
              begin
                if (Clock_Count_reg < CLKS_PER_BIT-1)
                  begin
                    Clock_Count_reg             <= Clock_Count_reg + 1;
                    state                       <= RX_DATA_BITS;
                  end
                else
                  begin
                    Clock_Count_reg             <= 0;
                    Rx_Byte_reg[Bit_Index_reg]  <= Rx_Data_reg;
                     
                    // Check if we have received all bits
                    if (Bit_Index_reg < 7)
                      begin
                        Bit_Index_reg           <= Bit_Index_reg + 1;
                        state                   <= RX_DATA_BITS;
                      end
                    else
                      begin
                        Bit_Index_reg           <= 0;
                        state                   <= RX_STOP_BIT;
                      end
                  end
              end
                                                                        
//////////////////////////////////////////////////////////////////////////////////
           
            // Receive Stop bit.  Stop bit = 1
            RX_STOP_BIT :
              begin
                // Wait CLKS_PER_BIT-1 clock cycles for Stop bit to finish
                if (Clock_Count_reg < CLKS_PER_BIT-1)
                  begin
                    Clock_Count_reg             <= Clock_Count_reg + 1;
                    state                       <= RX_STOP_BIT;
                  end
                else
                  begin
                    Rx_DV_reg                   <= 1'b1;
                    Clock_Count_reg             <= 0;
                    state                       <= CLEANUP;
                  end
              end
                                                                          
//////////////////////////////////////////////////////////////////////////////////
                   
            // 1 cycle delay
            CLEANUP :
              begin
                state                           <= IDLE;
                Rx_DV_reg                       <= 1'b0;
              end
             
             
            default :
              state                             <= IDLE;
             
          endcase
        end   
                                                                         
//////////////////////////////////////////////////////////////////////////////////
         
      assign out_Rx_DV                          = Rx_DV_reg;
      assign out_Rx_Byte                        = Rx_Byte_reg;
       
endmodule
