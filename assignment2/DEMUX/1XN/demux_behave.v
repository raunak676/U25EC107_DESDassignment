module demux_1XN #(parameter N=8)
(
    input I,
    input [$clog2(N)-1:0] S,
    output reg [N-1:0] Y
);

always @(*) begin
    Y = 0;
    Y[S] = I;
end

endmodule