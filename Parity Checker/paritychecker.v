module paritycheck(
    input [3:0] data_in,
    input parity_bit,
    output error
    );
    
    assign error = ^({parity_bit,data_in});
endmodule
