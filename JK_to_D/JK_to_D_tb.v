`timescale 1ns / 1ps
module JK_to_D_tb();
    reg D;
    reg Clk;
    reg reset;
    wire Q;
    wire Qbar;

    JK_to_D dut (
        .D(D),
        .Clk(Clk),
        .reset(reset),
        .Q(Q),
        .Qbar(Qbar)
    );

    initial Clk = 0;
    always #5 Clk = ~Clk;



    initial begin

        reset = 1;
        #10;
        reset = 0;
        D = 1;
        #10;
        D = 0;
        #10;
        D = 1;
        #10;        ;

        $finish();
    end
endmodule
