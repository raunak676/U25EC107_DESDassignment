module p_enc(
    input [7:0] I,
    output [2:0] Y
);

wire n7,n6,n5,n4,n3,n2;

not(n7,I[7]);
not(n6,I[6]);
not(n5,I[5]);
not(n4,I[4]);
not(n3,I[3]);
not(n2,I[2]);

or(Y[2], I[7], I[6], I[5], I[4]);

wire t1,t2;

and(t1, n7, n6, n5, n4, I[3]);
and(t2, n7, n6, n5, n4, I[2]);

or(Y[1], I[7], I[6], t1, t2);

wire t3,t4,t5;

and(t3, n7, n6, I[5]);
and(t4, n7, n6, n5, n4, I[3]);
and(t5, n7, n6, n5, n4, n3, n2, I[1]);

or(Y[0], I[7], t3, t4, t5);

endmodule
  