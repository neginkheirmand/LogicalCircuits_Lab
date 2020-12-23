`timescale 1 ns/1 ns


module tb_function4x1 ();

	
reg a;
reg b;
reg c;
reg d;
 
wire f;
	function4x1 test_function4x1 (.a(a), .b(b), .c(c), .d(d), .f(f));


	initial 
		begin
		a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
		# 10 ;
		a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1;
		# 10 ;
		a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0;
		# 10 ;
		a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1;
	end

endmodule