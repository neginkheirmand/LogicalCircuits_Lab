`timescale 1ns / 1ps
module halfadder(input A , input B ,output c0, output sum
    );
assign c0= { A & B } ;
//a sum b = a xor b = ~a.b U ~b.a
assign sum = { (A & (~ B ) ) | (B & (~ A ) )};

endmodule
