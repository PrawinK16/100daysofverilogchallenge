`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2025 11:42:01 PM
// Design Name: 
// Module Name: ROM_tb
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


module ROM_tb();

reg [3:0] addr;
wire [7:0] dataout;
integer i;
ROM dut(addr,dataout);

initial
begin
    for(i=0;i<16;i=i+1)begin
      addr = i;
      #5;
    end
end
endmodule
