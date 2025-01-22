`timescale 1ns / 1ps
module pipo_tb( );
        reg clk,rst,load;
        reg [3:0] parallel_in;
        
        wire [3:0] parallel_out;
        
        pipo p1(clk,rst,load,parallel_in,parallel_out);
        
        always #5 clk = ~clk;
        
        initial
        begin
        clk = 0;
        rst = 1;
        parallel_in = 4'd7;
        
        #10;
        rst = 0;
        load = 1;
        parallel_in = 4'd12;
        
        #10;
        rst = 0;
        load = 1;
        parallel_in = 4'd4;
        end
endmodule
