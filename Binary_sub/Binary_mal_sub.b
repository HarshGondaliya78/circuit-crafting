`timescale 1ns / 1ps
module Binary_mal_sub(
   input [3:0] A,
   input [3:0] B,
   input Cin,
   output reg [3:0] D,
   output reg Bo
    );
     wire c1,c2,c3;
     
   Binary_sub BS0 =(.A[A0],.B[B0],.Cin(Cin),.D[D0].Bo(c1)); 
   Binary_sub BS1 =(.A[A1],.B[B1],.Cin(c1),.D[D1],.Bo(c2) );
   Binary_sub BS2 =(.A[A2],.B[B2],.Cin(c2),.D[D2],.Bo(c3)); 
   Binary_sub BS3 =(.A[A3],.B[B3],.Cin(c3),.D[D3],.Bo(Bo) ); 
endmodule