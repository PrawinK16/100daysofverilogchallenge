`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2024 02:22:11 AM
// Design Name: 
// Module Name: bi_buffer_tb
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


module bi_buffer_tb();
wire a,b;
reg ctrl;
reg a_temp,b_temp;
integer i;

bi_buffer dut(a,b,ctrl);
assign a=ctrl?a_temp:1'bz;
assign b=~ctrl?b_temp:1'bz;

initial
begin
for(i=0;i<8;i=i+1)
begin
{a_temp,b_temp,ctrl}=i;
#10;
end
end
initial
$monitor("a=%b,b=%b,ctrl=%b",a,b,ctrl);
endmodule
