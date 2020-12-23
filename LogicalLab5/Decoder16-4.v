`timescale 1ns / 1ps

module Decoder4to16 (
	input [3:0] in ,
	input 		en ,
	output [15:0] dout
);
	wire [3:0] notin;
	
	not notIn0(notin[0], in[0]);
	not notIn1(notin[1], in[1]);
	not notIn2(notin[2], in[2]);
	not notIn3(notin[3], in[3]);

   wire [3:0] andgates;
	and I3notI2not(andgates[0], notin[3], notin[2]);
	and I3notI2(andgates[1], notin[3], in[2]);
	and I3I2not(andgates[2], in[3], notin[2]);
	and I3I2(andgates[3], in[3], in[2]);
	
	myDecoder decoder1(andgates[0], in[0], in[1], dout[0], dout[1], dout[2], dout[3]);
	myDecoder decoder2(andgates[1], in[0], in[1], dout[4], dout[5], dout[6], dout[7]);
	myDecoder decoder3(andgates[2], in[0], in[1], dout[8], dout[9], dout[10], dout[11]);
	myDecoder decoder4(andgates[3], in[0], in[1], dout[12], dout[13], dout[14], dout[15]);
	

endmodule
