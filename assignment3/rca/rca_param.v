module rca_param #(parameter N = 16)
  (input [N-1:0]A,B,
   input Cin,
   output [N-1:0]S,
   output Cout);
  
  wire [N:0]carr;
  assign carr[0] = Cin;
  assign Cout = carr[N];
  
  genvar i;
  generate
    for(i = 0; i<N; i = i+1)
      begin ripple:
        assign S[i] = (A[i] ^ B[i] ^ carr[i]);
        assign carr[i + 1] = (A[i] & B[i]) | (B[i] & carr[i])
        | (carr[i] & A[i]);
      end
  endgenerate
  
endmodule