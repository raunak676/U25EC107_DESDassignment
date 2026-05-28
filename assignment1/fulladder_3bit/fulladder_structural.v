module full_adder(

    input [2:0] A,
    input [2:0] B,

    output [3:0] SUM

);

wire c0,c1,w1,w2,w3,w4,w5,w6;

xor(SUM[0],A[0],B[0]);

and(c0,A[0],B[0]);

xor(w1,A[1],B[1]);
xor(SUM[1],w1,c0);

and(w2,A[1],B[1]);
and(w3,w1,c0);

or(c1,w2,w3);

xor(w4,A[2],B[2]);
xor(SUM[2],w4,c1);

and(w5,A[2],B[2]);
and(w6,w4,c1);

or(SUM[3],w5,w6);

endmodule