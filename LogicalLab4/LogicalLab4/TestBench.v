// Module Name:   C:/Users/venus/Desktop/uni2/3rd_SEMESTER/madar mantegh/verilog Ex/projects/LogicalLab4/TestBench.v
// Project Name:  LogicalLab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: XNORmodule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestBench;
	reg A;
	reg B;
	reg C;
	wire f;
	XNORmodule uut (
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



