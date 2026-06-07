module mux_2X1(
  input A,B,S,
  output reg Y
);
  
  always @(*) begin
    case(S)
      1'b0: Y = A;
      1'b1: Y = B;
    endcase
  end

endmodule