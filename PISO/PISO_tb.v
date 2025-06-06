`timescale 1ns / 1ps
module PISO_tb();
    reg Clk;
    reg reset;
    reg sel;
    reg [3:0] Din;
    wire Dout;

    PISO uut (Clk,reset,sel,Din,Dout);

    initial begin
        Clk = 0;
        forever #5 Clk = ~Clk;
    end
    initial begin
        reset = 1;
        sel = 1;
        Din = 4'b1011;

        #10 reset = 0;
        #10 sel = 0;
        Din  = 4'b1001;

        #10 sel = 1;

        #10 sel = 0;
        Din  = 4'b1111;

        #10 sel = 1;

        #10 $finish();
    end
endmodule
