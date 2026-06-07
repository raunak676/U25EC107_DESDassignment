module testbench;

parameter N = 8;

reg I;
reg [$clog2(N)-1:0] S;
wire [N-1:0] Y;

demux_1XN #(N) uut(
    .I(I),
    .S(S),
    .Y(Y)
);

initial begin
	$dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    I = 1'b1;

    S = 0; #10;
    S = 1; #10;
    S = 2; #10;
    S = 3; #10;
    S = 4; #10;
    S = 5; #10;
    S = 6; #10;
    S = 7; #10;

    $finish;

end

endmodule