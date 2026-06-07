module enc_4X2(
	input [3:0]I,
  	output reg [1:0]Y,
  	output reg V
);
  
  always @(*) begin
    V = 1'b1;
    
    case(I)
      4'b0000: begin
        Y = 2'b00;
        V = 1'b0;
      end
      4'b0001: Y = 2'b00;
      4'b0010: Y = 2'b01;
      4'b0100: Y = 2'b10;
      4'b1000: Y = 2'b11;
    endcase
  end        
endmodule