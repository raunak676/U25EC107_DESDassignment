module testbench;
  reg I;
  reg S;
  wire [1:0]Y;
  
  demux_1X2 uut(
    .I(I),
    .S(S),
    .Y(Y)
  );
  
  initial begin
  	$dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    I = 1'b0; S = 1'b0; #10;
    I = 1'b0; S = 1'b1; #10;
    I = 1'b1; S = 1'b0; #10;
    I = 1'b1; S = 1'b1; #10;
    
    $finish;
  end
endmodule