`timescale 1ns / 1ps
module FSM_TestBench;

	// Inputs
	reg confirm;
	reg request;
	reg clk;
	reg reset;
	reg [3:0] passData;

	// Outputs
	wire en_left;
	wire en_right;
	wire [3:0] Din;

	fsm uut (
		.confirm(confirm), 
		.request(request), 
		.clk(clk), 
		.reset(reset), 
		.passData(passData), 
		.en_left(en_left), 
		.en_right(en_right), 
		.Din(Din)
	);

		initial 
		begin 	
		confirm = 1'b0;
		request = 1'b0;
		reset = 1'b1;
		passData = 4'b1011;
		#40;
      confirm = 1'b0;
		request = 1'b0;
		reset = 1'b0;
		passData = 4'b1011;
		#40;
		confirm = 1'b0;
		request = 1'b1;
		passData = 4'b1011;
		#40;
		confirm = 1'b1;
		request = 1'b1;
		passData = 4'b1011;
		#40;
		//trap
		confirm = 1'b1;
		request = 1'b1;
		passData = 4'b1011;
		#40;
		//go to start
		confirm = 1'b0;
		request = 1'b0;
		passData = 4'b1011;
		#40;
		//do request
		confirm = 1'b0;
		request = 1'b01;
		passData = 4'b1011;
		#40;
		//in active mode
		confirm = 1'b1;
		request = 1'b1;
		passData = 4'b1010;
		#40;
		//in active mode
		confirm = 1'b1;
		request = 1'b1;
		passData = 4'b1010;
		#40;
		//in active mode
		confirm = 1'b1;
		request = 1'b1;
		passData = 4'b1010;
		#40;
		//in active mode
		confirm = 1'b1;
		request = 1'b1;
		passData = 4'b1010;
		#40;
		//in active mode
		confirm = 1'b1;
		request = 1'b1;
		passData = 4'b1010;
		#40;
		//in active mode
		confirm = 1'b1;
		request = 1'b1;
		passData = 4'b1010;
		#40;
		//in active mode
		confirm = 1'b1;
		request = 1'b1;
		passData = 4'b1010;
		#40;
		
		//done working with the pass detector
		//now go and watch the result
		
		end
      
		initial 
		begin
		clk = 0;
		forever 
			begin
				//t   =  80
				//t/2 = 40
				#40;
				clk = ~clk;
			end
		end
      
endmodule

