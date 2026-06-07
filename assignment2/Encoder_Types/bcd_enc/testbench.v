module testbench;

  reg [9:0] I;
  wire [3:0] Y;

bcd_enc uut(
    .I(I),
    .Y(Y)
);

initial begin
    $dumpfile("test.vcd");
    $dumpvars(0, testbench);

    I = 10'b0000000001; #10;
    I = 10'b0000000010; #10;
    I = 10'b0000000100; #10;
    I = 10'b0000001000; #10;
    I = 10'b0000010000; #10;
    I = 10'b0000100000; #10;
    I = 10'b0001000000; #10;
    I = 10'b0010000000; #10;
    I = 10'b0100000000; #10;
    I = 10'b1000000000; #10;

    $finish;
end

endmodule