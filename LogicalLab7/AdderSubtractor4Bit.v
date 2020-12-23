`timescale 1 ns/1 ns

module adder_subtractor_4bit_delay (
	input [3:0] A ,
	input [3:0] B ,
	input sel , 
	output [3:0] S ,
	output cout
);
	
	wire cout1, cout2, cout3;
	fullAdderWithDelay ASD0(
		.a(A[0]) ,
		.b(B[0]) ,
		.cin(sel) ,
		.sel(sel) ,
		.sum(S[0]) ,
		.cout(cout1)
		);
	fullAdderWithDelay ASD1(
		.a(A[1]) ,
		.b(B[1]) ,
		.cin(cout1) ,
		.sel(sel) ,
		.sum(S[1]) ,
		.cout(cout2)
		);
	fullAdderWithDelay ASD2(
		.a(A[2]) ,
		.b(B[2]) ,
		.cin(cout2) ,
		.sel(sel) ,
		.sum(S[2]) ,
		.cout(cout3)
		);	
	fullAdderWithDelay ASD3(
		.a(A[3]) ,
		.b(B[3]) ,
		.cin(cout3) ,
		.sel(sel) ,
		.sum(S[3]) ,
		.cout(cout)
		);

endmodule