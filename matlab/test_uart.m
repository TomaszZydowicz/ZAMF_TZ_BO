clear 
close all

[y,Fs] = audioread("snow_white_instant.wav");
y = y(354:640+354,1);
y_coded = zeros(1,length(y)).';
q = quantizer([16 15]);
bin_y= num2bin(q,y);

PORT = "COM5";
BAUDRATE = 115200;
BYTEORDER = "little-endian"; % "big-endian"

serial_port = serialport(PORT,BAUDRATE,"ByteOrder",BYTEORDER);
flush(serial_port);
msg_coded = [];

for i=1:1:length(y)

    bit_stream = bin_y(i,:);
    to_send = typecast(uint16(bin2dec(bit_stream)), 'uint16');  
    write(serial_port,to_send,"uint16");
    
    y_c = read(serial_port,1,"uint16");
    
    bin_y_c = dec2bin(y_c,16);
    y_c = bin2num(q,bin_y_c);
    
    msg_coded = [msg_coded bin_y_c(16) ]; 
    y_coded(i) = y_c;
end

msg_text = bin2ASCII(msg_coded);

 function y = bin2ASCII(x)
            temp = '00000000';
            y = char(ones(1,round(length(x)/4)-1) * 'x');
            t = 1;
            for n = 1:8:(round(length(x)/4)-1)
                temp = x((n:n+7));
                y(t) = char(bin2dec(temp));
                t = t + 1;
            end
end
