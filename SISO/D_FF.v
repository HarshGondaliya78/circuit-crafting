`timescale 1ns / 1ps
module D_FF(
    input Clk,
    input rst,
    input D,
    output reg Q
);
    always @ (negedge Clk or negedge rst) begin
        if(rst) // When reset is active (1), Q is set to 0
            Q <= 0;
        else // Otherwise, Q follows the input D
            Q <= D;
    end
endmodule
