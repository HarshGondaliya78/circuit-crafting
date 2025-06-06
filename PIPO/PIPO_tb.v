`timescale 1ns / 1ps
module PIPO_tb();
    reg clk;
    reg reset;
    reg [3:0] din;
    wire [3:0] dout;

    PIPO uut (clk,reset,din,dout);

    always #5 clk = ~clk;
    initial clk = 0;

    initial begin
        reset = 1;
        din = 4'b0010;

        #10 reset = 0;
            din = 4'b0011;
        #10 din = 4'b1010;
        #10 din = 4'b1101;

        #15 $finish();
    end
endmodule
