module enc_4X2(
	input [3:0]I,
  	output [1:0]Y,
  	output V
);
  
  or(Y[0], I[3], I[1]);
  or(Y[1], I[3], I[2]);
  or(V, I[3], I[2], I[1], I[0]);
endmodule