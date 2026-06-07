module testbench;
  reg [1:0]I;
  wire [3:0]Y;
  
  dec_2X4 uut(
    .I(I),
    .Y(Y)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    I = 2'b00; #10;
    I = 2'b01; #10;
    I = 2'b10; #10;
    I = 2'b11; #10;
    
    $finish;
  end
endmodule