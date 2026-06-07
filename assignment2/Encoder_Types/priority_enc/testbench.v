module testbench;

reg [7:0] I;
wire [2:0] Y;

p_enc uut(
    .I(I),
    .Y(Y)
);

initial begin
  $dumpfile("test.vcd");
    $dumpvars(0, testbench);

    I = 8'b00000101; #10;
    I = 8'b00001010; #10;
    I = 8'b00101000; #10;
    I = 8'b01010010; #10;
    I = 8'b10000001; #10;
    I = 8'b11000010; #10;
    I = 8'b11111111; #10;
    I = 8'b01111111; #10;
    I = 8'b00111111; #10;

    $finish;
end

endmodule