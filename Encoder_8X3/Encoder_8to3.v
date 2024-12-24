`timescale 1ns / 1ps
module Encoder_8to3_tb();
    reg [7:0] i; // 8-bit register to drive the input of the encoder
    wire [2:0] y; // 3-bit wire to observe the output of the encoder

    Encoder_8to3 uut(.i(i),.y(y)); //connect testbench input or output to the module's input or output
    initial begin
        // Apply different test cases to the input and wait for 10 time units between each
        i=8'b00000001;#10;
        i=8'b00000010;#10;
        i=8'b00000100;#10;
        i=8'b00001000;#10;
        i=8'b00010000;#10;
        i=8'b00100000;#10;
        i=8'b01000000;#10;
        i=8'b10000000;#10;
        i=8'b00000000;#10;
        $finish; // End the simulation
    end

endmodule
