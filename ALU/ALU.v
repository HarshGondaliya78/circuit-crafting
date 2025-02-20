`timescale 1ns / 1ps
module ALU(
    input [3:0] A,
    input [3:0] B,
    input [2:0] opcode, // Operation selector
    output reg [3:0] result,
    output reg Carry_out,
    output reg zero
);
    always @(*) begin
        case(opcode)
            3'b000: begin
                {Carry_out , result} = A + B;
            end
            3'b001: begin
                {Carry_out , result} = A - B;
            end
            3'b010: begin
                result = A & B;
                Carry_out = 1'b0;
            end
            3'b011: begin
                result = A | B;
                Carry_out = 1'b0;
            end
            3'b100: begin
                result = ~A;
                Carry_out = 1'b0;
            end
            default: begin // Default result
                result=4'b0000;
                Carry_out=1'b0;
            end
        endcase
        zero = (result == 4'b0000); // Set zero flag
    end
endmodule
