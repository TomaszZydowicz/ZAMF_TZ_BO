int main()
{

    Xil_Out32(0xe000501c, 0x1f);
//Set divider + addressing mode
    Xil_Out32(0xE0005000, 0x9004);
//master -> ACK -> CLR FIFO -> hold bus
    Xil_Out32(0xE0005000, 0x9004 + 2 + 8);

    writeReg(15,0);
    usleep(1000);
    writeReg(6, 0b001110000);
    writeReg(2, 0b101111001);
    writeReg(3, 0b101111001);
    writeReg(4, 0);
    writeReg(5, 0);
    writeReg(7, 0b000001001);
    writeReg(8, 0b000111000);
    usleep(1000);
    writeReg(9, 1);
    usleep(1000);
    writeReg(6, 32);
    usleep(1000);
    writeReg(4,16+6);
	
	
}

int readReg(int addr) {
 //master -> ACK -> CLR FIFO -> hold bus
     u32 in2 = Xil_In32(0xE0005000) | 64 | 16;
     in2 = in2 & ~1;
     Xil_Out32(0xE0005000, in2);
     //write data to register
         Xil_Out32(0xE000500c, addr << 1);
     //write address
         Xil_Out32(0xE0005008, 26);
     // Wait for completion
         u32 status = Xil_In32(0xe0005010) & 1;
         do {
          status = Xil_In32(0xe0005010) & 1;
         } while (!status);

         //clear interrupts
         Xil_Out32(0xe0005010, 1);

         //set hold bus -> read -> clear fifo
         in2 = Xil_In32(0xe0005000) | 16 | 1 | 64;
         Xil_Out32(0xe0005000, in2);
         //set transfer size
         Xil_Out32(0xe0005014, 2);
         //set address
         Xil_Out32(0xe0005008, 26);
         //clear hold
         in2 = Xil_In32(0xe0005000) & (~16);
         Xil_Out32(0xe0005000, in2);
         //wait for completion
         do {
          status = Xil_In32(0xe0005010) & 1;
         } while (!status);
         Xil_Out32(0xe0005010, 1);
         u32 byte0 = Xil_In32(0xe000500c);
         u32 byte1 = Xil_In32(0xe000500c);
         return byte0 | (byte1 << 8);

}

void writeReg(int addr, int data) {
 //master -> ACK -> CLR FIFO -> hold bus
     u32 in2 = Xil_In32(0xE0005000) | 64 | 16;
     in2 = in2 & ~1;
     Xil_Out32(0xE0005000, in2);
     //write data to register
         Xil_Out32(0xE000500c, (addr << 1) | ((data & 256) ? 1 : 0));
         Xil_Out32(0xE000500c, data & 255);
     //write address
         Xil_Out32(0xE0005008, 26);
     // Wait for completion
         u32 status = Xil_In32(0xe0005010) & 1;
         do {
          status = Xil_In32(0xe0005010) & 1;
         } while (!status);

         //clear interrupts
         Xil_Out32(0xe0005010, 1);

         in2 = Xil_In32(0xe0005000) & (~16);
         Xil_Out32(0xe0005000, in2);
       return;
}