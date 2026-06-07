module testbench;
  reg I;
  reg [1:0]S;
  wire [3:0]Y;
  
  demux_1X4 uut(
    .I(I),
    .S(S),
    .Y(Y)
  );
  
  initial begin
  	$dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    I = 1'b0; S = 2'b00; #5;
    I = 1'b0; S = 2'b01; #5;
    I = 1'b0; S = 2'b10; #5;
    I = 1'b0; S = 2'b11; #5;
    I = 1'b1; S = 2'b00; #5;
    I = 1'b1; S = 2'b01; #5;
    I = 1'b1; S = 2'b10; #5;
    I = 1'b1; S = 2'b11; #5;
    
    $finish;
  end
endmodule