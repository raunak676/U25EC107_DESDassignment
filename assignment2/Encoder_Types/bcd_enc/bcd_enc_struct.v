module bcd_enc(
  input [9:0] I,
  output [3:0] Y
);

  or(Y[3], D[8], D[9]);
  or(Y[2], D[4], D[5], D[6], D[7]);
  or(Y[1], D[2], D[3], D[6], D[7]);
  or(Y[0], D[1], D[3], D[5], D[7], D[9]);

endmodule
  