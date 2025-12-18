module alu_4bit (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] opcode,
    output reg [3:0] Y,
    output reg carry
);

always @(*) begin
    carry = 0;   // default
    case (opcode)
        3'b000: begin
            {carry, Y} = A + B;
        end

        3'b001: begin
            Y = A - B;
        end

        3'b010: begin
            Y = A & B;
        end

        3'b011: begin
            Y = A | B;
        end

        3'b100: begin
            Y = A ^ B;
        end

        3'b101: begin
            Y = A << 1;
        end

        3'b110: begin
            Y = A >> 1;
        end

        default: begin
            Y = 4'b0000;
        end
    endcase
end

endmodule
