module twotofourdec(
    input [0:1] y,
    output reg [0:3] i
    );
always@(y)
begin
case(y)    
    2'b00   :i=4'b0001;
    2'b01   :i=4'b0010;
    2'b10   :i=4'b0100;
    2'b11   :i=4'b1000;
    default :i=4'bzzzz;
    endcase
    end
endmodule
