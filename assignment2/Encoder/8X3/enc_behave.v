module enc_8X3(
  input [7:0]I,
  output reg [2:0]Y,
  output reg V
);
  
  always @(*) begin
    V = 1'b1;
    
    case(I)
      8'b00000000: begin
        Y = 3'b000;
        V = 1'b0;
      end
      8'b00000001: Y = 3'b000;
      8'b00000010: Y = 3'b001;
      8'b00000100: Y = 3'b010;
      8'b00001000: Y = 3'b011;
      8'b00010000: Y = 3'b100;
      8'b00100000: Y = 3'b101;
      8'b01000000: Y = 3'b110;
      8'b10000000: Y = 3'b111;
    endcase
  end   
endmodule