module mux21(A, B, S, X);

input A, B, S;
output X;

// X = AS' + BS => Dataflow Modelling
assign X=(S)?B:A;

endmodule