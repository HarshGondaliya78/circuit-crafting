`timescale 1ns / 1ps
module flipflop(
    input S,
    input R,
    input Clk,
    output reg Q,
    output reg Qn
);
// Initial state to avoid undefined 'X' values at simulation start
   initial begin
        Q = 0;  // Initial state of Q
        Qn = 1; // Initial state of Qn
    end
    
    always @(posedge Clk) begin
       if (S && R) begin // Invalid state
            Q <= 1'bx;
            Qn <= 1'bx;
       end 
       else if (R) begin // Reset state
            Q <= 1'b0;
            Qn <= 1'b1;
        end 
        else if (S) begin // Set state
            Q <= 1'b1;
            Qn <= 1'b0;
        end 
        else begin // Hold (no change) state
            Q <= Q;
            Qn <= Qn;
        end
    end
endmodule
