
wire [255:0] ROUTS0 /* synthesis syn_keep=1 */ ;
wire [255:0] ROUTS1 /* synthesis syn_keep=1 */ ;
reg ROEN0 /* synthesis syn_preserve=1 */ ;
reg ROEN1 /* synthesis syn_preserve=1 */ ;

parameter ro_no = 256 ; // stage of ROs
genvar i ;

generate
	
		for (i=0 ; i< ro_no ; i=i+1 ) 	
		begin: ro_block		
		ro r0( .en(ROEN0), .roout(ROUTS0 [i]) ) ;
		ro r1( .en(ROEN1), .roout(ROUTS1 [i]) ) ;
		end
endgenerate


PUFmux256 mux0(ROUTS0[255:0], chall0, muxout0);
PUFmux256 mux1(ROUTS1[255:0], chall1, muxout1);

