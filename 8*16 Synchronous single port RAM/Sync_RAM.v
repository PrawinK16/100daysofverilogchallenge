// 8*16 synchronous single port RAM(both write input and read output at single port)
module syncRAM(
          input [2:0] w_addr,r_addr,
          input clk,rst,we,re,
          inout [15:0]datainout
    );
    reg [15:0] mem [7:0];
    reg [15:0]temp;
    integer i;
    
    always@(posedge clk)
    begin
    if (rst)
    begin
            temp<=0;
            for(i=0;i<8;i=i+1)
                mem[i]<=0;
                end
     
           else if(we && !re)
                mem[w_addr]<=datainout;
                
    end 
                
    always@(posedge clk)
    begin
    if (rst)
    begin
            temp<=0;
            for(i=0;i<8;i=i+1)
                mem[i]<=0;
                end
     
                
           else if (!we && re)
                temp<=mem[r_addr];
                
   
    end
    
    assign datainout = (!we && re)? temp : 16'bz   ;         
                
endmodule
