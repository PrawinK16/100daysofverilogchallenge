`timescale 1ns / 1ps

module jkff(input j,k,clk,rst,
output reg q,
output qb);
always@(posedge clk)
begin
if(rst)
    q<=0;
else
    begin
    case({j,k})
    
        2'b00 : q<=q;
        2'b01 : q<=0;
        2'b10 : q<=1;
        2'b11 : q<=~q;
     
     endcase
     end
end
assign qb = ~q;
endmodule


module tff_using_jkff(
input t,clk,rst,
output q,qb
    );
jkff f1(t,t,clk,rst,q,qb);   
endmodule
