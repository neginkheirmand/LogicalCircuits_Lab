`timescale 1ns / 1ps
module RegisterTestBench;

	// Inputs
	reg rst;
	reg clk;
	reg en;
	reg [3:0] din;

	// Outputs
	wire [3:0] qout;

	// Instantiate the Unit Under Test (UUT)
	Register uut (
		.rst(rst), 
		.clk(clk), 
		.en(en), 
		.din(din), 
		.qout(qout)
	);

	initial begin
		rst = 1'b1;
		en = 1'b1;
		din = 4'b1010;
		#100;
 		rst = 1'b0;
		din = 4'b1010;
		#100;
 		rst = 1'b0;
		din = 4'b1110;
		#100;
 		rst = 1'b0;
		din = 4'b1011;
		#100;
 		rst = 1'b0;
		din = 4'b1111;
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

