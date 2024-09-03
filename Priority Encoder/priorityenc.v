`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 07:43:19 PM
// Design Name: 
// Module Name: priorityenc
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


module priorityenc(
input [7:0]a,
input en,
output reg [2:0]out
);
always@(en,a)
begin
if(en==1)
    begin
    if(a[7]==1)
        out=3'b111;
     else if(a[6]==1)
        out=3'b110;
     else if(a[5]==1)
        out=3'b110;
     else if(a[4]==1)
        out=3'b110;
     else if(a[3]==1)
        out=3'b110;
     else if(a[2]==1)
        out=3'b110;
     else if(a[1]==1)
        out=3'b110;
      else 
        out=3'b000;
        end  
else
    out=3'bzzz;
    end            
endmodule
