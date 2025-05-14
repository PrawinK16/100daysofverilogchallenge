`timescale 1ns / 1ps

module tri_buffer_tb();
  reg a;
  reg ctrl;
  wire out;
  
  integer i;
  tri_buffer dut(a,ctrl,out);
  
initial
begin
  for(i=0;i<8;i=i+1)begin
  a = $random();
  ctrl = $random();
  #5;
  $display("a = %0d, ctrl = %0d",a,ctrl);
  #10;
  end
  
  #300;
  $finish();
end  
endmodule
