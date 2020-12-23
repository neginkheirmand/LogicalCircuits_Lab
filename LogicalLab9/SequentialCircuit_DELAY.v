`timescale 1ns / 1ps
module SequentialCircuit_DELAY(
	input rst ,
	input clk ,
	input a ,
	input b ,
	output y ,
	output z
    );
	wire d1, d2, qb1, q2, qb2;
	wire e1,e2;
	
	dFlipFlop_NegativeEdge_DELAY ff3 (rst, clk, d1, y, qb1);
	dFlipFlop_NegativeEdge_DELAY	ff4 (rst, clk, d2, q2, qb2);
		
	or #10
		o1(d1,a,e1),
		o2(z,qb1,e2);
	and #10
		a1(e1,b,qb2),
		a2(e2,qb2,b);
	nor #10 n1(d2,d1,qb1);

endmodule
