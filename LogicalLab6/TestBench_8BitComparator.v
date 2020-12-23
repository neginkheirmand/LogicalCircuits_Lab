`timescale 1 ns/1 ns


module tb_comparator8 ();

reg [7:0] A;
reg [7:0] B;
reg l;
reg e;
reg g;
wire lt;
wire eq;
wire gt;

	comparator8 test_comparator8 (.A(A), .B(B), .l(l), .e(e), .g(g), .lt(lt), .eq(eq), .gt(gt));


	initial 
	
		begin
		A = 8'b00000001;
		B = 8'b00000001;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20 ;
		
		A = 8'b00000010;
		B = 8'b00000001;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20;
		//////////////////
		
		A = 8'b00000001;
		B = 8'b00000010;
		
		l = 1'b0;
		e = 1'b1;
		g = 1'b0;
		# 10 ;
		l = 1'b1;
		e = 1'b0;
		g = 1'b0;
		# 10 ;
		l = 1'b0;
		e = 1'b0;
		g = 1'b1;
		# 20;
		$finish;

		
	end

endmodule

