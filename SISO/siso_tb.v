`timescale 1ns / 1ps
module siso_tb();
    reg Clk;
    reg rst;
    reg in;
    wire out;

    // Instantiate the SISO module
    siso uut (
        .Clk(Clk),
        .rst(rst),
        .in(in),
        .out(out)
    );
    // Generate a clock with a period of 10 time units (5 up, 5 down)
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
