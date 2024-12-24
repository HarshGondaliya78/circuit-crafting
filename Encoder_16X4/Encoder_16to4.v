`timescale 1ns / 1ps
module Encoder_16to4(
    input [15:0] i, // 16-bit input vector
    output reg [3:0] y // 4-bit output vector
);

    always @(*) begin
        // Case statement to determine output based on the encoded input
       case(i)
            16'b0000000000000001:y<=4'b0000;
            16'b0000000000000010:y<=4'b0001;
            16'b0000000000000100:y<=4'b0010;
            16'b0000000000001000:y<=4'b0011;
            16'b0000000000010000:y<=4'b0100;
            16'b0000000000100000:y<=4'b0101;
            16'b0000000001000000:y<=4'b0110;
            16'b0000000010000000:y<=4'b0111;
            16'b0000000100000000:y<=4'b1000;
            16'b0000001000000000:y<=4'b1001;
            16'b0000010000000000:y<=4'b1010;
            16'b0000100000000000:y<=4'b1011;
            16'b0001000000000000:y<=4'b1100;
            16'b0010000000000000:y<=4'b1101;
            16'b0100000000000000:y<=4'b1110;
            16'b1000000000000000:y<=4'b1111;
            default:y=4'bxxxx; // Default case: invalid input, sets output to undefined (x)
        endcase
    end
endmodule
