module bcd_enc(
  input [9:0] I,
  output [3:0] Y
);

  assign Y[3] = I[9] | I[8];
  assign Y[2] = I[7] | I[6] | I[5] | I[4];
  assign Y[1] = I[7] | I[6] | I[3] | I[2];
  assign Y[0] = I[9] | I[7] | I[5] | I[3] | I[1];

endmodule
  