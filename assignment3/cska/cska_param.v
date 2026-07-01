module cska_param #(
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
  
  reg C4,C8,C12;
  reg C8_rip, C12_rip, C16_rip;
  reg BP1,BP2,BP3;

  always @(*) begin

      // Block 0
      rca(A[3:0],B[3:0],Cin,S[3:0],C4);

      // Block 1
      rca(A[7:4],B[7:4],C4,S[7:4],C8_rip);
      BP1 = &(A[7:4] ^ B[7:4]);
      C8 = BP1 ? C4  : C8_rip;
    
      // Block 2
      rca(A[11:8],B[11:8],C8,S[11:8],C12_rip);
      BP2 = &(A[11:8] ^ B[11:8]);
      C12 = BP2 ? C8  : C12_rip;
    
      // Block 3
      rca(A[15:12],B[15:12],C12,S[15:12],C16_rip);
      BP3 = &(A[15:12] ^ B[15:12]);
      Cout = BP3 ? C12 : C16_rip;
    
  end
endmodule