`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2024 02:41:17 AM
// Design Name: 
// Module Name: clock_div_tb
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


module clock_div_tb;


	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire clk2;
	wire clk4;
	wire clk8;

	// Instantiate the Design Under Test (DUT)
	clock_divider dut (
		.clk(clk), 
		.clk2(clk2), 
		.clk4(clk4), 
		.clk8(clk8), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		#50 rst=1;
        
		// Add stimulus here

	end
	always
	#10 clk=~clk;
      
endmodule
   