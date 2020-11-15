`timescale 1ns / 1ps
module myDecoder(E, I0, I1, m0, m1, m2, m3);
	input E, I0, I1;
	output m0, m1, m2, m3;
	wire notI0, notI1;
	not notInput0(notI0, I0);
	not notInput1(notI1, I1);
	and minterm0(m0, E, notI1, notI0);
	and minterm1(m1, E, notI1, I0);
	and minterm2(m2, E, I1, notI0);
	and minterm3(m3, E, I1, I0);

endmodule
