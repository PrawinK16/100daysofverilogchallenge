module updowncounter(

    input [3:0]data,
    input clk,rst,load,sel,
    output reg [3:0]count
    );
    always@(posedge clk)
    begin
    if(rst)
        count<=0;
     else if(load)
        count<=data;
       else  if(sel)
       count<=count+1;
       else 
       count <=count-1;
       
       end
endmodule
