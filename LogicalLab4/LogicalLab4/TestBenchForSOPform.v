`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:37:56 11/15/2020
// Design Name:   SOPimplementationOfXNOR
// Module Name:   C:/Users/venus/Desktop/uni2/3rd_SEMESTER/madar mantegh/verilog Ex/projects/LogicalLab4/LogicalLab4/TestBenchForSOPform.v
// Project Name:  LogicalLab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SOPimplementationOfXNOR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestBenchForSOPform;
	reg A;
	reg B;
	reg C;
	wire f;
	SOPimplementationOfXNOR uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.f(f)
	);
	initial begin
		A = 1'b0 ; B = 1'b0; C = 1'b0;
		#100;
		A = 1'b0 ; B = 1'b0; C = 1'b1;
		#100;
		A = 1'b0 ; B = 1'b1; C = 1'b0;
		#100;
		A = 1'b0 ; B = 1'b1; C = 1'b1;
		#100;
		A = 1'b1 ; B = 1'b0; C = 1'b0;
		#100;
		A = 1'b1 ; B = 1'b0; C = 1'b1;
		#100;
		A = 1'b1 ; B = 1'b1; C = 1'b0;
		#100;
		A = 1'b1 ; B = 1'b1; C = 1'b1;
		#100;
		$finish;

	end
      
endmodule

