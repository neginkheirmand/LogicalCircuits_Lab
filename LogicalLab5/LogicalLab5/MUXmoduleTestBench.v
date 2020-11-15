`timescale 1ns / 1ps
module MUXmoduleTestBench;
	reg W3;
	reg W2;
	reg W1;
	reg W0;
	reg S1;
	reg S0;
	wire y;
	MUXmodule uut (
		.W3(W3), 
		.W2(W2), 
		.W1(W1), 
		.W0(W0), 
		.S1(S1), 
		.S0(S0), 
		.y(y)
	);
	initial begin
		S1 = 1'b0; S0 = 1'b0; W3 = 1'b0; W2 = 1'b0; W1 = 1'b0; W0 = 1'b1;
		#100;
		S1 = 1'b0; S0 = 1'b1; W3 = 1'b0; W2 = 1'b0; W1 = 1'b1; W0 = 1'b0;
		#100;
		S1 = 1'b1; S0 = 1'b0; W3 = 1'b0; W2 = 1'b1; W1 = 1'b0; W0 = 1'b0;
		#100;
		S1 = 1'b1; S0 = 1'b1; W3 = 1'b1; W2 = 1'b0; W1 = 1'b0; W0 = 1'b0;
		#100;
		$finish;
	end
      
endmodule

