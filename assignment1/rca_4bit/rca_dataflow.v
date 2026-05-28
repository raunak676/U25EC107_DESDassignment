module rca(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] SUM,
    output Cout
);

wire c1,c2,c3;

assign SUM[0] = A[0] ^ B[0] ^ Cin;
assign c1 = (A[0] & B[0]) | (Cin & (A[0] ^ B[0]));

assign SUM[1] = A[1] ^ B[1] ^ c1;
assign c2 = (A[1] & B[1]) | (c1 & (A[1] ^ B[1]));

assign SUM[2] = A[2] ^ B[2] ^ c2;
assign c3 = (A[2] & B[2]) | (c2 & (A[2] ^ B[2]));

assign SUM[3] = A[3] ^ B[3] ^ c3;
assign Cout = (A[3] & B[3]) | (c3 & (A[3] ^ B[3]));

endmodule