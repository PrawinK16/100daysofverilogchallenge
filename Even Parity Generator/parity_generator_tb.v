`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2025 11:48:29 PM
// Design Name: 
// Module Name: parity_generator_tb
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


module parity_generator_tb();
        reg [3:0] data_in;
        reg clk;
        wire parity_bit;
        
        parity_generator p1(data_in,parity_bit);
        always #5 clk = ~clk;
        
        initial
        begin
        clk = 0;
        data_in = 4'b0001;
        
        #10;
        data_in = 4'b0000;
        
        #20
        $finish;
        end
endmodule
