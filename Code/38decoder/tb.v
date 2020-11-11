`timescale 1ns / 1ns

module tb;

reg [2:0] w;
wire [7:0] out;

decoder_38 dec(w,out);
initial begin
    $dumpfile ("tb.vcd");
	$dumpvars (0, tb);
    w= 3'b000;
    #10 w= 3'b001;
    #10 w= 3'b010;
    #10 w= 3'b011;
    #10 w= 3'b100;
    #10 w= 3'b101;
    #10 w= 3'b110;
    #10 w= 3'b111;
    #20;
     
end
endmodule