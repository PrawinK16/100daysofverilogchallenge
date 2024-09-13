module ALU1(
       input [7:0]a,b,
       input [3:0]com,
       input en,
       output [15:0]y
    );
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
             
     reg [15:0]out;
       
     assign y=(en==1)? out :16'bz;
       
     always@(a,b,en,com)
     begin        
     case(com)
              MOD : out=a%b;
              ADD : out=a+b;
              SUB : out=a-b;
              MUL : out=a*b;
              DIV : out=a/b;
              INC : out=a+1;
              DEC : out=a-1;
              SHR : out=a>>1;
              SHL : out=a<<1;
              AND : out=a&b;
              OR  : out=a|b;
              NOT : out=!a;
              XOR : out=a^b;
              XNOR : out=~(a^b);
              NAND : out=~(a&b);
              NOR : out=~(a|b);
              NEG : out= ~a;

              
           endcase
           end
              
endmodule
