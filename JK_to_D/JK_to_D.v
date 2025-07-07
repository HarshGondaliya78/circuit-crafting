`timescale 1ns / 1ps
module JK_to_D(
    input D,
    input Clk,
    input reset,
    output reg Q,
    output reg Qbar
);
    wire J,K;

    assign J = D & Qbar;
    assign K = ~D & Q;

    always @ (posedge Clk or posedge reset) begin
        if(reset) begin
            Q <= 0;
            Qbar <= 1;
        end

        else begin
            if(J && K) begin
                Q <= ~Q;
                Qbar <= ~Qbar;
            end

            else if(J && ~K) begin
                Q <= 1;
                Qbar <= 0;
            end
            else if(~J && K) begin
                Q <= 0;
                Qbar <=1;
            end

            else if(~J && ~K) begin
                Q <= Q;
                Qbar <= Qbar;
            end
        end
    end
endmodule
