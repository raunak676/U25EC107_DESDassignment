module testbench;
  reg [7:0]I;
  wire [2:0]Y;
  wire V;
  
  enc_8X3 uut(
    .I(I),
    .V(V),
    .Y(Y)
  );
  
  initial begin
  	$dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    I = 8'b00000001; #5;
    I = 8'b00000010; #5;
    I = 8'b00000100; #5;
    I = 8'b00001000; #5;
    I = 8'b00010000; #5;
    I = 8'b00100000; #5;
    I = 8'b01000000; #5;
    I = 8'b10000000; #5;
    
    $finish;
  end
endmodule