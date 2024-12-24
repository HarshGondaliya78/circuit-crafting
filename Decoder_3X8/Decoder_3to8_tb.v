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
  $finish;
 end
endmodule
