module testbench;
  parameter N = 16;
  reg [N-1:0]A,B;
  reg Cin;
  wire [N-1:0]S;
  wire Cout;

  csa_param #(N) uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    A = 16'b0100101010100111; B = 16'b1011010011010111; Cin = 1'b0; #10;

    A = 16'b1001101010100101; B = 16'b1110011110110101; Cin = 1'b1; #10;

    A = 16'b0111011101010101; B = 16'b1010111010110101; Cin = 1'b0; #10;

    A = 16'b1001011010011011; B = 16'b1101110111010101; Cin = 1'b1; #10;

    A = 16'b1111111111111111; B = 16'b1111111111111111; Cin = 1'b1; #10;

    $finish;
  end
endmodule