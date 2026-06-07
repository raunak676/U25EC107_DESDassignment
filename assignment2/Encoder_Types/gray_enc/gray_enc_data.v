module gray_enc(
  input [7:0] I,
  output [2:0] Y
);

  assign Y[2] = I[4] | I[5] | I[6] | I[7];

  assign Y[1] = I[2] | I[3] | I[4] | I[5];

  assign Y[0] = I[1] | I[2] | I[5] | I[6];

endmodule
  