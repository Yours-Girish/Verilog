`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2024 10:08:29
// Design Name: 
// Module Name: fourbit
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


module fourbit(sum,car,a,b,c);
input [3:0]a;
input [3:0]b;
input c;
output [3:0]sum;
output car;
wire [2:0]carry;
wire [3:0]x;


xor (x[0],b[0],c);
xor (x[1],b[1],c);
xor (x[2],b[2],c);
xor (x[3],b[3],c);

sample g(sum[0],carry[0],a[0],x[0],c);
sample u(sum[1],carry[1],a[1],x[1],carry[0]);
sample k(sum[2],carry[2],a[2],x[2],carry[1]);
sample l(sum[3],car,a[3],x[3],carry[2]);
endmodule
