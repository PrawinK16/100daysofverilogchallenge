
module mod_n_counter_tb();
        parameter N=60;
        reg clk,rst;
        wire [$clog2(N)-1:0]q;
        
        mod_n_counter m1(rst,clk,q);
        
        always #5 clk = ~clk;
        
        initial 
        begin
        clk =0;
        rst = 1;
        
        #10;
        rst = 0;
        
        
        end
endmodule
