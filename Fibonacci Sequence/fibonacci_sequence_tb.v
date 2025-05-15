`timescale 1ns / 1ps

module fibonacci_sequence_tb();

  reg clk;
  reg rst;
  wire [32:0] current;
  wire [32:0] next;
  
  fibonacci_sequence dut(clk,rst,current,next);
  
  initial
  begin
  
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial
  begin
    rst = 1;
    #10;
    rst = 0;
    #200;
    $finish;
  end
endmodule
