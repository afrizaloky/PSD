// Simulating baseline time for simulation control
`timescale 1ns / 1ns

// Initialize module for test bench
module tb;

reg [2:0] w; // input 3 bit
wire [7:0] out; // output 8 bit

decoder_38 dec(w,out); // instantiate
initial begin
    $dumpfile ("tb.vcd");
	$dumpvars (0, tb);
        w= 3'b000;
    #10 w= 3'b001;
    #10 w= 3'b010;
    #10 w= 3'b011;
    #10 w= 3'b100;
    #20 w= 3'b101;
    #20 w= 3'b110;
    #20 w= 3'b111;
    #20;
     
end
endmodule