`timescale 1ns / 1ps
module PISO(
    input Clk,
    input reset,
    input sel,
    input [3:0] Din,
    output Dout
);
    wire [5:0] w;

    D_FF d1 (Clk,reset,Din[0],w[5]);
    mux m1 (w[5],Din[1],sel,w[4]);
    
    D_FF d2 (Clk,reset,w[4],w[3]);
    mux m2 (w[3],Din[2],sel,w[2]);
    
    D_FF d3 (Clk,reset,w[2],w[1]);
    mux m3 (w[1],Din[3],sel,w[0]);
    
    D_FF d4 (Clk,reset,w[0],Dout);

endmodule

module D_FF (
    input clk,
    input reset,
    input din,
    output reg dout
);
    always @ (posedge clk or posedge reset) begin
        if (reset) begin
            dout <= 1'b0;
        end
        else begin
            dout <= din;
        end
    end
endmodule

module mux (
    input i0,
    input i1,
    input sel,
    output reg y
);
    always @ (*) begin
        if (sel) begin
            y <= i0;
        end
        else begin
            y <= i1;
        end
    end
endmodule

