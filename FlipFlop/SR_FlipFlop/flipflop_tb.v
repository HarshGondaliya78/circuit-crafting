`timescale 1ns / 1ps
module flipflop_tb();
    reg S;
    reg R;
    reg Clk;
    wire Q;
    wire Qn;

  flipflop uut (.S(S),.R(R),.Clk(Clk),.Q(Q),.Qn(Qn));
  
 // Generate Clock Signal
  always #5 Clk = ~Clk;

    initial begin
        Clk = 0;
        S = 0; R = 0; #10;
        S = 0; R = 1; #10; 
        S = 1; R = 0; #10;  
        S = 1; R = 1; #10;  
        S = 0; R = 0; #10; 
        $finish;
    end
endmodule
