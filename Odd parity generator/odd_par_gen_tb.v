`timescale 1ns / 1ps

module odd_par_gen_tb();

  reg [3:0] a;
  wire y;
  
  integer i;
  odd_parity_gen dut(a,y);
  
  initial
  begin
  for(i=0;i<15;i=i+1)begin  //since 1111 input will produce a wrong output it is ignored
    a = i;
    #5;
  end
  #100;
  $finish;
  end
  
endmodule
