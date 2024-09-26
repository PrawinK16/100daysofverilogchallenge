module fsm_test(
    input [1:0] in,
    input clk, rst,
    output [1:0] out
    );
    
    parameter idle = 3'b000,
              i0   = 3'b001,
              i1   = 3'b010,
              i2   = 3'b011,
              i3   = 3'b100;
              
    reg [2:0] ps, ns;
    
    always @(posedge clk or negedge rst) begin
        if (!rst)
            ps <= idle;  
        else
            ps <= ns;
    end
    
    always @(ps or in) begin
        ns = idle;  
        case (ps)
            idle: begin
                if (in == 2'b00)       ns = i0;
                else if (in == 2'b01)  ns = i1;
                else if (in == 2'b10)  ns = i2;
                else if (in == 2'b11)  ns = i3;
            end
            i0: begin
                ns = i0;  
            end
            i1: begin
                if (in == 2'b00)       ns = i0;
                else                   ns = i1;
            end
            i2: begin
                if (in == 2'b00)       ns = i0;
                else if (in == 2'b01)  ns = i1;
                else                   ns = i2;
            end
            i3: begin
                if (in == 2'b00)       ns = i0;
                else if (in == 2'b01)  ns = i1;
                else if (in == 2'b10)  ns = i2;
                else                   ns = i3;
            end
            default: ns = idle;
        endcase
    end
     
    assign out = (ps == i3) ? 2'd3 :
                 (ps == i2) ? 2'd2 :
                 (ps == i1) ? 2'd1 :
                 (ps == i0) ? 2'd0 :
                              2'b00;  
              
endmodule
