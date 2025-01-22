`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2024 09:46:27
// Design Name: 
// Module Name: sample
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


module sample(sum,carry,a,b,c);
input a,b,c;
output sum,carry;

assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule
