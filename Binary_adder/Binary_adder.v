`timescale 1ns / 1ps
module Binary_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] sum,
    output Cout
);
    // Intermediate carry signals for chaining FA modules
    wire c1,c2,c3;
    // Instantiate Full Adders (FA) for each bit 
    Full_adder FA0(.A(A[0]), .B(B[0]), .Cin(Cin), .sum(sum[0]), .Cout(C1));
    Full_adder FA1(.A(A[1]), .B(B[1]), .Cin(C1), .sum(sum[1]), .Cout(C2));
    Full_adder FA2(.A(A[2]), .B(B[2]), .Cin(C2), .sum(sum[2]), .Cout(C3));
    Full_adder FA3(.A(A[3]), .B(B[3]), .Cin(C3), .sum(sum[3]), .Cout(Cout));
endmodule
