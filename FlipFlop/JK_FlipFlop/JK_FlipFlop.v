`timescale 1ns / 1ps
module JK_FlipFlop(
    input J,
    input K,
    input Clk,
    output reg Q,
    output reg Qn
);
    initial begin
        Q <= 1;
        Qn <= 0;
    end

    always @(posedge Clk) begin
        if(K) begin
            Q <= 0;
            Qn <= 1;
        end
        else if(J) begin
            Q <= 1;
            Qn <= 0;
        end
        else if(J && K) begin
            Q <= ~Q;
            Qn <= ~Qn;
        end
        else begin
            Q <= Q;
            Qn <= Qn;
        end
    end
endmodule
