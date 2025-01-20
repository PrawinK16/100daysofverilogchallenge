
module sipo_shift_registers_tb();
            reg clk, rst, serial_in;
            wire [3:0]parallel_out;
            
            sipo_shift_register s1(clk,rst,serial_in,parallel_out);
            
            always #5 clk = ~clk;
            
            initial
            begin
                clk = 0;
                rst = 1;
                serial_in = 1;
                
                #10;
                rst = 0;
                serial_in = 1;
              
                #10;
                rst = 0;
                serial_in = 0;
                
                #10;
                rst = 0;
                serial_in = 1;
                
                #10;
                rst = 0;
                serial_in = 0;   
                
                #10;
                rst = 0;
                serial_in = 0;             
            
            end
            
endmodule
