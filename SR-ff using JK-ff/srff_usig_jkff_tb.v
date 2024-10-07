`timescale 1ns / 1ps
module srff_using_jkff_tb;
reg s,r,clk,rst;
wire q,qb;

srff_using_jkff t1(s,r,clk,rst,q,qb);

initial
begin
clk = 0;
forever #5 clk=~clk;
end

initial
begin
$monitor("time=%d,s=%b,r=%b,rst=%b,q=%b,qb=%b",$time,s,r,rst,q,qb);

rst=1;
#10;
rst=0;
repeat(10)
begin
    s<=$random;
    r<=$random;
    #5;
    end
    #10 $finish;
end
endmodule
