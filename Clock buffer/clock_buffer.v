module Clock_buffer(
input iclk,
output oclk
    );
    buf b1(oclk,iclk);
endmodule
