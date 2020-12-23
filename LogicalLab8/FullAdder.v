`timescale 1ns / 1ps
module FullAdder(
input A,
input B,
input Cin,
output Sum,
output Co
);

assign Sum = (((A & (~B)) | ((~A) & B)) & (~Cin)) |
(~(((A & (~B)) | ((~A) & B))) & (Cin));
assign Co = (A & B) | (A & Cin) | (B & Cin);

endmodule