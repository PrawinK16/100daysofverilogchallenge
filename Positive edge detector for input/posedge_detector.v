`timescale 1ns / 1ps

module positive_edge_detector(
    input clk,data,
    output edgedetected
    );
    reg q;
    always@(posedge clk)
    begin
    q<=data;
    end
    assign edgedetected = data & ~q;
    
endmodule
