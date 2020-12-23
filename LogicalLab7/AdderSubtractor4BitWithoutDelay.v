
`timescale 1 ns/1 ns

module AdderSubtractor4BitWithoutDelay (
	input [3:0] A ,
	input [3:0] B ,
	input sel , 
	output [3:0] S ,
	output cout
);
	
	wire cout1, cout2, cout3;
	fullAdder ASD0(
		.a(A[0]) ,
		.b(B[0]) ,
		.cin(sel) ,
		.sel(sel) ,
		.sum(S[0]) ,
		.cout(cout1)
		);
	fullAdder ASD1(
		.a(A[1]) ,
		.b(B[1]) ,
		.cin(cout1) ,
		.sel(sel) ,
		.sum(S[1]) ,
		.cout(cout2)
		);
	fullAdder ASD2(
		.a(A[2]) ,
		.b(B[2]) ,
		.cin(cout2) ,
		.sel(sel) ,
		.sum(S[2]) ,
		.cout(cout3)
		);	
	fullAdder ASD3(
		.a(A[3]) ,
		.b(B[3]) ,
		.cin(cout3) ,
		.sel(sel) ,
		.sum(S[3]) ,
		.cout(cout)
		);

endmodule