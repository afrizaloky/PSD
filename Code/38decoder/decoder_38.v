module decoder_38 (
    input [2:0]w,
	output [7:0]out
);
 //input 100
 //0001 0000
 //0000 1010 10
 decoder_24 dec0 ( w[1:0], ~w[2],  out[3:0]);
 decoder_24 dec1 ( w[1:0], w[2] ,  out[7:4]);

endmodule