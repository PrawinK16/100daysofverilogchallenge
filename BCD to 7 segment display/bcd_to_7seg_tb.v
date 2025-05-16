`timescale 1ns / 1ps


module bcd_to_7seg_tb();
  reg [3:0]a;
  wire [6:0]out;
    integer i;
    bcd_to_7segment dut(a,out);
    
initial
begin
  for(i=0;i<10;i=i+1)begin
    a =i;
    #5;
  end
  #100;
  $finish;
end
endmodule
