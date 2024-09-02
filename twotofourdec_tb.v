`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 09:58:40 PM
// Design Name: 
// Module Name: twotofourdec_tb
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


module twotofourdec_tb(   );
reg [1:0]y;
wire [3:0]i1;
integer i;
twotofourdec d1(.y(y),.i(i1));

initial
begin
y=0;
i=0;
#10;
end
initial 
begin
for(i=0;i<4;i=i+1)
begin
    y=i;
    #10;
    end
    
    #20;
    $finish;
    end
endmodule
