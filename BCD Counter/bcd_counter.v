
module bcd_counter(
        input clk,rst,
        output reg [3:0] units, tens
    );
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            tens <= 0;
            units <= 0;
        end
        
        else
        begin
            if(units == 4'd9)
                begin
                    units <= 0;
                    if(tens == 4'd9)                       
                            tens <= 0;
                            
                     else
                            tens <= tens + 1;
                 end
                                
             else
                    units <= units + 1;
                    
                
        end
    end
endmodule
