module mux_NX1 #(parameter N = 8)
(
    input [N-1:0] I,
    input [$clog2(N)-1:0] S,
    output reg Y
);

always @(*)
    Y = I[S];

endmodule