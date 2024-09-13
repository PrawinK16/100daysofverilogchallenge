module siso1(
    
    input clk,rst,si,
    output reg so
    );
    reg [3:0]t;
    
    always@(posedge clk)
    begin
    if(rst)
        t<=0;
    else 
    begin
    t={si,t[3:1]};
    so=t[0];
    end
    end
    
endmodule
