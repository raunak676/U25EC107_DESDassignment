module demux_1X4(
  input I,
  input [1:0]S,
  output reg [3:0]Y
);
  
  always @(*) begin
    case(S)
      2'b00: Y = {1'b0, 1'b0, 1'b0, I};
      2'b01: Y = {1'b0, 1'b0, I, 1'b0};
      2'b10: Y = {1'b0, I, 1'b0, 1'b0};
      2'b11: Y = {I, 1'b0, 1'b0, 1'b0};
    endcase
  end
  
endmodule