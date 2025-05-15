`timescale 1ns / 1ps

module HA(
input a,
input b,
output cout,
output sum
);
assign sum = a^b;
assign cout = a&b;
endmodule


module full_adder(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
    
    wire c1,s1,c2;
    HA h1(.a(a),.b(b),.cout(c1),.sum(s1));
    HA h2(.a(c),.b(s1),.cout(c2),.sum(sum));

assign carry = c1 | c2;
endmodule
