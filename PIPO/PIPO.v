`timescale 1ns / 1ps
module PIPO(
    input clk,
    input reset,
    input [3:0] din,
    output [3:0] dout
);
    D_FF D1 (clk,reset,din[3],dout[3]);
    D_FF D2 (clk,reset,din[2],dout[2]);
    D_FF D3 (clk,reset,din[1],dout[1]);
    D_FF D4 (clk,reset,din[0],dout[0]);

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
            case (din)
                1'b0 : dout <= 1'b0;
                1'b1 : dout <= 1'b1;
            endcase
        end
    end
endmodule