`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 23:53:35
// Design Name: 
// Module Name: fs_us_ha
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
module Half_adder(a,b,sum,carry);
input a,b;
output sum, carry;
assign sum = a^b;
assign carry = a&b;
endmodule

module fs_us_ha(a,b,c,diff,borrow);
input a,b,c;
output borrow, diff;
wire w1,w2,w3,w4,w5;
not (w1,a);
Half_adder ha1(.a(w1),.b(b),.sum(w2),.carry(w3));
Half_adder ha2(.a(w2),.b(c),.sum(w5),.carry(w4));
not(diff,w5);
or (borrow,w3,w4);
endmodule
