`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2025 11:59:31
// Design Name: 
// Module Name: tbforlogic
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


module tbforlogic();
wire [3:0]sum;
wire car;
reg [3:0]a;
reg [3:0]b;
reg c;

fourbit dut(sum,car,a,b,c);

initial
begin
//To perform fourbit addition
a=4'b0000;b=4'b0000;c=0;
#10 a=4'b0001;b=4'b0001;c=0;
#10 a=4'b0010;b=4'b0000;c=0;
#10 a=4'b0011;b=4'b0001;c=0;
#10 a=4'b0100;b=4'b0110;c=0;

//To perform fourbit subtraction
#10 a=4'b0000;b=4'b0000;c=1;
#10 a=4'b0001;b=4'b0001;c=1;
#10 a=4'b0010;b=4'b0000;c=1;
#10 a=4'b0011;b=4'b0001;c=1;
#10 a=4'b0100;b=4'b0110;c=1;
end

initial
#110 $finish;

initial
$monitor($time,"a=%d,b=%d,c=%d,sum=%d,car=%d",a,b,c,sum,car);
endmodule
