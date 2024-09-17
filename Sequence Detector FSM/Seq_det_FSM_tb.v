`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 08:22:02 PM
// Design Name: 
// Module Name: Seq_det_FSM_tb
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


module Seq_det_FSM_tb( );
            reg in,clk,rst;
            wire out;
            
            seq_detector s1(in,clk,rst,out);
            initial
            begin
            clk=1'b0;
            forever #5 clk=~clk;
            end
            
            initial
            begin
            in=0; rst=0;
            @(negedge clk)
            rst=1;
            @(negedge clk)
            in=1;
            @(negedge clk)
            in=0;
            @(negedge clk)
            in=1;
            @(negedge clk)
            in=1;
            @(negedge clk)
            in=0;
            @(negedge clk)
            in=0;
            #100;
            end
endmodule
