`timescale 1ns / 1ps
module demux(
    input i,
    output reg [7:0] out,
    input [2:0] sel
    );
    
always@(*)
begin
out =0;
    case(sel)
    3'b000 : out[0] = i;
    3'b001 : out[1] = i;
    3'b010 : out[2] = i;
    3'b011 : out[3] = i;
    3'b100 : out[4] = i;
    3'b101 : out[5] = i;
    3'b110 : out[6] = i;
    3'b111 : out[7] = i;
    default : out = 8'b00000000;
    endcase
end
endmodule
