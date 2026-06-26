module alu_tb;

reg [7:0] A;
reg [7:0] B;
reg [3:0] opcode;

wire [7:0] result;
wire carry;
wire zero;
wire overflow;

alu uut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .result(result),
    .carry(carry),
    .zero(zero),
    .overflow(overflow)
);

initial begin

    A = 8'd20;
    B = 8'd10;

    opcode = 4'b0000; #10; // ADD
    opcode = 4'b0001; #10; // SUB
    opcode = 4'b0010; #10; // AND
    opcode = 4'b0011; #10; // OR
    opcode = 4'b0100; #10; // XOR
    opcode = 4'b0101; #10; // NOT
    opcode = 4'b0110; #10; // LEFT SHIFT
    opcode = 4'b0111; #10; // RIGHT SHIFT

    $finish;

end

endmodule
