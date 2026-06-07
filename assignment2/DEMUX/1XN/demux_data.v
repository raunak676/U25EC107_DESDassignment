module demux_1XN #(parameter N=8)
(
    input I,
    input [$clog2(N)-1:0] S,
    output [N-1:0] Y
);

assign Y = I << S;

endmodule