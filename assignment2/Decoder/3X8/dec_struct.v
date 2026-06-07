module dec_3X8(
  input [2:0]I,
  output [7:0]Y
);
   
  wire w0,w1,w2;
  not(w0,I[0]); not(w1,I[1]); not(w2,I[2]);
  and(Y[0], w2, w1, w0);
  and(Y[1], w2, w1, I[0]);
  and(Y[2], w2, I[1], w0);
  and(Y[3], w2, I[1], I[0]);
  and(Y[4], I[2], w1, w0);
  and(Y[5], I[2], w1, I[0]);
  and(Y[6], I[2], I[1], w0);
  and(Y[7], I[2], I[1], I[0]);
endmodule