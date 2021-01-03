`timescale 1ns / 1ps

module SequenceDetector1010(
	input x,
	input clk,
	input reset,
	output z
    );;
	 
	 wire qA, qNotA, qB, qNotB;
	 wire dinA, and1Out, and2Out;
	 wire notX;
	 not notGate(notx, x);
	 and and1(and1Out, qNotA, qB, notx);
	 and and2(and2Out, qA, qNotB, x);
	 or orGate(dinA, and1Out, and2Out);
		 
	 DflipFlop flipflopA(
		reset ,
		clk ,
		dinA ,
		qA ,
		qNotA);
		
		DflipFlop flipflopB(
		reset ,
		clk ,
		x ,
		qB ,
		qNotB);
		
		and andGateOutput(z, qA, qB, notx);
		


endmodule
