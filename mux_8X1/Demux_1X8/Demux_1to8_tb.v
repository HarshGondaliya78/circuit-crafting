`timescale 1ns / 1ps
module Demux_1to8_tb();
 reg i;
 reg [2:0] s;
 wire [7:0] y;
 
 Demux_1to8 uut(.i(i),.s(s),.y(y));
 initial begin
  s=3'b000; i=1; #5; 
  s=3'b001; i=1; #5; 
  s=3'b010; i=0; #5; 
  s=3'b011; i=1; #5; 
  s=3'b100; i=0; #5; 
  s=3'b101; i=1; #5; 
  s=3'b110; i=1; #5; 
  s=3'b111; i=1; #5; 
  $finish;
 end
endmodule
