`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2025 12:10:05 PM
// Design Name: 
// Module Name: mutiplier_tb
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


module mutiplier_tb();

reg [3:0]a;
reg [3:0]b;
wire [7:0]out;

multiplier dut(a,b,out);

initial 
begin
    a=0;
    b=0;
    #5;
    a=9;
    b=3;
    #10;
    a=5;
    b=10;
    #10;
    a=7;
    b=7;
    #100
    $finish;
end
endmodule
