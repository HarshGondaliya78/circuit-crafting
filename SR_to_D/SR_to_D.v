`timescale 1ns / 1ps
module SR_to_D(
    input D,
    input clk,
    output reg Q

);
    wire S,R;

    assign S = D;
    assign R = ~D;

    always @(posedge clk) begin
        if(S && ~R)
            Q <= 1;
        else if(~S && R)
            Q <= 0;
    end
endmodule
