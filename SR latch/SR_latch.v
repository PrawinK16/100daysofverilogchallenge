module SRlatch(
      input s,r,
      inout o1,o2  
    );
    wire q,qn;
    nand n1(o1,~s,o2);
    nand n2(o2,~r,o1);
    assign q=o1;
    assign qn=o2;
endmodule
