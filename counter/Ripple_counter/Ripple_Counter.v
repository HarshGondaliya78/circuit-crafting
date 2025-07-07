`timescale 1ns / 1ps
module Ripple_Counter(
    input T,
    input Clk,
    input Reset,
    output [3:0] Q
);

    T_FF FF0 (.T(1'b1), .Clk(Clk), .Reset(Reset), .Q(Q[0]));
    T_FF FF1 (.T(1'b1), .Clk(Q[0]), .Reset(Reset), .Q(Q[1]));
    T_FF FF2 (.T(1'b1), .Clk(Q[1]), .Reset(Reset), .Q(Q[2]));
    T_FF FF3 (.T(1'b1), .Clk(Q[2]), .Reset(Reset), .Q(Q[3]));
endmodule

module T_FF(
    input T,
    input Clk,
    input Reset,
    output reg Q
);
    always @(negedge Clk or posedge Reset) begin
        if (Reset) begin
            Q <= 0;
        end
        else begin
            Q <= ~Q;
        end
    end
endmodule
