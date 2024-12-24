`timescale 1ns / 1ps
module Encoder_16to4_tb();
    reg [15:0] i; // 16-bit register to drive the input of the encoder
    wire [3:0] y; // 4-bit wire to observe the output of the encoder

    Encoder_16to4 uut(.i(i),.y(y)); //connect testbench input or output to the module's input or output
    initial begin
        // Apply different test cases to the input and wait for 10 time units between each
            i=16'b0000000000000001;#10;
            i=16'b0000000000000010;#10;
            i=16'b0000000000000100;#10;
            i=16'b0000000000001000;#10;
            i=16'b0000000000010000;#10;
            i=16'b0000000000100000;#10;
            i=16'b0000000001000000;#10;
            i=16'b0000000010000000;#10;
            i=16'b0000000100000000;#10;
            i=16'b0000001000000000;#10;
            i=16'b0000010000000000;#10;
            i=16'b0000100000000000;#10;
            i=16'b0001000000000000;#10;
            i=16'b0010000000000000;#10;
            i=16'b0100000000000000;#10;
            i=16'b1000000000000000;#10;
        $finish; // End the simulation
    end
endmodule
