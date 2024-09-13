`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2024 03:35:49 PM
// Design Name: 
// Module Name: siso_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module siso_tb(
    
    );
    reg clk,rst,si;
    wire so;
    
    siso1 s1(clk,rst,si,so);
    
    initial
    begin
    clk=1'b0;
    forever #5 clk = ~clk;
    end
    
    task rst_tb();
    begin
    @(negedge clk)
    rst=1;
    @(negedge clk)
    rst=0;
    end 
    endtask
    
    task initialize();
    begin
    si=0;
    end
    endtask
    
    initial 
    begin
    initialize;
    rst_tb();
    #10;
    si=1'b1;
    
    end
    
endmodule
