`timescale 1ns / 1ps
module siso(
    input Clk,
    input rst,
    input in,
    output out
);
    wire [3:0] w; // Internal connections between Flip-Flops

    // Instantiate four D Flip-Flops in cascade
    D_FF FF1 (Clk,rst,in,w[3]);
    D_FF FF2 (Clk,rst,w[3],w[2]);
    D_FF FF3 (Clk,rst,w[2],w[1]);
    D_FF FF4 (Clk,rst,w[1],w[0]);

    assign out = w[0]; // Output from the last Flip-Flop

endmodule

