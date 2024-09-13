module dff(
    input d,clk,rst,
    output reg q1);
    wire qb;
    
    always@(posedge clk)
    begin
    if(rst)
        q1<=0;
        
     else
        q1<=d;
        end
        assign qb=~q1;
        endmodule
    
    
module tff1(
input t,clk1,rst1,
output q
);
wire w;
xor x1(w,t,q);
dff d1(w,clk1,rst1,q);


endmodule
