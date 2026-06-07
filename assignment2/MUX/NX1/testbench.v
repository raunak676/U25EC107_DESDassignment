module testbench;

parameter N = 8;

reg  [N-1:0] I;
reg  [$clog2(N)-1:0] S;
wire Y;

mux_NX1 #(N) uut (
    .I(I),
    .S(S),
    .Y(Y)
);

initial begin
	$dumpfile("dump.vcd");
  $dumpvars(0, testbench);
  
    I = 8'b10110010;

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