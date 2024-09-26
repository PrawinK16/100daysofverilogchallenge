`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2024 03:08:10 PM
// Design Name: 
// Module Name: FSM_test_tb
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


module FSM_test_tb();
            reg [1:0]in;
            reg clk,rst;
            wire [1:0] out;
         
            fsm_test f1(in,clk,rst,out);
            initial
            begin
            clk=1'b0;
            forever #5 clk=~clk;
            end
            
            initial
            begin
            rst=0;
            @(negedge clk)
            rst=1;
            @(negedge clk)
            in=2'd1;
            @(negedge clk)
            in=2'd1;
            @(negedge clk)
            in=2'd1;
            @(negedge clk)
            in=2'd0;
            @(negedge clk)
            in=2'd3;
            @(negedge clk)
            in=2'd2;
            #100;
            end
endmodule
