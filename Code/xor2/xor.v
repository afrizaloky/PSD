// x = A'B + AB'


module xor2 (a,b,x);
input a,b;
output x;

// DataFlow Modelling
assign x = (~a&b)|(a&~b)
endmodule