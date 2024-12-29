`timescale 1ns / 1ps
module magnitude_comparator_tb( );
    reg [3:0] a;
    reg [3:0] b;
    wire a_gt_b;
    wire a_eq_b;
    wire a_lt_b;

    magnitud_comparator h(
        .a(a),
        .b(b),
        .a_gt_b(a_gt_b),
        .a_eq_b(a_eq_b),
        .a_lt_b(a_lt_b)

    );
    initial begin
        a=4'b0000;b=4'b0000;#10;
        a=4'b1001;b=4'b0010;#10;
        a=4'b0000;b=4'b1000;#10;
        a=4'b0100;b=4'b1100;#10;
        a=4'b1100;b=4'b1011;#10;
        a=4'b0110;b=4'b1000;#10;
        a=4'b0101;b=4'b0010;#10;
        a=4'b0101;b=4'b1111;#10;
        $finish;
    end
endmodule
