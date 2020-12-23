`timescale 1ns / 1ps
module dFlipFlop_NegativeEdge_DELAY(
	input rst ,
	input clk ,
	input din ,
	output qout ,
	output qbout
    );


	reg qout, qbout;
	always @(posedge rst or negedge clk)
		begin
			if (rst == 1'b1)
				begin
				//tuye resey ham takhir dashte bashim?? age are ye #5 ham inja bezar
					qout <= 1'b0;
					qbout <= 1'b1;
				end
			else
				begin
					#5;
					qout <= din;
					qbout <= ~din;
				end
			
		end
endmodule
