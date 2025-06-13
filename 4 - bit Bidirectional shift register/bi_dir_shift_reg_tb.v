`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2025 11:27:53 PM
// Design Name: 
// Module Name: bi_dir_shift_reg_tb
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


module bi_dir_shift_reg_tb();

reg clk;
reg  si; 
reg left_right;
wire po;

bi_di_shift_reg dut(clk,si,left_right,po);

always #5 clk = ~clk;

initial begin
clk =0;
si = 0;
left_right = 0;

#15;
si = 1;
left_right = 0;
#100
$finish;
end
endmodule
