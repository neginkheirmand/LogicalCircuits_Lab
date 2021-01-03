`timescale 1ns / 1ps

module Seq_Det_TestBench;
	reg  x;
	reg clk;
	reg reset;
	wire z;
	SequenceDetector1010 uut (
		.x(x),
		.clk(clk),
		.reset(reset),
		.z(z) 
	);

	initial 
		begin
		reset = 1'b1;
		x = 1'b0;
		#40;
		x = 1'b1;
		reset = 1'b0;
		#40;
		x = 1'b1;
		#40;
		x = 1'b0;
		#40;
		x = 1'b1;
		#40;
		x = 1'b1;
		#40;
		x = 1'b1;
		#40;
		x = 1'b0;
		#40;
		x = 1'b1;
		#40;
		x = 1'b0;
		// done with first 1
		#40;
		x = 1'b0;
		#40;
		x = 1'b0;
		#40;
		x = 1'b1;
		#40;
		x = 1'b0;
		#40;
		x = 1'b1;
		#40;
		x = 1'b0;
		#40;
		x = 1'b0;
		#40;
		x = 1'b0;
		#40;
		
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

