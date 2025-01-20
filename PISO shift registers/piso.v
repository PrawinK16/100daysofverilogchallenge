
module piso_shift_registers(
    input rst,
    input clk,load,
    input [3:0] parallel_in,
    output reg serial_out
    );
    reg [3:0] q;
    
    always@(posedge clk or posedge rst)
    begin
    
        if(rst)
            q <= 0;
            
        else if(load)
             q <= parallel_in;
             
        else
             q <= {1'b0,q[3:1]};
             
    end
    
    always@(posedge clk or posedge rst)
    begin
    
        if(rst)
            serial_out <= 0;
             
        else
             serial_out <= q[0];
             
    end
endmodule
