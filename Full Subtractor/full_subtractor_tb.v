`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 06:43:14 PM
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb();

  reg a;
  reg b;
  reg c;
  wire difference;
  wire borrow;
  integer i;
  
  full_subtractor dut(a,b,c,difference,borrow);
  
  initial
  begin
    for(i=0;i<8;i=i+1)begin
      {a,b,c} = i;
      #5;
    end
    #50;
    $finish;
  end
endmodule
