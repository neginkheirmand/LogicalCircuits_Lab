`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:38:00 11/15/2020
// Design Name:   Decoder4to16
// Module Name:   C:/Users/venus/Desktop/uni2/3rd_SEMESTER/madar mantegh/verilog Ex/projects/LogicalLab5/LogicalLab5/functionF.v
// Project Name:  LogicalLab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder4to16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module functionF;

	// Inputs
	reg [3:0] in;
	reg en;

	// Outputs
	wire [15:0] dout;

	// Instantiate the Unit Under Test (UUT)
	Decoder4to16 uut (
		.in(in), 
		.en(en), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

