`timescale 1ns / 1ps
module sipo(
    input Clk,
    input rst,
    input in,
    output [3:0] out
);
    wire [2:0] w; // Internal connections between Flip-Flops

    // Instantiate four D Flip-Flops in cascade
    D_FF FF1 (Clk,rst,in,w[2]);
    D_FF FF2 (Clk,rst,w[2],w[1]);
    D_FF FF3 (Clk,rst,w[1],w[0]);
    D_FF FF4 (Clk,rst,w[0],out[0]);

    assign out[3:1] = w[2:0]; // Assign internal FF values to output
endmodule


