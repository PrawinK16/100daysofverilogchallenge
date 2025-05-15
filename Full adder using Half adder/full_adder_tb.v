`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/15/2025 11:58:30 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();

  reg a;
  reg b;
  reg c;
  wire sum;
  wire carry;
  integer i;
  full_adder dut(a,b,c,sum,carry);
  
  initial
  begin
    for(i=0;i<8;i=i+1)begin
      {a,b,c} = i;
      #5;
      
    end
    
    #100;
    $finish;
  end
endmodule
