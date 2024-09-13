`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2024 12:44:18 PM
// Design Name: 
// Module Name: tff1
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

module dff(
    input d,clk,rst,
    output reg q1);
    wire qb;
    
    always@(posedge clk)
    begin
    if(rst)
        q1<=0;
        
     else
        q1<=d;
        end
        assign qb=~q1;
        endmodule
    
    
module tff1(
input t,clk1,rst1,
output q
);
wire w;
xor x1(w,t,q);
dff d1(w,clk1,rst1,q);


endmodule
