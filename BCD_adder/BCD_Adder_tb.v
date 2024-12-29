`timescale 1ns / 1ps
module BCD_Adder_tb();
    reg  [3:0] a;
    reg  [3:0] b;
    reg cin;
    wire  [3:0] sum;
    wire carry;
    wire error;
    
    BCD_adder uut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .carry(carry),
        .error(error)
    );
    initial begin
    // case 1 : Invalid inputs 
        a=4'b1101 ; b=4'b1111 ; cin=1'b0 ; #20 ;
    // case 2 : Valid inputs
        a=4'b0100 ; b=4'b0011 ; cin=1'b1 ; #20 ;
    // case 3 : Invalid input (a > 9)
        a=4'b1110 ; b=4'b0100 ; cin=1'b1 ; #20 ;
    // case 4 : Invalid input (b > 9)
        a=4'b0111 ; b=4'b1011 ; cin=1'b0 ; #20 ;     
     $finish;
   end
endmodule
