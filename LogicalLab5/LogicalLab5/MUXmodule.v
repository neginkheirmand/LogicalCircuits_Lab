`timescale 1ns / 1ps
module MUXmodule(W3, W2, W1, W0, S1, S0, y);
	input W3, W2, W1, W0, S1, S0;
	output y;
	wire notS1, notS0;
	not NoS1(notS1, S1);
	not NoS0(notS0, S0);
	wire m0, m1, m2, m3;
	and minterm0(m0, W0, notS1, notS0);
	and minterm1(m1, W1, notS1, S0);
	and minterm2(m2, W2, S1, notS0);
	and minterm3(m3, W3, S1, S0);
	or out(y, m0, m1, m2, m3);

endmodule
