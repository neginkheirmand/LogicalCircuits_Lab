`timescale 1ns / 1ps

module XNORmodule(A, B, C, f);
	input A, B, C;
	output f;
	xnor xnoreGate1(f, A, B, C);

endmodule
