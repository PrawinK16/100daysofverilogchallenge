`timescale 1ns / 1ps

module gray_2_bin_tb();
  reg [4:0] x;
  wire [4:0] y;
  
  integer i;
  
  gray_2_bin dut(x,y);
  
initial
begin
  for(i=0;i<8;i=i+1)begin
    x = $random();
    #5;
  end
  
  #100;
  $finish;  
end
endmodule
