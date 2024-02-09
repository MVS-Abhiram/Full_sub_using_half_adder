`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 00:04:23
// Design Name: 
// Module Name: fs_us_ha_tb
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


module fs_us_ha_tb();
reg a,b,c;
wire diff,borrow;
fs_us_ha uut (a,b,c,diff,borrow);
   
initial begin
    #5 {a,b,c} = 3'd0;
    #5 {a,b,c} = 3'd1;
    #5 {a,b,c} = 3'd2;
    #5 {a,b,c} = 3'd3;
    #5 {a,b,c} = 3'd4;
    #5 {a,b,c} = 3'd5;
    #5 {a,b,c} = 3'd6;
    #5 {a,b,c} = 3'd7;
    # 100 $finish;
end
endmodule
