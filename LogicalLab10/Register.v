`timescale 1ns / 1ps
module Register(
	input        rst ,
	input        clk ,
	input        en ,
	input  [3:0] din ,
	output reg [3:0] qout
    );
	always@(negedge clk)
		if (rst) 
				qout<=4'b0000;
		else
		begin
			if	(en)
				qout<=din;
			else
				qout<=4'bxxxx;
		end
endmodule
