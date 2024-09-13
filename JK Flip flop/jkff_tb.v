`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2024 01:15:43 PM
// Design Name: 
// Module Name: jkff_tb
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


module jkff_tb(

    );
    reg j,k,clk1,rst1;
    wire q1;
    parameter cycle=10;
    jkff1 dut(j,k,rst1,clk1,q1);
    
    always
    begin
    #(cycle/2);
    clk1=0;
    #(cycle/2);
    clk1=~clk1;
    end
    
    task jkin(input a,b);
    begin
    j=a;
    k=b;
    end
    endtask
    
    task rst();
    begin
    @(negedge clk1);
    rst1=1;
     @(negedge clk1);
    rst1=0;
    end
    endtask
    
    initial
    begin
    rst();
    jkin(0,0);
    #20;
    jkin(0,1);
    #20;
    jkin(1,0);
    #20;
    jkin(1,1);
    #20;
    #100 $finish;
    end
    
    
    
    
endmodule
