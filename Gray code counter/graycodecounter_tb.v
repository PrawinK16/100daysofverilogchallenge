`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 02:51:53 PM
// Design Name: 
// Module Name: graycodecounter_tb
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


module graycodecounter_tb();
    reg clk,rst;
    wire [3:0]g_count;
    
    graycodecounter g1(clk,rst,g_count);
    
    initial
    begin
    clk=0;
    forever #5 clk=~clk;
    end
    
    task reset;
    begin
    @(negedge clk)
    rst=1;
    @(negedge clk)
    rst=0;
    end
    endtask
    
    task initialize;
    begin 
    rst=0;
    end 
    endtask
    
    initial
    begin
    initialize;
    reset;
     
   
    end
endmodule
