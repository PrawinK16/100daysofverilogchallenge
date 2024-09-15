`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2024 01:41:01 PM
// Design Name: 
// Module Name: FIFO_TB
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


module FIFO_TB();
    
        reg [7:0]d;
        reg clk,rst,we,re;
        wire empty,full;
        wire [7:0] out;
        
        FIFO s1(d,we,re,clk,rst,empty,full,out);
        
        initial
        begin
        clk=1'b0;
        forever #5 clk=~clk;
        end
        
        task initialize;
        begin
        d=8'b0;
        {we,re}=2'b00;
        end
        endtask
         
        task rst_tb();
        begin
        @(negedge clk)
        rst=1;
        @(negedge clk)
        rst=0;
        end 
        endtask
        
        task write(input [7:0]a,input x);
        begin
        @(negedge clk)
        d=a;
        we=x;
        end
        endtask
        
        task read(input y);
        begin
        @(negedge clk)
        re=y;
        end
        endtask
        
        initial
        begin
        
        initialize;
        #10;
        rst_tb();
        #10;
        repeat(17)
        write({$random}%8, 1'b1);
        write({$random}%8, 1'b0);
        #10;
        repeat(17)
        read(1'b1);
        read(1'b0);
        end
        
    
endmodule

   