`timescale 1ns / 1ps
module mux_8to1(
   input [7:0] i, // 8-bit input vector
   input [2:0] s, // 3 selection lines 
   output reg  y  // Output of the multiplexer
   );
  always @(*)begin
    case(s) 
      3'b000 : y<=i[0];
      3'b001 : y<=i[1];
      3'b010 : y<=i[2];  
      3'b011 : y<=i[3];
      3'b100 : y<=i[4];
      3'b101 : y<=i[5];
      3'b110 : y<=i[6];
      3'b111 : y<=i[7];
      default:$display("Invalid input"); //default case: Display message when all cases are false
   end
endmodule
