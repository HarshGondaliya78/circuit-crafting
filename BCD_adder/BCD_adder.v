`timescale 1ns / 1ps
module BCD_adder(
    input [3:0]a,
    input [3:0]b,
    input cin,
    output reg [3:0]sum,
    output reg carry,
    output reg error
);
    wire [4:0] binary_sum;
  // Compute the sum of inputs and carry-in
    assign binary_sum = a+b+cin;
  // Check for invalid inputs
    always @(*) begin
    
  // Check for invalid BCD inputs (greater than 9 is not a valid BCD digit)
      if(a>9||b>9) begin
         sum = 4'b0000;
         carry = 1'b0;
         error = 1'b1;   // Set error flag to 1 for invalid input
       end  
      else begin
         error = 1'b0;  // Reset error flag for valid inputs
  // If the binary sum exceeds 9
        if(binary_sum>9) begin
           sum = (binary_sum+4'b0110);
           carry = 1'b1;
        end
        else begin
          sum = binary_sum[3:0];
          carry = binary_sum[4];
        end
      end
    end



endmodule
