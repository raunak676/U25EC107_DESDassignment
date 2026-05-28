module xor_gate(
    input A,
    input B,
    output Y
);

wire n1,n2,n3;

nand(n1,A,B);
nand(n2,n1,A);
nand(n3,n1,B);
nand(Y,n2,n3);

endmodule