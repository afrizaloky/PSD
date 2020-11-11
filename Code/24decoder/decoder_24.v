// Initialize verilog module, stating input and output will be used
module decoder_24(
	input [1:0]sel,
	output [3:0]out
);

// Stating behavioral model, output 'out' is stated by 'reg'
// The output is always preserved by the input 'sel'
reg [3:0]out;
always @(sel)
begin
	if (sel==2'b00)
	out=4'b0001;
	else if (sel==2'b01)
        out=4'b0010;
	else if (sel==2'b10)
        out=4'b0100;
	else if (sel==2'b11)
        out=4'b1000;
	else
        out=4'bZZZZ;
end
endmodule
