`timescale 1ns / 1ps

module ROM(
    input [3:0] addr,
    output reg [7:0] dataout
    );
    
always@(*)
begin
    case(addr)
    0:dataout = 8'b11111111;
    1:dataout = 8'b10000001;
    2:dataout = 8'b10000001;
    3:dataout = 8'b10000001;
    4:dataout = 8'b10000001;
    5:dataout = 8'b10000001;
    6:dataout = 8'b01000010;
    7:dataout = 8'b00100101;
    8:dataout = 8'b00011001;
    9:dataout = 8'b00100100;
    10:dataout = 8'b01000010;
    11:dataout = 8'b10000001;
    12:dataout = 8'b10000001;
    13:dataout = 8'b10000001;
    14:dataout = 8'b10000001;
    15:dataout = 8'b11111111;
    default:dataout = 8'b000000000;   
    endcase      
end
endmodule
