`timescale 1ns / 1ps
module DecoderTestBench;
	reg E;
	reg I0;
	reg I1;
	wire m0;
	wire m1;
	wire m2;
	wire m3;
	myDecoder uut (
		.E(E), 
		.I0(I0), 
		.I1(I1), 
		.m0(m0), 
		.m1(m1), 
		.m2(m2), 
		.m3(m3)
	);
	initial begin
	//0 0 0
		E = 1'b0; I0 = 1'b0; I1 = 1'b0;
		#100;
	//0 0 1
		E = 1'b0; I0 = 1'b0; I1 = 1'b1;
		#100;
	//0 1 0
		E = 1'b0; I0 = 1'b1; I1 = 1'b0;
		#100;
	//0 1 1
		E = 1'b0; I0 = 1'b1; I1 = 1'b1;
		#100;
	//1 0 0
		E = 1'b1; I0 = 1'b0; I1 = 1'b0;
		#100;
	//1 0 1
		E = 1'b1; I0 = 1'b0; I1 = 1'b1;
		#100;
	//1 1 0
		E = 1'b1; I0 = 1'b1; I1 = 1'b0;
		#100;
	//1 1 1
		E = 1'b1; I0 = 1'b1; I1 = 1'b1;
		#100;
	end
      
endmodule

