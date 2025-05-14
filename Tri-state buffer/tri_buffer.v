`timescale 1ns / 1ps

module tri_buffer(
  input a,ctrl,
  output reg out
    );
    
always@(*)
begin
  if(ctrl)
    out <= a;
  else
    out <= 1'bz; 
end
endmodule

