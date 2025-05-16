`timescale 1ns / 1ps
module full_subtractor(
  input a,b,c,
  output difference,borrow 
    );
    
assign difference = a ^ b ^ c;
assign borrow = ~a&b | ~a&c | b&c;
endmodule
