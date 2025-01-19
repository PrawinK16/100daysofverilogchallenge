`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2025 12:03:28 AM
// Design Name: 
// Module Name: paritycheck_tb
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


module paritycheck_tb();
    reg [3:0] data_in;
    reg parity_bit;
    reg clk;
    
    wire error;
    
    paritycheck c1(data_in,parity_bit,error);
    
    always #10 clk = ~clk;
    
    initial
    begin
    clk = 0;
    data_in = 4'b0001;
    parity_bit = 1;
    
    #10;
    data_in = 4'b0000;
    parity_bit = 1;
    
    #20
    $finish;
    end
    
endmodule
