`timescale 1ns / 1ps

module ALU_TestBench;

	// Inputs
	reg [1:0] A;
	reg [1:0] B;
	reg [1:0] sel;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	ALU_Module uut (
		.A(A), 
		.B(B), 
		.sel(sel), 
		.y(y)
	);

	initial begin
		
		//sel = 00
		A = 2'b11; B = 2'b10; sel = 2'b00;
		#100;
		A = 2'b00; B = 2'b01; sel = 2'b00;
		#100;
		//sel = 01
		A = 2'b10; B = 2'b00; sel = 2'b01;
		#100;
		A = 2'b11; B = 2'b11; sel = 2'b01;
		#100;
		A = 2'b00; B = 2'b10; sel = 2'b01;
		#100;
		A = 2'b11; B = 2'b00; sel = 2'b10;
		#100;
		//sel = 10
		A = 2'b10; B = 2'b10; sel = 2'b10;
		#100;
		A = 2'b11; B = 2'b01; sel = 2'b10;
		#100;
		//sel = 11
		A = 2'b01; B = 2'b00; sel = 2'b11;
		#100;
		A = 2'b10; B = 2'b10; sel = 2'b11;
		#100;
		A = 2'b11; B = 2'b01; sel = 2'b11;
		#100;

		$finish;

	end
      
endmodule

