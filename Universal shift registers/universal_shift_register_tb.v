`timescale 1ns / 1ps
module universal_shift_register_tb();
    reg clk;
    reg rst;
    reg [3:0] data;
    reg [2:0] x;
    wire [3:0] q;
    
    universal_shift_register s1(clk,rst,data,x,q);
    
    always #5 clk = ~clk;
    
    initial
    begin
        clk = 0;
        rst = 1;
        data = 4'd10;
        
        
        #10;
        rst = 0;
        x = 2'b11;
        data = 4'd6;
        
        #10;
        x = 2'b01;
        
        #10;
        x = 2'b10;
        
        
    end
endmodule
