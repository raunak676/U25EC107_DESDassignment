module demux_1X2(
  input I,
  input S,
  output [1:0]Y
);
  
  wire w;
  not(w, S);
  and(Y[0], w, I);
  and(Y[1], S, I);
endmodule