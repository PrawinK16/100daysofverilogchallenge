`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2024 11:46:21 AM
// Design Name: 
// Module Name: Clockbuffer_tb
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


module Clockbuffer_tb(    );
    reg iclk;
    wire oclk;
    realtime t1,t2,t3,t4,t5,t6;
    
    Clock_buffer c1(iclk,oclk);
    initial
    begin
    iclk=0;
    forever #5 iclk=~iclk;
    end
    
    task bufin();
    begin
    @(negedge iclk)
    t1=$realtime;
    @(negedge iclk)
    t2=$realtime;
    t3=t2-t1;
    end
    endtask
    
    task bufout();
    begin
    @(negedge oclk)
    t3=$realtime;
    @(negedge oclk)
    t4=$realtime;
    t6=t4-t3;
    end
    endtask
    
    task freqphase();
    realtime f,p;
    begin
    f=t6-t3;
    p=t4-t1;
    $display("freq diff=%0t,phase diff=%0t",f,p);
    end
    endtask
    
    initial
    begin
    fork
    bufin;
    bufout;
    join
    freqphase;
    end
    
endmodule
