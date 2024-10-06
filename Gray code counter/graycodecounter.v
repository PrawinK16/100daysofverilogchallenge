`timescale 1ns / 1ps

module graycodecounter(
    input clk,rst,
    output [3:0] g_count
    );
    reg [3:0]q;
    always@(posedge clk)
    begin
    if(rst)
        q<=0;
    else
        q<=q+1;
    end
    
    assign g_count[3]=q[3];
    assign g_count[2]=q[3]^q[2];
    assign g_count[1]=q[2]^q[1];
    assign g_count[0]=q[1]^q[0];

endmodule
