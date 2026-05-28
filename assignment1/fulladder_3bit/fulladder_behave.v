module full_adder(

    input [2:0] A,
    input [2:0] B,

    output reg [3:0] SUM

);

always @(*) begin

    SUM = A + B;

end

endmodule