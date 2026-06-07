module mux_2X1(
  input A,B,S,
  output Y
);
  
  wire w1,w2,w3;
  not(w1,S);
  and(w2,w1,A);
  and(w3,S,B);
  or(Y,w2,w3);

endmodule