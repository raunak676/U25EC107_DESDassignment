module mux_4X1(
  input [3:0]I,
  input [1:0]S,
  output Y
);
  
  wire w1,w2,w3,w4;
  assign w1 = (I[0] & ~S[1] & ~S[0]);
  assign w2 = (I[1] & ~S[1] & S[0]);
  assign w3 = (I[2] & S[1] & ~S[0]);
  assign w4 = (I[3] & S[1] & S[0]);
  
  assign Y = (w1 | w2 | w3 | w4);
endmodule