`timescale 10ns/1ns

module MyAndTB();
reg a1,b1;
wire x1;

MyAnd and1(a1,b1,x1);
initial begin
    $dumpfile("test.vcd");
    $dumpvars(0, MyAndTB);
    #0 a1=0; b1=0;
    #50 a1=0; b1=1;
    #50 a1=1; b1=0;
    #50 a1=1; b1=1;
end
endmodule