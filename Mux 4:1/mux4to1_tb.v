`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2024 15:55:07
// Design Name: 
// Module Name: mux4to1_tb
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


module mux4to1_tb(
    
    );
    
    reg [3:0]i;
    reg [1:0]s;
    wire out;
    integer j,k;
    mux4to1 m1(i,s,out);
    initial 
    begin
    i=0;
    s=0;
    end
    
    initial 
    begin
    for(j=0;j<4;j=j+1)
    begin
        s=j;
        #10;
        for(k=0;k<16;k=k+1)
        begin
        i=k;
        #10;
        end
        end
        end
endmodule
