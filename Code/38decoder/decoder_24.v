// // Initialize verilog module, stating input and output will be used
// module decoder_24(
// 	input [1:0]w,
// 	input EN,
// 	output [3:0]out
// );

// // Stating behavioral model, output 'out' is stated by 'reg'
// // The output is always preserved by the input 'w'
// reg [3:0]out;
// always @(w)
// begin
// 	if(EN==1'b1)
// 		if (w==2'b00)
// 		out=4'b0001;
// 		else if (w==2'b01)
//     	    out=4'b0010;
// 		else if (w==2'b10)
//     	    out=4'b0100;
// 		else if (w==2'b11)
//     	    out=4'b1000;
// 		else
//     	    out=4'bZZZZ; // for rare situation
// 	else
// 	out=4'b0000;
// end
// endmodule


module decoder_24 (
       input [1:0]w,
       input EN,
       output [3:0]out
);

assign out[0] = ~w[1] &  ~w[0] & EN;
assign out[1] = ~w[1] &  w[0]  & EN;
assign out[2] = w[1]  &  ~w[0] & EN;
assign out[3] = w[1]  &  w[0]  & EN;

endmodule
