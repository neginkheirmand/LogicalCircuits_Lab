`timescale 1ns / 1ps
module DflipFlop(
	input rst ,
	input clk ,
	input din ,
	output qout ,
	output qbout
    );

	reg qout, qbout;
	always @(posedge rst or negedge clk)
	//this flip flop is negative edge working(falling edge)
			begin
				if (rst == 1'b1)
					begin
						qout <= 1'b0;
						qbout <= 1'b1;
					end
				else
					begin
						qout <= din;
						qbout <= ~din;
					end
			end

endmodule
