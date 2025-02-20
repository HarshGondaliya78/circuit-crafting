`timescale 1ns / 1ps
module Binary_sub_tb(

);
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] D;
    wire Bo;

    Binary_sub uut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .D(D),
        .Bo(Bo)
    );
    initial begin
        A=4'b0000;B=4'b0000;Cin=1'b0;#10;
        A=4'b0110;B=4'b1111;Cin=1'b0;#10;
        A=4'b0001;B=4'b1110;Cin=1'b1;#10;
        A=4'b0011;B=4'b1010;Cin=1'b0;#10;
        A=4'b1111;B=4'b1000;Cin=1'b0;#10;
        A=4'b1011;B=4'b1000;Cin=1'b0;#10;

        $finish;
    end
endmodule
