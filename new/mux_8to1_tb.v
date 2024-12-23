`timescale 1ns / 1ps
module mux_8to1_tb();  // Declare inputs and outputs for the testbench
    reg [7:0] i;
    reg [2:0] s;
    wire y;
// Instantiate the 8-to-1 multiplexer module 
   mux_8to1 a(.y(y),.i(i),.s(s));

// Test sequence
   initial begin
  //case1
     i=8'b00010001; s=3'b001; #5;
  //case2   
     i=8'b11111111; s=3'b111; #5;
  //case3     
     i=8'b01010001; s=3'b101; #5;
  //case4    
     i=8'b00011101; s=3'b000; #5;
  //case5    
     i=8'b01110001; s=3'b011; #5;
     $finish; 
   end
endmodule
