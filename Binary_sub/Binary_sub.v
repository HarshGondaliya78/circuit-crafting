`timescale 1ns / 1ps
module Binary_sub(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output reg [3:0] D,
    output reg Bo
);
    always @(*) begin
        D = A ^ B ^ Cin;
        Bo = (~A & B)|(~A & Cin)|(B & Cin);
    end
endmodule
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           