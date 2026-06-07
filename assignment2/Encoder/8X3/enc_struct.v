module enc_8X3(
  input [7:0]I,
  output [2:0]Y,
  output V
);
  
  or(Y[2], I[7], I[6], I[5], I[4]);
  or(Y[1], I[7], I[6], I[3], I[2]);
  or(Y[0], I[7], I[5], I[3], I[1]);
  or(V, I[7], I[6], I[5], I[4], I[3], I[2], I[1], I[0]);  
endmodule