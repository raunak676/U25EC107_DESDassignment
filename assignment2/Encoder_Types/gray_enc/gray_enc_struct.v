module gray_enc(
  input [7:0] I,
  output [2:0] Y
);

  or(Y[2], I[4], I[5], I[6], I[7]);

  or(Y[1], I[2], I[3], I[4], I[5]);

  or(Y[0], I[1], I[2], I[5], I[6]);

endmodule
  