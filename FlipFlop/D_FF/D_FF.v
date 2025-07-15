`timescale 1ns / 1ps
module D_FF(
    input clk,
    input reset,
    input D,
    output reg y
);

    always @ (posedge clk or posedge reset)
    begin
        if (reset)
            y <= 0;
        else
            y <= D;
    end
endmodule
