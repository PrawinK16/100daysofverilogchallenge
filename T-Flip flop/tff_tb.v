`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2024 11:59:00 AM
// Design Name: 
// Module Name: tff_tb
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


module tff_tb(

    );
    reg t,clk,rst;
    wire q1;
    parameter cycle=10;
    
    tff1 t1(t,clk,rst,q1);
    
    always
    begin
    #(cycle/2);
    clk=1'b0;
    #(cycle/2);
    clk=~clk;
    end
    
    task initialize();
    begin
    t=0;
    end
    endtask
    
    task inputs(input a);
    begin
    t=a;
    end
    endtask
    
    task rst_tb();
    begin
    @(negedge clk)
    rst=1'b1;
    @(negedge clk)
    rst=1'b0;
    end
    endtask
    
    initial
    begin
    initialize();
    rst_tb();
    inputs(1);
    #10;
    inputs(0);
    #10;
    
    end
endmodule
