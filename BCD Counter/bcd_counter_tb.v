

module bcd_counter_tb();
            reg clk;
            reg rst;
            wire [3:0] units;
            wire [3:0] tens;
            
            bcd_counter b1(clk,rst,units,tens);
            
            always #5 clk = ~clk;
            
            initial 
            begin
            clk = 0;
            rst = 1;
            #10;
            rst=0;
            end
endmodule
