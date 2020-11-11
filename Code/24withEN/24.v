// Initialize verilog module, stating input and output will be used
module decoder_24(
	input [1:0]w,
	input EN,
	output [3:0]out
);

// Stating behavioral model, output 'out' is stated by 'reg'
// The output is always preserved by the input 'w'
reg [3:0]out;
always @(w,EN)
begin
	if(EN==1'b1) //When Enable
		if (w==2'b00)
		out=4'b0001;
		else if (w==2'b01)
    	    out=4'b0010;
		else if (w==2'b10)
    	    out=4'b0100;
		else if (w==2'b11)
    	    out=4'b1000;
		else
    	    out=4'bZZZZ; // for rare situation
	else // When disable, output=0
	out=4'b0000;
end
endmodule
