module testbench;

reg [2:0] A,B;
wire [3:0] SUM;

full_adder uut(
    .A(A),
    .B(B),
    .SUM(SUM)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    A = 3'b000; B = 3'b000;
    #10;

    A = 3'b001; B = 3'b010;
    #10;

    A = 3'b011; B = 3'b001;
    #10;

    A = 3'b101; B = 3'b010;
    #10;

    A = 3'b111; B = 3'b111;
    #10;

    $finish;

end

endmodule