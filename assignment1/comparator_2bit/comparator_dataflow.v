module comp(
    input [1:0] A,
    input [1:0] B,
    output G,
    output E,
    output L
);

wire x0,x1;

assign x0 = A[0] ~^ B[0];
assign x1 = A[1] ~^ B[1];

assign G = (A[1] & ~B[1]) | (x1 & (A[0] & ~B[0]));
assign L = (~A[1] & B[1]) | (x1 & (~A[0] & B[0]));
assign E = x1 & x0;

endmodule