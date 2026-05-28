module testbench;

reg [1:0] A;
reg [1:0] B;

wire G,E,L;

comp uut(
    .A(A),
    .B(B),
    .G(G),
    .E(E),
    .L(L)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    A = 2'b00; B = 2'b00;
    #10;

    A = 2'b10; B = 2'b11;
    #10;

    A = 2'b11; B = 2'b10;
    #10;

    A = 2'b01; B = 2'b10;
    #10;

    A = 2'b10; B = 2'b01;
    #10;

    $finish;

end

endmodule