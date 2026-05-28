module rca(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] SUM,
    output Cout
);

wire c1,c2,c3;
wire x1,x2,x3,x4;
wire a1,a2,a3,a4;
wire b1,b2,b3,b4;

xor(x1,A[0],B[0]);
xor(SUM[0],x1,Cin);
and(a1,A[0],B[0]);
and(b1,Cin,x1);
or(c1,a1,b1);

xor(x2,A[1],B[1]);
xor(SUM[1],x2,c1);
and(a2,A[1],B[1]);
and(b2,c1,x2);
or(c2,a2,b2);

xor(x3,A[2],B[2]);
xor(SUM[2],x3,c2);
and(a3,A[2],B[2]);
and(b3,c2,x3);
or(c3,a3,b3);

xor(x4,A[3],B[3]);
xor(SUM[3],x4,c3);
and(a4,A[3],B[3]);
and(b4,c3,x4);
or(Cout,a4,b4);

endmodule