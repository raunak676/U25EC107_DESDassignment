// Code your design here
module demux_1X2(
  input I,
  input S,
  output reg [1:0]Y
);
  
  always @(*) begin
    case(S)
      1'b0: begin
        Y[0] = I; 
        Y[1] = 1'b0;
      end
      1'b1: begin
        Y[0] = 1'b0; 
        Y[1] = I;
      end
    endcase
  end
endmodule