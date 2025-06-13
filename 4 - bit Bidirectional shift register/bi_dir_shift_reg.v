`timescale 1ns / 1ps

module bi_di_shift_reg(
 input clk, si, 
 input left_right,
 output po);
 
 reg [4:0] tmp;
 
 always @(posedge clk)
 begin
    if(left_right == 0)
       tmp <= {tmp[2:0], si};
    else
       tmp <= {si, tmp[3:1]};
 end
    assign po = tmp;
endmodule
