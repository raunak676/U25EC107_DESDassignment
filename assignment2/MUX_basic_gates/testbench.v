module testbench;
  reg A,B;
  wire Y;
  
  basic_gates uut(
    .A(A),
    .B(B),
    .Y(Y)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
    
    A = 1'b0; B = 1'b0;
    #10;
    
    A = 1'b0; B = 1'b1;
    #10;
    
    A = 1'b1; B = 1'b0;
    #10;
    
    A = 1'b1; B = 1'b1;
    #10;
    
    $finish;
  end
endmodule