`timescale 1 ns/1 ns
module fullAdderTestBench;

	// Inputs
	reg a;
	reg b;
	reg ci;

	// Outputs
	wire s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	fullAdder uut (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 1'b0; b = 1'b0; ci = 1'b0;
		#100;
		a = 1'b0; b = 1'b1; ci = 1'b0;
		#100;
		a = 1'b1; b = 1'b0; ci = 1'b0;
		#100;
		a = 1'b1; b = 1'b1; ci = 1'b0;
		#100;
		a = 1'b0; b = 1'b0; ci = 1'b1;
		#100;
		a = 1'b0; b = 1'b1; ci = 1'b1;
		#100;
		a = 1'b1; b = 1'b0; ci = 1'b1;
		#100;
		a = 1'b1; b = 1'b1; ci = 1'b1;
		#100;
        
		// Add stimulus here

	end
      
endmodule

