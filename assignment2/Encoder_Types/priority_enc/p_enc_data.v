module p_enc(
  input [7:0]I,
  output [2:0]Y
);
  
  wire w1,w2,w3;
  
  assign w1 = (I[3] & ~I[4] & ~I[5] & ~I[6] & ~I[7]);
  assign w2 = (I[2] & ~I[3] & ~I[4] & ~I[5] & ~I[6] & ~I[7]);
  assign w3 = (I[1] & ~I[2] & ~I[3] & ~I[4] & ~I[5] & ~I[6] & ~I[7]);
  
  assign Y[2] = (I[7] | I[6] | I[5] | I[4]);
  assign Y[1] = (I[7] | I[6] | w1 | w2);
  
  assign Y[0] = (I[7] | (I[5] & ~I[6] & ~I[7]) | w1 | w3);
  
endmodule
  