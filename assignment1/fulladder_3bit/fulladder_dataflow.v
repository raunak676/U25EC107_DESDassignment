module full_adder(

    input [2:0] A,
    input [2:0] B,

    output [3:0] SUM

);

wire c0,c1;

assign SUM[0] = A[0] ^ B[0];

assign c0 = A[0] & B[0];

assign SUM[1] = A[1] ^ B[1] ^ c0;

assign c1 = (A[1] & B[1]) | (c0 & (A[1] ^ B[1]));

assign SUM[2] = A[2] ^ B[2] ^ c1;

assign SUM[3] = (A[2] & B[2]) | (c1 & (A[2] ^ B[2]));

endmodule