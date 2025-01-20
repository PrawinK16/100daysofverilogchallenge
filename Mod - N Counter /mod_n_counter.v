

module mod_n_counter #(parameter N=60)(
    input rst,clk,
    output reg [$clog2(N)-1 :0] q
    );
    always@(negedge clk or posedge rst)
    begin
    if(rst | q==(N-1))
            q<=0;
     else
            q<=q+1;
    end
endmodule
