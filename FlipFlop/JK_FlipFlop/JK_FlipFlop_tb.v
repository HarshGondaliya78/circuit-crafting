`timescale 1ns / 1ps
module JK_FlipFlop_tb();
    reg J;
    reg K;
    reg Clk;
    wire Q;
    wire Qn;

    JK_FlipFlop dut (
        .J(J),
        .K(K),
        .Clk(Clk),
        .Q(Q),
        .Qn(Qn)
    );

    always #5 Clk = ~Clk;

    initial begin
        Clk = 0;
            J = 0; K = 0;
        #10 J = 0; K = 1;
        #10 J = 1; K = 0;
        #10 J = 1; K = 1;
        #10 J = 0; K = 0;
        #10 $finish;
    end
endmodule
