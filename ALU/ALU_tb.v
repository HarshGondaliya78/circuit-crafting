`timescale 1ns / 1ps
module ALU_tb();
    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] opcode;
    wire [3:0] result;
    wire Carry_out;
    wire zero;

    ALU uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result),
        .Carry_out(Carry_out),
        .zero(zero)
    );
    initial begin
        // Test cases
        A=4'b0111 ; B=4'b1011 ; opcode=3'b000 ; #10 ;
        A=4'b1111 ; B=4'b1110 ; opcode=3'b001 ; #10 ;
        A=4'b1010 ; B=4'b1010 ; opcode=3'b010 ; #10 ;
        A=4'b0101 ; B=4'b1011 ; opcode=3'b011 ; #10 ;
        A=4'b0111 ; B=4'b1100 ; opcode=3'b100 ; #10 ;
        $finish;
    end
endmodule

