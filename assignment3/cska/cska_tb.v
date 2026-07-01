module testbench;
  parameter N = 16;
  reg [N-1:0]A,B;
  reg Cin;
  wire [N-1:0]S;
  wire Cout;

  cska_param #(N) uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    A = 16'b0110111010100111; B = 16'b1110010101010101; Cin = 1'b0; #10;

    A = 16'b1101111010101101; B = 16'b1010010110111101; Cin = 1'b1; #10;

    A = 16'b0111011101110111; B = 16'b1110110011110111; Cin = 1'b0; #10;

    A = 16'b1011010010001011; B = 16'b1001100110010101; Cin = 1'b1; #10;

    A = 16'b1010101010101010; B = 16'b0101010101010101; Cin = 1'b1; #10;

    $finish;
  end
endmodule