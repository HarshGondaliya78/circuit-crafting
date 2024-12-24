`timescale 1ns / 1ps
module Decoder_3to8_tb();
  reg [2:0] in;
  wire [7:0] out;
  integer temp;
  
  Decoder_3to8 a(.in(in),.out(out));
  
  initial begin
  
    for (temp=0;temp<8;temp=temp+1) begin
     in=temp;#10;
     
    end
//  initial
//  begin
//   in=3'b000;#10;
//   in=3'b001;#10;
//   in=3'b010;#10;
//   in=3'b011;#10;
//   in=3'b100;#10;
//   in=3'b101;#10;
//   in=3'b110;#10;
//   in=3'b111;#10;  
  $finish;
 end
endmodule
