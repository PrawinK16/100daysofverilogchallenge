`timescale 1ns / 1ps

module tff_using_jkff_tb();
reg t,clk,rst;
wire q,qb;

tff_using_jkff t1(t,clk,rst,q,qb);

initial
begin
clk = 0;
forever #5 clk=~clk;
end

initial
begin
$monitor("time=%d,t=%b,rst=%b,q=%b,qb=%b",$time,t,rst,q,qb);

rst=1;
#10;
rst=0;
repeat(10)
begin
    t<=$random;
    #5;
    end
    #10 $finish;
end
endmodule
