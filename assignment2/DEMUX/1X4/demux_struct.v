module demux_1X4(
  input I,
  input [1:0]S,
  output [3:0]Y
);
  
  wire w0,w1;
  not(w0, S[0]);  not(w1, S[1]);
  and(Y[0], w1, w0, I);
  and(Y[1], w1, S[0], I);
  and(Y[2], S[1], w0, I);
  and(Y[3], S[1], S[0], I);
endmodule