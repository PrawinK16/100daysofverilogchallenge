`timescale 1ns / 1ps
module ring_counter_tb(

    );
    reg clk,rst;
    wire [3:0]q;
    
    ring_counter dut(.clk(clk),.rst(rst),.q(q));
    
    initial
    begin
    clk =0;
    forever #5 clk = ~clk;
    end
    
    initial 
    begin 
    rst =1;
    #10;
    rst = 0;
    #100 $finish;
    end
    endmodule