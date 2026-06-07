module mux_2X1(
  input A,B,S,
  output Y
);
  
  assign Y = (~S & A) | (S & B);
endmodule