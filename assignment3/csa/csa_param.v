module csa_param #(
  parameter N = 16
) (
  input [N-1:0] A, B,
  input Cin,
  output reg [N-1:0] S,
  output reg Cout 
);
  
  task rca;
    input [3:0] A, B;
    input Cin;
    output [3:0] Sum;
    output Cout;
    
    integer i;
    reg [4:0] carr;

    begin

      carr[0] = Cin;

      for(i=0;i<4;i=i+1)
        begin

          Sum[i] = A[i]^B[i]^carr[i];

          carr[i+1] =
          (A[i]&B[i]) |
          (A[i]&carr[i]) |
          (B[i]&carr[i]);

         end

      Cout = carr[4];

    end
  endtask
  
  reg [3:0] S10,S11,S20,S21,S30,S31;
  reg C4,C8,C12;
  reg C10,C11,C20,C21,C30,C31;

  always @(*) begin

      // Block 0
      rca(A[3:0],B[3:0],Cin,S[3:0],C4);

      // Block 1
      rca(A[7:4],B[7:4],1'b0,S10,C10);
      rca(A[7:4],B[7:4],1'b1,S11,C11);

      if(C4) begin
          S[7:4] = S11;
          C8     = C11;
      end
      else begin
          S[7:4] = S10;
          C8     = C10;
      end

      // Block 2
      rca(A[11:8],B[11:8],1'b0,S20,C20);
      rca(A[11:8],B[11:8],1'b1,S21,C21);

      if(C8) begin
          S[11:8] = S21;
          C12     = C21;
      end
      else begin
          S[11:8] = S20;
          C12     = C20;
      end

      // Block 3
      rca(A[15:12],B[15:12],1'b0,S30,C30);
      rca(A[15:12],B[15:12],1'b1,S31,C31);

      if(C12) begin
          S[15:12] = S31;
          Cout     = C31;
      end
      else begin
          S[15:12] = S30;
          Cout     = C30;
      end

  end
endmodule