`timescale 1ns / 1ps
module CLA_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] sum,
    output Cout
);
    wire [3:0] G,P;
    wire [3:0] c;

    assign G= A & B;
    assign P= A ^ B;

    assign c[0]=G[0]|(P[0]&Cin);
    assign c[1]=G[1]|(P[1]&c[0]);
    assign c[2]=G[2]|(P[2]&c[1]);
    assign c[3]=G[3]|(P[3]&c[2]);

    assign sum = P^{c[2:0],Cin};
    assign Cout = c[3];
    
endmodule