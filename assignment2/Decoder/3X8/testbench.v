module testbench;
  reg [2:0]I;
  wire [7:0]Y;
  
  dec_3X8 uut(
    .I(I),
    .Y(Y)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    I = 3'b000; #5;
    I = 3'b001; #5;
    I = 3'b010; #5;
    I = 3'b011; #5;
    I = 3'b100; #5;
    I = 3'b101; #5;
    I = 3'b110; #5;
    I = 3'b111; #5;
    
    $finish;
  end
endmodule