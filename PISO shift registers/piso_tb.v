

module piso_tb();
        reg clk,rst,load;
        reg [3:0] parallel_in;
        wire serial_out;
        
        piso_shift_registers p1(rst,clk,load,parallel_in,serial_out);
        
        always #5 clk = ~clk;
        
        initial
        begin
            clk = 0;
            rst = 1;
            parallel_in = 4'd5;
            
            #10;
            rst = 0;
            load = 0;
             
            #10;
            load = 1;
            
            #10;
            parallel_in = 4'd8;
        end
endmodule
