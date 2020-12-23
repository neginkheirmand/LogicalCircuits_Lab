`timescale 1ns / 1ps

module ALU_Module(input [1:0] A , input [1:0] B,input [1:0] sel ,output [3:0] y 
    );
	wire [3:0] w3,w2,w1,w0;
	assign w0={ A , ~A } ;
	assign w1[0] = ~(A[0] & B[0]);
	assign w1[1] = ~(A[1] & B[1]);
	assign w1[2] = 0;
	assign w1[3] = 0;
	FullAdder_2Bit fulladder2bit (.A(A) , .B(B) , .sum(w2));
	TwoBitMultiplier multiply (.A(A) , .B(B) , .w(w3) ) ;	
	FourBitMUX mux44(.w3(w3) , .w2(w2) , .w1(w1), .w0(w0) , .sel(sel) , .y(y) );
endmodule
