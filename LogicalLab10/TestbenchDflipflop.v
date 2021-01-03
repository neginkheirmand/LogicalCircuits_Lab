`timescale 1ns / 1ps

module TestbenchDflipflop;

	// Inputs
	reg rst;
	reg clk;
	reg din;

	// Outputs
	wire qout;
	wire qbout;

	// Instantiate the Unit Under Test (UUT)
	DflipFlop uut (
		.rst(rst), 
		.clk(clk), 
		.din(din), 
		.qout(qout), 
		.qbout(qbout)
	);


	initial begin
		rst = 1'b1;
		din = 1'b1;
		#10
		rst = 1'b0;
		din = 1'b0;
		#20
		din = 1'b1;
		#15
		din = 1'b0;
		#10
		din = 1'b1;
		#15
		din = 1'b0;
		#20
		din = 1'b1;
		#25
		

		$finish;
	end
	
	
	initial begin
			clk = 0;
			forever 
				begin
					//t   =  80
					//t/2 = 20
					#10;
					clk = ~clk;
				end
		end
      
endmodule





