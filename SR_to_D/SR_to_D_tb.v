`timescale 1ns / 1ps
module SR_to_D_tb;
    reg D;
    reg clk;
    wire Q;

    SR_to_D uut (
        .D(D),
        .clk(clk),
        .Q(Q)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin

        D = 1;
        #10;
        D = 0;
        #10;
        D = 1;
        #10;
        D = 1;
        #10;

        $finish();
    end
endmodule
