module testbench;

  reg [7:0] I;
  wire [2:0] Y;

gray_enc uut(
  .I(I),
  .Y(Y)
);

initial begin
  $dumpfile("test.vcd");
    $dumpvars(0, testbench);

    I = 8'b00000001; #10;
    I = 8'b00000010; #10;
    I = 8'b00000100; #10;
    I = 8'b00001000; #10;
    I = 8'b00010000; #10;
    I = 8'b00100000; #10;
    I = 8'b01000000; #10;
    I = 8'b10000000; #10;

    $finish;
end

endmodule