`timescale 1ns / 1ps
module mux #(parameter N=8)(
input [N-1:0] A,
     input [$clog2(N)-1:0] sel,
     output reg y);
     
 integer i;
always@(*)
begin 
   for(i=0;i<N;i=i+1)
   begin 
      case(sel)
      i:y= A[i];
      endcase
    end 
end 
endmodule 
