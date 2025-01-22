`timescale 1ns / 1ps
module pipo(
    input clk,
    input rst,load,
    input [3:0] parallel_in,
    output [3:0] parallel_out
    );
    reg [3:0] wires;
    
    always@(posedge clk or posedge rst)
    begin
        if(rst)
            wires <= 0;
        else if(load)
            wires <= parallel_in;
    end
    assign parallel_out = wires; 
endmodule
