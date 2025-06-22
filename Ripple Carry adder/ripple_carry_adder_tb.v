`timescale 1ns / 1ps
module ripple_carry_adder_tb();
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;
ripple_carry_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

integer i,j;
initial begin 
  for(i=0;i<16;i=i+1)begin
    for(j=0;j<16;j=j+1)begin
    
    a = i;
    b = j;
    cin = $random();
    #5;
    end
  end
#1000 $finish;
end
endmodule
