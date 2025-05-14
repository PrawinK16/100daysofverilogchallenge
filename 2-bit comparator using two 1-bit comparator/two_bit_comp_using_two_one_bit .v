`timescale 1ns / 1ps

module one_bit_comp(
  input a,b,
  output eq,gt,ls
);
assign eq = ~(a^b);
assign gt = a & ~b;
assign ls = ~a & b;

endmodule


module two_bit_comp_using_two_one_bit(
  input [1:0]x,y,
  output eq_out,gt_out,ls_out  
    );
    
    wire eq1,gt1,ls1,eq0,gt0,ls0;
    
    one_bit_comp d1(.a(x[0]),.b(y[0]),.eq(eq0),.gt(gt0),.ls(ls0));
    one_bit_comp d2(.a(x[1]),.b(y[1]),.eq(eq1),.gt(gt1),.ls(ls1));
    
    assign eq_out = eq1 & eq0;
    assign gt_out = gt1 | (eq1 & gt0);
    assign ls_out = ls1 | (eq1 & ls0);
endmodule
