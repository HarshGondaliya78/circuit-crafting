`timescale 1ns / 1ps
module D_FF_tb();
    reg clk;
    reg reset;
    reg D;
    wire y;

    D_FF uut(
        .clk(clk),
        .reset(reset),
        .D(D),
        .y(y)
    );

    always #5 clk = ~clk;
    initial clk = 0;

    initial begin
        reset = 1;
        #10;
    
        reset = 0;
        D =  0;
        #10;

        reset  = 1;
        #10;

        reset = 0;
        D = 1;
        #10;

        reset = 1;
        #10;

        reset = 0;
        D = 1;

        #10 $finish;
    end
endmodule
