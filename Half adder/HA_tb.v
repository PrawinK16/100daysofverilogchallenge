`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2024 09:16:47 PM
// Design Name: 
// Module Name: HA_tb
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


module HA_tb(

    );
    reg x,y;
    wire carryout,sum1;
    integer i;
    HA h1(x,y,carryout,sum1);
    
    initial 
    begin
    x=0;
    y=0;
    end
    
    initial
    begin
    for(i=0;i<4;i=i+1)
    begin
    {x,y}=i;
    #10;
    end
    #20; $finish;
    end
    
endmodule
