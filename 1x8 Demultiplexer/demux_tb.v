`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2025 12:38:30 PM
// Design Name: 
// Module Name: demux_tb
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


module demux_tb();

reg i;
reg [2:0]sel;
wire [7:0]out;
integer j;
demux dut(i,out,sel);

initial
begin
sel= 0;
i=0;
#5;
    for(j=0;j<8;j=j+1)begin
        sel = $random();
        i=$random();
        #5;
    end
    #200
    $finish;
end
endmodule
