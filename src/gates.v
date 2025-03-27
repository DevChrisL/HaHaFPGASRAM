module nandgate(input a, input b, output c);

    wire nand_temp;
    LUT2 nand0 (
        .F(nand_temp),
        .I0(a),
        .I1(b) 
    );
    defparam nand0.INIT=4'h7;
    assign c = nand_temp;

endmodule




module notgate(input a, output b);
    assign b = ~a;
endmodule




module buffer(input a, output b);
    
    wire buf_temp;
    LUT1 buf0(
        .I0(a),
        .F(buf_temp)
    );
    defparam buf0.INIT=2'h1;
    assign b = buf_temp;

endmodule


