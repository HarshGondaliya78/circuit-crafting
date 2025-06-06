`timescale 1ns / 1ps

module sipo_tb ();
    reg Clk;
    reg rst;
    reg in;
    wire [3:0] out;

    sipo uut (Clk,rst,in,out);

    // Generate a clock signal with a period of 10ns
    initial begin
        Clk = 0;
        forever #5 Clk = ~Clk;
    end

    initial begin
        rst = 1; // Initially reset the shift register
        #10 rst = 0; // reset low after 10 time units

        in = 1; // Apply input
        #10 in = 0;
        #10 in = 1;
        #10 in = 0;
        #40;
        $finish();
    end
endmodule
