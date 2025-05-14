`timescale 1ns / 1ps

module bin_2_gray(
  input [4:0] x,
  output [4:0] y
    );

assign y[4] = x[4];
assign y[3] = x[4]^x[3];
assign y[2] = x[3]^x[2];
assign y[1] = x[2]^x[1];
assign y[0] = x[1]^x[0];
endmodule
