`timescale 1ns / 1ps

module multiplier(
    input [3:0] a,
    input [3:0] b,
    output [7:0] out
    );
reg [7:0] temp [3:0];

always@(*)
begin
    temp[0] = (b[0]*a);
    temp[1] = (b[1]*a)<<1;
    temp[2] = (b[2]*a)<<2;
    temp[3] = (b[3]*a)<<3;

end

assign out = temp[0]+temp[1]+temp[2]+temp[3];
endmodule
