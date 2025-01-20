
module sipo_shift_register(
        input clk,rst,serial_in,
        output [3:0] parallel_out
    );
        reg [3:0]wires;
    always@(posedge clk or posedge rst)
    begin
    
        if(rst)
           wires <= 0;
           
         else
            begin
                wires <= {serial_in,wires[3:1]} ;
            end
    end
    assign parallel_out = wires;
endmodule
