module testbench;
  parameter N = 16;
  reg [N-1:0]A,B;
  reg Cin;
  wire [N-1:0]S;
  wire Cout;

  cla_param #(N) uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    A = 16'b1110111010110101; B = 16'b1010011101110100; Cin = 1'b0; #10;

    A = 16'b0101011011101001; B = 16'b1111000110101001; Cin = 1'b1; #10;

    A = 16'b0011010101010101; B = 16'b1010110010110111; Cin = 1'b0; #10;

    A = 16'b1011011010101011; B = 16'b1101100111010111; Cin = 1'b1; #10;

    A = 16'b1011101110111011; B = 16'b1001001001001001; Cin = 1'b1; #10;

    $finish;
  end
endmodule