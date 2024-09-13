`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 09:27:42 PM
// Design Name: 
// Module Name: SRlatch_tb
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


module SRlatch_tb(

    );
    reg s,r;
    wire q1,q2;
    
    SRlatch l1(s,r,q1,q2);
    
    task initialize;
    begin
    s=0;
    r=0;
    end
    endtask
    
    task inputs(input a,b);
    begin 
    s=a;
    r=b;
    end
    endtask
    
    task delay();
    begin
    #10;
    end
    endtask
    
    initial 
    begin
    initialize;
    delay();
    inputs(0,0);
    delay();
    inputs(0,1);
    delay();
    inputs(1,0);
    delay();
    inputs(1,1);
    delay();
    end
endmodule
