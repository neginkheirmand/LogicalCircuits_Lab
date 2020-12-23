`timescale 1ns / 1ps
module FullAdder_2Bit(
input [1:0] A,
input [1:0] B,
output [3:0] sum
);
wire carry;
halfadder HalfAdderIC(.A(A[0]), .B(B[0]), .sum(sum[0]), .c0(carry));
FullAdder FullAdderIC(.A(A[1]), .B(B[1]), .Cin(carry), .Sum(sum[1]), .Co(sum[2]));
assign sum[3] = 0;
endmodule