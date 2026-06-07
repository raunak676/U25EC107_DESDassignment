module testbench;
  reg [3:0]I;
  reg [1:0]S;
  wire Y;
  
  mux_4X1 uut(
    .I(I),
    .S(S),
    .Y(Y)
  );
  
  initial begin
  	$dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    I = 4'b0010; S = 2'b00; #5;
    I = 4'b0101; S = 2'b10; #5;
    I = 4'b1010; S = 2'b11; #5;
    I = 4'b0110; S = 2'b01; #5;
    I = 4'b1011; S = 2'b11; #5;
    I = 4'b0011; S = 2'b00; #5;
    I = 4'b1010; S = 2'b10; #5;
    I = 4'b0111; S = 2'b11; #5;
    
    $finish;
  end
endmodule