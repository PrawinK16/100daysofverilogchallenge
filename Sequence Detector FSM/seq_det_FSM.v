module seq_detector(
        input in,clk,rst,
        output out
    );
    //state encoding
    parameter i0 = 2'b00,
              i1 = 2'b01,
              i2 = 2'b10,
              i3 = 2'b11;
              
              //state registers
    reg [1:0] ps,ns;
    
    //present state sequential always logic 
    always@(posedge clk or posedge rst)
    begin
    if(!rst)
        ps<=0;
    else
        ps<=ns;
        end
        
    //Next State combinational always logic
    always@(ps or in)
        begin
            
            case(ps)                //non-overlapping sequence
                i0: if(in)  ns=i1;
                    else    ns=i0;
                i1: if(in)  ns=i1;
                    else    ns=i2;
                i2: if(in)  ns=i3;
                    else    ns=i0;
                i3: if(in)  ns=i1;
                    else    ns=i0;
                
                endcase
                end
     
     //registered outputs sequential always block         
     assign out = (ps==i3)? 1'b1:1'b0;
             
endmodule
