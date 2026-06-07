module testbench;
  reg A,B,S;
  wire Y;
  
  mux_2X1 uut(
    .A(A),
    .B(B),
    .S(S),
    .Y(Y)
  );
  
  initial begin
  	$dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    A = 1'b0; B = 1'b0; S = 1'b0; #5;
    A = 1'b0; B = 1'b0; S = 1'b1; #5;
    A = 1'b0; B = 1'b1; S = 1'b0; #5;
    A = 1'b0; B = 1'b1; S = 1'b1; #5;
    A = 1'b1; B = 1'b0; S = 1'b0; #5;
    A = 1'b1; B = 1'b0; S = 1'b1; #5;
    A = 1'b1; B = 1'b1; S = 1'b0; #5;
    A = 1'b1; B = 1'b1; S = 1'b1; #5;
    
    $finish;
  end
endmodule