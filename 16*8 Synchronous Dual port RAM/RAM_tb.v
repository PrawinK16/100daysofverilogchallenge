`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2024 12:50:46 AM
// Design Name: 
// Module Name: RAM_tb
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


module RAM_tb();
        reg [7:0]data;
        reg clk,rst,we,re;
        reg [3:0] w_addr,r_addr;
        wire [7:0] out;
        
        syncRAM s1(data,w_addr,r_addr,clk,rst,we,re,out);
        
        initial
        begin
        clk=1'b0;
        forever #5 clk=~clk;
        end
        
        task initialize;
        begin
        data=8'b0;
        {w_addr,r_addr}=8'b0;
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
        
        task write(input [7:0]d,input [3:0]a,input x);
        begin
        @(negedge clk)
        data=d;
        w_addr=a;
        we=x;
        end
        endtask
        
        task read(input [3:0]b,input y);
        begin
        @(negedge clk)
        r_addr=b;
        re=y;
        end
        endtask
        
        initial
        begin
        rst_tb();
        #10;
        initialize;
        #10;
        write({$random},4'b1100,1'b1);
        #10;
        read(4'b1100,1'b1);
        end
        
    
endmodule
