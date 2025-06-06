`timescale 1ns / 1ps
module D_FF(
    input Clk,
    input rst,
    input D,
    output reg Q
);
    always @ (posedge Clk or posedge rst) begin
        if(rst) begin
            Q <= 0; // When reset is active (1), Q is set to 0
        end
        else begin
            case(D) // Using case statement to store the input value
                1'b0 : Q =  1'b0; // If D = 0, store 0 in Q
                1'b1 : Q =  1'b1; // If D = 1, store 1 in Q
            endcase
        end
    end
endmodule
