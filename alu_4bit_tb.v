module alu_4bit_tb;

reg [3:0] A, B;
reg [2:0] opcode;
wire [3:0] Y;
wire carry;

alu_4bit dut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .Y(Y),
    .carry(carry)
);
initial begin
  $dumpfile("dump.vcd");   // create VCD file
  $dumpvars(0, alu_4bit_tb); // dump all signals
end
initial begin
    A = 4'b0011; B = 4'b0001;

    opcode = 3'b000; #10; // ADD
    opcode = 3'b001; #10; // SUB
    opcode = 3'b010; #10; // AND
    opcode = 3'b011; #10; // OR
    opcode = 3'b100; #10; // XOR
    opcode = 3'b101; #10; // SHIFT LEFT
    opcode = 3'b110; #10; // SHIFT RIGHT

    $finish;
end

endmodule
