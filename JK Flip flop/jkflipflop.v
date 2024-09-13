module jkff1(
    input j,k,rst,clk,
    output reg q
    );
    wire qb;
    parameter HOLD=2'b00,
              SET=2'b01,
              RESET=2'b10,
              TOGGLE=2'b11;
              
    always@(posedge clk)
    begin
    if(rst)
        q<=0;
    else 
    begin
    case({j,k})
        HOLD : q<=q;
        SET : q<=1;
        RESET : q<=0;
        TOGGLE : q<=~q;
        endcase
        end
        end
      assign qb=~q;
endmodule
