`timescale 1ns / 1ps

module TestBench_Seq_Circ;

	reg rst;
	reg clk;
	reg a;
	reg b;	
	wire y;
	wire z;

	SequetialCircuit uut (
		.rst(rst), 
		.clk(clk), 
		.a(a), 
		.b(b), 
		.y(y), 
		.z(z)
	);
		SequentialCircuit_DELAY test_SequentialCircuit_delay(
		.rst(rst), 
		.clk(clk), 
		.a(a), .b(b), 
		.y(y_delay), 
		.z(z_delay)
		);

	initial 
		begin
			
		rst = 1'b1;
		a = 1'b0;
		b = 1'b0;
		#40;
		
		rst = 1'b0;
		a = 1'b0;
		b = 1'b0;
		#40;
		
		a = 1'b0;
		b = 1'b1;
		#40;
		
		a = 1'b1;
		b = 1'b1;
		#40;
				
		a = 1'b1;
		b = 1'b1;
		#40;
		
		
	//	rst = 1'b1;
		a = 1'b0;
		b = 1'b1;
		#40;
		
		
		a = 1'b0;
		b = 1'b1;
		#40;
		
		
		a = 1'b0;
		b = 1'b0;
		#40;
		
		
		a = 1'b1;
		b = 1'b0;
		#40;
		
		
		a = 1'b1;
		b = 1'b0;
		#40;
		
		
		a = 1'b1;
		b = 1'b0;
		#40;
		
				
		a = 1'b1;
		b = 1'b1;
		#40;
		
		
		a = 1'b0;
		b = 1'b0;
		#40;
		
		
		a = 1'b0;
		b = 1'b0;
		#40;
		
		
		a = 1'b0;
		b = 1'b0;
		#40;
		
		
		a = 1'b0;
		b = 1'b1;
		#40;
		
		
		a = 1'b1;
		b = 1'b1;
		#40;
		
		
		a = 1'b1;
		b = 1'b1;
		#40;
	
		$finish;
	end
	
	initial begin
			clk = 0;
			forever 
				begin
					//t   =  80
					//t/2 = 20
					#40;
					clk = ~clk;
				end
		end

      
endmodule

