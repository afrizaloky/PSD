module decoder_38 (
    input [2:0]w, // declaration 3 bit input
	output [7:0]out // declaration 8 bit output
);
 
 // instance module decoder 2 to 4
 decoder_24 dec0 ( w[1:0], ~w[2],  out[3:0]); 
 decoder_24 dec1 ( w[1:0], w[2] ,  out[7:4]);

endmodule