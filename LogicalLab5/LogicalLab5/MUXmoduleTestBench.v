`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:51:41 11/15/2020
// Design Name:   MUXmodule
// Module Name:   C:/Users/venus/Desktop/uni2/3rd_SEMESTER/madar mantegh/verilog Ex/projects/LogicalLab5/LogicalLab5/MUXmoduleTestBench.v
// Project Name:  LogicalLab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUXmodule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUXmoduleTestBench;

	// Inputs
	reg W3;
	reg W2;
	reg W1;
	reg W0;
	reg S1;
	reg S0;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
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
		// Initialize Inputs
		W3 = 0;
		W2 = 0;
		W1 = 0;
		W0 = 0;
		S1 = 0;
		S0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

