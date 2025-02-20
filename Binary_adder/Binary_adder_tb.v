`timescale 1ns / 1ps
module Binary_adder_tb();
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] sum;
    wire Cout;
    Binary_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .sum(sum),
        .Cout(Cout)
    );
    initial begin
        //case :
        A=4'b0101;B=4'b1010;Cin=1'b0;#10;
        A=4'b1101;B=4'b1011;Cin=1'b1;#10;
        A=4'b0101;B=4'b1110;Cin=1'b0;#10;
        A=4'b1111;B=4'b1010;Cin=1'b1;#10;

        $finish; // End simulation
    end
endmodule
