// Simulating baseline time for simulation control
`timescale 1ns / 1ns
// Initialize module for test bench
module tb_decoder_24;
reg [1:0]w; // Input circuit 2bit
reg EN;

// Output circuit
wire [3:0]out; // ouput 4 bit

// Instantiate  
decoder_24 decoder1 (w, EN, out);

//Initialize begin
initial begin
	// Create file 'vcd' for running on gtkwave while compiling
	$dumpfile ("tb.vcd");
	$dumpvars (0, tb_decoder_24);
       #0 w = 2'b00;  EN=1'b0 ;
       #10 w = 2'b01; EN=1'b0;
       #10 w = 2'b10; EN=1'b0;
       #10 w = 2'b11; EN=1'b0;
	   #10 w = 2'b00; EN=1'b1;
       #10 w = 2'b01; EN=1'b1;
       #10 w = 2'b10; EN=1'b1;
       #10 w = 2'b11; EN=1'b1;
	   #10 ;
	
end
endmodule
