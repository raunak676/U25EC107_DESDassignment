module rca(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output reg [3:0] SUM,
    output reg Cout
);

reg [4:0] temp;

always @(*) begin
    temp = A + B + Cin;
    SUM = temp[3:0];
    Cout = temp[4];
end

endmodule