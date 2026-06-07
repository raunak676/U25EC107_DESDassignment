// XNOR gate:
module basic_gates(
    input A,
	input B,
  output reg Y);
  
  always @(*) begin
    if (B == 1'b0) begin
      Y = ~A;
    end else begin
      Y = A;
    end
  end
endmodule