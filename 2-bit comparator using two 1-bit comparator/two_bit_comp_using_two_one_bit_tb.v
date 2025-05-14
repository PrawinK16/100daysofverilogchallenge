`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2025 12:29:25 AM
// Design Name: 
// Module Name: two_bit_comp_using_two_one_bit_tb
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


module two_bit_comp_using_two_one_bit_tb();
  reg [1:0] x;
  reg [1:0] y;
  wire eq_out;
  wire ls_out;
  wire gt_out;
  
  integer i;
  two_bit_comp_using_two_one_bit dut(x,y,eq_out,gt_out,ls_out);


initial
begin
  for(i=0;i<8;i=i+1)begin
    x = $random;
    y = $random;
    #5;
    end
    #1000;
    $finish;
end
endmodule
