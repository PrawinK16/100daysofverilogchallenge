`timescale 1ns / 1ps
module universal_shift_register(
    input clk,
    input rst,
    input [3:0] data,
    input [2:0] x,
    output reg [3:0] q
    );
    
    always@(posedge clk or posedge rst)
    begin
        if(rst)
            q <= 0;
        else
            begin
            case(x)
                2'b00: q <= q; //hold
                2'b01: q <= {q[0],q[3:1]}; //right shift
                2'b10: q <= {q[2:0],q[3]}; //left shift
                2'b11: q <= data; //load parallel data
                default : q <= q;
                
            endcase
            end
    end
endmodule
