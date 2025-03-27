module ro(en, roout);

    input en;
    output roout;

    wire [16:0] tmp /* synthesis syn_keep=1 */ ;

    notgate not_1(tmp[0], tmp[1]) /*synthesis syn_noprune=1*/ ;
    nandgate nand_2(tmp[1], en, tmp[2]) /*synthesis syn_noprune=1*/ ;
    notgate not_3(tmp[2], tmp[3]) /*synthesis syn_noprune=1*/ ;
    notgate not_4(tmp[3], tmp[4]) /*synthesis syn_noprune=1*/ ;
    notgate not_5(tmp[4], tmp[0]) /*synthesis syn_noprune=1*/ ;

    assign roout = tmp[0];

endmodule
