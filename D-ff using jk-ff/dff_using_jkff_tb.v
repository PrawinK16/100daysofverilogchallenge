`timescale 1ns / 1ps

module dff_using_jkff_tb;
reg d,clk,rst;
wire q,qb;

dff_using_jkff t1(d,clk,rst,q,qb);

initial
begin
clk = 0;
forever #5 clk=~clk;
end

initial
begin
$monitor("time=%d,d=%b,rst=%b,q=%b,qb=%b",$time,d,rst,q,qb);

rst=1;
#10;
rst=0;
repeat(10)
begin
    d<=$random;
    #5;
    end
    #10 $finish;
end
endmodule

  