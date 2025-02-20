`timescale 1ns / 1ps
module Full_adder(
    input A,
    input B,
    input Cin,
    output reg sum,
    output reg Cout
);
    always @(*) begin
        // Sum and carry-out logic for a single bit full adder
        sum = A ^ B ^ Cin;
        Cout = (A & B) | (B & Cin) | (Cin & A) ;
    end
endmodule
