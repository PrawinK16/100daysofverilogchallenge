`timescale 1ns / 1ps
module posedge_detector_tb( );
    reg clk,data;
    wire edgedetector;
    
    positive_edge_detector p1(clk,data,edgedetector);
    
    initial 
    begin
    clk=0;
    forever #5 clk=~clk;
    end
    
    initial
    begin
    data = 0;
    #10;
    data <= 1;
    #3;
    data <= 0;
    #12;
    data <= 1;
    #15;
    data <=0;
    #100 $finish;
    end
     
endmodule
