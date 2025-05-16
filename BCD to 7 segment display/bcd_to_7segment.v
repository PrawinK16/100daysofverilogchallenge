`timescale 1ns / 1ps
module bcd_to_7segment(
    input [3:0] a,
    output reg [6:0] out
    );
always@(a)
begin
  
if(a==4'd0)
    out = 7'b0111111;
else if(a==4'd1)
    out = 7'b0000110;
else if(a == 4'd2)
    out = 7'b1011011;
else if(a==4'd3)
    out = 7'b1001111;
else if(a==4'd4)
    out = 7'b1100110;
else if(a==4'd5)
    out = 7'b1101101;
else if(a==4'd6)
    out = 7'b1111101;
else if(a==4'd7)
    out = 7'b0000111;
else if(a==4'd8)
    out = 7'b1111111;
else if(a==4'd9)
    out = 7'b1101111;
else
    out = 7'b0000000;
end
endmodule
