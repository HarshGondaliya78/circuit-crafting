`timescale 1ns / 1ps
module JK_Master_Slave_tb();
    reg J;
    reg K;
    reg Clk;
    wire Q;
    wire Qn;

    JK_Master_Slave dut (J,K,Clk,Q,Qn);

// Clock Generation: Toggles every 5 time units
    always #5 Clk = ~Clk;

    initial begin
        Clk = 1;
       // Apply Test Cases:
        J = 0; K = 0;
        #10 J = 0; K = 1; 
        #10 J = 1; K = 0;
        #10 J = 1; K = 1;
        #10 J = 0; K = 0;
        #10 $finish;
    end
endmodule
