module xor_gate(
    input A,
    input B,
    output reg Y
);

always @(*) begin

    if ((A & ~B) | (~A & B)) begin
        Y = 1'b1;
    end

    else begin
        Y = 1'b0;
    end

  end

endmodule