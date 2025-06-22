`timescale 1ns / 1ps

module mux_tb #(parameter N=8)();
reg [N-1 : 0]A;
reg [$clog2(N)-1 : 0]sel;
wire y;

mux dut(A,sel,y);

initial begin
A=10;
sel=3;
#5;
A=5;
sel=2;

#10;
A=10;
sel=0;
#100 $finish;
end
endmodule
