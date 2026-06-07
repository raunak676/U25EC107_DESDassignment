module enc_8X3(
  input [7:0]I,
  output [2:0]Y,
  output V
);
  
  assign Y[2] = I[7] + I[6] + I[5] + I[4];
  assign Y[1] = I[7] + I[6] + I[3] + I[2];
  assign Y[0] = I[7] + I[5] + I[3] + I[1];
  assign V = I[7] + I[6] + I[5] + I[4] + I[3] + I[2] + I[1] + I[0];   
endmodule