`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2024 02:01:37 PM
// Design Name: 
// Module Name: upcounter_tb
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


module upcounter_tb(

    );
    reg [3:0]d;
    reg clk1,rst1,load1;
    wire [3:0]count1;
    parameter cycle=10;
    upcounter u1(d,clk1,rst1,load1,count1);
    
    task initialize();
    begin 
    d=0;
    load1=0;
    end endtask
    
    task rst_tb();
    begin
    @(negedge clk1)
    rst1=1;
    @(negedge clk1)
    rst1=0;
    end
    endtask
    
    always
    begin
    #(cycle/2);
    clk1=0;
    #(cycle/2);
    clk1=~clk1;
    end
    
    task load_input(input l,input [3:0]a);
    begin
    load1=l;
    d=a;
    end 
    endtask
    
    initial
    begin
    rst_tb();
    #20;
    load_input(1'b1,4'd13);
    #60;
    load_input(1'b0,4'd13);
    
    end
endmodule
