module testbench;

reg [3:0] A,B;
reg Cin;

wire [3:0] SUM;
wire Cout;

rca uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .SUM(SUM),
    .Cout(Cout)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,testbench);

    A = 4'b0000; B = 4'b0000; Cin = 0;
    #10;

    A = 4'b0011; B = 4'b0101; Cin = 0;
    #10;

    A = 4'b1111; B = 4'b0001; Cin = 0;
    #10;

    A = 4'b1010; B = 4'b0101; Cin = 1;
    #10;

    A = 4'b1111; B = 4'b1111; Cin = 1;
    #10;

    $finish;
end

endmodule