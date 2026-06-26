module alu (
    input  [7:0] A,
    input  [7:0] B,
    input  [3:0] opcode,

    output reg [7:0] result,
    output reg carry,
    output reg zero,
    output reg overflow
);

always @(*) begin

    carry = 0;
    overflow = 0;

    case(opcode)

        4'b0000: begin
            {carry, result} = A + B;
            overflow = (~(A[7] ^ B[7])) & (A[7] ^ result[7]);
        end

        4'b0001: begin
            {carry, result} = A - B;
            overflow = (A[7] ^ B[7]) & (A[7] ^ result[7]);
        end

        4'b0010: result = A & B;
        4'b0011: result = A | B;
        4'b0100: result = A ^ B;
        4'b0101: result = ~A;
        4'b0110: result = A << 1;
        4'b0111: result = A >> 1;

        default: result = 8'b00000000;

    endcase

    zero = (result == 8'b00000000);

end

endmodule
