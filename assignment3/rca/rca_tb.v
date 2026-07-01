module testbench;
  parameter N = 16;
  reg [N-1:0]A,B;
  reg Cin;
  wire [N-1:0]S;
  wire Cout;

  rca_param #(N) uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    A = 16'b0110111000110101; B = 16'b1001110010010011; Cin = 1'b0; #10;

    A = 16'b1011101101100000; B = 16'b0011011000111001; Cin = 1'b1; #10;

    A = 16'b0010011100010001; B = 16'b1011011000111100; Cin = 1'b0; #10;

    A = 16'b1100010010011111; B = 16'b1101010110010111; Cin = 1'b1; #10;
    
    A = 16'b1101011011010101; B = 16'b1101110111011101; Cin = 1'b0; #10;

    $finish;
  end
endmodule