module syncRAM( 
    input [7:0]data,                    //dual port has 2 different ports for readin from memory and writing into memory
    input [3:0]wr_add,rd_add,
    input clk,rst,wr_en,rd_en,
    output reg[7:0]out
    );
    parameter depth=16, width=8;
    
    reg [width-1:0]mem[depth-1:0];
    
    integer i;
    
    always@(posedge clk)
    begin
    if(rst)
        begin
            out<=0;
            for(i=0;i<16;i=i+1)
            mem[i]<=0;
        end
     else
        begin
            if(wr_en)
                mem[wr_add]<=data;
            if(rd_en)
                out<=mem[rd_add];
        end
        end    
endmodule
