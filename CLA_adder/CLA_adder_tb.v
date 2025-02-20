`timescale 1ns / 1ps
module CLA_adder_tb();
    reg [3:0] A;
    reg [3:0]B;
    reg Cin;
    wire [3:0]sum;
    wire Cout;

    CLA_adder uut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .sum(sum),
        .Cout(Cout)

    );
    initial begin
        A=4'b0010;B=4'b0111;Cin=1'b1;#10;
        A=4'b1010;B=4'b0011;Cin=1'b0;#10;    
        A=4'b1110;B=4'b0011;Cin=1'b1;#10;
        A=4'b1010;B=4'b1111;Cin=1'b1;#10;
        A=4'b1011;B=4'b1011;Cin=1'b0;#10;
        A=4'b1111;B=4'b1111;Cin=1'b0;#10;
        $finish;
    end
endmodule
