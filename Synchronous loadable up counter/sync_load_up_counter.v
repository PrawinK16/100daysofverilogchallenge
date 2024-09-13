module upcounter(
    input [3:0]data,
    input clk,rst,load,
    output reg [3:0]count
    );
    always@(posedge clk)
    begin
    if(rst)
        count<=0;
     else if(load)
        count<=data;
       else
       count<=count+1;
       end
endmodule
