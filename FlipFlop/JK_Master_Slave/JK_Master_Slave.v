`timescale 1ns / 1ps
module JK_Master_Slave(
    input J,
    input K,
    input Clk,
    output reg Q,
    output reg Qn
);
    reg master; // Internal register for master stage

 // Initialize Q and Qn
    initial begin
        Q = 1;
        Qn = 0;
    end

// Master Stage - Triggered on Positive Edge of Clock
    always @(posedge Clk) begin
        if(J && K) begin
            Q <= ~Q;
            Qn <= ~Qn;
        end
        else if(J) begin
            Q <= 1;
            Qn <= 0;
        end
        else if(K) begin
            Q <= 0;
            Qn <= 1;
        end
        else begin
            Q <= Q;
            Qn <= Qn;
        end

    end

// Slave Stage - Triggered on Negative Edge of Clock
    always @(negedge Clk) begin
        Q <= master;
        Qn <= ~master;
    end
endmodule
