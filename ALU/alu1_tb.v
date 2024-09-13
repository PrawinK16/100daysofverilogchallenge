`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 12:16:06 PM
// Design Name: 
// Module Name: alu1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu1_tb();
        reg [7:0]a,b;
        reg [3:0]com;
        reg en;
        wire [15:0]y;

        integer m,n,o;
        parameter 
              MOD = 4'b0000,
              ADD = 4'b0001,
              SUB = 4'b0010,
              MUL = 4'b0011,
              DIV = 4'b0100,
              INC = 4'b0101,
              DEC = 4'b0110,
              SHR = 4'b0111,
              SHL = 4'b0001,
              AND = 4'b1000,
              OR = 4'b1001,
              NOT = 4'b1010,
              XOR = 4'b1011,
              XNOR = 4'b1100,
              NAND = 4'b1101,
              NOR = 4'b1110,
              NEG = 4'b1111;
              
        reg[32:0] strcmd;
        ALU1 u1(a,b,com,en,y);
        
        task initialize;
        begin
        {a,b,en,com}=4'b0000;
        end
        endtask
             
        task inputs(input [7:0] x,y);
        begin
        a=x;
        b=y;
        end
        endtask
        
        task enable(input enn);
        begin
        en=enn;
        end
        endtask
        
        task delay();
        begin
        #10;
        end
        endtask
         
        task command(input [3:0]comm);
        begin
        com=comm;
        end
        endtask
        
        always@(com)
        begin
        case(com)
              MOD : strcmd = "MOD";
              ADD : strcmd = "ADD";
              SUB : strcmd = "SUB";
              MUL : strcmd = "MUL";
              DIV : strcmd = "DIV";
              INC : strcmd = "INC";
              DEC : strcmd = "DEC";
              SHR : strcmd = "SHR";
              SHL : strcmd = "SHL";
              AND : strcmd = "AND";
              OR  : strcmd = "OR";
              NOT : strcmd = "NOT";
              XOR : strcmd = "XOR";
              XNOR : strcmd = "XNOR";
              NAND : strcmd = "NAND";
              NOR : strcmd = "NOR";
              NEG : strcmd = "NEG";
              
              endcase
              end
         initial 
         begin 
         initialize;
         enable(1'b1);
         for(m=0;m<16;m=m+1)
         begin
         for(n=0;n<16;n=n+1)
         begin
         inputs(m,n);
         for(o=0;o<16;o=o+1)
         begin  
         command(o);
         delay();
         end
         end
         end
         $finish;
         end
         initial
         $monitor("input enable =%b,a=%b,b=%b,y=%b",en,a,b,y); 
         
endmodule
