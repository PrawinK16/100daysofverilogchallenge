`timescale 1ns / 1ps
module fibonacci_sequence(
    input clk,
    input rst,
    output reg [32:0] current,
    output reg [32:0] next
    );
    
always@(posedge clk)
begin
  if(rst)begin
    current <= 0;
    next <= 1;
   end
   
   else begin
     {current,next} = {next,next+current};
     end
end
endmodule
