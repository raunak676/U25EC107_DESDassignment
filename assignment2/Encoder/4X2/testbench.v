module testbench;
  reg [3:0]I;
  wire [1:0]Y;
  wire V;
  
  enc_4X2 uut(
    .I(I),
    .V(V),
    .Y(Y)
  );
  
  initial begin
  	$dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    I = 4'b0001; #10;
    I = 4'b0010; #10;
    I = 4'b0100; #10;
    I = 4'b1000; #10;
    
    $finish;
  end
endmodule