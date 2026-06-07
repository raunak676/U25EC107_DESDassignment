module dec_2X4(
  input [1:0]I,
  output [3:0]Y
);
  
  wire w0,w1;
  not(w0,I[0]);  not(w1,I[1]);
  and(Y[0], w0, w1);
  and(Y[1], I[0], w1);
  and(Y[2], I[1], w0);
  and(Y[3], I[0] , I[1]);
endmodule