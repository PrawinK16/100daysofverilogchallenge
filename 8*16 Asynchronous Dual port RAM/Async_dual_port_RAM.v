module Async_RAM(input [15:0]data,
                   input clk,rst,we,re,
                   input [2:0]waddr,raddr,
                   output reg[15:0]out);
                   
                   reg [15:0] mem [7:0];
                   integer i;
                   
                   always@(posedge clk or rst)
                   begin
                   if(rst)
                        begin
                            out<=16'b0;
                            for(i=0;i<8;i=i+1)
                            mem[i]<=0;
                        end
                    else
                    begin
                            if(we)
                            mem[waddr]<=data;
                            if(re) 
                            out<=mem[raddr];
                    end
                    end

endmodule
