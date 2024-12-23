`timescale 1ns / 1ps
// 8-to-1 Multiplexer: Selects one of 8 inputs based on a 3-bit select signal.
module mux_8to1(
   input [7:0] i,  // i: 8-bit input lines for the multiplexer.
   input [2:0] s,  // s: 3-bit select signal for choosing the input line.
   output reg  y   // y: Output signal corresponding to the selected input.
   );
 
   always @(*)begin
    case(s)        // Case statement to select one of the 8 input lines based on the select signal 's'.
      3'b000 : y=i[0];
      3'b001 : y=i[1];
      3'b010 : y=i[2];
      3'b011 : y=i[3];
      3'b100 : y=i[4];
      3'b101 : y=i[5];
      3'b110 : y=i[6];
      3'b111 : y=i[7];
    default:$display("Invalid input");  // Handles invalid select signal values and displays an error message.
   endcase
  end
endmodule
