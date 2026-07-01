module cla_param #(
  parameter N = 16
) (
  input [N-1:0] A, B,
  input Cin,
  output reg [N-1:0] S,
  output reg Cout 
);
  
  task cla4;
    input [3:0] A, B;
    input Cin;
    output [3:0] Sum;
    output Cout;
    
    integer i,j;
    reg [3:0] P,G;
    reg [4:0]carr;
    
    begin
      carr[0] = Cin;
      for(i=0;i<4;i=i+1)
        begin
          G[i] = A[i] & B[i];
          P[i] = A[i] ^ B[i];
         end
      carr[1] = G[0] | (P[0] & Cin);
      carr[2] = G[1] | (P[1] & G[0])| (P[1] & P[0] & Cin);
      carr[3] = G[2] | (P[2] & G[1])| (P[2] & P[1] & G[0])
              | (P[2] & P[1] & P[0] & Cin);
      carr[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1])
      | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);
      
      for(j=0;j<4;j = j+1)
          begin
            Sum[j] = P[j] ^ carr[j];
          end
      Cout = carr[4];
    end
  
  endtask
  
  reg C4,C8,C12;
  always @(*) begin
	  //Block 1
      cla4(A[3:0],   B[3:0],   Cin, S[3:0],   C4);
	  
      //Block 2
      cla4(A[7:4],   B[7:4],   C4,  S[7:4],   C8);
	  
      //Block 3
      cla4(A[11:8],  B[11:8],  C8,  S[11:8],  C12);
      
      //Block 4
      cla4(A[15:12], B[15:12], C12, S[15:12], Cout);  
  end
endmodule