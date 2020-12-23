`timescale 1 ns/1 ns

module TestBenchAdderSubtractor4Bit_WITHdelay;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg sel;

	// Outputs
	wire [3:0] S;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	adder_subtractor_4bit_delay uut (
		.A(A), 
		.B(B), 
		.sel(sel), 
		.S(S), 
		.cout(cout)
	);

	initial begin
		// A > B
		A = 4'd6; B = 4'd2; sel = 1'b0;// 6 + 2 = 8 (overflow)
		#100;
		A = -4'd3; B = -4'd4; sel = 1'b0;// -3 + (-4) = -7
		#100;
		A = 4'd5; B = -4'd1; sel = 1'b0;// 5 + (-1) = 4
		#100;
		A = 4'd6; B = 4'd2; sel = 1'b1;// 6 - 2 = 4
		#100;
		A = -4'd3; B = -4'd4; sel = 1'b1;// -3 - (-4) = 1
		#100;
		A = 4'd5; B = -4'd1; sel = 1'b1;// 5 - (-1) = 6
		#100;
		// A = B
		A = 4'd6; B = 4'd6; sel = 1'b0;// 6 + 6 = 12 (overflow)
		#100;
		A = -4'd4; B = -4'd4; sel = 1'b0;// -4 + (-4) = -8
		#100;
		A = -4'd0; B = -4'd0; sel = 1'b0;// -0 + (-0) = 0
		#100;
		A = 4'd6; B = 4'd6; sel = 1'b1;// 6 - 6 = 0
		#100;
		A = -4'd4; B = -4'd4; sel = 1'b1;// -4 - (-4) = 0
		#100;
		A = -4'd0; B = -4'd0; sel = 1'b1;// -0 - (-0) = 0
		#100;
		// A < B
		A = 4'd2; B = 4'd6; sel = 1'b0;// 2 + 6 = 8 (overflow)
		#100;
		A = -4'd4; B = -4'd3; sel = 1'b0;// -4 + (-3) = -7
		#100;
		A = -4'd1; B = 4'd5; sel = 1'b0;// -1 + 5 = 4
		#100;
		A = 4'd2; B = 4'd6; sel = 1'b1;// 2 - 6 = -4
		#100;
		A = -4'd4; B = -4'd3; sel = 1'b1;// -4 - (-3) = -1
		#100;
		A = -4'd1; B = 4'd5; sel = 1'b1;// -1 - 5 = -6
		#100;
		$finish;
	end
      
endmodule

