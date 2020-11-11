// Simulating baseline time for simulation control
`timescale 1ns / 1ns

// Initialize module for test bench
module tb_decoder_24;
// Input circuit 2bit
reg [1:0]sel;

// Output circuit
wire [3:0]out;

// Instantiate  
decoder_24 decoder1 (sel, out);

//Initialize begin
initial begin
	// Create file 'vcd' for running on gtkwave while compiling
	$dumpfile ("tb.vcd");
	$dumpvars (0, tb_decoder_24);
       #0 sel = 2'b00; 
       #20 sel = 2'b01; 
       #20 sel = 2'b10; 
       #20 sel = 2'b11; 
	   #20 ;
	//Wait 100 ns for global reset to finish
	
end
endmodule
