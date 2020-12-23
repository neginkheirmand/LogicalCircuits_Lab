`timescale 1ns / 1ps
module TwoBitMultiplier( input [1:0] A , input [1:0] B , output [3:0] w
    );

assign w[0]={ A[0] & B[0] } ; 

wire A0B1 , A1B0 , A1B1;

assign A0B1={ A[0] & B[1] } ; 
assign A1B0={ A[1] & B[0] } ; 
assign A1B1={ A[1] & B[1] } ; 

wire carry;
 halfadder HA1 ( .A(A0B1) , .B(A1B0) , .c0(carry) , .sum(w[1]) ) ;
 
 halfadder HA2 ( .A(A1B1) , .B(carry) , .c0(w[3]) , .sum(w[2]) ) ;
endmodule