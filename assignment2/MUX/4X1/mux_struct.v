module mux_4X1(
  input [3:0]I,
  input [1:0]S,
  output Y
);
  
  wire w1,w2,w3,w4;
  and(w1, I[0], ~S[1], ~S[0]);
  and(w2, I[1], ~S[1], S[0]);
  and(w3, I[2], S[1], ~S[0]);
  and(w4, I[3], S[1], S[0]);
  
  or(Y, w1, w2, w3, w4);
endmodule