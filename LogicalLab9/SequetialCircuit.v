`timescale 1ns / 1ps
module SequetialCircuit(
	input rst ,
	input clk ,
	input a ,
	input b ,
	output y ,
	output z
    );

	wire d1, d2, qb1, q2, qb2;
	wire R, S;
	assign R = b & qb2;
	assign S = b & qb2;
	assign d1 = a | S;
	assign d2 = ~(d1 & qb1);
	dflop
		flipflop1 (rst, clk, d1, y, qb1),
		flipflop2 (rst, clk, d2, q2, qb2);
		
	assign z = qb1 | R;
	
endmodule
