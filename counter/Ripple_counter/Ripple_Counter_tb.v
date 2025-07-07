`timescale 1ns / 1ps
module Ripple_Counter_tb();
    reg Clk;
    reg Reset;
    wire [3:0] Q;

    Ripple_Counter uut (
        .Clk(Clk),
        .Reset(Reset),
        .Q(Q)
    );

    always #0.5 Clk <= ~Clk;
    initial Clk = 0;

    initial begin
        Reset = 1;
        #5 Reset = 0;

        #16;
        Reset = 1;
        #5 $finish();
    end
endmodule
