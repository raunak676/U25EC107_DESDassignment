module enc_4X2(
	input [3:0]I,
  	output [1:0]Y,
  	output V
);
  
  assign Y[0] = I[3] + I[1];
  assign Y[1] = I[3] + I[2];
  assign V = I[3] + I[2] + I[1] + I[0];
endmodule